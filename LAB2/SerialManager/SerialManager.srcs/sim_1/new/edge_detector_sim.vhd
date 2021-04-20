----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2021 15:04:44
-- Design Name: 
-- Module Name: edge_detector_sim - Behavioral
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

entity edge_detector_sim is

end edge_detector_sim;

architecture Behavioral of edge_detector_sim is
signal clk : std_logic := '0';
signal reset : STD_LOGIC := '0';
signal in_port : STD_LOGIC := '0';
signal pos_edge_trigger : STD_LOGIC;
signal neg_edge_trigger : STD_LOGIC;

component edge_detector is
    Port ( 
--------------------------------------------

      clk : in STD_LOGIC;
      reset : in STD_LOGIC;
      
--------------------------------------------     
   
      in_port : in STD_LOGIC;
      pos_edge_trigger : out STD_LOGIC;
      neg_edge_trigger : out STD_LOGIC
      
--------------------------------------------     
     );
end component;


begin
dut : edge_detector
port map (
      clk => clk,
      reset  => reset,
      in_port  => in_port,
      pos_edge_trigger  => pos_edge_trigger,
      neg_edge_trigger  => neg_edge_trigger
);
        
   clk <= not clk after 5 ns;


   
    switches : process
        begin
         reset <= '0';
         wait for 30 ns;
         in_port <= '1';
         wait for 50 ns;
         in_port <= '0';
         wait;
        end process;

end Behavioral;
