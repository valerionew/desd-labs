----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2021 17:22:57
-- Design Name: 
-- Module Name: PWM_tb - Behavioral
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

entity PWM_tb is
	Generic (
		PWM_MAX			:	INTEGER    := 5	
	);
end PWM_tb;

architecture Behavioral of PWM_tb is

    signal clk : std_logic := '0';
    signal reset : std_logic;
    signal output : STD_LOGIC := '0';
    signal value : INTEGER := 0;


component PWM is
	Generic (
		PWM_MAX			:	INTEGER    := 5	
	);
	Port (
		reset	:	IN	STD_LOGIC;
		clk		:	IN	STD_LOGIC;
		output  :	OUT	STD_LOGIC;	
		value   :   IN INTEGER 
	);
end component;

begin

dut: PWM 
    Generic map (
		PWM_MAX => 5	
	)
	Port map(
		reset	=> reset,
		clk		=> clk,
		output  => output,
		value   => value
	);
	
   clk <= not clk after 1 ns;


   
    values : process
        begin
         reset <= '0';
         value <= 0;
         wait for 200 ns;
         value <= 1;
         wait for 200 ns;
         value <= 2;
         wait for 200 ns;
         value <= 3;
         wait for 200 ns;
         value <= 4;
         wait;
        end process;

end Behavioral;
