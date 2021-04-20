--This simulation shows on dut_PWM the vector containing all the tails generated

library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;

entity tb_PWM_tails is
end tb_PWM_tails;

architecture Behavioral of tb_PWM_tails is

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing -----------
	constant	CLK_PERIOD 	:	TIME	:= 10 ns;
	constant	RESET_WND	:	TIME	:= 10*CLK_PERIOD;
	----------------------------

	--- TB Initialiazzations ---
	constant	TB_CLK_INIT		:	STD_LOGIC	:= '0';
	constant	TB_RESET_INIT 	:	STD_LOGIC	:= '1';
	----------------------------
	
	
	------- DUT Generics -------
	constant	DUT_TAIL_LENGTH	:	INTEGER	RANGE	1 TO 16 := 4;	-- Leds used  over the 16 in Basys3
	----------------------------

	----------- DUT -----------
	component PWM_tails
        Generic(
            TAIL_LENGTH :   INTEGER	RANGE	1 TO 16  -- Led tail length
        );
        Port ( 
        
            ------- Reset/Clock --------
            reset	:	IN	STD_LOGIC;
            clk		:	IN	STD_LOGIC;
            ----------------------------		
        
            PWM		:	OUT	std_logic_vector(DUT_TAIL_LENGTH-1 downto 0)		-- PWM signal
            ----------------------------		
        );
	end component;
-------- SIGNALS DECLARATION -----------------------
	------- Clock/Reset  -------
	signal	reset	:	STD_LOGIC	:= TB_RESET_INIT;
	signal	clk		:	STD_LOGIC	:= TB_CLK_INIT;
    signal  dut_PWM :   std_logic_vector(DUT_TAIL_LENGTH-1 downto 0); 
begin
	
	----------- DUT ------------
	dut_PWM_tails	:	PWM_tails
        Generic Map(
            TAIL_LENGTH => DUT_TAIL_LENGTH
        )
        Port Map( 
            ------- Reset/Clock --------
            reset	=> reset,
            clk		=> clk,
            ----------------------------		
            PWM		=> dut_PWM
            ----------------------------		
        );
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

end;
