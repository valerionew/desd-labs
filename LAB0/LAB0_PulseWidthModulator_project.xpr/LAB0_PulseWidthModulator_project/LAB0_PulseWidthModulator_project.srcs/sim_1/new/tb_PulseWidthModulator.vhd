----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2019 18:55:36
-- Design Name: 
-- Module Name: tb_PulseWidthModulator - Behavioral
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


---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
--	use IEEE.MATH_REAL.all;

--	use STD.textio.all;
--	use ieee.std_logic_textio.all;
		
------------------------------------
	
	
---------- OTHERS LIBRARY ----------
-- NONE
------------------------------------

entity tb_PulseWidthModulator is
end tb_PulseWidthModulator;

architecture Behavioral of tb_PulseWidthModulator is

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing -----------
	constant	CLK_PERIOD 	:	TIME	:= 10 ns;
	constant	RESET_WND	:	TIME	:= 10*CLK_PERIOD;
	
	constant	PWM_WND		:	TIME	:= 1 us;
	----------------------------

	--- TB Initialiazzations ---
	constant	TB_CLK_INIT		:	STD_LOGIC	:= '0';
	constant	TB_RESET_INIT 	:	STD_LOGIC	:= '1';
	----------------------------
	
	
	------- DUT Generics -------
	constant	DUT_BIT_LENGTH	:	INTEGER	RANGE	1 TO 16 := 2;	-- Leds used  over the 16 in Basys3
		
	constant	DUT_T_ON_INIT	:	POSITIVE	:= 8;				-- Init of Ton
	constant	DUT_PERIOD_INIT	:	POSITIVE	:= 16;				-- Init of Periof
		
	constant	DUT_PWM_INIT	:	STD_LOGIC  := '1';				-- Init of PWM
	----------------------------
	
	
	-----------------------------------------------------------------

	------ COMPONENT DECLARATION for the Device Under Test (DUT) ------

	----------- DUT -----------
	component PulseWidthModulator
		Generic(
							
			BIT_LENGTH	:	INTEGER	RANGE	1 TO 16;	-- Leds used  over the 16 in Basys3
			
			T_ON_INIT	:	POSITIVE;					-- Init of Ton
			PERIOD_INIT	:	POSITIVE;					-- Init of Periof
			
			PWM_INIT	:	STD_LOGIC					-- Init of PWM
		);
		Port ( 
		
			------- Reset/Clock --------
			reset	:	IN	STD_LOGIC;
			clk		:	IN	STD_LOGIC;
			----------------------------		

			-------- Duty Cycle ----------
			Ton		:	IN	STD_LOGIC_VECTOR(BIT_LENGTH-1 downto 0);	-- clk at PWM = '1'
			Period	:	IN	STD_LOGIC_VECTOR(BIT_LENGTH-1 downto 0);		-- clk per period of PWM
			
			PWM		:	OUT	STD_LOGIC		-- PWM signal
			----------------------------		
			
		);
	end component;

	----------------------------	

	
	------------------------------------------------------------------




	--------------------- SIGNALS DECLARATION -----------------------

	
	------- Clock/Reset  -------
	signal	reset	:	STD_LOGIC	:= TB_RESET_INIT;
	signal	clk		:	STD_LOGIC	:= TB_CLK_INIT;
	----------------------------	
	
	
		
	-------- Duty Cycle ----------
	signal	dut_Ton		:	STD_LOGIC_VECTOR(DUT_BIT_LENGTH-1 downto 0);	-- clk at PWM = '1'
	signal	dut_Period	:	STD_LOGIC_VECTOR(DUT_BIT_LENGTH-1 downto 0);	-- clk per period of PWM
		
	signal	dut_PWM		:	STD_LOGIC;									-- PWM signal
	----------------------------		
	
	----------------------------------------------------------------




begin


	--------------------- COMPONENTS DUT WRAPPING --------------------
	
	----------- DUT ------------
	dut_PulseWidthModulator	:	PulseWidthModulator
		Generic Map(
					
			BIT_LENGTH		=>	DUT_BIT_LENGTH,
			
			T_ON_INIT		=>	DUT_T_ON_INIT,
			PERIOD_INIT		=>	DUT_PERIOD_INIT,
			
			PWM_INIT		=>	DUT_PWM_INIT
		
		)
		Port Map( 
		
			------- Reset/Clock --------
			reset	=> reset,
			clk		=> clk,
			----------------------------		


			-------- Duty Cycle ----------
			Ton		=>	dut_Ton,
			Period	=>	dut_Period,
			
			PWM		=>	dut_PWM
			----------------------------		
						
		);
	----------------------------	

	----------------------------	
	
	

	-------------------------------------------------------------------


	--------------------- TEST BENCH DATA FLOW  -----------------------
	
	---------- clock ----------
	clk <= not clk after CLK_PERIOD/2;
	----------------------------
	
	-------------------------------------------------------------------	
	
	
	---------------------- TEST BENCH PROCESS -------------------------

	
	---- Clock Process --------
	-- clk_wave :process
	-- begin
		-- clk <= CLK_PERIOD;
		-- wait for CLK_PERIOD/2;
		
		-- clk <= not clk;
		-- wait for CLK_PERIOD/2;
    -- end process;	
	--------------------------	

	
	----- Reset Process --------
	reset_wave :process
	begin
		reset <= TB_RESET_INIT;
		wait for RESET_WND;
		
		reset <= not reset;
		wait;
    end process;	
	----------------------------
	
	
   ------ Stimulus process -------
	
    stim_proc: process
    begin		
		
		-- waiting the reset wave
		
		dut_Ton		<= std_logic_vector(to_unsigned(0,DUT_BIT_LENGTH));
		dut_Period	<= std_logic_vector(to_unsigned(0,DUT_BIT_LENGTH));
		wait for RESET_WND;	

			
		-- Start
		for I in 0 to 2**DUT_BIT_LENGTH-1 loop
		
			dut_Period	<= std_logic_vector(to_unsigned(I,DUT_BIT_LENGTH));		
		
			for J in 0 to 2**DUT_BIT_LENGTH-1 loop 
			
				dut_Ton		<= std_logic_vector(to_unsigned(J,DUT_BIT_LENGTH));
		
			
				wait for PWM_WND;
			
			end loop;
		end loop;

		
		dut_Ton		<= std_logic_vector(to_unsigned(2**DUT_BIT_LENGTH-1,DUT_BIT_LENGTH));
		dut_Period	<= std_logic_vector(to_unsigned(2**DUT_BIT_LENGTH-2,DUT_BIT_LENGTH));
		wait for PWM_WND;
		
        -- Stop
		wait;
		
		
		--------------------------

      wait;
    end process;
	----------------------------
	
	-------------------------------------------------------------------




end Behavioral;
