library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity packetizer is
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
		C_M_AXIS_TDATA_WIDTH	: integer	:= 8;
		C_S_AXIS_TDATA_WIDTH	: integer	:= 16
    );
    Port(
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
		S_AXIS_TVALID	: IN 	STD_LOGIC;
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	: IN 	STD_LOGIC
		--------------------------------------------
    );
end packetizer;

architecture Behavioral of packetizer is

begin



end Behavioral;
