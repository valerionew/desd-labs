----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2021 14:50:00
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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

entity edge_detector is
    Generic (
      sys_clk_freq            : integer := 100_000_000;  
      debounce_inhibit_ms     : integer := 10         
    );
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
end edge_detector;

architecture Behavioral of edge_detector is
signal last_state : std_logic := in_port;
signal inhibit_count :  integer := 0;

constant DEBOUNCE_COUNT : integer := debounce_inhibit_ms*sys_clk_freq/1000;
begin

edge_detect : process (clk,reset)
begin
if rising_edge(clk) then
    if reset = '1' then
        last_state <=  in_port;
    else
        last_state <= in_port;
        
        if inhibit_count /= 0 then
            inhibit_count <= inhibit_count - 1;
        end if;
        
        -- if we have an edge
        if (last_state xor in_port) = '1' and inhibit_count = 0 then
            inhibit_count <= DEBOUNCE_COUNT;
            if(in_port = '1') then
                pos_edge_trigger <= '1';
            else
                neg_edge_trigger <= '1';
            end if;
        else
            pos_edge_trigger <= '0';
            neg_edge_trigger <= '0';
        end if;
    end if;
    
end if;
end process;

end Behavioral;
