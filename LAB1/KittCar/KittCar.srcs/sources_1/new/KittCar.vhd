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
			pout  :   OUT   std_logic_vector(SR_DEPTH downto 0)
			---------------------------------
		);
end component;


--CONSTANTS
constant fpga_frequency : integer := 100000000; --change this to set t0
--SIGNALS
signal send_to_return : STD_LOGIC := '0';
signal return_to_send : STD_LOGIC := '1';
signal clock_ready : STD_LOGIC := '0';

--signal N_prescale: std_logic_vector(4-1 downto 0); --4 bit prescaler to assign to the switches
signal Pout_send   : std_logic_vector(NUM_OF_LEDS-1 downto 0);
signal Pout_return : std_logic_vector(NUM_OF_LEDS-1 downto 0);

--signal counters
signal counter : positive := 0;
signal t0 : positive := 0;


begin
	
-- generate or between shift registers
OR_shift: for I in 0 to NUM_OF_LEDS-1 generate
	leds(I) <= Pout_send(I) or Pout_return(NUM_OF_LEDS-1-I);
end generate;


--leds<= Pout_send(Pout_send'range) or Pout_return(Pout_return'reverse_range)


--////switch read to assign N_prescale signal////
--////////


-- clk downscaling
	clk_downscale_process: process(reset,clk)
	
	begin

		if reset = '1' then
			counter <= 0;
			t0 <= 0;
			clock_ready <= '0';
		elsif rising_edge(clk) then

			--counter update
			counter <= counter + 1;

			-- first counter
			if counter = fpga_frequency then 
				t0 <= t0 + 1;  -- downscaled clock state change
				counter <= 0;
			end if;	

			-- second counter to set multiples of t0
			if t0 = to_integer(unsigned(sw)) then -- second counter
				clock_ready <= not clock_ready;  -- system is ready to go to next led stage
				t0 <= 0;
			end if;	
		end if;
	end process;

	SHIFT_SEND : ShiftRegister -- left to right
	Generic  map(
		SR_DEPTH   => 16,
		SR_INIT    => '0' 	
	)
	port map (
	        ---------- Reset/Clock ----------
			reset   => reset,
			clk     => ,
			---------------------------------
	
			------------- Data --------------
			shift_ready => clock_ready,
			din   		=> return_to_send,
			dout  		=> send_to_return,
			pout  		=> Pout_send
			---------------------------------
	);
	
	SHIFT_RETURN : ShiftRegister -- right to left
	port map ( --USARE LA FRECCIA VERSO DX NEL PORTMAP =>
	        ---------- Reset/Clock ----------
			reset   => reset,
			clk     => ,
			---------------------------------
	
			------------- Data --------------
			shift_ready => clock_ready,
			din   		=> send_to_return,
			dout  		=> return_to_send ,
			pout  		=> Pout_return
			---------------------------------
	);

	

end Behavioral;