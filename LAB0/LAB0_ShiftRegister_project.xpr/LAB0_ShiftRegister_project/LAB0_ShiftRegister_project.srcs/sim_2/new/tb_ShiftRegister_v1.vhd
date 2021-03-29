----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07.03.2019 13:27:59
-- Design Name:
-- Module Name: tb_ShiftRegister_v1 - Behavioral
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

entity tb_ShiftRegister_v1 is
end tb_ShiftRegister_v1;

architecture Behavioral of tb_ShiftRegister_v1 is

    ------------------------ Constant Declaration -------------------------

    -- Constant For Test Bench (TB) --
    constant    RESET_ON    :   STD_LOGIC := '1';

    constant    CLK_PERIOD 	: time := 10 ns;
    constant    RESET_WND 	: time := 100 ns;
    ----------------------------------

    ------ Constant For DUT v0 ------
    constant    DUT1_SR_DEPTH   :   POSITIVE    := 4;
    constant    DUT1_SR_INIT    :   STD_LOGIC   := '0';
    ----------------------------------

    ----------------------------------------------------------------------


    ----------------- Device Under Test (DUT) Declaration ----------------

    ------------ DUT v1 --------------
    COMPONENT   ShiftRegister_v1
        Generic(
            SR_DEPTH   :   POSITIVE;
            SR_INIT    :   STD_LOGIC
        );
        Port (

            ---------- Reset/Clock ----------
            reset   :   IN  STD_LOGIC;
            clk     :   IN  STD_LOGIC;
            ---------------------------------

            ------------- Data --------------
            din   :   IN    STD_LOGIC;
            dout  :   OUT   STD_LOGIC
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


    -------- ShiftRegister_v1 -------
    signal  dut1_din   :   STD_LOGIC := '0';
    signal  dut1_dout  :   STD_LOGIC;
    ---------------------------------

    ----------------------------------------------------------------------



begin






    ------------------- Device Under Test (DUT) Wrapper ------------------

    ------------ DUT v1 --------------
    dut1_ShiftRegister_v1   :   ShiftRegister_v1

        Generic Map(
            SR_DEPTH   => DUT1_SR_DEPTH,
            SR_INIT    => DUT1_SR_INIT
        )
        Port Map(

            ---------- Reset/Clock ----------
            reset  => reset,
            clk    => clk,
            ---------------------------------

            ------------- Data --------------
            din   => dut1_din,
            dout  => dut1_dout
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
    dut1_din_pattern : process
    begin

        -- wait the reset window
        dut1_din <= '0';
        wait for RESET_WND;


        -- Start
        dut1_din <= '0';
        wait for CLK_PERIOD;

        dut1_din <= '1';
        wait for 4*CLK_PERIOD;

        dut1_din <= '0';
        wait for 8*CLK_PERIOD;

        -- Etc...

        -- Stop
        wait;

    end process;
    ---------------------------------


    ----------------------------------------------------------------------



end Behavioral;
