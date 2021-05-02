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

-- IP VLNV: xilinx.com:module_ref:SIPO:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_SIPO_0_0 IS
  PORT (
    S_AXIS_ACLK : IN STD_LOGIC;
    S_AXIS_ARESETN : IN STD_LOGIC;
    S_AXIS_TREADY : OUT STD_LOGIC;
    S_AXIS_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_TVALID : IN STD_LOGIC;
    ch0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ch1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ch2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    valid : OUT STD_LOGIC
  );
END design_1_SIPO_0_0;

ARCHITECTURE design_1_SIPO_0_0_arch OF design_1_SIPO_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_SIPO_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SIPO IS
    GENERIC (
      C_S_AXIS_TDATA_WIDTH : INTEGER
    );
    PORT (
      S_AXIS_ACLK : IN STD_LOGIC;
      S_AXIS_ARESETN : IN STD_LOGIC;
      S_AXIS_TREADY : OUT STD_LOGIC;
      S_AXIS_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_TVALID : IN STD_LOGIC;
      ch0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ch1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ch2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      valid : OUT STD_LOGIC
    );
  END COMPONENT SIPO;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_SIPO_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXIS_TREADY: SIGNAL IS "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXIS_ARESETN: SIGNAL IS "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXIS_ACLK: SIGNAL IS "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK";
BEGIN
  U0 : SIPO
    GENERIC MAP (
      C_S_AXIS_TDATA_WIDTH => 8
    )
    PORT MAP (
      S_AXIS_ACLK => S_AXIS_ACLK,
      S_AXIS_ARESETN => S_AXIS_ARESETN,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TDATA => S_AXIS_TDATA,
      S_AXIS_TVALID => S_AXIS_TVALID,
      ch0 => ch0,
      ch1 => ch1,
      ch2 => ch2,
      valid => valid
    );
END design_1_SIPO_0_0_arch;
