----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2019 13:22:43
-- Design Name: 
-- Module Name: ShiftRegister_v1 - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftRegister_v1 is
    Generic(
        SR_DEPTH   :   POSITIVE    := 4;
        SR_INIT    :   STD_LOGIC   := '0' 
    );
    Port ( 
        
        ---------- Reset/Clock ----------
        reset   :   IN  STD_LOGIC;
        clk     :   IN  STD_LOGIC;
        ---------------------------------

        ------------- Data --------------
        din   :   IN    STD_LOGIC;
        dout  :   OUT   STD_LOGIC
        ---------------------------------
        
    );
end ShiftRegister_v1;

architecture Behavioral of ShiftRegister_v1 is

    ------------------------- Signal Declaration -------------------------
    
    ------------ Memory  ------------
    signal  mem   :   STD_LOGIC_VECTOR(0 TO SR_DEPTH-1)  := (Others => SR_INIT);
    ---------------------------------    
        
    ----------------------------------------------------------------------


begin
  
	dout    <=  mem(SR_DEPTH-1);

    shift_reg  :  process(reset, clk)
    begin
    
        if (reset = '1') then
            mem  	<= (Others => SR_INIT);
            
        elsif rising_edge(clk) then
         
            mem  	<=  din&mem(0 TO SR_DEPTH-2);   
 
        
        end if;
    
    end process;



end Behavioral;
