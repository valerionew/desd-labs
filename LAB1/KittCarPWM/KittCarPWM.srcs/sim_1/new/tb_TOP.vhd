--NOTE: comment the right "constant RANGE_COUNT_FINE " in TOP_KIT.vhd

--This simulation pushes read SWs/reset and starts the whole circuit

---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------
entity tb_TOP is
end tb_TOP;
 
architecture Behavioral of tb_TOP is 

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing -----------
	constant	CLK_PERIOD 	:	TIME	:= 10 ns;
	constant	RESET_WND	:	TIME	:= 4*CLK_PERIOD; 
	----------------------------

	--- TB Initialiazzations ---
	constant	TB_CLK_INIT		      :	   STD_LOGIC	:= '0';
	constant	TB_RESET_INIT 	      :	   STD_LOGIC	:= '1';
	----------------------------
	
	------- DUT Generics -------
	constant	DUT_NUM_OF_LEDS			:	INTEGER	RANGE	1 TO 16 := 16;
	constant    DUT_NUM_OF_SW           :   INTEGER	RANGE	1 TO 16 := 16;
	constant    DUT_TAIL_LENGTH         :   INTEGER	RANGE	1 TO 16 := 4;
	
	----------------------------

    constant    CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100     := 10;	-- clk period in nanoseconds
    constant    MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000    := 10;	-- NANOSECONDS

	----------- DUT -----------
	component TOP_KIT
        Generic (
    
            CLK_PERIOD_NS			:	POSITIVE	RANGE	1	TO	100; 	
            MIN_KITT_CAR_STEP_MS	:	POSITIVE	RANGE	1	TO	2000;
    
            NUM_OF_SWS		:	INTEGER	RANGE	1 TO 16;	-- Number of input switches
            NUM_OF_LEDS		:	INTEGER	RANGE	1 TO 16;	-- Number of output LEDs
            TAIL_LENGTH		:	INTEGER	RANGE	1 TO 16	-- Tail length
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
	--------------------- SIGNALS DECLARATION -----------------------

	------- Clock/Reset  -------
	signal	reset	:	STD_LOGIC	:= TB_RESET_INIT;
	signal	clk		:	STD_LOGIC	:= TB_CLK_INIT;
	----------------------------	
	
	
	-------- LEDs/SWs ----------
	signal	dut_LEDs	:	STD_LOGIC_VECTOR(DUT_NUM_OF_LEDS-1 downto 0);
    signal  dut_sw      :   STD_LOGIC_VECTOR(DUT_NUM_OF_SW-1 downto 0) := (std_logic_vector(to_unsigned(2,DUT_NUM_OF_SW)));
	----------------------------		
begin
	--------------------- COMPONENTS DUT WRAPPING --------------------
	
	----------- DUT ------------
	dut_top_inst: TOP_KIT
        Generic Map(
    
            CLK_PERIOD_NS			=> CLK_PERIOD_NS,
            MIN_KITT_CAR_STEP_MS	=> MIN_KITT_CAR_STEP_MS,
            NUM_OF_SWS		=> DUT_NUM_OF_SW,
            NUM_OF_LEDS		=> DUT_NUM_OF_LEDS,
            TAIL_LENGTH		=> DUT_TAIL_LENGTH
        )
        Port map(
    
            ------- Reset/Clock --------
            reset	=> reset,
            clk		=> clk,
            ----------------------------
    
            -------- LEDs/SWs ----------
            sw		=> dut_sw,
            leds	=> dut_LEDs
            ----------------------------
    
        );


	--------------------- TEST BENCH DATA FLOW  -----------------------
	
	---------- clock ----------
	clk <= not clk after CLK_PERIOD/2;
	----------------------------

	----- Reset Process --------
	reset_wave :process
	begin
		reset <= TB_RESET_INIT;
		wait for RESET_WND;
		
		reset <= not reset;
		wait;
    end process;	
	----------------------------
	
--	shift_en_wave :process
--	begin
--	   wait for RESET_WND;
--	   for I in 0 to TB_SHIFT_EN_TOTAL loop
--            shift_enable <= not shift_enable;
--            wait for CLK_PERIOD/2;
--            shift_enable <= not shift_enable;
--            wait for CLK_PERIOD/2*SHIFT_CLK_PRESCALER;
--       end loop;
--		wait;
--    end process;	
	
	
	
end;
