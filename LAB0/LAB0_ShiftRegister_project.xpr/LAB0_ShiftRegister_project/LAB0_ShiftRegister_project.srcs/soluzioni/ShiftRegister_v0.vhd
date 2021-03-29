----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07.03.2019 12:38:25
-- Design Name:
-- Module Name: ShiftRegister_v0 - Behavioral
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

entity ShiftRegister_v0 is
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
end ShiftRegister_v0;

architecture Behavioral of ShiftRegister_v0 is

    ------------------------- Signal Declaration -------------------------

    ----------- Memory TO -----------
    signal  mem_to   :   STD_LOGIC_VECTOR(0 TO 3)  := (Others => '0');
    ---------------------------------

    --------- Memory DOWNTO ---------
    signal  mem_dt   :   STD_LOGIC_VECTOR(3 DOWNTO 0)  := (Others => '0');
    ---------------------------------
    ----------------------------------------------------------------------


begin

--    -------------- TO ---------------
--    dout    <=  mem_to(3);
--    ---------------------------------


    ------------ DOWNTO -------------
    dout    <=  mem_dt(3);
    ---------------------------------

    shift_reg  :  process(reset, clk)
    begin

        if (reset = '1') then
            mem_dt    <= (Others => '0');
            --mem_to    <= (Others => '0');

        elsif rising_edge(clk) then

            ------------ DOWNTO -------------
            mem_dt  <=  mem_dt(2 DOWNTO 0)&din;
            ---------------------------------

--            -------------- TO ---------------
--            mem_to     <=  din&mem_to(0 TO 2);
--            ---------------------------------


        end if;

    end process;



end Behavioral;
