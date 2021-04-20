----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2021 12:05:31
-- Design Name: 
-- Module Name: led_latch - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity led_latch is
Generic (
		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 8;
		
		-- Number of target LEDS, of these only C_S_AXIS_TDATA_WIDTH will be used
		NUM_BOARD_LEDS	        : integer	:= 16
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
		
		-------------------LEDS---------------------
		-- Board LEDs, of these only C_S_AXIS_TDATA_WIDTH will be used
		 LEDS          	: OUT 	STD_LOGIC_VECTOR(NUM_BOARD_LEDS-1 DOWNTO 0)
--		LEDS_O         	: OUT 	STD_LOGIC_VECTOR(NUM_BOARD_LEDS-1 DOWNTO 0);
--		LEDS_T         	: OUT 	STD_LOGIC_VECTOR(NUM_BOARD_LEDS-1 DOWNTO 0);
--		LEDS_I	        : IN 	STD_LOGIC_VECTOR(NUM_BOARD_LEDS-1 DOWNTO 0)
		--------------------------------------------
	);
end led_latch;
 
architecture Behavioral of led_latch is
-- attribute X_INTERFACE_INFO : string;
-- attribute X_INTERFACE_INFO of LEDS_O: signal is "xilinx.com:interface:gpio:1.0 LEDs TRI_O";
-- attribute X_INTERFACE_INFO of LEDS_T: signal is "xilinx.com:interface:gpio:1.0 LEDs TRI_T";
-- attribute X_INTERFACE_INFO of LEDS_I: signal is "xilinx.com:interface:gpio:1.0 LEDs TRI_I";
-- attribute X_INTERFACE_MODE : string;
-- attribute X_INTERFACE_MODE of LEDs: signal is "master";
 
 
signal S_AXIS_TREADY_sig : std_logic := '0';

begin

led_show: process(S_AXIS_ACLK, S_AXIS_ARESETN)
begin
    if rising_edge(S_AXIS_ACLK) then
        if S_AXIS_ARESETN = '0' then
			S_AXIS_TREADY_sig <= '0';
            LEDS <= (Others => '0');
        else 
        
			S_AXIS_TREADY_sig <= '1';
			
			if S_AXIS_TVALID = '1' and S_AXIS_TREADY_sig = '1' then
				LEDS <= (LEDS'HIGH downto C_S_AXIS_TDATA_WIDTH => '0') & S_AXIS_TDATA;
				--LEDS <= S_AXIS_TDATA;
			end if;
			
		end if;
	end if;
	
		
end process;

S_AXIS_TREADY <=  S_AXIS_TREADY_sig;

end Behavioral;
