// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 19:51:58 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SIPO_0_0_sim_netlist.v
// Design      : design_1_SIPO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO
   (valid,
    S_AXIS_ARESETN,
    S_AXIS_ACLK,
    S_AXIS_TVALID);
  output valid;
  input S_AXIS_ARESETN;
  input S_AXIS_ACLK;
  input S_AXIS_TVALID;

  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire S_AXIS_TREADY_sig;
  wire S_AXIS_TVALID;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_0 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry__3_n_0 ;
  wire \_inferred__0/i__carry__3_n_1 ;
  wire \_inferred__0/i__carry__3_n_2 ;
  wire \_inferred__0/i__carry__3_n_3 ;
  wire \_inferred__0/i__carry__4_n_0 ;
  wire \_inferred__0/i__carry__4_n_1 ;
  wire \_inferred__0/i__carry__4_n_2 ;
  wire \_inferred__0/i__carry__4_n_3 ;
  wire \_inferred__0/i__carry__5_n_0 ;
  wire \_inferred__0/i__carry__5_n_1 ;
  wire \_inferred__0/i__carry__5_n_2 ;
  wire \_inferred__0/i__carry__5_n_3 ;
  wire \_inferred__0/i__carry__6_n_2 ;
  wire \_inferred__0/i__carry__6_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [31:1]data0;
  wire [31:0]index;
  wire \index[0]_i_1_n_0 ;
  wire \index[31]_i_1_n_0 ;
  wire \index[31]_i_2_n_0 ;
  wire \index[31]_i_3_n_0 ;
  wire \index[31]_i_4_n_0 ;
  wire valid;
  wire valid_i_10_n_0;
  wire valid_i_11_n_0;
  wire valid_i_1_n_0;
  wire valid_i_2_n_0;
  wire valid_i_3_n_0;
  wire valid_i_4_n_0;
  wire valid_i_5_n_0;
  wire valid_i_6_n_0;
  wire valid_i_7_n_0;
  wire valid_i_8_n_0;
  wire valid_i_9_n_0;
  wire [3:2]\NLW__inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__0/i__carry__6_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    S_AXIS_TREADY_sig_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(S_AXIS_ARESETN),
        .Q(S_AXIS_TREADY_sig),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(index[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(index[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(index[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(index[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\_inferred__0/i__carry__2_n_0 ,\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(index[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__3 
       (.CI(\_inferred__0/i__carry__2_n_0 ),
        .CO({\_inferred__0/i__carry__3_n_0 ,\_inferred__0/i__carry__3_n_1 ,\_inferred__0/i__carry__3_n_2 ,\_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(index[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__4 
       (.CI(\_inferred__0/i__carry__3_n_0 ),
        .CO({\_inferred__0/i__carry__4_n_0 ,\_inferred__0/i__carry__4_n_1 ,\_inferred__0/i__carry__4_n_2 ,\_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(index[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__5 
       (.CI(\_inferred__0/i__carry__4_n_0 ),
        .CO({\_inferred__0/i__carry__5_n_0 ,\_inferred__0/i__carry__5_n_1 ,\_inferred__0/i__carry__5_n_2 ,\_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(index[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__6 
       (.CI(\_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW__inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\_inferred__0/i__carry__6_n_2 ,\_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__0/i__carry__6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,index[31:29]}));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \index[0]_i_1 
       (.I0(valid_i_3_n_0),
        .I1(\index[31]_i_4_n_0 ),
        .I2(\index[31]_i_3_n_0 ),
        .I3(\index[31]_i_2_n_0 ),
        .I4(index[0]),
        .O(\index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \index[31]_i_1 
       (.I0(\index[31]_i_2_n_0 ),
        .I1(index[0]),
        .I2(\index[31]_i_3_n_0 ),
        .I3(\index[31]_i_4_n_0 ),
        .I4(valid_i_3_n_0),
        .O(\index[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \index[31]_i_2 
       (.I0(S_AXIS_ARESETN),
        .I1(S_AXIS_TREADY_sig),
        .I2(S_AXIS_TVALID),
        .O(\index[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \index[31]_i_3 
       (.I0(index[12]),
        .I1(index[13]),
        .I2(index[10]),
        .I3(index[11]),
        .I4(valid_i_10_n_0),
        .O(\index[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \index[31]_i_4 
       (.I0(index[4]),
        .I1(index[5]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(valid_i_8_n_0),
        .O(\index[31]_i_4_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(S_AXIS_ACLK),
        .CE(\index[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(index[9]),
        .R(\index[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808080808A8)) 
    valid_i_1
       (.I0(S_AXIS_ARESETN),
        .I1(valid),
        .I2(valid_i_2_n_0),
        .I3(valid_i_3_n_0),
        .I4(valid_i_4_n_0),
        .I5(index[0]),
        .O(valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_10
       (.I0(index[15]),
        .I1(index[14]),
        .I2(index[17]),
        .I3(index[16]),
        .O(valid_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_11
       (.I0(index[11]),
        .I1(index[10]),
        .I2(index[13]),
        .I3(index[12]),
        .O(valid_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    valid_i_2
       (.I0(S_AXIS_TVALID),
        .I1(S_AXIS_TREADY_sig),
        .O(valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    valid_i_3
       (.I0(valid_i_5_n_0),
        .I1(valid_i_6_n_0),
        .I2(index[31]),
        .I3(index[30]),
        .I4(index[1]),
        .I5(valid_i_7_n_0),
        .O(valid_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_4
       (.I0(valid_i_8_n_0),
        .I1(valid_i_9_n_0),
        .I2(valid_i_10_n_0),
        .I3(valid_i_11_n_0),
        .O(valid_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_5
       (.I0(index[23]),
        .I1(index[22]),
        .I2(index[25]),
        .I3(index[24]),
        .O(valid_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_6
       (.I0(index[19]),
        .I1(index[18]),
        .I2(index[21]),
        .I3(index[20]),
        .O(valid_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_7
       (.I0(index[27]),
        .I1(index[26]),
        .I2(index[29]),
        .I3(index[28]),
        .O(valid_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_8
       (.I0(index[7]),
        .I1(index[6]),
        .I2(index[9]),
        .I3(index[8]),
        .O(valid_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    valid_i_9
       (.I0(index[3]),
        .I1(index[2]),
        .I2(index[5]),
        .I3(index[4]),
        .O(valid_i_9_n_0));
  FDRE valid_reg
       (.C(S_AXIS_ACLK),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(valid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SIPO_0_0,SIPO,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SIPO,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  output [7:0]ch0;
  output [7:0]ch1;
  output [7:0]ch2;
  output valid;

  wire \<const0> ;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire S_AXIS_TVALID;
  wire valid;

  assign S_AXIS_TREADY = \<const0> ;
  assign ch0[7] = \<const0> ;
  assign ch0[6] = \<const0> ;
  assign ch0[5] = \<const0> ;
  assign ch0[4] = \<const0> ;
  assign ch0[3] = \<const0> ;
  assign ch0[2] = \<const0> ;
  assign ch0[1] = \<const0> ;
  assign ch0[0] = \<const0> ;
  assign ch1[7] = \<const0> ;
  assign ch1[6] = \<const0> ;
  assign ch1[5] = \<const0> ;
  assign ch1[4] = \<const0> ;
  assign ch1[3] = \<const0> ;
  assign ch1[2] = \<const0> ;
  assign ch1[1] = \<const0> ;
  assign ch1[0] = \<const0> ;
  assign ch2[7] = \<const0> ;
  assign ch2[6] = \<const0> ;
  assign ch2[5] = \<const0> ;
  assign ch2[4] = \<const0> ;
  assign ch2[3] = \<const0> ;
  assign ch2[2] = \<const0> ;
  assign ch2[1] = \<const0> ;
  assign ch2[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SIPO U0
       (.S_AXIS_ACLK(S_AXIS_ACLK),
        .S_AXIS_ARESETN(S_AXIS_ARESETN),
        .S_AXIS_TVALID(S_AXIS_TVALID),
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
