--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Apr 20 17:05:06 2021
--Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    btnD : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    btnD : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      btnD => btnD,
      leds(15 downto 0) => leds(15 downto 0),
      reset => reset,
      sw(15 downto 0) => sw(15 downto 0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
