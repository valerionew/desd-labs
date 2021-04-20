// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 15:50:19 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/valer/Documents/desd-labs/LAB2/SerialManager/SerialManager.gen/sources_1/bd/design_1/ip/design_1_switch_controller_0_0/design_1_switch_controller_0_0_sim_netlist.v
// Design      : design_1_switch_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_switch_controller_0_0,switch_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "switch_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_switch_controller_0_0
   (switches,
    trig,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TREADY);
  input [15:0]switches;
  input trig;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET M_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input M_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [15:0]switches;
  wire trig;

  design_1_switch_controller_0_0_switch_controller U0
       (.M_AXIS_ACLK(M_AXIS_ACLK),
        .M_AXIS_ARESETN(M_AXIS_ARESETN),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .switches(switches[7:0]),
        .trig(trig));
endmodule

(* ORIG_REF_NAME = "switch_controller" *) 
module design_1_switch_controller_0_0_switch_controller
   (M_AXIS_TDATA,
    M_AXIS_TVALID,
    switches,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TREADY,
    trig);
  output [7:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input [7:0]switches;
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  input M_AXIS_TREADY;
  input trig;

  wire \/i__n_0 ;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_sig_i_1_n_0;
  wire [7:0]switches;
  wire trig;

  LUT4 #(
    .INIT(16'h0080)) 
    \/i_ 
       (.I0(M_AXIS_ARESETN),
        .I1(M_AXIS_TREADY),
        .I2(trig),
        .I3(M_AXIS_TVALID),
        .O(\/i__n_0 ));
  FDRE \M_AXIS_TDATA_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(\/i__n_0 ),
        .D(switches[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    M_AXIS_TVALID_sig_i_1
       (.I0(trig),
        .I1(M_AXIS_TVALID),
        .I2(M_AXIS_ARESETN),
        .O(M_AXIS_TVALID_sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_sig_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .D(M_AXIS_TVALID_sig_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
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
