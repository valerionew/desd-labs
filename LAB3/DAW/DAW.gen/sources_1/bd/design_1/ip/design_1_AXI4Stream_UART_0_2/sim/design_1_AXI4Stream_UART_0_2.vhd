-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: DigiLAB:ip:AXI4Stream_UART:1.1
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_AXI4Stream_UART_0_2 IS
  PORT (
    clk_uart : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    UART_TX : OUT STD_LOGIC;
    UART_RX : IN STD_LOGIC;
    m00_axis_rx_aclk : IN STD_LOGIC;
    m00_axis_rx_aresetn : IN STD_LOGIC;
    m00_axis_rx_tvalid : OUT STD_LOGIC;
    m00_axis_rx_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axis_rx_tready : IN STD_LOGIC;
    s00_axis_tx_aclk : IN STD_LOGIC;
    s00_axis_tx_aresetn : IN STD_LOGIC;
    s00_axis_tx_tready : OUT STD_LOGIC;
    s00_axis_tx_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axis_tx_tvalid : IN STD_LOGIC
  );
END design_1_AXI4Stream_UART_0_2;

ARCHITECTURE design_1_AXI4Stream_UART_0_2_arch OF design_1_AXI4Stream_UART_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_AXI4Stream_UART_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI4Stream_UART_v1_0 IS
    GENERIC (
      UART_BAUD_RATE : INTEGER;
      UART_CLOCK_FREQUENCY : INTEGER;
      C_M00_AXIS_RX_TDATA_WIDTH : INTEGER;
      C_S00_AXIS_TX_TDATA_WIDTH : INTEGER
    );
    PORT (
      clk_uart : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      UART_TX : OUT STD_LOGIC;
      UART_RX : IN STD_LOGIC;
      m00_axis_rx_aclk : IN STD_LOGIC;
      m00_axis_rx_aresetn : IN STD_LOGIC;
      m00_axis_rx_tvalid : OUT STD_LOGIC;
      m00_axis_rx_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axis_rx_tready : IN STD_LOGIC;
      s00_axis_tx_aclk : IN STD_LOGIC;
      s00_axis_tx_aresetn : IN STD_LOGIC;
      s00_axis_tx_tready : OUT STD_LOGIC;
      s00_axis_tx_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axis_tx_tvalid : IN STD_LOGIC
    );
  END COMPONENT AXI4Stream_UART_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tx_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_TX TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tx_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_TX TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_tx_tready: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_TX, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tx_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_TX TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_tx_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_TX_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tx_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXIS_TX_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_tx_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_TX_CLK, ASSOCIATED_BUSIF S00_AXIS_TX, ASSOCIATED_RESET s00_axis_tx_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tx_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXIS_TX_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_rx_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS_RX TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_rx_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS_RX TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_rx_tvalid: SIGNAL IS "XIL_INTERFACENAME M00_AXIS_RX, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_rx_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS_RX TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_rx_aresetn: SIGNAL IS "XIL_INTERFACENAME M00_AXIS_RX_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_rx_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXIS_RX_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_rx_aclk: SIGNAL IS "XIL_INTERFACENAME M00_AXIS_RX_CLK, ASSOCIATED_BUSIF M00_AXIS_RX, ASSOCIATED_RESET m00_axis_rx_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_rx_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXIS_RX_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF UART_RX: SIGNAL IS "xilinx.com:interface:uart:1.0 UART RxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF UART_TX: SIGNAL IS "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF UART_TX: SIGNAL IS "xilinx.com:interface:uart:1.0 UART TxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_uart: SIGNAL IS "XIL_INTERFACENAME ClockUART, ASSOCIATED_BUSIF UART, ASSOCIATED_RESET rst, FREQ_HZ 96000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_uart: SIGNAL IS "xilinx.com:signal:clock:1.0 ClockUART CLK";
BEGIN
  U0 : AXI4Stream_UART_v1_0
    GENERIC MAP (
      UART_BAUD_RATE => 2000000,
      UART_CLOCK_FREQUENCY => 96000000,
      C_M00_AXIS_RX_TDATA_WIDTH => 8,
      C_S00_AXIS_TX_TDATA_WIDTH => 8
    )
    PORT MAP (
      clk_uart => clk_uart,
      rst => rst,
      UART_TX => UART_TX,
      UART_RX => UART_RX,
      m00_axis_rx_aclk => m00_axis_rx_aclk,
      m00_axis_rx_aresetn => m00_axis_rx_aresetn,
      m00_axis_rx_tvalid => m00_axis_rx_tvalid,
      m00_axis_rx_tdata => m00_axis_rx_tdata,
      m00_axis_rx_tready => m00_axis_rx_tready,
      s00_axis_tx_aclk => s00_axis_tx_aclk,
      s00_axis_tx_aresetn => s00_axis_tx_aresetn,
      s00_axis_tx_tready => s00_axis_tx_tready,
      s00_axis_tx_tdata => s00_axis_tx_tdata,
      s00_axis_tx_tvalid => s00_axis_tx_tvalid
    );
END design_1_AXI4Stream_UART_0_2_arch;
