// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:06:58 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_led_latch_0_2_sim_netlist.v
// Design      : design_1_led_latch_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_latch_0_2,led_latch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "led_latch,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    LEDS);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  output [15:0]LEDS;

  wire \<const0> ;
  wire [7:0]\^LEDS ;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  assign LEDS[15] = \<const0> ;
  assign LEDS[14] = \<const0> ;
  assign LEDS[13] = \<const0> ;
  assign LEDS[12] = \<const0> ;
  assign LEDS[11] = \<const0> ;
  assign LEDS[10] = \<const0> ;
  assign LEDS[9] = \<const0> ;
  assign LEDS[8] = \<const0> ;
  assign LEDS[7:0] = \^LEDS [7:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_latch U0
       (.LEDS(\^LEDS ),
        .S_AXIS_ACLK(S_AXIS_ACLK),
        .S_AXIS_ARESETN(S_AXIS_ARESETN),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_latch
   (S_AXIS_TREADY,
    LEDS,
    S_AXIS_ARESETN,
    S_AXIS_ACLK,
    S_AXIS_TDATA,
    S_AXIS_TVALID);
  output S_AXIS_TREADY;
  output [7:0]LEDS;
  input S_AXIS_ARESETN;
  input S_AXIS_ACLK;
  input [7:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;

  wire [7:0]LEDS;
  wire \LEDS[7]_i_1_n_0 ;
  wire \LEDS[7]_i_2_n_0 ;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  LUT1 #(
    .INIT(2'h1)) 
    \LEDS[7]_i_1 
       (.I0(S_AXIS_ARESETN),
        .O(\LEDS[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \LEDS[7]_i_2 
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TREADY),
        .O(\LEDS[7]_i_2_n_0 ));
  FDRE \LEDS_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[0]),
        .Q(LEDS[0]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[1]),
        .Q(LEDS[1]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[2]),
        .Q(LEDS[2]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[3]),
        .Q(LEDS[3]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[4]),
        .Q(LEDS[4]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[5]),
        .Q(LEDS[5]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[6] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[6]),
        .Q(LEDS[6]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE \LEDS_reg[7] 
       (.C(S_AXIS_ACLK),
        .CE(\LEDS[7]_i_2_n_0 ),
        .D(S_AXIS_TDATA[7]),
        .Q(LEDS[7]),
        .R(\LEDS[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_sig_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(S_AXIS_ARESETN),
        .Q(S_AXIS_TREADY),
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
