							-------------------------------------------------------------------------------------------------
							-------------------------------------------------------------------------------------------------
							-------------------------------------------------------------------------------------------------
							----  *   )                                                                                  ----
							----` )  /( (      )      (    (           (  (  (            (    (   (   (          (  (   ----
							---- ( )(_)))\    (      ))\   )\    (     )\))( )\   (      ))\  ))\  )(  )\   (     )\))(  ----
							----(_(_())((_)   )\  ' /((_) ((_)   )\ ) ((_))\((_)  )\ )  /((_)/((_)(()\((_)  )\ ) ((_))\  ----
							----|_   _| (_) _((_)) (_))   | __| _(_/(  (()(_)(_) _(_/( (_)) (_))   ((_)(_) _(_/(  (()(_) ----
							----  | |   | || '  \()/ -_)  | _| | ' \))/ _` | | || ' \))/ -_)/ -_) | '_|| || ' \))/ _` |  ----
							----  |_|   |_||_|_|_| \___|  |___||_||_| \__, | |_||_||_| \___|\___| |_|  |_||_||_| \__, |  ----
							----                                      |___/                                      |___/   ----
							-------------------------------------------------------------------------------------------------
							-------------------------------------------------------------------------------------------------
							-------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
----           _____     _                      ___             __ _     _                                       _              __ _  ----
----    o O O |_   _|   (_)    _ __     ___    | __|   _ _     / _` |   (_)    _ _      ___     ___      _ _    (_)    _ _     / _` | ----
----   o        | |     | |   | '  \   / -_)   | _|   | ' \    \__, |   | |   | ' \    / -_)   / -_)    | '_|   | |   | ' \    \__, | ----
----  TS__[O]  _|_|_   _|_|_  |_|_|_|  \___|   |___|  |_||_|   |___/   _|_|_  |_||_|   \___|   \___|   _|_|_   _|_|_  |_||_|   |___/  ----
---- {======|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| ----
----./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' ----
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------DESCRIPTION------------------------------------------
------------------------------------------------------------------------------------------
-- Modulo di più basso livello per la gestione dei dati tra FIFO in e FIFO out ed il	--
-- modulo FTDI 2232H in modalita FT245 Asynchronous. La priorità è data ai dati in 		--
-- arrivo dal PC verso FPGA.															--
-- Il clock in ingresso deve avere un periodo di 10 ns per garantire i tempi 			--
-- rischiesti dal 2232H																	--
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

entity UART_Manager is
	generic(
		UART_BAUD_RATE           : positive;
		UART_CLOCK_FREQUENCY     : positive	--The associated clock frequency
	);
	Port (	
		---------Global---------
		clk_uart 	: IN  STD_LOGIC;
		reset 		: IN  STD_LOGIC;
		------------------------
		
		---------Connessioni comunicazione UART-----------
		UART_TX  : OUT STD_LOGIC;
		UART_RX  : IN  STD_LOGIC;
		---------------------------------------------------
		
		------------FIFO_DATA_RX (8bit)-------------
		FIFO_DATA_RX_rst 			: OUT 	STD_LOGIC;
		FIFO_DATA_RX_clk 			: OUT 	STD_LOGIC;
		FIFO_DATA_RX_din 			: OUT 	STD_LOGIC_VECTOR(8-1 DOWNTO 0);
		FIFO_DATA_RX_wr_en 			: OUT 	STD_LOGIC;
		FIFO_DATA_RX_full			: IN 	STD_LOGIC;
		FIFO_DATA_RX_almost_full 	: IN 	STD_LOGIC;
		--------------------------------------------
		
		------------FIFO_DATA_TX (8bit)-------------
		--FIFO_DATA_RX_rst 			: OUT 	STD_LOGIC;
		FIFO_DATA_TX_clk 			: OUT 	STD_LOGIC;
		FIFO_DATA_TX_dout 			: IN 	STD_LOGIC_VECTOR(8-1 DOWNTO 0);
		FIFO_DATA_TX_rd_en 			: OUT 	STD_LOGIC;
		FIFO_DATA_TX_empty			: IN 	STD_LOGIC;
		FIFO_DATA_TX_almost_empty 	: IN 	STD_LOGIC
		--------------------------------------------
	);
end UART_Manager;

architecture Behavioral of UART_Manager is
	
	-------------------COMPONENT------------------
	COMPONENT UART_engine
	   GENERIC(
        BAUD_RATE           : positive;
        CLOCK_FREQUENCY     : positive
		);
		PORT(
			--SYSTEM UART
			clock 			: IN std_logic;
			reset 			: IN std_logic;
			
			--	FPGA-->PC
			data_stream_in 		: IN std_logic_vector(7 downto 0);
			data_stream_in_stb 	: IN std_logic;
			data_stream_in_ack 	: OUT std_logic;
			data_stream_in_done 	: OUT std_logic;
			tx 						: OUT std_logic;
			
			--	PC-->FPGA
			data_stream_out 		: OUT std_logic_vector(7 downto 0);
			data_stream_out_stb 	: OUT std_logic;
			rx 						: IN std_logic
			
		);
	END COMPONENT;	
	----------------------------------------------
	
	--------------------SIGNALS-------------------
	signal state			: STD_LOGIC_VECTOR(7 DOWNTO 0):=x"00";
	
	--TX:fromFPGAtoPC
	signal data_stream_in		: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');
	signal data_stream_in_stb	: STD_LOGIC := '0'; 	
	signal data_stream_in_ack	: STD_LOGIC := '0'; 	
	signal data_stream_in_done	: STD_LOGIC := '0'; 	
		
	signal state_TX			: STD_LOGIC_VECTOR(7 DOWNTO 0):=x"FF";

	--RX:fromPCtoFPGA
	signal data_stream_out		: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');
	signal data_stream_out_stb	: STD_LOGIC := '0';
	----------------------------------------------
	
begin
		
	Inst_uart: UART_engine 
		GENERIC MAP (
			BAUD_RATE		=> UART_BAUD_RATE,
			CLOCK_FREQUENCY	=> UART_CLOCK_FREQUENCY
		)
		PORT MAP(
			clock => clk_uart,
			reset => reset,
			
			--	FPGA-->PC
			data_stream_in 	  	=> data_stream_in,			--byte FPGA->PC, (in)
			data_stream_in_stb  => data_stream_in_stb,	--'1' per 1 clock inizia la fase di trasmisisone a PC di data_stream_in (in)
			data_stream_in_ack  => data_stream_in_ack,	--'1' per 1 clock vuol dire che START TX (data_stream_in_stb='1') è stata capita (in)	
			data_stream_in_done => data_stream_in_done,	--'1' indica la fine della trasmisione (out)
			tx 					=> UART_TX,
			
			--	PC-->FPGA
			data_stream_out 		=> data_stream_out,		--byte PC->FPGA, (out)
			data_stream_out_stb	=> data_stream_out_stb,	--'1' per 1 clock indica che su data_stream_out c'è un nuovo dato (out)
--			data_stream_out 		=> FIFO_RX_din,
--			data_stream_out_stb	=> FIFO_RX_wr_en,
			rx 					 	=> UART_RX
			
		);	
	
	fromFPGAtoPC : process(clk_uart, reset)
		begin
			if (reset = '1') then
				state_TX 		<= x"00";
				--UART
				data_stream_in <= (others => '0');
				data_stream_in_stb		<= '0';
				--FIFO_TX
				FIFO_DATA_TX_rd_en	<= '0';

			elsif rising_edge(clk_uart) then
				case state_TX is
				
					when x"FF" =>
						if(reset = '0') then                    
							 state_TX <= x"00";                          
						else
							 state_TX <= x"FF";               
						end if;
						--UART
						data_stream_in <= (others => '0');
						data_stream_in_stb		<= '0';
						--FIFO_TX
						FIFO_DATA_TX_rd_en	<= '0';
					
					
					when x"00" =>
						FIFO_DATA_TX_rd_en			<= '0';
						data_stream_in_stb	<= '0';
						
						if (FIFO_DATA_TX_empty = '0') then				--nessun dato da trasmettere al PC
							state_TX 		    <= x"01";			--si hanno dati in FIFO TX da passare al PC
							FIFO_DATA_TX_rd_en  	 <= '1';				--abilita lettura FIFO
							data_stream_in 	 <= FIFO_DATA_TX_dout;	--dai alla UART il byte in uscita dalla fifo già pronto
							data_stream_in_stb <= '1';				--abilita TX della UART
						end if;
						
						
					when x"01" =>
						FIFO_DATA_TX_rd_en			<= '0';				--blocca la lettura FIFO
						--tieni data_stream_in_stb attivo finche la UART non inizia a trasferire data_stream_in_ack='0'
						if (data_stream_in_ack = '1') then
							state_TX					<= x"02";
							data_stream_in_stb	<= '0';
						end if;						
						
						
					when x"02" =>
						-- data_stream_in_done = '1' significa fin trasmisisone UART
						if (data_stream_in_done = '1') then
							state_TX <= x"00";
						end if;				
					
					
					when others =>
						state_TX <= x"00";
	
				
				end case;
			end if;
		end process;



	fromPCtoFPGA : process(clk_uart, reset)
		begin
			if (reset = '1') then
				FIFO_DATA_RX_din		<= (others => '0');
				FIFO_DATA_RX_wr_en	<= '0';

			elsif rising_edge(clk_uart) then
				FIFO_DATA_RX_wr_en	<= '0';
				if (data_stream_out_stb = '1') then		--arrivato nuovo dato sulla UART, caricalo in FIGO RX
					FIFO_DATA_RX_wr_en	<= '1';
					FIFO_DATA_RX_din 	<= data_stream_out;
				end if;
			end if;
			
		end process;		
	
	--------------------ASSIGMENT------------------
	FIFO_DATA_RX_clk	<= clk_uart;
	FIFO_DATA_TX_clk	<= clk_uart;
	
	FIFO_DATA_RX_rst	<= reset;
	-----------------------------------------------
	
end Behavioral;

