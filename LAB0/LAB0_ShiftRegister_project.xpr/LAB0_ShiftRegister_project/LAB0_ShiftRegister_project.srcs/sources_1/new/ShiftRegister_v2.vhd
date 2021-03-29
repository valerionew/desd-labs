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
        SR_WIDTH   :   NATURAL   := 8; -- lunghezza parola
        SR_DEPTH   :   POSITIVE  := 4; -- quanti vettori
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
    type MEM_type is array (SR_DEPTH-1 downto 0) of std_logic_vector(SR_WIDTH-1 downto 0) ;
    
    signal mem_dt : MEM_type := (Others => std_logic_vector(to_unsigned(SR_INIT,SR_WIDTH))) ;

begin
    shift : process(clk,reset)
    begin
        if reset = '1' then 
            mem_dt <= (Others => std_logic_vector(to_unsigned(SR_INIT,SR_WIDTH)) );
        elsif (rising_edge(clk)) then
            --codice della v1 mem  	<=  din&mem(0 TO SR_DEPTH-2);   
            
            --for mem_dt(R)(C) <= 
            
            -- for R in 0 to SR_DEPTH-1 loop
            --     mem_dt(R)() <= din & mem_dt(R)(SR_DEPTH-2 downto 0);-- non funzia per padding
            -- end loop;

            -- mem_dt(0) <= din;
            -- for R in 1 to SR_DEPTH-1 loop
             --    mem_dt(R) <= mem_dt(R-1);
             -- end loop;

            -- 00000   din
            -- 12345   R=0
            -- 23456   R=1
            -- 34567   R=2

            -- 00000   R=0
            -- 23456   R=1
            -- 34567   R=2


            -- 12345   R=0    ->  00000   R=0 din      din & r0 & r1 & r2
            -- 23456   R=1    ->  12345   R=1
            -- 34567   R=2    ->  23456   R=2


            -- R=0 
            -- mem_dt( ) = 000001234

             mem_dt <= mem_dt(SR_DEPTH-2 downto 0) & din; --barerio
        end if;
            
    end process;
        dout <= mem_dt(SR_DEPTH-1);
    end Behavioral;





    