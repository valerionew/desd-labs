--This simulation pushes 1 bit set to '1' into the pwm_in_pattern of Kitt_Mux.
--Tail length is arbitrary, output will still be just a Kittcar example without any tail
--This is just to test that Kitt_Mux shifts pwm_in_pattern correctly.

--Later on, pwm_in_pattern will be a vector (long TAIL_LENGTH) containing PWM head and all the tails

--In the simulation, shift prescaler sets the shift frequency starting from prescaling the clock

---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------
entity tb_Kitt_Mux is
end tb_Kitt_Mux;
 
architecture Behavioral of tb_Kitt_Mux is 

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing -----------
	constant	CLK_PERIOD 	:	TIME	:= 10 ns;
	constant	RESET_WND	:	TIME	:= 4*CLK_PERIOD; 
	----------------------------

	--- TB Initialiazzations ---
	constant	TB_CLK_INIT		      :	   STD_LOGIC	:= '0';
	constant	TB_RESET_INIT 	      :	   STD_LOGIC	:= '1';
	constant	TB_SHIFT_EN_INIT      :	   STD_LOGIC	:= '0';
	constant	TB_SHIFT_EN_TOTAL     :	   integer	    := 20;
	constant    SHIFT_CLK_PRESCALER   :    integer	    := 2;
	----------------------------
	
	
	------- DUT Generics -------
	constant	DUT_NUM_OF_LEDS			:	INTEGER	RANGE	1 TO 16 := 5;
	constant    DUT_TAIL_LENGTH         :   INTEGER	RANGE	1 TO 16 := 4;
	----------------------------


	----------- DUT -----------
	component Kitt_Mux
		Generic(
			
			NUM_OF_LEDS		:	INTEGER	RANGE	1 TO 16;	-- Leds used  over the 16 in Basys3		
		    TAIL_LENGTH     :   INTEGER	RANGE	1 TO 16
		);
		Port ( 
		
			------- Reset/Clock --------
			reset	:	IN	STD_LOGIC;
			clk		:	IN	STD_LOGIC;
			----------------------------		

			-------- LEDs/SWs ----------
			shift_enable   : IN    STD_LOGIC;
			pwm_in_pattern : IN STD_LOGIC_VECTOR(TAIL_LENGTH-1 downto 0);
			LEDs	:	OUT	STD_LOGIC_VECTOR(NUM_OF_LEDS-1 downto 0)
			----------------------------		
			
		);
	end component;
	--------------------- SIGNALS DECLARATION -----------------------

	------- Clock/Reset  -------
	signal	reset	:	STD_LOGIC	:= TB_RESET_INIT;
	signal	clk		:	STD_LOGIC	:= TB_CLK_INIT;
	----------------------------	
	
	
	-------- LEDs/SWs ----------
	signal  shift_enable:   STD_LOGIC:= TB_SHIFT_EN_INIT;
	signal	dut_LEDs	:	STD_LOGIC_VECTOR(DUT_NUM_OF_LEDS-1 downto 0);
    signal  dut_pwm     :   STD_LOGIC_VECTOR(DUT_TAIL_LENGTH-1 downto 0) := (std_logic_vector(to_unsigned(1,DUT_TAIL_LENGTH)));
	----------------------------		
begin
	--------------------- COMPONENTS DUT WRAPPING --------------------
	
	----------- DUT ------------
	dut_Kitt_Mux	:	Kitt_Mux
		Generic Map(
			
			NUM_OF_LEDS		=>	DUT_NUM_OF_LEDS,
			TAIL_LENGTH => DUT_TAIL_LENGTH
				
		)
		Port Map( 
		
			------- Reset/Clock --------
			reset	=> reset,
			clk		=> clk,
			----------------------------		

			-------- LEDs/SWs ----------
			shift_enable => shift_enable,
			pwm_in_pattern => dut_pwm,
			LEDs	=> dut_LEDs
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
	
	-- Shift enable sequence Process --
	shift_en_wave :process
	begin
	   wait for RESET_WND;
	   for I in 0 to TB_SHIFT_EN_TOTAL loop
            shift_enable <= not shift_enable;
            wait for CLK_PERIOD/2;
            shift_enable <= not shift_enable;
            wait for CLK_PERIOD/2*SHIFT_CLK_PRESCALER;
       end loop;
		wait;
    end process;	
	-----------------------------------
	
	
end;
