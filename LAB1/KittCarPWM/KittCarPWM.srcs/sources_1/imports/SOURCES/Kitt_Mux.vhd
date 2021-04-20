-- This modules takes the PWM_tails module input and routes every bit of the PWM vector
-- following a "shift map". The procedure is obtained by using one circular SR.
-- The 1st half of the CircSR maps the PWM input vector "as it is" on LEDs output (send sequence mapping)
-- The 2nd half of the CircSR maps the PWM input vector with a reversed range (return sequence mapping)

-- CircSR only shifts addresses, no PWM information is recorded in the SR itself.
-- PWM information will be correspondingly routed in the dataflow section.
-- OR operation is needed when send/return bits are mapped on the same LED.
-- This will select the longest PWM tail, automatically solving the bouncing tail issue

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Kitt_Mux is
	Generic(
		NUM_OF_LEDS : INTEGER range 1 to 16 := 4; -- Leds used  over the 16 in Basys3
		TAIL_LENGTH : INTEGER range 1 to 16 := 2
	);
	Port(
		------- Reset/Clock --------
		reset          : in  STD_LOGIC;
		clk            : in  STD_LOGIC;
		----------------------------
		-------- LEDs/SWs ----------
		shift_enable   : in  STD_LOGIC; -- Enable shift stage to the follwing leds
		pwm_in_pattern : in  STD_LOGIC_VECTOR(TAIL_LENGTH - 1 downto 0); -- Input signal coming from the PWM tail module
		LEDs           : out STD_LOGIC_VECTOR(NUM_OF_LEDS - 1 downto 0)  -- LEDs avaiable on Besys3
		----------------------------
	);
end Kitt_Mux;
architecture Behavioral of Kitt_Mux is
	-- Constants
	
	-- Circ_SR_range needs to be double the number of leds in order to close the circle.
	-- Then, 2 positions have been removed in order to not have double bouncing on the boundary leds
	constant Circ_SR_range    : INTEGER := 2 * NUM_OF_LEDS - 2;
	----------------------------
	
    -- Types
    
    --define the array type for the circSR
    type Circ_SR_type is array (Circ_SR_range - 1 downto 0) of INTEGER;
    ----------------------------
	
	-- Signals
	signal last_shift         : INTEGER := Circ_SR_range - 1;
	signal pwm_in_pattern_sig : STD_LOGIC_VECTOR(Circ_SR_range - 1 downto 0) := (others => '0');
	
	----------------------------
	
	--Functions
	--the circular SR implemented has to be initialized to the
	--first shift stage, that is Circ_SR <= (0,1,3,..,last_address)
	--since last address changes based on Generic dimensions, signal can't be simply initialized
	--with something like Circ_SR <= (0,1,2,3,4,5,6,7,8,9,10,11,12,13) <-- initialized case when 8 LEDS are used
	
	function init_addresses return Circ_SR_type is
		variable temp : Circ_SR_type;
	begin
		for J in 0 to Circ_SR_range - 1 loop
			temp(J) := J;
		end loop;
		return temp;
	end init_addresses;
	----------------------------
	
	-- CircSR signals
	signal Circ_SR : Circ_SR_type := init_addresses; --using function to initialize array
	

begin
    
    -- PWM_in_pattern will be (3 downto 0) if we choose TAIL_LENGTH = 4, but has to be mapped on 
    -- a vector that is  (Circ_SR_range-1 downto 0) that can go as high as (29 downto 0)
	pwm_in_pattern_sig(TAIL_LENGTH - 1 downto 0) <= pwm_in_pattern;

	
	
	-- CircSR halves are addressed to outputs the following way: 
	--    1st half (NUM_OF_LEDS-1 downto 0) is directly mapped on output LEDS
	--    2nd half (Circ_SR_range-1 downto NUM_OF_LEDS) is mapped on output LEDS with reversed range
	
	-------  First and last LED mapping ------- 
	-- first and last positions are directly mapped in order to not have repeating bounce on boundary LEDS
	LEDs(0)                <= pwm_in_pattern_sig(Circ_SR(0));
	LEDs(NUM_OF_LEDS - 1)  <= pwm_in_pattern_sig(Circ_SR(NUM_OF_LEDS - 1));
	
	
	-------  Middle LEDs mapping -------  
	-- OR operation on the middle positions in order to select the longest concurrent tail
	OR_output_map : for I in 1 to NUM_OF_LEDS - 2 generate
		LEDs(I) <= pwm_in_pattern_sig(Circ_SR(I)) or pwm_in_pattern_sig(Circ_SR(Circ_SR_range - I));
	end generate;
	
	
	-- Circular SR process to shift MUX addresses
	process (reset, clk)
	begin
		if reset = '1' then
			-- Reset the circular SR to the initial addresses
			-- Circ_SR <= (0,1,2,3,4,...,Circ_SR_range - 1)
			for J in 0 to Circ_SR_range - 1 loop
				Circ_SR(J) <= J ;
			end loop;
			-- Initialize last_shift to the previous address
			last_shift <= Circ_SR_range - 1;
			
		elsif rising_edge(clk) then
			if shift_enable = '1' then
				-- Circular SR shift stage
				last_shift <= Circ_SR(Circ_SR_range - 2);
				Circ_SR    <= Circ_SR(Circ_SR_range - 2 downto 0) & last_shift;
			end if;
		end if;
	end process;
end Behavioral;
