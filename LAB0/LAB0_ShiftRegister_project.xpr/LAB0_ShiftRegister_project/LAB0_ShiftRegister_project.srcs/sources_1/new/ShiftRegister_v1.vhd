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
    signal T : std_logic_vector(SR_DEPTH-1 downto 0);
    
begin
    
  SHIFT : process(clk,reset)
  begin
      if( reset = '1') then
            T <= (others => SR_INIT);
        elsif rising_edge(clk) then
            T(0) <= din;   
            for I in 1 to SR_DEPTH-1 loop
                T(I) <= T(I-1);
            end loop;
        end if;


  end process;

  dout <= T(SR_DEPTH-1);

end Behavioral;




