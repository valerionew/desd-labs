----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2021 17:44:47
-- Design Name: 
-- Module Name: top_sim - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_sim is
	Generic (
		CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100     := 10;	-- clk period in nanoseconds
		MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000    := 1;	-- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t0)

		NUM_OF_SWS		:	INTEGER	RANGE	1 TO 16 := 16;	-- Number of input switches
		NUM_OF_LEDS		:	INTEGER	RANGE	1 TO 16 := 16	-- Number of output LEDs
	);
end top_sim;

architecture Behavioral of top_sim is

    signal clk : std_logic := '0';
    signal reset : std_logic;
    signal sw   : STD_LOGIC_VECTOR(NUM_OF_SWS-1  downto 0) := (Others => '0');
    signal leds : STD_LOGIC_VECTOR(NUM_OF_LEDS-1 downto 0) := (Others => '0');
    
component KittCar is
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
    end component;

begin
    dut: KittCar
    generic map(
        CLK_PERIOD_NS => 100, --we set this to 100 to speed up the simulation
        MIN_KITT_CAR_STEP_MS => 1
    )
    port map(
        reset    => reset, 
        clk      => clk,
        sw     => sw,
        leds  => leds
     );
        
   clk <= not clk after 5 ns;


   
    switches : process
        begin
         reset <= '0';
         wait;
         wait for 320 ns;
         sw <= (0 => '1', Others => '0');
         wait for 640 ns;
         sw <= (1 => '1', Others => '0');
         wait for 10 ns;
         reset <= '0';
         wait;
        end process;

end Behavioral;
