library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity depacketizer is
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_M_AXIS_TDATA_WIDTH	: integer	:= 16;
        C_S_AXIS_TDATA_WIDTH	: integer	:= 8
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
        M_AXIS_TVALID	: OUT 	STD_LOGIC := '0';
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA	: OUT 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others => '0');
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY	: IN 	STD_LOGIC;
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	: OUT 	STD_LOGIC := '0';
        --------------------------------------------

         --------------AXI4-Stream--slave------------
        -- AXI4Stream sink: Clock
        S_AXIS_ACLK		: IN 	STD_LOGIC;
        -- AXI4Stream sink: Reset
        S_AXIS_ARESETN	: IN 	STD_LOGIC;
        -- Ready to accept data in
        S_AXIS_TREADY	: OUT 	STD_LOGIC := '0';
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
    type SR_type is array (PACKET_LENGTH - 1 downto 0) of std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0); 

    ------ Signal Declaration ------

    signal SR               : SR_type := (Others => (Others => '0'));
    signal index            : integer := 0;
    signal writeout_index   : integer := 0;
    signal COMPLETE_PACKET  : STD_LOGIC := '0';

    
begin

    S_AXIS_TREADY <= COMPLETE_PACKET;
    data_receive: process (RESETN, CLK)
    begin
        if resetn = '0' then
            -- Reset signals

            SR <= (Others => (Others => '0'));
            COMPLETE_PACKET <= '0';

            -- Reset ports

            M_AXIS_TLAST	<= '0';
            S_AXIS_TREADY	<= '0';
            M_AXIS_TDATA	<= (Others => '0');
            M_AXIS_TVALID	<= '0';
        
            -- Reset integer signal counters
            index <= 0;
            writeout_index <= 0;

        elsif rising_edge(clk) then
            
                -- there is new valid data and we are in the packet reading state
                if S_AXIS_TVALID = '1' and COMPLETE_PACKET = '0' then
                    if index = 0 and S_AXIS_TDATA = HEADER then
                        -- letto l'header
                        index <= 1;
                    elsif index = PACKET_LENGTH + 1 then
                        -- siamo alla fine del pacchetto, controllare se e' finito veramente e valido
                        if S_AXIS_TDATA = FOOTER then
                            -- abbiamo raccolto tutto il pacchetto      
                            COMPLETE_PACKET <= '1';     
                        else 
                        -- packet was invalid
                            index <= 0;
                        end if;
                    elsif index /= 0 and index /= PACKET_LENGTH + 1 then
                        -- mettere nel registro a scorrimento il dato e scorrere
                        SR    <= SR(PACKET_LENGTH - 2 downto 0) & S_AXIS_TDATA;
                        index <= index + 1;
                    end if;
                    
                elsif COMPLETE_PACKET = '1' and M_AXIS_TREADY = '1' then
        
                    M_AXIS_TVALID  <= '1';
                    M_AXIS_TDATA   <= SR(PACKET_LENGTH - 2) &  SR(PACKET_LENGTH - 1) ;

                    -- here we are shifting, but we cold as well just mux the data out withotu shifting.
                    SR (PACKET_LENGTH - 1 downto 2) <= SR(PACKET_LENGTH - 3 downto 0); 

                    -- we increase the writeout index to keep track of where we are at in the writeout
                    writeout_index <= writeout_index + 1;
    
                    if (writeout_index mod 2) = 0 then
                        M_AXIS_TLAST <= '0';
                    else
                        M_AXIS_TLAST <= '1';
                    end if;
    
                    if writeout_index = (PACKET_LENGTH/2)-1 then
                        -- we wrote all
                        COMPLETE_PACKET <= '0';
                        writeout_index  <=  0 ;
                    end if;

                    --resetta complete packet dopo aver resettato tutto a zero

                -- if handshake occurred, no new data is available, set valid to 0 as data has already been read.
                elsif  M_AXIS_TVALID = '1' and M_AXIS_TREADY = '1' then
                    M_AXIS_TVALID <= '0';
                end if;


        end if;
    end process;
end Behavioral;
