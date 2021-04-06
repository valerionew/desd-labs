library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
    use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity ShiftRegister is
    Generic(
        SR_DEPTH   :   POSITIVE    := 16;
        SR_INIT    :   STD_LOGIC   := '0' 
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
        pout  :   OUT   std_logic_vector(SR_DEPTH-1 downto 0)
        ---------------------------------
     
    ); 
end ShiftRegister;

architecture Behavioral of ShiftRegister is
    signal T : std_logic_vector(SR_DEPTH-1 downto 0) := (Others => '0');
begin
  pout <= T; --parallel output of the shift registerp
    
  SHIFT : process(clk,reset)
  begin
      if( reset = '1') then
            T <= (others => SR_INIT);
        elsif rising_edge(clk) then
            if shift_ready = '1' then
                T <= T(SR_DEPTH-2 downto 0) & din;
            end if;
        end if;


  end process;

  dout <= T(SR_DEPTH-1);

end Behavioral;

