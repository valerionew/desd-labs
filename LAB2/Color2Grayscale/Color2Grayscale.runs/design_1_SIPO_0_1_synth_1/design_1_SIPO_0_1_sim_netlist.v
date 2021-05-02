// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 11:43:44 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SIPO_0_1_sim_netlist.v
// Design      : design_1_SIPO_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO
   (S_AXIS_TREADY,
    ch0,
    ch1,
    ch2,
    valid,
    S_AXIS_ARESETN,
    S_AXIS_TVALID,
    S_AXIS_ACLK,
    S_AXIS_TDATA);
  output S_AXIS_TREADY;
  output [7:0]ch0;
  output [7:0]ch1;
  output [7:0]ch2;
  output [0:0]valid;
  input [0:0]S_AXIS_ARESETN;
  input [0:0]S_AXIS_TVALID;
  input [0:0]S_AXIS_ACLK;
  input [7:0]S_AXIS_TDATA;

  wire [0:0]S_AXIS_ACLK;
  wire [0:0]S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire [0:0]S_AXIS_TVALID;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire [31:1]data0;
  wire [31:0]index;
  wire \index[0]_i_1_n_0 ;
  wire \index[31]_i_1_n_0 ;
  wire \index[31]_i_2_n_0 ;
  wire \index_reg[12]_i_1_n_0 ;
  wire \index_reg[12]_i_1_n_1 ;
  wire \index_reg[12]_i_1_n_2 ;
  wire \index_reg[12]_i_1_n_3 ;
  wire \index_reg[16]_i_1_n_0 ;
  wire \index_reg[16]_i_1_n_1 ;
  wire \index_reg[16]_i_1_n_2 ;
  wire \index_reg[16]_i_1_n_3 ;
  wire \index_reg[20]_i_1_n_0 ;
  wire \index_reg[20]_i_1_n_1 ;
  wire \index_reg[20]_i_1_n_2 ;
  wire \index_reg[20]_i_1_n_3 ;
  wire \index_reg[24]_i_1_n_0 ;
  wire \index_reg[24]_i_1_n_1 ;
  wire \index_reg[24]_i_1_n_2 ;
  wire \index_reg[24]_i_1_n_3 ;
  wire \index_reg[28]_i_1_n_0 ;
  wire \index_reg[28]_i_1_n_1 ;
  wire \index_reg[28]_i_1_n_2 ;
  wire \index_reg[28]_i_1_n_3 ;
  wire \index_reg[31]_i_3_n_2 ;
  wire \index_reg[31]_i_3_n_3 ;
  wire \index_reg[4]_i_1_n_0 ;
  wire \index_reg[4]_i_1_n_1 ;
  wire \index_reg[4]_i_1_n_2 ;
  wire \index_reg[4]_i_1_n_3 ;
  wire \index_reg[8]_i_1_n_0 ;
  wire \index_reg[8]_i_1_n_1 ;
  wire \index_reg[8]_i_1_n_2 ;
  wire \index_reg[8]_i_1_n_3 ;
  wire p_0_in;
  wire \pixel[0][7]_i_3_n_0 ;
  wire \pixel[0]_2 ;
  wire \pixel[1]_1 ;
  wire \pixel[2][7]_i_2_n_0 ;
  wire \pixel[2][7]_i_3_n_0 ;
  wire \pixel[2][7]_i_4_n_0 ;
  wire \pixel[2][7]_i_5_n_0 ;
  wire \pixel[2][7]_i_6_n_0 ;
  wire \pixel[2][7]_i_7_n_0 ;
  wire \pixel[2][7]_i_8_n_0 ;
  wire \pixel[2][7]_i_9_n_0 ;
  wire \pixel[2]_0 ;
  wire [0:0]valid;
  wire valid_sig_i_1_n_0;
  wire [3:2]\NLW_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_index_reg[31]_i_3_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_sig_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(S_AXIS_ARESETN),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FFFFFFFD0000000)) 
    \index[0]_i_1 
       (.I0(index[1]),
        .I1(\pixel[0][7]_i_3_n_0 ),
        .I2(S_AXIS_TREADY),
        .I3(S_AXIS_TVALID),
        .I4(S_AXIS_ARESETN),
        .I5(index[0]),
        .O(\index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \index[31]_i_1 
       (.I0(S_AXIS_ARESETN),
        .I1(S_AXIS_TVALID),
        .I2(S_AXIS_TREADY),
        .I3(index[0]),
        .I4(\pixel[0][7]_i_3_n_0 ),
        .I5(index[1]),
        .O(\index[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \index[31]_i_2 
       (.I0(S_AXIS_TREADY),
        .I1(S_AXIS_TVALID),
        .I2(S_AXIS_ARESETN),
        .O(\index[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[10] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[10]),
        .Q(index[10]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[11] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[11]),
        .Q(index[11]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[12] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[12]),
        .Q(index[12]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[12]_i_1 
       (.CI(\index_reg[8]_i_1_n_0 ),
        .CO({\index_reg[12]_i_1_n_0 ,\index_reg[12]_i_1_n_1 ,\index_reg[12]_i_1_n_2 ,\index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(index[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[13] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[13]),
        .Q(index[13]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[14] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[14]),
        .Q(index[14]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[15] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[15]),
        .Q(index[15]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[16] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[16]),
        .Q(index[16]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[16]_i_1 
       (.CI(\index_reg[12]_i_1_n_0 ),
        .CO({\index_reg[16]_i_1_n_0 ,\index_reg[16]_i_1_n_1 ,\index_reg[16]_i_1_n_2 ,\index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(index[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[17] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[17]),
        .Q(index[17]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[18] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[18]),
        .Q(index[18]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[19] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[19]),
        .Q(index[19]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[1]),
        .Q(index[1]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[20] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[20]),
        .Q(index[20]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[20]_i_1 
       (.CI(\index_reg[16]_i_1_n_0 ),
        .CO({\index_reg[20]_i_1_n_0 ,\index_reg[20]_i_1_n_1 ,\index_reg[20]_i_1_n_2 ,\index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(index[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[21] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[21]),
        .Q(index[21]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[22] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[22]),
        .Q(index[22]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[23] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[23]),
        .Q(index[23]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[24] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[24]),
        .Q(index[24]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[24]_i_1 
       (.CI(\index_reg[20]_i_1_n_0 ),
        .CO({\index_reg[24]_i_1_n_0 ,\index_reg[24]_i_1_n_1 ,\index_reg[24]_i_1_n_2 ,\index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(index[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[25] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[25]),
        .Q(index[25]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[26] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[26]),
        .Q(index[26]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[27] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[27]),
        .Q(index[27]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[28] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[28]),
        .Q(index[28]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[28]_i_1 
       (.CI(\index_reg[24]_i_1_n_0 ),
        .CO({\index_reg[28]_i_1_n_0 ,\index_reg[28]_i_1_n_1 ,\index_reg[28]_i_1_n_2 ,\index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(index[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[29] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[29]),
        .Q(index[29]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[2]),
        .Q(index[2]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[30] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[30]),
        .Q(index[30]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[31] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[31]),
        .Q(index[31]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[31]_i_3 
       (.CI(\index_reg[28]_i_1_n_0 ),
        .CO({\NLW_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\index_reg[31]_i_3_n_2 ,\index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_index_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,index[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[3]),
        .Q(index[3]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[4]),
        .Q(index[4]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\index_reg[4]_i_1_n_0 ,\index_reg[4]_i_1_n_1 ,\index_reg[4]_i_1_n_2 ,\index_reg[4]_i_1_n_3 }),
        .CYINIT(index[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(index[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[5]),
        .Q(index[5]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[6]),
        .Q(index[6]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[7]),
        .Q(index[7]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[8]),
        .Q(index[8]),
        .R(\index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \index_reg[8]_i_1 
       (.CI(\index_reg[4]_i_1_n_0 ),
        .CO({\index_reg[8]_i_1_n_0 ,\index_reg[8]_i_1_n_1 ,\index_reg[8]_i_1_n_2 ,\index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(index[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(index[9]),
        .R(\index[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel[0][7]_i_1 
       (.I0(S_AXIS_ARESETN),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00000008)) 
    \pixel[0][7]_i_2 
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TREADY),
        .I2(index[0]),
        .I3(index[1]),
        .I4(\pixel[0][7]_i_3_n_0 ),
        .O(\pixel[0]_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \pixel[0][7]_i_3 
       (.I0(\pixel[2][7]_i_5_n_0 ),
        .I1(\pixel[2][7]_i_4_n_0 ),
        .I2(\pixel[2][7]_i_3_n_0 ),
        .O(\pixel[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \pixel[1][7]_i_1 
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TREADY),
        .I2(index[0]),
        .I3(index[1]),
        .I4(\pixel[0][7]_i_3_n_0 ),
        .O(\pixel[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \pixel[2][7]_i_1 
       (.I0(\pixel[2][7]_i_2_n_0 ),
        .I1(index[0]),
        .I2(\pixel[2][7]_i_3_n_0 ),
        .I3(\pixel[2][7]_i_4_n_0 ),
        .I4(\pixel[2][7]_i_5_n_0 ),
        .I5(index[1]),
        .O(\pixel[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pixel[2][7]_i_2 
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TREADY),
        .O(\pixel[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pixel[2][7]_i_3 
       (.I0(\pixel[2][7]_i_6_n_0 ),
        .I1(index[21]),
        .I2(index[20]),
        .I3(index[23]),
        .I4(index[22]),
        .I5(\pixel[2][7]_i_7_n_0 ),
        .O(\pixel[2][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pixel[2][7]_i_4 
       (.I0(index[6]),
        .I1(index[7]),
        .I2(index[4]),
        .I3(index[5]),
        .I4(\pixel[2][7]_i_8_n_0 ),
        .O(\pixel[2][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pixel[2][7]_i_5 
       (.I0(index[14]),
        .I1(index[15]),
        .I2(index[12]),
        .I3(index[13]),
        .I4(\pixel[2][7]_i_9_n_0 ),
        .O(\pixel[2][7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[2][7]_i_6 
       (.I0(index[25]),
        .I1(index[24]),
        .I2(index[27]),
        .I3(index[26]),
        .O(\pixel[2][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pixel[2][7]_i_7 
       (.I0(index[30]),
        .I1(index[31]),
        .I2(index[28]),
        .I3(index[29]),
        .I4(index[3]),
        .I5(index[2]),
        .O(\pixel[2][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[2][7]_i_8 
       (.I0(index[9]),
        .I1(index[8]),
        .I2(index[11]),
        .I3(index[10]),
        .O(\pixel[2][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel[2][7]_i_9 
       (.I0(index[17]),
        .I1(index[16]),
        .I2(index[19]),
        .I3(index[18]),
        .O(\pixel[2][7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[0]),
        .Q(ch0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[1]),
        .Q(ch0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[2]),
        .Q(ch0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[3]),
        .Q(ch0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[4]),
        .Q(ch0[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[5]),
        .Q(ch0[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[6]),
        .Q(ch0[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[0][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[0]_2 ),
        .D(S_AXIS_TDATA[7]),
        .Q(ch0[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[0]),
        .Q(ch1[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[1]),
        .Q(ch1[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[2]),
        .Q(ch1[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[3]),
        .Q(ch1[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[4]),
        .Q(ch1[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[5]),
        .Q(ch1[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[6]),
        .Q(ch1[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[1][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[1]_1 ),
        .D(S_AXIS_TDATA[7]),
        .Q(ch1[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][0] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[0]),
        .Q(ch2[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][1] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[1]),
        .Q(ch2[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][2] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[2]),
        .Q(ch2[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][3] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[3]),
        .Q(ch2[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][4] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[4]),
        .Q(ch2[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][5] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[5]),
        .Q(ch2[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][6] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[6]),
        .Q(ch2[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_reg[2][7] 
       (.C(S_AXIS_ACLK),
        .CE(\pixel[2]_0 ),
        .D(S_AXIS_TDATA[7]),
        .Q(ch2[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEA000000)) 
    valid_sig_i_1
       (.I0(valid),
        .I1(S_AXIS_TVALID),
        .I2(S_AXIS_TREADY),
        .I3(\pixel[2]_0 ),
        .I4(S_AXIS_ARESETN),
        .O(valid_sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_sig_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(valid_sig_i_1_n_0),
        .Q(valid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SIPO_0_1,SIPO,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SIPO,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    ch0,
    ch1,
    ch2,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input [0:0]S_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [0:0]S_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input [0:0]S_AXIS_TVALID;
  output [7:0]ch0;
  output [7:0]ch1;
  output [7:0]ch2;
  output [0:0]valid;

  wire [0:0]S_AXIS_ACLK;
  wire [0:0]S_AXIS_ARESETN;
  wire [7:0]S_AXIS_TDATA;
  wire [0:0]S_AXIS_TREADY;
  wire [0:0]S_AXIS_TVALID;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire [0:0]valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO U0
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
