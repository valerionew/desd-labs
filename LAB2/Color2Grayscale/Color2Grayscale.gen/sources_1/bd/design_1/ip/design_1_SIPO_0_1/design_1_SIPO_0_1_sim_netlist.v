// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  2 17:02:04 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/valer/Documents/desd-labs/LAB2/Color2Grayscale/Color2Grayscale.gen/sources_1/bd/design_1/ip/design_1_SIPO_0_1/design_1_SIPO_0_1_sim_netlist.v
// Design      : design_1_SIPO_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SIPO_0_1,SIPO,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SIPO,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_SIPO_0_1
   (S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    ch0,
    ch1,
    ch2,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  output [7:0]ch0;
  output [7:0]ch1;
  output [7:0]ch2;
  output valid;

  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire valid;

  design_1_SIPO_0_1_SIPO U0
       (.S_AXIS_ACLK(S_AXIS_ACLK),
        .S_AXIS_ARESETN(S_AXIS_ARESETN),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID),
        .ch0(ch0),
        .ch1(ch1),
        .ch2(ch2),
        .valid(valid));
endmodule

(* ORIG_REF_NAME = "SIPO" *) 
module design_1_SIPO_0_1_SIPO
   (S_AXIS_TREADY,
    ch0,
    ch1,
    ch2,
    valid,
    S_AXIS_ACLK,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_ARESETN);
  output S_AXIS_TREADY;
  output [7:0]ch0;
  output [7:0]ch1;
  output [7:0]ch2;
  output valid;
  input S_AXIS_ACLK;
  input S_AXIS_TVALID;
  input [7:0]S_AXIS_TDATA;
  input S_AXIS_ARESETN;

  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TVALID;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire [31:1]data0;
  wire [31:0]index;
  wire [31:0]index_0;
  wire \index_reg[12]_i_2_n_0 ;
  wire \index_reg[12]_i_2_n_1 ;
  wire \index_reg[12]_i_2_n_2 ;
  wire \index_reg[12]_i_2_n_3 ;
  wire \index_reg[16]_i_2_n_0 ;
  wire \index_reg[16]_i_2_n_1 ;
  wire \index_reg[16]_i_2_n_2 ;
  wire \index_reg[16]_i_2_n_3 ;
  wire \index_reg[20]_i_2_n_0 ;
  wire \index_reg[20]_i_2_n_1 ;
  wire \index_reg[20]_i_2_n_2 ;
  wire \index_reg[20]_i_2_n_3 ;
  wire \index_reg[24]_i_2_n_0 ;
  wire \index_reg[24]_i_2_n_1 ;
  wire \index_reg[24]_i_2_n_2 ;
  wire \index_reg[24]_i_2_n_3 ;
  wire \index_reg[28]_i_2_n_0 ;
  wire \index_reg[28]_i_2_n_1 ;
  wire \index_reg[28]_i_2_n_2 ;
  wire \index_reg[28]_i_2_n_3 ;
  wire \index_reg[31]_i_2_n_2 ;
  wire \index_reg[31]_i_2_n_3 ;
  wire \index_reg[4]_i_2_n_0 ;
  wire \index_reg[4]_i_2_n_1 ;
  wire \index_reg[4]_i_2_n_2 ;
  wire \index_reg[4]_i_2_n_3 ;
  wire \index_reg[8]_i_2_n_0 ;
  wire \index_reg[8]_i_2_n_1 ;
  wire \index_reg[8]_i_2_n_2 ;
  wire \index_reg[8]_i_2_n_3 ;
  wire \pixel[0][7]_i_2_n_0 ;
  wire \pixel[0][7]_i_3_n_0 ;
  wire \pixel[0][7]_i_4_n_0 ;
  wire \pixel[0][7]_i_5_n_0 ;
  wire \pixel[0][7]_i_6_n_0 ;
  wire \pixel[0][7]_i_7_n_0 ;
  wire \pixel[0][7]_i_8_n_0 ;
  wire \pixel[0]_3 ;
  wire \pixel[1]_2 ;
  wire \pixel[2]_1 ;
  wire valid;
  wire valid_sig_i_1_n_0;
  wire valid_sig_i_2_n_0;
  wire valid_sig_i_3_n_0;
  wire valid_sig_i_4_n_0;
  wire [3:2]\NLW_index_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_index_reg[31]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXIS_TREADY_i_1
       (.I0(S_AXIS_ARESETN),
        .O(S_AXIS_TREADY_i_1_n_0));
  FDCE S_AXIS_TREADY_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(1'b1),
        .Q(S_AXIS_TREADY));
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \index[0]_i_1 
       (.I0(index[1]),
        .I1(\pixel[0][7]_i_4_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_2_n_0 ),
        .I4(index[0]),
        .O(index_0[0]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[10]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[10]),
        .O(index_0[10]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[11]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[11]),
        .O(index_0[11]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[12]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[12]),
        .O(index_0[12]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[13]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[13]),
        .O(index_0[13]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[14]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[14]),
        .O(index_0[14]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[15]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[15]),
        .O(index_0[15]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[16]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[16]),
        .O(index_0[16]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[17]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[17]),
        .O(index_0[17]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[18]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[18]),
        .O(index_0[18]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[19]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[19]),
        .O(index_0[19]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[1]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[1]),
        .O(index_0[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[20]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[20]),
        .O(index_0[20]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[21]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[21]),
        .O(index_0[21]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[22]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[22]),
        .O(index_0[22]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[23]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[23]),
        .O(index_0[23]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[24]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[24]),
        .O(index_0[24]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[25]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[25]),
        .O(index_0[25]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[26]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[26]),
        .O(index_0[26]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[27]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[27]),
        .O(index_0[27]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[28]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[28]),
        .O(index_0[28]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[29]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[29]),
        .O(index_0[29]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[2]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[2]),
        .O(index_0[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[30]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[30]),
        .O(index_0[30]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[31]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[31]),
        .O(index_0[31]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[3]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[3]),
        .O(index_0[3]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[4]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[4]),
        .O(index_0[4]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[5]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[5]),
        .O(index_0[5]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[6]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[6]),
        .O(index_0[6]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[7]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[7]),
        .O(index_0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[8]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[8]),
        .O(index_0[8]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \index[9]_i_1 
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(\pixel[0][7]_i_3_n_0 ),
        .I3(\pixel[0][7]_i_4_n_0 ),
        .I4(index[1]),
        .I5(data0[9]),
        .O(index_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[0]),
        .Q(index[0]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[10] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[10]),
        .Q(index[10]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[11] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[11]),
        .Q(index[11]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[12] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[12]),
        .Q(index[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[12]_i_2 
       (.CI(\index_reg[8]_i_2_n_0 ),
        .CO({\index_reg[12]_i_2_n_0 ,\index_reg[12]_i_2_n_1 ,\index_reg[12]_i_2_n_2 ,\index_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(index[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[13] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[13]),
        .Q(index[13]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[14] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[14]),
        .Q(index[14]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[15] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[15]),
        .Q(index[15]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[16] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[16]),
        .Q(index[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[16]_i_2 
       (.CI(\index_reg[12]_i_2_n_0 ),
        .CO({\index_reg[16]_i_2_n_0 ,\index_reg[16]_i_2_n_1 ,\index_reg[16]_i_2_n_2 ,\index_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(index[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[17] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[17]),
        .Q(index[17]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[18] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[18]),
        .Q(index[18]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[19] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[19]),
        .Q(index[19]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[1]),
        .Q(index[1]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[20] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[20]),
        .Q(index[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[20]_i_2 
       (.CI(\index_reg[16]_i_2_n_0 ),
        .CO({\index_reg[20]_i_2_n_0 ,\index_reg[20]_i_2_n_1 ,\index_reg[20]_i_2_n_2 ,\index_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(index[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[21] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[21]),
        .Q(index[21]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[22] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[22]),
        .Q(index[22]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[23] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[23]),
        .Q(index[23]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[24] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[24]),
        .Q(index[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[24]_i_2 
       (.CI(\index_reg[20]_i_2_n_0 ),
        .CO({\index_reg[24]_i_2_n_0 ,\index_reg[24]_i_2_n_1 ,\index_reg[24]_i_2_n_2 ,\index_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(index[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[25] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[25]),
        .Q(index[25]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[26] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[26]),
        .Q(index[26]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[27] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[27]),
        .Q(index[27]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[28] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[28]),
        .Q(index[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[28]_i_2 
       (.CI(\index_reg[24]_i_2_n_0 ),
        .CO({\index_reg[28]_i_2_n_0 ,\index_reg[28]_i_2_n_1 ,\index_reg[28]_i_2_n_2 ,\index_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(index[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[29] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[29]),
        .Q(index[29]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[2]),
        .Q(index[2]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[30] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[30]),
        .Q(index[30]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[31] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[31]),
        .Q(index[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[31]_i_2 
       (.CI(\index_reg[28]_i_2_n_0 ),
        .CO({\NLW_index_reg[31]_i_2_CO_UNCONNECTED [3:2],\index_reg[31]_i_2_n_2 ,\index_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_index_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,index[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[3]),
        .Q(index[3]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[4]),
        .Q(index[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\index_reg[4]_i_2_n_0 ,\index_reg[4]_i_2_n_1 ,\index_reg[4]_i_2_n_2 ,\index_reg[4]_i_2_n_3 }),
        .CYINIT(index[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(index[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[5]),
        .Q(index[5]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[6]),
        .Q(index[6]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[7]),
        .Q(index[7]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[8]),
        .Q(index[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[8]_i_2 
       (.CI(\index_reg[4]_i_2_n_0 ),
        .CO({\index_reg[8]_i_2_n_0 ,\index_reg[8]_i_2_n_1 ,\index_reg[8]_i_2_n_2 ,\index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(index[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(index_0[9]),
        .Q(index[9]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \pixel[0][7]_i_1 
       (.I0(index[0]),
        .I1(S_AXIS_TVALID),
        .I2(index[1]),
        .I3(\pixel[0][7]_i_2_n_0 ),
        .I4(\pixel[0][7]_i_3_n_0 ),
        .I5(\pixel[0][7]_i_4_n_0 ),
        .O(\pixel[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pixel[0][7]_i_2 
       (.I0(\pixel[0][7]_i_5_n_0 ),
        .I1(index[21]),
        .I2(index[20]),
        .I3(index[23]),
        .I4(index[22]),
        .I5(\pixel[0][7]_i_6_n_0 ),
        .O(\pixel[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pixel[0][7]_i_3 
       (.I0(index[6]),
        .I1(index[7]),
        .I2(index[4]),
        .I3(index[5]),
        .I4(\pixel[0][7]_i_7_n_0 ),
        .O(\pixel[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pixel[0][7]_i_4 
       (.I0(index[14]),
        .I1(index[15]),
        .I2(index[12]),
        .I3(index[13]),
        .I4(\pixel[0][7]_i_8_n_0 ),
        .O(\pixel[0][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[0][7]_i_5 
       (.I0(index[25]),
        .I1(index[24]),
        .I2(index[27]),
        .I3(index[26]),
        .O(\pixel[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pixel[0][7]_i_6 
       (.I0(index[30]),
        .I1(index[31]),
        .I2(index[28]),
        .I3(index[29]),
        .I4(index[3]),
        .I5(index[2]),
        .O(\pixel[0][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[0][7]_i_7 
       (.I0(index[9]),
        .I1(index[8]),
        .I2(index[11]),
        .I3(index[10]),
        .O(\pixel[0][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[0][7]_i_8 
       (.I0(index[17]),
        .I1(index[16]),
        .I2(index[19]),
        .I3(index[18]),
        .O(\pixel[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \pixel[1][7]_i_1 
       (.I0(index[0]),
        .I1(S_AXIS_TVALID),
        .I2(index[1]),
        .I3(\pixel[0][7]_i_2_n_0 ),
        .I4(\pixel[0][7]_i_3_n_0 ),
        .I5(\pixel[0][7]_i_4_n_0 ),
        .O(\pixel[1]_2 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \pixel[2][7]_i_1 
       (.I0(S_AXIS_TVALID),
        .I1(index[0]),
        .I2(\pixel[0][7]_i_2_n_0 ),
        .I3(\pixel[0][7]_i_3_n_0 ),
        .I4(\pixel[0][7]_i_4_n_0 ),
        .I5(index[1]),
        .O(\pixel[2]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[0]),
        .Q(ch0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[1]),
        .Q(ch0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[2]),
        .Q(ch0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[3]),
        .Q(ch0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[4]),
        .Q(ch0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[5]),
        .Q(ch0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[6]),
        .Q(ch0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[0][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_3 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[7]),
        .Q(ch0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[0]),
        .Q(ch1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[1]),
        .Q(ch1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[2]),
        .Q(ch1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[3]),
        .Q(ch1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[4]),
        .Q(ch1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[5]),
        .Q(ch1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[6]),
        .Q(ch1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[1][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_2 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[7]),
        .Q(ch1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[0]),
        .Q(ch2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[1]),
        .Q(ch2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[2]),
        .Q(ch2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[3]),
        .Q(ch2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[4]),
        .Q(ch2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[5]),
        .Q(ch2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[6]),
        .Q(ch2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg[2][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_1 ),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(S_AXIS_TDATA[7]),
        .Q(ch2[7]));
  LUT5 #(
    .INIT(32'h01000000)) 
    valid_sig_i_1
       (.I0(index[0]),
        .I1(\pixel[0][7]_i_2_n_0 ),
        .I2(valid_sig_i_2_n_0),
        .I3(index[1]),
        .I4(S_AXIS_TVALID),
        .O(valid_sig_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_sig_i_2
       (.I0(\pixel[0][7]_i_7_n_0 ),
        .I1(valid_sig_i_3_n_0),
        .I2(\pixel[0][7]_i_8_n_0 ),
        .I3(valid_sig_i_4_n_0),
        .O(valid_sig_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_sig_i_3
       (.I0(index[5]),
        .I1(index[4]),
        .I2(index[7]),
        .I3(index[6]),
        .O(valid_sig_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_sig_i_4
       (.I0(index[13]),
        .I1(index[12]),
        .I2(index[15]),
        .I3(index[14]),
        .O(valid_sig_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_sig_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .CLR(S_AXIS_TREADY_i_1_n_0),
        .D(valid_sig_i_1_n_0),
        .Q(valid));
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
