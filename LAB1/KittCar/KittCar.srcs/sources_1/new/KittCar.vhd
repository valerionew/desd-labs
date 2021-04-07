----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2021 11:17:14
-- Design Name: 
-- Module Name: KittCar - Behavioral
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


entity KittCar is
	Generic (

		CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100     := 10;	-- clk period in nanoseconds
		MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000    := 1;	-- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t0)

		NUM_OF_SWS		:	INTEGER	RANGE	1 TO 16 := 16;	-- Number of input switches
		NUM_OF_LEDS		:	INTEGER	RANGE	1 TO 16 := 16	-- Number of output LEDs

	);
	Port (

		------- Reset/Clock --------
		reset	:	IN	STD_LOGIC;
		clk		:	IN	STD_LOGIC;
		----------------------------

		-------- LEDs/SWs ----------
		sw		:	IN	STD_LOGIC_VECTOR(NUM_OF_SWS-1 downto 0);	-- Switches avaiable on Basys3
		leds	:	OUT	STD_LOGIC_VECTOR(NUM_OF_LEDS-1 downto 0)	-- LEDs avaiable on Basys3
		----------------------------

	);
end KittCar;

architecture Behavioral of KittCar is

component ShiftRegister is
		Generic(
			SR_DEPTH   :   POSITIVE    := NUM_OF_LEDS;
			SR_INIT    :   STD_LOGIC   := '0' 
		);
		Port( 
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
end component;


--CONSTANTS
constant fpga_frequency_prescaler: positive := 1000000; --value of the main prescaler
--if fpga_frequency_prescaler = 1e+6, base frequency will be 100e+6Hz / 1e+6 = 100Hz

--SIGNALS
signal send_to_return : STD_LOGIC := '0';
signal return_to_send : STD_LOGIC := '1';
signal clock_ready : STD_LOGIC := '0';

--signal N_prescale: std_logic_vector(4-1 downto 0); --4 bit prescaler to assign to the switches
signal Pout_send   : std_logic_vector(NUM_OF_LEDS-2 downto 0);
signal Pout_return : std_logic_vector(NUM_OF_LEDS-2 downto 0);

--signal counters
signal first_counter : integer := 0;
signal second_counter : integer := 0;


begin


--   case of 16 leds
--  |00|-|01|-|02|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|14|---?      Pout_send
--    |--|14|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|__|-|02|-|01|-|00|     Pout_return
--    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |      OR
--   L0   L1   L2   >|   >|   >|   >|   >|   >|   >|   >|   >|   >|   >|   L14  L15     leds



leds(0) <= Pout_send(0);
leds(NUM_OF_LEDS-1) <= Pout_return(0);
	
-- generate or between shift registers
OR_shift: for I in 1 to NUM_OF_LEDS-2 generate
	leds(I) <= Pout_send(I) or Pout_return(NUM_OF_LEDS-1-I);
end generate;


-- potremmo girare return in un altro segnale e vedere se funziona 
--leds <= Pout_send(Pout_send'range) or Pout_return(Pout_return'reverse_range);


--////switch read to assign N_prescale signal////
--////////


-- clk downscaling
	clk_downscale_process: process(reset,clk)
	begin

		if reset = '1' then
			first_counter <= 0;
			second_counter <= 0;
			clock_ready <= '0';
		elsif rising_edge(clk) then

			-- counter update
			first_counter <= first_counter + 1;

			-- first prescaled first_counter
			if first_counter >= fpga_frequency_prescaler then
			-- condition is >= instead of just = because if first counter skips some steps
			-- writing just = could cause issues
				second_counter <= second_counter + 1;  -- downscaled clock state change
				first_counter <= 0;
			end if;	

			-- second counter to set multiples of second_counter to slow frequency down
			if second_counter >= to_integer(unsigned(sw)) then -- second counter
			-- condition is >= instead of = because user could change value while counting
				clock_ready <= '1';  -- system is ready to go to next led stage
				second_counter <= 0;
			else
				clock_ready <= '0';
			end if;	
		end if;
	end process;

	SHIFT_SEND : ShiftRegister -- left to right
	Generic  map(
		SR_DEPTH   => NUM_OF_LEDS-1,
		SR_INIT    => '1' 	
	)
	port map (
	        ---------- Reset/Clock ----------
			reset   => reset,
			clk     => clk,
			---------------------------------
	
			------------- Data --------------
			shift_ready => clock_ready,
			din   		=> return_to_send,
			dout  		=> send_to_return,
			pout  		=> Pout_send
			---------------------------------
	);
	
	SHIFT_RETURN : ShiftRegister -- right to left
    Generic  map(
		SR_DEPTH   => NUM_OF_LEDS-1,
		SR_INIT    => '0' 	
	)
	port map ( --USARE LA FRECCIA VERSO DX NEL PORTMAP =>
	        ---------- Reset/Clock ----------
			reset   => reset,
			clk     => clk,
			---------------------------------
	
			------------- Data --------------
			shift_ready => clock_ready,
			din   		=> send_to_return,
			dout  		=> return_to_send ,
			pout  		=> Pout_return
			---------------------------------
	);

	

end Behavioral;