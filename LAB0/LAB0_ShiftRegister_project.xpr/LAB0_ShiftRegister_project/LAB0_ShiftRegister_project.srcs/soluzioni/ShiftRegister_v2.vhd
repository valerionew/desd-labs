----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2019 16:26:08
-- Design Name: 
-- Module Name: ShiftRegister_v2 - Behavioral
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

entity ShiftRegister_v2 is
    Generic(
        SR_WIDTH   :   NATURAL   := 8;
        SR_DEPTH   :   POSITIVE  := 4;
        SR_INIT    :   INTEGER   := 0 
    );
    Port ( 
        
        ---------- Reset/Clock ----------
        reset   :   IN  STD_LOGIC;
        clk     :   IN  STD_LOGIC;
        ---------------------------------

        ------------- Data --------------
        din   :   IN    STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0);
        dout  :   OUT   STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0)
        ---------------------------------
        
    );
end ShiftRegister_v2;

architecture Behavioral of ShiftRegister_v2 is

    ----------------------- Constants Declaration -------------------------
    
    ----- Initialization in SLV ----
    constant   INIT_SLV :    STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(SR_INIT,SR_WIDTH));
    ---------------------------------    
        
    ----------------------------------------------------------------------



    -------------------------- Types Declaration --------------------------
    
    ------------ Memory  ------------
    type    MEM_ARRAY_TYPE  is  array(0 TO SR_DEPTH-1) of STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0);
    ---------------------------------    
        
    ----------------------------------------------------------------------


    ------------------------- Signal Declaration -------------------------
    
    ------------ Memory  ------------
    signal  mem   :   MEM_ARRAY_TYPE := ( Others  => INIT_SLV);
    ---------------------------------    
        
    ----------------------------------------------------------------------


begin
  
	dout    <=  mem(SR_DEPTH-1);

    shift_reg  :  process(reset, clk)
    begin
    
        if (reset = '1') then
            mem  <= (Others => INIT_SLV);
            
        elsif rising_edge(clk) then
            mem  <=  din&mem(0 TO SR_DEPTH-2);
         
        end if;
    
    end process;



end Behavioral;
