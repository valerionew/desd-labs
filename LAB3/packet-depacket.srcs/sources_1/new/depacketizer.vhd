library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity depacketizer is
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_M_AXIS_TDATA_WIDTH	: integer	:= 8;
        C_S_AXIS_TDATA_WIDTH	: integer	:= 16
    );
    Port(
        CLK :  IN STD_LOGIC;   
        
        RESETN :  IN STD_LOGIC;   
    
        ------------AXI4-Stream--master-------------
        -- AXI4Stream Clock
        M_AXIS_ACLK		: IN 	STD_LOGIC;
        -- AXI4Stream Reset
        M_AXIS_ARESETN	: IN 	STD_LOGIC;
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID	: OUT 	STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA	: OUT 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY	: IN 	STD_LOGIC;
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	: OUT 	STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--slave------------
        -- AXI4Stream sink: Clock
        S_AXIS_ACLK		: IN 	STD_LOGIC;
        -- AXI4Stream sink: Reset
        S_AXIS_ARESETN	: IN 	STD_LOGIC;
        -- Ready to accept data in
        S_AXIS_TREADY	: OUT 	STD_LOGIC;
        -- Data in
        S_AXIS_TDATA	: IN 	STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- Data is in valid
        S_AXIS_TVALID	: IN 	STD_LOGIC
        --------------------------------------------

    );
end depacketizer;

architecture Behavioral of depacketizer is
    ------ Constant Declaration ------

    ------ Type Declaration ------

    -- Shift register buffer hast to contain packet = 64 bytes 
    type SR_type is array (PACKET_LENGTH - 1 downto 0) of std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0); 
    ------ Signal Declaration ------

    signal SR               : SR_type := (Others => (Others => '0'));
    signal index            : integer := 0;
    signal writeout_index   : integer := 0;

    -- communication between packetized in and writeout logic
    -- we latch the data in writeout reg and then take our time to write it out
    signal WRITEOUT_REG     : SR_type := (Others => (Others => '0'));
    signal WRITEOUT_VALID   : std_logic := '0';
    signal WRITEOUT_READY   : std_logic := '0';
    signal PACKET_BUFFFER   : SR_type := (Others => (Others => '0'));
    signal SMOL_PACKET      : std_logic_vector(16-1 downto 0) := (Others => '0');
    
begin
    data_receive: process (RESETN, CLK)
    begin
        if resetn = '0' then
            -- Reset SR
            SR <= (Others => (Others => '0'));
            -- Reset writeout reg
            WRITEOUT_REG <= (Others => (Others => '0'));

        elsif rising_edge(clk) then

                if S_AXIS_TVALID = '1' then
                    if index = 0 and S_AXIS_TDATA = HEADER then
                        index <= 1;
                    elsif index = PACKET_LENGTH then
                        -- siamo alla fine del pacchetto, controllare se è finito veramente e valido
                        if S_AXIS_TDATA = FOOTER then
                            -- abbiamo raccolto tutto il pacchetto 
                            if WRITEOUT_VALID = '0' then -- if we dont have an already valid buffer we fill it
                                WRITEOUT_REG <= SR;
                                WRITEOUT_VALID <= '1';
                                index <= 0;
                            else 
                                -- se non possiamo trasferire i dati al writeout, non possiamo raccoglierne di nuovi,
                                -- altrimenti perdiamo i vecchi.
                                S_AXIS_TREADY <= '0';
                            end if;
                                
                        else 
                        -- packet was invalid
                            index <= 0;
                        end if;
                    else
                        -- mettere nel registro a scorrimento il dato e scorrere
                        SR    <= SR(PACKET_LENGTH - 2 downto 0) & S_AXIS_TDATA;
                        index <= index + 1;
                    end if;
                end if;

                 -- if handshake for writeout register occurred, then we can continue receiving data
                if WRITEOUT_VALID = '1' and WRITEOUT_READY = '1' then
                    WRITEOUT_VALID <= '0';
                    S_AXIS_TREADY <= '1';
                end if;

        end if;
    end process;

    writeout_depacketized: process(clk,resetn)
    ------ Variables Declaration ------

    begin
        if resetn = '0' then
            --do reset stuff
        elsif rising_edge(clk) then
            if WRITEOUT_VALID = '1' and WRITEOUT_READY = '1' then
                PACKET_BUFFER  <= WRITEOUT_REG; -- possiamo togliere questo stadio? probabilmente sì ma mi incastro nei ragionamenti
                WRITEOUT_READY <= '0';
            end if;

            if WRITEOUT_READY = '0' and M_AXIS_TREADY = '1' then
                M_AXIS_TVALID  <= '1';
                M_AXIS_TDATA   <= PACKET_BUFFFER(PACKET_LENGTH - 1)  & PACKET_BUFFFER(PACKET_LENGTH - 2);
                PACKET_BUFFFER <= PACKET_BUFFFER(PACKET_LENGTH - 3 downto 0); -- needs padding? is implicit?
                writeout_index <= writeout_index + 1;

                if (writeout_index mod 2) = 0 then
                    M_AXIS_TLAST <= '0';
                else
                    M_AXIS_TLAST <= '1';
                end if;


                if writeout_index = (PACKET_LENGTH/2)-1 then
                    M_AXIS_TVALID  <= '0';
                    WRITEOUT_READY <= '1';
                    writeout_index <=  0 ;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
