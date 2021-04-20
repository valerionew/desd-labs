
library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
    use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.all;
use work.shift_register_type.all;




entity ShiftRegister is
    Generic(
        SR_DEPTH     :   INTEGER    := 16;
        TRAIL_LENGTH :   INTEGER    := 5
    );
    Port ( 
        
        ---------- Reset/Clock ----------
        reset   :   IN  STD_LOGIC;
        clk     :   IN  STD_LOGIC;
        ---------------------------------

        ------------- Data --------------
        shift_ready : IN  STD_LOGIC;
        din   :   IN    STD_LOGIC;
        dout  :   OUT   STD_LOGIC;
        pout  :   OUT   SR_type(SR_DEPTH-1 downto 0)
        ---------------------------------
     
    ); 
end ShiftRegister;

architecture Behavioral of ShiftRegister is
    
    function pattern_init return SR_type is
    variable temp : SR_type := (Others => 0);
    begin
        for I in 0 to TRAIL_LENGTH-1 loop
            temp(I) := TRAIL_LENGTH-I;
    end loop;
    return temp;
  end pattern_init;
  
  
    signal T : SR_type := pattern_init;
begin

  pout <= T; --parallel output of the shift registerp
    
  SHIFT : process(clk,reset)
  begin
      if( reset = '1') then
            T <= pattern_init;
        elsif rising_edge(clk) then
            if shift_ready = '1' then
                T <= T(SR_DEPTH-2 downto 0) & din;
            end if;
        end if;


  end process;

  dout <= T(SR_DEPTH-1);

end Behavioral;

