----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2021 17:07:18
-- Design Name: 
-- Module Name: PWM - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM is
	Generic (
		PWM_MAX			:	NATURAL    := 255	
	);
	Port (
		reset	:	IN	STD_LOGIC;
		clk		:	IN	STD_LOGIC;
		output  :	OUT	STD_LOGIC;	
		value   :   IN NATURAL 
	);
end PWM;



architecture Behavioral of PWM is

signal count : NATURAL := 0;

begin
    PWM: process(clk,reset)
    begin
    if reset = '1' then
        count <= 0;
    elsif rising_edge(clk) then
   
        if count >= value then
            output <= '0';
         else
            output <= '1';
         end if;
         if count >= PWM_MAX then
                count <= 0;
         else 
                count <= count +1;
         end if;
         

    end if;
    end process;
    

end Behavioral;
