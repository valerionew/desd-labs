library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity packetizer is
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_S_AXIS_TDATA_WIDTH	: integer	:= 16;
        C_M_AXIS_TDATA_WIDTH	: integer	:= 8
    );
    Port(
        CLK :  in STD_LOGIC;   
        
        RESETN :  in STD_LOGIC;   
    
        ------------AXI4-Stream--slave-------------
        -- AXI4Stream Clock
        S_AXIS_ACLK		:   out 	STD_LOGIC := '0';
        -- AXI4Stream Reset
        S_AXIS_ARESETN	:   out 	STD_LOGIC := '0';
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        S_AXIS_TVALID	:   in 	    STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        S_AXIS_TDATA	:   in 	    STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        S_AXIS_TREADY	:   out 	STD_LOGIC := '0';
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in  	STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--master------------
        -- AXI4Stream: Clock
        M_AXIS_ACLK		:   out 	STD_LOGIC := '0';
        -- AXI4Stream: Reset
        M_AXIS_ARESETN	:   out 	STD_LOGIC := '0';
        -- Ready to accept data in
        M_AXIS_TREADY	:   in 	    STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        -- Data is in valid
        M_AXIS_TVALID	:   out 	STD_LOGIC  := '0'
        --------------------------------------------

    );
end packetizer;

architecture Behavioral of packetizer is
    ------ Constant Declaration ------

    ------ Type Declaration ------

    -- Shift register buffer hast to contain packet = 64 bytes 
    type SR_type is array (PACKET_LENGTH - 1 downto 0) of std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0); 

    ------ Signal Declaration ------

    signal SR               : SR_type := (Others => (Others => '0'));
    signal index            : integer := 0;
    signal writeout_index   : integer := 0;
    signal COMPLETE_PACKET  : STD_LOGIC := '0';
    signal M_AXIS_TVALID_s  : STD_LOGIC := '0';

    
begin

    M_AXIS_TVALID <= M_AXIS_TVALID_s;
    data_receive: process (RESETN, CLK)
    begin
        if resetn = '0' then
            -- Reset signals

            SR <= (Others => (Others => '0'));
            COMPLETE_PACKET <= '0';

        elsif rising_edge(clk) then
            if COMPLETE_PACKET = '0' and S_AXIS_TVALID = '1' then
                if index = PACKET_LENGTH then
                    -- we finished the packet
                    S_AXIS_TREADY <= '0';
                    COMPLETE_PACKET <= '1';
                    index <= 0;
                else 
                    -- there is more room to complete the packet
                    -- add more data

                    -- do the shift                                                    8-1                                          16 - 1                        8 
                    SR    <= SR(PACKET_LENGTH - 3 downto 0) & S_AXIS_TDATA (C_M_AXIS_TDATA_WIDTH-1 downto 0) & S_AXIS_TDATA (C_S_AXIS_TDATA_WIDTH-1 downto C_M_AXIS_TDATA_WIDTH);
                    -- increment index
                    index <= index + 2;

                end if;

            elsif COMPLETE_PACKET = '1' and M_AXIS_TREADY = '1' then
                M_AXIS_TVALID_s  <= '1';
                -- writeoute!

                if writeout_index = 0 then
                -- it's header time!
                    M_AXIS_TDATA <= HEADER;
                elsif writeout_index = PACKET_LENGTH then
                -- it's footer time!
                    M_AXIS_TDATA <= FOOTER;
                elsif writeout_index = PACKET_LENGTH+1 then
                -- all has been written
                    COMPLETE_PACKET <= '0';
                    writeout_index  <=  0 ;
                else                    
                -- here we are shifting, but we cold as well just mux the data out without shifting.
                    M_AXIS_TDATA   <= SR(PACKET_LENGTH - 1);
                    SR (PACKET_LENGTH - 1 downto 1) <= SR(PACKET_LENGTH - 2 downto 0); 

                -- we increase the writeout index to keep track of where we are at in the writeout
                    writeout_index <= writeout_index + 1;
                    
                end if;

            elsif  M_AXIS_TVALID_s = '1' and M_AXIS_TREADY = '1' then
                M_AXIS_TVALID_s <= '0';
            end if;


        end if;
    end process;
end Behavioral;
