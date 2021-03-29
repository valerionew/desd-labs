----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07.03.2019 12:46:18
-- Design Name:
-- Module Name: tb_ShiftRegister_v0 - Behavioral
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

entity tb_ShiftRegister_v0 is
end tb_ShiftRegister_v0;

architecture Behavioral of tb_ShiftRegister_v0 is

    ------------------------ Constant Declaration -------------------------

    -- Constant For Test Bench (TB) --
    constant    RESET_ON    :   STD_LOGIC := '1';

    constant    CLK_PERIOD 	: time := 10 ns;
    constant    RESET_WND 	: time := 100 ns;
    ----------------------------------


    ----------------------------------------------------------------------


    ----------------- Device Under Test (DUT) Declaration ----------------

    ------------ DUT v0 --------------
    COMPONENT   ShiftRegister_v0
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


    -------- ShiftRegister_v0 -------
    signal  dut0_din   :   STD_LOGIC := '0';
    signal  dut0_dout  :   STD_LOGIC;
    ---------------------------------

    ----------------------------------------------------------------------



begin






    ------------------- Device Under Test (DUT) Wrapper ------------------

    ------------ DUT v0 --------------
    dut0_ShiftRegister_v0   :   ShiftRegister_v0
        Port Map(

            ---------- Reset/Clock ----------
            reset  => reset,
            clk    => clk,
            ---------------------------------

            ------------- Data --------------
            din   => dut0_din,
            dout  => dut0_dout
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
    dut0_din_pattern : process
    begin

        -- wait the reset window
        dut0_din <= '0';
        wait for RESET_WND;

        -- Start
        dut0_din <= '0';
        wait for CLK_PERIOD;

        dut0_din <= '1';
        wait for 4*CLK_PERIOD;

        dut0_din <= '0';
        wait for 8*CLK_PERIOD;

        -- Etc...

        -- Stop
        wait;

    end process;
    ---------------------------------


    ----------------------------------------------------------------------



end Behavioral;
