----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07.03.2019 16:39:28
-- Design Name:
-- Module Name: tb_ShiftRegister_v2 - Behavioral
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

entity tb_ShiftRegister_v2 is
end tb_ShiftRegister_v2;

architecture Behavioral of tb_ShiftRegister_v2 is

    ------------------------ Constant Declaration -------------------------

    -- Constant For Test Bench (TB) --
    constant    RESET_ON    :   STD_LOGIC := '1';

    constant    CLK_PERIOD 	: time := 10 ns;
    constant    RESET_WND 	: time := 100 ns;
    ----------------------------------

    ------ Constant For DUT v2 ------
    constant    DUT2_SR_WIDTH   :   NATURAL    := 8;
    constant    DUT2_SR_DEPTH   :   POSITIVE   := 3;
    constant    DUT2_SR_INIT    :   INTEGER    := 0;
    ----------------------------------

    ----------------------------------------------------------------------


    ----------------- Device Under Test (DUT) Declaration ----------------

    ------------ DUT v2 --------------
    COMPONENT   ShiftRegister_v2
        Generic(
            SR_WIDTH   :   NATURAL   := 7;
            SR_DEPTH   :   POSITIVE  := 4;
            SR_INIT    :   INTEGER   := 0
        );
        Port (

            ---------- Reset/Clock ----------
            reset   :   IN  STD_LOGIC;
            clk     :   IN  STD_LOGIC;
            ---------------------------------

            ------------- Data --------------
            din   :   IN    STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0);
            dout  :   OUT   STD_LOGIC_VECTOR(SR_WIDTH-1 downto 0)
            ---------------------------------

        );
    END COMPONENT;
    ----------------------------------


    ----------------------------------------------------------------------



    ------------------------- Signal Declaration -------------------------

    ---------- Reset/Clock ----------
    signal  reset   :   STD_LOGIC := RESET_ON;
    signal  clk     :   STD_LOGIC := '1';
    ---------------------------------


    -------- ShiftRegister_v2 -------
    signal  dut2_din   :   STD_LOGIC_VECTOR(DUT2_SR_WIDTH-1 downto 0) := (Others => '0');
    signal  dut2_dout  :   STD_LOGIC_VECTOR(DUT2_SR_WIDTH-1 downto 0);
    ---------------------------------

    ----------------------------------------------------------------------



begin






    ------------------- Device Under Test (DUT) Wrapper ------------------

    ------------ DUT v2 --------------
    dut2_ShiftRegister_v2   :   ShiftRegister_v2

        Generic Map(
            SR_WIDTH   => DUT2_SR_WIDTH,
            SR_DEPTH   => DUT2_SR_DEPTH,
            SR_INIT    => DUT2_SR_INIT
        )
        Port Map(

            ---------- Reset/Clock ----------
            reset  => reset,
            clk    => clk,
            ---------------------------------

            ------------- Data --------------
            din   => dut2_din,
            dout  => dut2_dout
            ---------------------------------

        );
    ----------------------------------


    ----------------------------------------------------------------------




    -------------------------- Signals Generation -------------------------


    ------ TB Clk Generation -------

    clk	<= not clk after CLK_PERIOD/2;
    ---------------------------------


    ----- TB Reset Generation ------
    reset_wave : process
    begin

        reset <= '1';
        wait for RESET_WND;

        reset <= '0';
        wait;

    end process;
    ---------------------------------



    -- TB din pattern Generation ---
    dut2_din_pattern : process
    begin

        -- wait the reset window
        dut2_din <= (Others => '0');
        wait for RESET_WND;

        -- Start
        dut2_din <= (Others => '0');
        wait for CLK_PERIOD;

        dut2_din <= (Others => '1');
        wait for 4*CLK_PERIOD;

        dut2_din <= (Others => '0');
        wait for 8*CLK_PERIOD;

        -- Etc...

        -- Stop
        wait;

    end process;
    ---------------------------------


    ----------------------------------------------------------------------



end Behavioral;
