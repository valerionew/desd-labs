--Generates an output vector containing a constant value and a set of trails. 
--Result for a TAIL_LENGTH = 4 will be (zeros are represented as underscores):

--------------------------------- -> time axis
--pwm_reg(3) 11111111111111111111...
--pwm_reg(2) _111_111_111_111_111...
--pwm_reg(1) __11__11__11__11__11...
--pwm_reg(0) ___1___1___1___1___1...
--           ^^^^^^^^^^^^^^^^^^^^ -> clock rising edges 

-- If tail = 4, pwm frequency will be FPGA_clk_freq / 4 and so on
-- There was no spec decided for PWM frequency, so the simplest implementation has been chosen

---------- DEFAULT LIBRARY ---------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity PWM_tails is
	generic
	(
		TAIL_LENGTH : INTEGER range 1 to 16 := 4 -- Led tail length
	);
	port
	(
		------- Reset/Clock --------
		reset : in  STD_LOGIC;
		clk   : in  STD_LOGIC;
		----------------------------
		PWM   : out STD_LOGIC_VECTOR(TAIL_LENGTH - 1 downto 0) -- PWM signal
		----------------------------
	);
end PWM_tails;
architecture Behavioral of PWM_tails is
	-- Signals
	signal count   : UNSIGNED(TAIL_LENGTH - 1 downto 0) := (others => '0');
	signal pwm_reg : STD_LOGIC_VECTOR(PWM'range);
begin
    -- Connect signal to PWM output
	PWM <= pwm_reg;
	
	-- PWM Process --
	process (reset, clk)
	begin
		if reset = '1' then
		    --
			count   <= (Others => '0');
			pwm_reg <= (Others => '0');
			
		elsif rising_edge(clk) then
		    pwm_reg(TAIL_LENGTH-1) <= '1';
			count <= count + 1;
			
			if count = TAIL_LENGTH then
				count   <= (Others => '0');
				pwm_reg <= ('1', Others => '0');
			end if;
			
			for I in 0 to TAIL_LENGTH - 2 loop
				if count = TAIL_LENGTH - 1 - I then
					pwm_reg(I) <= not pwm_reg(I);
				end if;
			end loop;
		end if;
	end process;
end Behavioral;
