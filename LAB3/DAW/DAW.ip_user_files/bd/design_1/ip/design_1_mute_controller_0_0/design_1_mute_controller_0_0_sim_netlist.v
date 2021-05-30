// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 22 18:05:18 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/valer/Documents/desd-labs/LAB3/DAW/DAW.gen/sources_1/bd/design_1/ip/design_1_mute_controller_0_0/design_1_mute_controller_0_0_sim_netlist.v
// Design      : design_1_mute_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mute_controller_0_0,mute_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mute_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_mute_controller_0_0
   (CLK,
    ARESETN,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    M_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TVALID,
    MUTE_RIGHT,
    MUTE_LEFT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input M_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  input MUTE_RIGHT;
  input MUTE_LEFT;

  wire ARESETN;
  wire CLK;
  wire MUTE_LEFT;
  wire MUTE_RIGHT;
  wire [15:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TVALID;
  wire [15:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  design_1_mute_controller_0_0_mute_controller U0
       (.ARESETN(ARESETN),
        .CLK(CLK),
        .MUTE_LEFT(MUTE_LEFT),
        .MUTE_RIGHT(MUTE_RIGHT),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TLAST(S_AXIS_TLAST),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "mute_controller" *) 
module design_1_mute_controller_0_0_mute_controller
   (S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TLAST,
    CLK,
    MUTE_RIGHT,
    S_AXIS_TLAST,
    S_AXIS_TDATA,
    MUTE_LEFT,
    S_AXIS_TVALID,
    ARESETN);
  output S_AXIS_TREADY;
  output [15:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  output M_AXIS_TLAST;
  input CLK;
  input MUTE_RIGHT;
  input S_AXIS_TLAST;
  input [15:0]S_AXIS_TDATA;
  input MUTE_LEFT;
  input S_AXIS_TVALID;
  input ARESETN;

  wire ARESETN;
  wire CLK;
  wire MUTE_LEFT;
  wire MUTE_RIGHT;
  wire [15:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST_i_1_n_0;
  wire M_AXIS_TVALID;
  wire [15:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TVALID;
  wire [15:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[0]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[0]),
        .I3(MUTE_LEFT),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[10]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[10]),
        .I3(MUTE_LEFT),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[11]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[11]),
        .I3(MUTE_LEFT),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[12]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[12]),
        .I3(MUTE_LEFT),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[13]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[13]),
        .I3(MUTE_LEFT),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[14]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[14]),
        .I3(MUTE_LEFT),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[15]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[15]),
        .I3(MUTE_LEFT),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[1]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[1]),
        .I3(MUTE_LEFT),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[2]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[2]),
        .I3(MUTE_LEFT),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[3]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[3]),
        .I3(MUTE_LEFT),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[4]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[4]),
        .I3(MUTE_LEFT),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[5]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[5]),
        .I3(MUTE_LEFT),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[6]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[6]),
        .I3(MUTE_LEFT),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[7]),
        .I3(MUTE_LEFT),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[8]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[8]),
        .I3(MUTE_LEFT),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \M_AXIS_TDATA[9]_i_1 
       (.I0(MUTE_RIGHT),
        .I1(S_AXIS_TLAST),
        .I2(S_AXIS_TDATA[9]),
        .I3(MUTE_LEFT),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[0] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[0]),
        .Q(M_AXIS_TDATA[0]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[10] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[10]),
        .Q(M_AXIS_TDATA[10]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[11] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[11]),
        .Q(M_AXIS_TDATA[11]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[12] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[12]),
        .Q(M_AXIS_TDATA[12]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[13] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[13]),
        .Q(M_AXIS_TDATA[13]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[14] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[14]),
        .Q(M_AXIS_TDATA[14]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[15] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[15]),
        .Q(M_AXIS_TDATA[15]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[1] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[1]),
        .Q(M_AXIS_TDATA[1]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[2] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[2]),
        .Q(M_AXIS_TDATA[2]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[3] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[3]),
        .Q(M_AXIS_TDATA[3]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[4] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[4]),
        .Q(M_AXIS_TDATA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[5] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[5]),
        .Q(M_AXIS_TDATA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[6] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[6]),
        .Q(M_AXIS_TDATA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[7] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[7]),
        .Q(M_AXIS_TDATA[7]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[8] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[8]),
        .Q(M_AXIS_TDATA[8]));
  FDCE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[9] 
       (.C(CLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(p_1_in[9]),
        .Q(M_AXIS_TDATA[9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    M_AXIS_TLAST_i_1
       (.I0(S_AXIS_TLAST),
        .I1(ARESETN),
        .I2(S_AXIS_TVALID),
        .I3(M_AXIS_TLAST),
        .O(M_AXIS_TLAST_i_1_n_0));
  FDRE M_AXIS_TLAST_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXIS_TLAST_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TVALID),
        .Q(M_AXIS_TVALID));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXIS_TREADY_i_1
       (.I0(ARESETN),
        .O(S_AXIS_TREADY_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(1'b1),
        .Q(S_AXIS_TREADY));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
