-- Note: detailed description of how it works is contained in the entities

-- This system generates a PWM vector (PWM_Tails entity) containing 
-- head and tails of the leds. PWM vector is TAIL_LENGTH long. 
-- It then demux each of the generated PWM bit to a specific LED out.

-- PWM tail bit --> DEMUX --> destination LED 
-- Routing (demux) is decided by a Circular SR that shifts the addresses.
-- It then uses these addresses to route PWM input to the corresponding LED out

-- Top module connects PWM_Tails and Kitt_Mux together and sequence them through
-- a counter which speed is regulated through the switches

-- Startup state has not been specified in the project specifications, therefore:
-- for a TAIL_LENGTH = 4 LEDs startup state will be:
-- LED15 -> 0
-- LED14 -> 0
-- ...   -> 0
-- ...   -> 0
-- LED3  -> brightest head
-- LED2  -> dark tail
-- LED1  -> darker tail
-- LED0  -> darkest tail

--This has been choosen for a cleaner code in the reset states

---------- DEFAULT LIBRARY ---------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
------------------------------------
entity TOP_KIT is
	generic
	(
		CLK_PERIOD_NS        : POSITIVE range 1 to 100  := 10; -- clk period in nanoseconds
		MIN_KITT_CAR_STEP_MS : POSITIVE range 1 to 2000 := 1; -- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)
		NUM_OF_SWS           : INTEGER range 1 to 16    := 16; -- Number of input switches
		NUM_OF_LEDS          : INTEGER range 1 to 16    := 16; -- Number of output LEDs
		TAIL_LENGTH          : INTEGER range 1 to 16    := 4 -- Tail length
	);
	port
	(
		------- Reset/Clock --------
		reset : in  STD_LOGIC;
		clk   : in  STD_LOGIC;
		----------------------------
		-------- LEDs/SWs ----------
		sw    : in  STD_LOGIC_VECTOR(NUM_OF_SWS - 1 downto 0); -- Switches avaiable on Basys3
		leds  : out STD_LOGIC_VECTOR(NUM_OF_LEDS - 1 downto 0) -- LEDs avaiable on Basys3
		----------------------------
	);
end TOP_KIT;
architecture Behavioral of TOP_KIT is
    -------- PWM TAIL GENERATION ----------
	component PWM_tails
		generic
		(
			TAIL_LENGTH : INTEGER range 1 to 16 -- Led tail length
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
	end component;
	----------------------------
	
	---- LED MUX FOR PWM -------
	component Kitt_Mux
		generic
		(
			NUM_OF_LEDS : INTEGER range 1 to 16; -- Leds used  over the 16 in Basys3
			TAIL_LENGTH : INTEGER range 1 to 16
		);
		port
		(
			------- Reset/Clock --------
			reset          : in  STD_LOGIC;
			clk            : in  STD_LOGIC;
			----------------------------
			-------- LEDs/SWs ----------
			shift_enable   : in  STD_LOGIC;
			pwm_in_pattern : in  STD_LOGIC_VECTOR(TAIL_LENGTH - 1 downto 0);
			LEDs           : out STD_LOGIC_VECTOR(NUM_OF_LEDS - 1 downto 0) -- LEDs avaiable on Besys3
			----------------------------
		);
	end component;
	------------------
	
	
	------------------ CONSTANT DECLARATION -------------------------
	---------- TIMER -----------
	constant RANGE_COUNT_FINE   : POSITIVE := ((MIN_KITT_CAR_STEP_MS * 1_000_000) / CLK_PERIOD_NS); -- Implementation
	--constant RANGE_COUNT_FINE   :	POSITIVE	:= ((MIN_KITT_CAR_STEP_MS*1)/CLK_PERIOD_NS);				-- Test Bench
	constant RANGE_COUNT_COARSE : POSITIVE := 2 ** NUM_OF_SWS - 1;
	----------------------------
	
	---------------------------- SIGNALS ----------------------------
	----- Counter Registers ----
	signal count_fine           : INTEGER range 0 to RANGE_COUNT_FINE - 1   := 0;
	signal count_coarse         : INTEGER range 0 to RANGE_COUNT_COARSE - 1 := 0;
	signal select_speed         : INTEGER range 0 to RANGE_COUNT_COARSE - 1 := 1;
	signal select_speed_reg     : INTEGER range 0 to RANGE_COUNT_COARSE - 1 := 1;
	signal shift_enable         : STD_LOGIC                                 := '0';
	signal pwm_in_pattern       : STD_LOGIC_VECTOR(TAIL_LENGTH - 1 downto 0); 
	----------------------------
begin
    ------- PWM MODULE INSTANTIATION --------
	inst_pwm_tail_generation : PWM_Tails
        Generic Map(
        TAIL_LENGTH => TAIL_LENGTH
        )
        Port Map(
            ------- Reset/Clock --------
            reset => reset,
            clk   => clk,
            ----------------------------
            PWM   => pwm_in_pattern
            ----------------------------
	);
	
	
	------ PWM MODULE INSTANTIATION --------
	inst_kitt_mux : Kitt_Mux
        Generic Map(
            NUM_OF_LEDS => NUM_OF_LEDS,
            TAIL_LENGTH => TAIL_LENGTH
        )
        Port Map(
            ------- Reset/Clock --------
            reset          => reset,
            clk            => clk,
            ----------------------------
            -------- LEDs/SWs ----------
            shift_enable   => shift_enable,
            pwm_in_pattern => pwm_in_pattern,
            LEDs           => LEDs
            ----------------------------
    );

	----------------------------- CLOCK DIVISION PROCESS ------------------------------
	------ Sync Process --------
	process (reset, clk)
	begin
	
		-- Reset
		if reset = '1' then
		
			count_fine       <= 0;
			count_coarse     <= 0;
			select_speed     <= 1;
			select_speed_reg <= 1;
			
		elsif rising_edge(clk) then
		
			-- Sample switches to guarantee stability on rising_edge(clk)
			select_speed     <= to_integer(unsigned(sw));
			select_speed_reg <= select_speed;
			
			-- Count the clock pulses (fine)
			count_fine       <= count_fine + 1;
			
			-- shift_enable always low, unless overridden in the following if
			shift_enable     <= '0';
			-- Counter "fine" end (MIN_KITT_CAR_STEP_MS)
			if count_fine = RANGE_COUNT_FINE - 1 then
			
				count_fine   <= 0;
				count_coarse <= count_coarse + 1;
				
				-- Counter "coarse" end (MIN_KITT_CAR_STEP_MS*switches)
				if count_coarse = select_speed then
					count_coarse <= 0;
					-- Ready to start a new shift
					shift_enable <= '1';
				end if;
			end if;
			
			-- Reset settings
			if select_speed /= select_speed_reg then
				count_fine   <= 0;
				count_coarse <= 0;
				shift_enable <= '0';
			end if;
			
		end if;
	end process;
end Behavioral;
