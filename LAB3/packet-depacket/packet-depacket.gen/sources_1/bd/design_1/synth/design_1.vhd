--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Sat May 22 17:23:58 2021
--Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=10,da_clkrst_cnt=14,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_1 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_1;
  component design_1_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_1;
  component design_1_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_1_0;
  component design_1_AXI4Stream_UART_0_2 is
  port (
    clk_uart : in STD_LOGIC;
    rst : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    m00_axis_rx_aclk : in STD_LOGIC;
    m00_axis_rx_aresetn : in STD_LOGIC;
    m00_axis_rx_tvalid : out STD_LOGIC;
    m00_axis_rx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_rx_tready : in STD_LOGIC;
    s00_axis_tx_aclk : in STD_LOGIC;
    s00_axis_tx_aresetn : in STD_LOGIC;
    s00_axis_tx_tready : out STD_LOGIC;
    s00_axis_tx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tx_tvalid : in STD_LOGIC
  );
  end component design_1_AXI4Stream_UART_0_2;
  component design_1_depacketizer_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TLAST : out STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC
  );
  end component design_1_depacketizer_0_0;
  component design_1_packetizer_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC
  );
  end component design_1_packetizer_0_0;
  component design_1_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component design_1_system_ila_0_0;
  signal AXI4Stream_UART_0_M00_AXIS_RX_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of AXI4Stream_UART_0_M00_AXIS_RX_TDATA : signal is "AXI4Stream_UART_0_M00_AXIS_RX xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG : string;
  attribute DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TDATA : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TDATA : signal is std.standard.true;
  signal AXI4Stream_UART_0_M00_AXIS_RX_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of AXI4Stream_UART_0_M00_AXIS_RX_TREADY : signal is "AXI4Stream_UART_0_M00_AXIS_RX xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TREADY : signal is "true";
  attribute MARK_DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TREADY : signal is std.standard.true;
  signal AXI4Stream_UART_0_M00_AXIS_RX_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of AXI4Stream_UART_0_M00_AXIS_RX_TVALID : signal is "AXI4Stream_UART_0_M00_AXIS_RX xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TVALID : signal is "true";
  attribute MARK_DEBUG of AXI4Stream_UART_0_M00_AXIS_RX_TVALID : signal is std.standard.true;
  signal AXI4Stream_UART_0_UART_RxD : STD_LOGIC;
  signal AXI4Stream_UART_0_UART_TxD : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal depacketizer_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of depacketizer_0_M_AXIS_TDATA : signal is "depacketizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of depacketizer_0_M_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of depacketizer_0_M_AXIS_TDATA : signal is std.standard.true;
  signal depacketizer_0_M_AXIS_TLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of depacketizer_0_M_AXIS_TLAST : signal is "depacketizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST";
  attribute DEBUG of depacketizer_0_M_AXIS_TLAST : signal is "true";
  attribute MARK_DEBUG of depacketizer_0_M_AXIS_TLAST : signal is std.standard.true;
  signal depacketizer_0_M_AXIS_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of depacketizer_0_M_AXIS_TREADY : signal is "depacketizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of depacketizer_0_M_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of depacketizer_0_M_AXIS_TREADY : signal is std.standard.true;
  signal depacketizer_0_M_AXIS_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of depacketizer_0_M_AXIS_TVALID : signal is "depacketizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of depacketizer_0_M_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of depacketizer_0_M_AXIS_TVALID : signal is std.standard.true;
  signal packetizer_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of packetizer_0_M_AXIS_TDATA : signal is "packetizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of packetizer_0_M_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of packetizer_0_M_AXIS_TDATA : signal is std.standard.true;
  signal packetizer_0_M_AXIS_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of packetizer_0_M_AXIS_TREADY : signal is "packetizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of packetizer_0_M_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of packetizer_0_M_AXIS_TREADY : signal is std.standard.true;
  signal packetizer_0_M_AXIS_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of packetizer_0_M_AXIS_TVALID : signal is "packetizer_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of packetizer_0_M_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of packetizer_0_M_AXIS_TVALID : signal is std.standard.true;
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of usb_uart_rxd : signal is "xilinx.com:interface:uart:1.0 usb_uart RxD";
  attribute X_INTERFACE_INFO of usb_uart_txd : signal is "xilinx.com:interface:uart:1.0 usb_uart TxD";
begin
  AXI4Stream_UART_0_UART_RxD <= usb_uart_rxd;
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
  usb_uart_txd <= AXI4Stream_UART_0_UART_TxD;
AXI4Stream_UART_0: component design_1_AXI4Stream_UART_0_2
     port map (
      UART_RX => AXI4Stream_UART_0_UART_RxD,
      UART_TX => AXI4Stream_UART_0_UART_TxD,
      clk_uart => clk_wiz_0_clk_out1,
      m00_axis_rx_aclk => clk_wiz_0_clk_out2,
      m00_axis_rx_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      m00_axis_rx_tdata(7 downto 0) => AXI4Stream_UART_0_M00_AXIS_RX_TDATA(7 downto 0),
      m00_axis_rx_tready => AXI4Stream_UART_0_M00_AXIS_RX_TREADY,
      m00_axis_rx_tvalid => AXI4Stream_UART_0_M00_AXIS_RX_TVALID,
      rst => proc_sys_reset_0_peripheral_reset(0),
      s00_axis_tx_aclk => clk_wiz_0_clk_out2,
      s00_axis_tx_aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      s00_axis_tx_tdata(7 downto 0) => packetizer_0_M_AXIS_TDATA(7 downto 0),
      s00_axis_tx_tready => packetizer_0_M_AXIS_TREADY,
      s00_axis_tx_tvalid => packetizer_0_M_AXIS_TVALID
    );
clk_wiz_0: component design_1_clk_wiz_0_1
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      reset => reset_1
    );
depacketizer_0: component design_1_depacketizer_0_0
     port map (
      CLK => clk_wiz_0_clk_out2,
      M_AXIS_TDATA(15 downto 0) => depacketizer_0_M_AXIS_TDATA(15 downto 0),
      M_AXIS_TLAST => depacketizer_0_M_AXIS_TLAST,
      M_AXIS_TREADY => depacketizer_0_M_AXIS_TREADY,
      M_AXIS_TVALID => depacketizer_0_M_AXIS_TVALID,
      RESETN => proc_sys_reset_1_peripheral_aresetn(0),
      S_AXIS_TDATA(7 downto 0) => AXI4Stream_UART_0_M00_AXIS_RX_TDATA(7 downto 0),
      S_AXIS_TREADY => AXI4Stream_UART_0_M00_AXIS_RX_TREADY,
      S_AXIS_TVALID => AXI4Stream_UART_0_M00_AXIS_RX_TVALID
    );
packetizer_0: component design_1_packetizer_0_0
     port map (
      CLK => clk_wiz_0_clk_out2,
      M_AXIS_TDATA(7 downto 0) => packetizer_0_M_AXIS_TDATA(7 downto 0),
      M_AXIS_TREADY => packetizer_0_M_AXIS_TREADY,
      M_AXIS_TVALID => packetizer_0_M_AXIS_TVALID,
      RESETN => proc_sys_reset_1_peripheral_aresetn(0),
      S_AXIS_TDATA(15 downto 0) => depacketizer_0_M_AXIS_TDATA(15 downto 0),
      S_AXIS_TLAST => depacketizer_0_M_AXIS_TLAST,
      S_AXIS_TREADY => depacketizer_0_M_AXIS_TREADY,
      S_AXIS_TVALID => depacketizer_0_M_AXIS_TVALID
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
proc_sys_reset_1: component design_1_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out2
    );
system_ila_0: component design_1_system_ila_0_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 8) => B"000000000000000000000000",
      SLOT_0_AXIS_tdata(7 downto 0) => AXI4Stream_UART_0_M00_AXIS_RX_TDATA(7 downto 0),
      SLOT_0_AXIS_tlast => '0',
      SLOT_0_AXIS_tready => AXI4Stream_UART_0_M00_AXIS_RX_TREADY,
      SLOT_0_AXIS_tvalid => AXI4Stream_UART_0_M00_AXIS_RX_TVALID,
      SLOT_1_AXIS_tdata(15 downto 0) => depacketizer_0_M_AXIS_TDATA(15 downto 0),
      SLOT_1_AXIS_tlast => depacketizer_0_M_AXIS_TLAST,
      SLOT_1_AXIS_tready => depacketizer_0_M_AXIS_TREADY,
      SLOT_1_AXIS_tvalid => depacketizer_0_M_AXIS_TVALID,
      SLOT_2_AXIS_tdata(31 downto 8) => B"000000000000000000000000",
      SLOT_2_AXIS_tdata(7 downto 0) => packetizer_0_M_AXIS_TDATA(7 downto 0),
      SLOT_2_AXIS_tlast => '0',
      SLOT_2_AXIS_tready => packetizer_0_M_AXIS_TREADY,
      SLOT_2_AXIS_tvalid => packetizer_0_M_AXIS_TVALID,
      clk => clk_wiz_0_clk_out2,
      resetn => proc_sys_reset_1_peripheral_aresetn(0)
    );
end STRUCTURE;
