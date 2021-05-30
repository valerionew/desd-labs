// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 22 17:57:44 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_packetizer_0_1_sim_netlist.v
// Design      : design_1_packetizer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_packetizer_0_1,packetizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "packetizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packetizer U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_packetizer
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    aclk,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tlast);
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  input aclk;
  input [15:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input s_axis_tlast;

  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire aclk;
  wire aresetn;
  wire expected_tlast;
  wire expected_tlast_i_1_n_0;
  wire [7:0]high_byte;
  wire high_byte0;
  wire [7:0]low_byte;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire [2:0]state__0;
  wire words_counter0;
  wire \words_counter[0]_i_1_n_0 ;
  wire \words_counter[1]_i_1_n_0 ;
  wire \words_counter[2]_i_1_n_0 ;
  wire \words_counter[3]_i_1_n_0 ;
  wire \words_counter[4]_i_2_n_0 ;
  wire \words_counter_reg_n_0_[0] ;
  wire \words_counter_reg_n_0_[1] ;
  wire \words_counter_reg_n_0_[2] ;
  wire \words_counter_reg_n_0_[3] ;
  wire \words_counter_reg_n_0_[4] ;

  LUT6 #(
    .INIT(64'h0101010155010155)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(s_axis_tlast),
        .I4(expected_tlast),
        .I5(state[2]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1712)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[2] ),
        .I2(\words_counter_reg_n_0_[4] ),
        .I3(\words_counter_reg_n_0_[0] ),
        .I4(\words_counter_reg_n_0_[1] ),
        .I5(\words_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h77037400)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1088)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(state[2]),
        .O(state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\words_counter_reg_n_0_[3] ),
        .I1(\words_counter_reg_n_0_[1] ),
        .I2(\words_counter_reg_n_0_[0] ),
        .I3(\words_counter_reg_n_0_[4] ),
        .I4(\words_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_header:001,send_high_byte:100,send_low_byte:011,check_tlast:010,send_footer:101" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:000,send_header:001,send_high_byte:100,send_low_byte:011,check_tlast:010,send_footer:101" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "idle:000,send_header:001,send_high_byte:100,send_low_byte:011,check_tlast:010,send_footer:101" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[2]),
        .Q(state[2]));
  LUT2 #(
    .INIT(4'h2)) 
    expected_tlast_i_1
       (.I0(state[2]),
        .I1(expected_tlast),
        .O(expected_tlast_i_1_n_0));
  FDRE expected_tlast_reg
       (.C(aclk),
        .CE(words_counter0),
        .D(expected_tlast_i_1_n_0),
        .Q(expected_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \high_byte[7]_i_1 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(high_byte0));
  FDRE \high_byte_reg[0] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[8]),
        .Q(high_byte[0]),
        .R(1'b0));
  FDRE \high_byte_reg[1] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[9]),
        .Q(high_byte[1]),
        .R(1'b0));
  FDRE \high_byte_reg[2] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[10]),
        .Q(high_byte[2]),
        .R(1'b0));
  FDRE \high_byte_reg[3] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[11]),
        .Q(high_byte[3]),
        .R(1'b0));
  FDRE \high_byte_reg[4] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[12]),
        .Q(high_byte[4]),
        .R(1'b0));
  FDRE \high_byte_reg[5] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[13]),
        .Q(high_byte[5]),
        .R(1'b0));
  FDRE \high_byte_reg[6] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[14]),
        .Q(high_byte[6]),
        .R(1'b0));
  FDRE \high_byte_reg[7] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[15]),
        .Q(high_byte[7]),
        .R(1'b0));
  FDRE \low_byte_reg[0] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[0]),
        .Q(low_byte[0]),
        .R(1'b0));
  FDRE \low_byte_reg[1] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[1]),
        .Q(low_byte[1]),
        .R(1'b0));
  FDRE \low_byte_reg[2] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[2]),
        .Q(low_byte[2]),
        .R(1'b0));
  FDRE \low_byte_reg[3] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[3]),
        .Q(low_byte[3]),
        .R(1'b0));
  FDRE \low_byte_reg[4] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[4]),
        .Q(low_byte[4]),
        .R(1'b0));
  FDRE \low_byte_reg[5] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[5]),
        .Q(low_byte[5]),
        .R(1'b0));
  FDRE \low_byte_reg[6] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[6]),
        .Q(low_byte[6]),
        .R(1'b0));
  FDRE \low_byte_reg[7] 
       (.C(aclk),
        .CE(high_byte0),
        .D(s_axis_tdata[7]),
        .Q(low_byte[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h62626200)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(low_byte[0]),
        .I3(state[0]),
        .I4(high_byte[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(low_byte[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(high_byte[1]),
        .I4(state[0]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(low_byte[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(high_byte[2]),
        .I4(state[0]),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(low_byte[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(high_byte[3]),
        .I4(state[0]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h62626200)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(low_byte[4]),
        .I3(state[0]),
        .I4(high_byte[4]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(low_byte[5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(high_byte[5]),
        .I4(state[0]),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'h4F4F4F00)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(state[2]),
        .I1(low_byte[6]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(high_byte[6]),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h222233F3)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(low_byte[7]),
        .I1(state[2]),
        .I2(high_byte[7]),
        .I3(state[0]),
        .I4(state[1]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h74)) 
    m_axis_tvalid_INST_0
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_tready_INST_0
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \words_counter[0]_i_1 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[0] ),
        .O(\words_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \words_counter[1]_i_1 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[1] ),
        .I2(\words_counter_reg_n_0_[0] ),
        .O(\words_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \words_counter[2]_i_1 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[2] ),
        .I2(\words_counter_reg_n_0_[1] ),
        .I3(\words_counter_reg_n_0_[0] ),
        .O(\words_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \words_counter[3]_i_1 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[3] ),
        .I2(\words_counter_reg_n_0_[2] ),
        .I3(\words_counter_reg_n_0_[0] ),
        .I4(\words_counter_reg_n_0_[1] ),
        .O(\words_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000880)) 
    \words_counter[4]_i_1 
       (.I0(aresetn),
        .I1(m_axis_tready),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(words_counter0));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \words_counter[4]_i_2 
       (.I0(state[2]),
        .I1(\words_counter_reg_n_0_[4] ),
        .I2(\words_counter_reg_n_0_[3] ),
        .I3(\words_counter_reg_n_0_[1] ),
        .I4(\words_counter_reg_n_0_[0] ),
        .I5(\words_counter_reg_n_0_[2] ),
        .O(\words_counter[4]_i_2_n_0 ));
  FDRE \words_counter_reg[0] 
       (.C(aclk),
        .CE(words_counter0),
        .D(\words_counter[0]_i_1_n_0 ),
        .Q(\words_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \words_counter_reg[1] 
       (.C(aclk),
        .CE(words_counter0),
        .D(\words_counter[1]_i_1_n_0 ),
        .Q(\words_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \words_counter_reg[2] 
       (.C(aclk),
        .CE(words_counter0),
        .D(\words_counter[2]_i_1_n_0 ),
        .Q(\words_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \words_counter_reg[3] 
       (.C(aclk),
        .CE(words_counter0),
        .D(\words_counter[3]_i_1_n_0 ),
        .Q(\words_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \words_counter_reg[4] 
       (.C(aclk),
        .CE(words_counter0),
        .D(\words_counter[4]_i_2_n_0 ),
        .Q(\words_counter_reg_n_0_[4] ),
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
