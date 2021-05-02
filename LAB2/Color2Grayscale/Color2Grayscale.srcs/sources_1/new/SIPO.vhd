-- SIPO receives 3 colors from USB UART and realizes a serial-to-parallel conversion that
-- will be fed to the graycore

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO is
Generic (
		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 8
	);
 Port (
 		----------------AXI4-Stream-----------------
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
		--------------------------------------------
		
		--------------------------------------------

        ch0 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        ch1 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        ch2 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        valid : out STD_LOGIC
		--------------------------------------------
	);
end SIPO;

architecture Behavioral of SIPO is
-- A pixel is an array of 3 subpixels that are C_S_AXIS_TDATA_WIDTH long
type pixel_type is array (2 downto 0) of STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
-- Pixel signal
signal pixel : pixel_type := (Others => (Others => '0'));

signal valid_sig : std_logic := '0';
signal index : integer := 0;

begin

SIPO : process(S_AXIS_ACLK, S_AXIS_ARESETN)

    begin
        if S_AXIS_ARESETN = '0' then
          -- Can't be ready during reset
          S_AXIS_TREADY <= '0';
          -- Reset SIPO
          pixel <= (Others => (Others => '0'));
          valid_sig <= '0';
          -- Reset array index
          index <= 0;
          
        elsif rising_edge(S_AXIS_ACLK) then
          
            S_AXIS_TREADY <= '1';
            
            -- We exploit signal commit to just get one single valid clock
            if valid_sig = '1' then
                valid_sig <= '0'; 
            end if;
            
            if S_AXIS_TVALID = '1' then
                -- Feed the input subpixel byte to the current array position
                pixel(index) <= S_AXIS_TDATA;
                
                -- Reset index and output pixel data
                if index = 2 then
                  -- Valid is up to start graycore conversion
                  valid_sig <= '1';
                  index <= 0;
                else
                  valid_sig <= '0';
                  index <= index + 1 ;
                end if;
            end if;
             
          end if;
    
end process;

valid <= valid_sig;
-- Assign array to output data
ch0<=pixel(0);
ch1<=pixel(1);
ch2<=pixel(2);

end Behavioral;
