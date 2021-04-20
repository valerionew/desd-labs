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
-- Bridge FT245Async to AXI4-Stream. 													--
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library xpm;
	use xpm.vcomponents.all;

entity AXI4Stream_UART_v1_0 is
	generic (
		------------------UART PARAMETER-------------------
		UART_BAUD_RATE           : positive := 115_200;
		UART_CLOCK_FREQUENCY     : positive := 100_000_000;	--The associated clock frequency
		----------------------------------------------------

		-- Parameters of Axi Master Bus Interface M00_AXIS_RX
		C_M00_AXIS_RX_TDATA_WIDTH	: integer	:= 8;
		-- Parameters of Axi Slave Bus Interface S00_AXIS_TX
		C_S00_AXIS_TX_TDATA_WIDTH	: integer	:= 8
	);
	port (
		---------Global---------
		clk_uart 	: IN  	STD_LOGIC;
		rst 		: IN	STD_LOGIC;
		------------------------

		---------Connessioni comunicazione UART-----------
		UART_TX  : OUT STD_LOGIC;
		UART_RX  : IN  STD_LOGIC;
		---------------------------------------------------

		---Ports of Axi Master Bus Interface M00_AXIS_RX---
		m00_axis_rx_aclk	: IN  	STD_LOGIC;
		m00_axis_rx_aresetn	: IN  	STD_LOGIC;
		m00_axis_rx_tvalid	: OUT  	STD_LOGIC;
		m00_axis_rx_tdata	: OUT 	STD_LOGIC_VECTOR(C_M00_AXIS_RX_TDATA_WIDTH-1 DOWNTO 0);
		m00_axis_rx_tready	: IN  	STD_LOGIC;
		--------------------------------------------------
		---Ports of Axi Slave Bus Interface S00_AXIS_TX---
		s00_axis_tx_aclk	: IN  	STD_LOGIC;
		s00_axis_tx_aresetn	: IN  	STD_LOGIC;
		s00_axis_tx_tready	: OUT  	STD_LOGIC;
		s00_axis_tx_tdata	: IN	STD_LOGIC_VECTOR(C_S00_AXIS_TX_TDATA_WIDTH-1 DOWNTO 0);
		s00_axis_tx_tvalid	: IN  	STD_LOGIC
		--------------------------------------------------
	);
end AXI4Stream_UART_v1_0;

architecture arch_imp of AXI4Stream_UART_v1_0 is

	--------------------------------COMPONENTS DECLARATION-----------------------------------
	component UART_Manager is
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
	end component UART_Manager;

	component AXI4Stream_UART_v1_0_M00_AXIS_RX is
		generic (
			-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
			C_M_AXIS_TDATA_WIDTH	: integer	:= 8
		);
		port (
			--------------FIFO_DATA (8bit)--------------
			--FIFO_DATA_rst 				: OUT 	STD_LOGIC; Reset lo da chi scrive la FIFO
			FIFO_DATA_clk 				: OUT 	STD_LOGIC;
			FIFO_DATA_dout 				: IN 	STD_LOGIC_VECTOR(8-1 DOWNTO 0);
			FIFO_DATA_rd_en 			: OUT 	STD_LOGIC;
			FIFO_DATA_empty				: IN 	STD_LOGIC;
			FIFO_DATA_almost_empty 		: IN 	STD_LOGIC;
			--------------------------------------------

			----------------AXI4-Stream-----------------
			-- AXI4Stream Clock
			M_AXIS_ACLK		: IN 	STD_LOGIC;
			-- AXI4Stream Reset
			M_AXIS_ARESETN	: IN 	STD_LOGIC;
			-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
			M_AXIS_TVALID	: OUT 	STD_LOGIC;
			-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
			M_AXIS_TDATA	: OUT 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
			-- TREADY indicates that the slave can accept a transfer in the current cycle.
			M_AXIS_TREADY	: IN 	STD_LOGIC
			--------------------------------------------
		);
	end component AXI4Stream_UART_v1_0_M00_AXIS_RX;

	component AXI4Stream_UART_v1_0_S00_AXIS_TX is
		generic (
			-- AXI4Stream sink: Data Width
			C_S_AXIS_TDATA_WIDTH	: integer	:= 8
		);
		port (

			--------------FIFO_DATA-------------
			FIFO_DATA_rst 				: OUT 	STD_LOGIC;
			FIFO_DATA_clk 				: OUT 	STD_LOGIC;
			FIFO_DATA_din 				: OUT 	STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
			FIFO_DATA_wr_en 			: OUT 	STD_LOGIC;
			FIFO_DATA_full 				: IN 	STD_LOGIC;
			FIFO_DATA_almost_full 		: IN 	STD_LOGIC;
			--------------------------------------------

			----------------AXI4-Stream-----------------
			-- AXI4Stream sink: Clock
			S_AXIS_ACLK		: IN 	STD_LOGIC;
			-- AXI4Stream sink: Reset
			S_AXIS_ARESETN	: IN 	STD_LOGIC;
			-- Ready to accept data in
			S_AXIS_TREADY	: OUT 	STD_LOGIC;
			-- Data in
			S_AXIS_TDATA	: IN 	STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
			-- Data is in valid
			S_AXIS_TVALID	: IN 	STD_LOGIC
			--------------------------------------------
		);
	end component AXI4Stream_UART_v1_0_S00_AXIS_TX;
	-----------------------------------------------------------------------------------------

	---------------------------------------SIGNALS-------------------------------------------
	-----------------FIFO_DATA_RX-----------------
	signal FIFO_DATA_RX_rst 			: STD_LOGIC;
    signal FIFO_DATA_RX_wr_clk 			: STD_LOGIC;
    signal FIFO_DATA_RX_rd_clk 			: STD_LOGIC;
	signal FIFO_DATA_RX_din 			: STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal FIFO_DATA_RX_wr_en 			: STD_LOGIC;
    signal FIFO_DATA_RX_rd_en 			: STD_LOGIC;
    signal FIFO_DATA_RX_dout 			: STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal FIFO_DATA_RX_full 			: STD_LOGIC;
    signal FIFO_DATA_RX_almost_full 	: STD_LOGIC;
    signal FIFO_DATA_RX_empty 			: STD_LOGIC;
    signal FIFO_DATA_RX_almost_empty 	: STD_LOGIC;
	----------------------------------------------

	-----------------FIFO_DATA_TX-----------------
	signal FIFO_DATA_TX_rst 			: STD_LOGIC;
    signal FIFO_DATA_TX_wr_clk 			: STD_LOGIC;
    signal FIFO_DATA_TX_rd_clk 			: STD_LOGIC;
	signal FIFO_DATA_TX_din 			: STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal FIFO_DATA_TX_wr_en 			: STD_LOGIC;
    signal FIFO_DATA_TX_rd_en 			: STD_LOGIC;
    signal FIFO_DATA_TX_dout 			: STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal FIFO_DATA_TX_full 			: STD_LOGIC;
    signal FIFO_DATA_TX_almost_full 	: STD_LOGIC;
    signal FIFO_DATA_TX_empty 			: STD_LOGIC;
    signal FIFO_DATA_TX_almost_empty 	: STD_LOGIC;
	----------------------------------------------

	-----------------------------------------------------------------------------------------

begin

	-----------------------MODULE INSTANTIATION-------------------------
	AXI4Stream_UART_v1_0_S00_AXIS_TX_inst : AXI4Stream_UART_v1_0_S00_AXIS_TX
		generic map(
			-- AXI4Stream sink: Data Width
			C_S_AXIS_TDATA_WIDTH		=> C_S00_AXIS_TX_TDATA_WIDTH
		)
		port map(

			--------------FIFO_DATA-------------
			FIFO_DATA_rst 				=> FIFO_DATA_TX_rst,
			FIFO_DATA_clk 				=> FIFO_DATA_TX_wr_clk,
			FIFO_DATA_din 				=> FIFO_DATA_TX_din,
			FIFO_DATA_wr_en 			=> FIFO_DATA_TX_wr_en,
			FIFO_DATA_full 				=> FIFO_DATA_TX_full,
			FIFO_DATA_almost_full 		=> FIFO_DATA_TX_almost_full,
			--------------------------------------------

			----------------AXI4-Stream-----------------
			-- AXI4Stream sink: Clock
			S_AXIS_ACLK		=> s00_axis_tx_aclk,
			-- AXI4Stream sink: Reset
			S_AXIS_ARESETN	=> s00_axis_tx_aresetn,
			-- Ready to accept data in
			S_AXIS_TREADY	=> s00_axis_tx_tready,
			-- Data in
			S_AXIS_TDATA	=> s00_axis_tx_tdata,
			-- Data is in valid
			S_AXIS_TVALID	=> s00_axis_tx_tvalid
			--------------------------------------------
		);

	-- xpm_fifo_async: Asynchronous FIFO
	-- Xilinx Parameterized Macro, Version 2017.3
	FIFO_DATA_TX : xpm_fifo_async
		generic map (
			FIFO_MEMORY_TYPE		=> "block",		--string; "auto", "block", "distributed", or "ultra";
			FIFO_WRITE_DEPTH		=> 2048,		--positive integer;
			RELATED_CLOCKS			=> 0,			--positive integer; 0 or 1;
			WRITE_DATA_WIDTH		=> 8,			--positive integer;
			WR_DATA_COUNT_WIDTH		=> 1,			--positive integer;
			READ_MODE				=> "fwft",		--string; "std" or "fwft";
			FIFO_READ_LATENCY		=> 0,			--positive integer;
			--FULL_RESET_VALUE		=> 0,			--positive integer; 0 or 1;
			READ_DATA_WIDTH			=> 8,			--positive integer;
			RD_DATA_COUNT_WIDTH		=> 1,			--positive integer;
			CDC_SYNC_STAGES			=> 2,			--positive integer;
			ECC_MODE				=> "no_ecc",	--string; "no_ecc" or "en_ecc";
			--PROG_FULL_THRESH		=> 10,			--positive integer
			--PROG_EMPTY_THRESH		=> 10,			--positive integer
			--DOUT_RESET_VALUE		=> "0",			--string
			WAKEUP_TIME				=> 0,			--positive integer; 0 or 2;
			USE_ADV_FEATURES		=> "0808"		--string; "0000" to "1F1F"; 0808 = almost_full and almost_empty
		)
		port map (
			wr_clk 			=> FIFO_DATA_TX_wr_clk,
			wr_en 			=> FIFO_DATA_TX_wr_en,
			din 			=> FIFO_DATA_TX_din,
			full 			=> FIFO_DATA_TX_full,
			overflow		=> open,
			wr_rst_busy		=> open,
			sleep			=> '0',
			rst				=> FIFO_DATA_TX_rst,
			rd_clk 			=> FIFO_DATA_TX_rd_clk,
			rd_en 			=> FIFO_DATA_TX_rd_en,
			dout 			=> FIFO_DATA_TX_dout,
			empty 			=> FIFO_DATA_TX_empty,
			underflow		=> open,
			rd_rst_busy		=> open,
			injectsbiterr	=> '0',
			injectdbiterr	=> '0',
			almost_full 	=> FIFO_DATA_TX_almost_full,
			almost_empty 	=> FIFO_DATA_TX_almost_empty
		);

	UART_Manager_inst : UART_Manager
		Generic map(
			UART_BAUD_RATE			=> UART_BAUD_RATE,
			UART_CLOCK_FREQUENCY	=> UART_CLOCK_FREQUENCY
		)
		Port map(
			---------Global---------
			clk_uart 	=> clk_uart,
			reset 		=> rst,
			------------------------

			---------Connessioni comunicazione UART-----------
			UART_TX 	=> UART_TX,
			UART_RX 	=> UART_RX,
			---------------------------------------------------

			------------FIFO_DATA_RX (8bit)-------------
			FIFO_DATA_RX_rst 			=> FIFO_DATA_RX_rst,
			FIFO_DATA_RX_clk 			=> FIFO_DATA_RX_wr_clk,
			FIFO_DATA_RX_din 			=> FIFO_DATA_RX_din,
			FIFO_DATA_RX_wr_en 			=> FIFO_DATA_RX_wr_en,
			FIFO_DATA_RX_full			=> FIFO_DATA_RX_full,
			FIFO_DATA_RX_almost_full 	=> FIFO_DATA_RX_almost_full,
			--------------------------------------------

			------------FIFO_DATA_TX (8bit)-------------
			FIFO_DATA_TX_clk 			=> FIFO_DATA_TX_rd_clk,
			FIFO_DATA_TX_dout 			=> FIFO_DATA_TX_dout,
			FIFO_DATA_TX_rd_en 			=> FIFO_DATA_TX_rd_en,
			FIFO_DATA_TX_empty			=> FIFO_DATA_TX_empty,
			FIFO_DATA_TX_almost_empty 	=> FIFO_DATA_TX_almost_empty
			--------------------------------------------
		);

	-- xpm_fifo_async: Asynchronous FIFO
	-- Xilinx Parameterized Macro, Version 2017.3
	FIFO_DATA_RX : xpm_fifo_async
		generic map (
			FIFO_MEMORY_TYPE		=> "block",		--string; "auto", "block", "distributed", or "ultra";
			FIFO_WRITE_DEPTH		=> 2048,		--positive integer;
			RELATED_CLOCKS			=> 0,			--positive integer; 0 or 1;
			WRITE_DATA_WIDTH		=> 8,			--positive integer;
			WR_DATA_COUNT_WIDTH		=> 1,			--positive integer;
			READ_MODE				=> "fwft",		--string; "std" or "fwft";
			FIFO_READ_LATENCY		=> 0,			--positive integer;
			--FULL_RESET_VALUE		=> 0,			--positive integer; 0 or 1;
			READ_DATA_WIDTH			=> 8,			--positive integer;
			RD_DATA_COUNT_WIDTH		=> 1,			--positive integer;
			CDC_SYNC_STAGES			=> 2,			--positive integer;
			ECC_MODE				=> "no_ecc",	--string; "no_ecc" or "en_ecc";
			--PROG_FULL_THRESH		=> 10,			--positive integer
			--PROG_EMPTY_THRESH		=> 10,			--positive integer
			--DOUT_RESET_VALUE		=> "0",			--string
			WAKEUP_TIME				=> 0,			--positive integer; 0 or 2;
			USE_ADV_FEATURES		=> "0808"		--string; "0000" to "1F1F"; 0808 = almost_full and almost_empty
		)
		port map (
			wr_clk 			=> FIFO_DATA_RX_wr_clk,
			wr_en 			=> FIFO_DATA_RX_wr_en,
			din 			=> FIFO_DATA_RX_din,
			full 			=> FIFO_DATA_RX_full,
			overflow		=> open,
			wr_rst_busy		=> open,
			sleep			=> '0',
			rst				=> FIFO_DATA_RX_rst,
			rd_clk 			=> FIFO_DATA_RX_rd_clk,
			rd_en 			=> FIFO_DATA_RX_rd_en,
			dout 			=> FIFO_DATA_RX_dout,
			empty 			=> FIFO_DATA_RX_empty,
			underflow		=> open,
			rd_rst_busy		=> open,
			injectsbiterr	=> '0',
			injectdbiterr	=> '0',
			almost_full 	=> FIFO_DATA_RX_almost_full,
			almost_empty 	=> FIFO_DATA_RX_almost_empty
		);

	AXI4Stream_UART_v1_0_M00_AXIS_RX_inst : AXI4Stream_UART_v1_0_M00_AXIS_RX
		generic map(
			-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
			C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_RX_TDATA_WIDTH

		)
		port map(
			--------------FIFO_DATA (8bit)--------------
			FIFO_DATA_clk 			=> FIFO_DATA_RX_rd_clk,
			FIFO_DATA_dout 			=> FIFO_DATA_RX_dout,
			FIFO_DATA_rd_en 		=> FIFO_DATA_RX_rd_en,
			FIFO_DATA_empty			=> FIFO_DATA_RX_empty,
			FIFO_DATA_almost_empty 	=> FIFO_DATA_RX_almost_empty,
			--------------------------------------------

			----------------AXI4-Stream-----------------
			-- AXI4Stream Clock
			M_AXIS_ACLK		=> m00_axis_rx_aclk,
			-- AXI4Stream Reset
			M_AXIS_ARESETN	=> m00_axis_rx_aresetn,
			-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
			M_AXIS_TVALID	=> m00_axis_rx_tvalid,
			-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
			M_AXIS_TDATA	=> m00_axis_rx_tdata,
			-- TREADY indicates that the slave can accept a transfer in the current cycle.
			M_AXIS_TREADY	=> m00_axis_rx_tready
			--------------------------------------------
		);

	--------------------------------------------------------------------

end arch_imp;
