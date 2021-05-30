// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 22 17:57:45 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_depacketizer_0_1_sim_netlist.v
// Design      : design_1_depacketizer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    m_axis_tlast,
    aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    m_axis_tready);
  output [15:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  output m_axis_tlast;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  input m_axis_tready;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire aclk;
  wire aresetn;
  wire \data_sr[0][13]_i_1_n_0 ;
  wire \data_sr[0][15]_i_1_n_0 ;
  wire \data_sr[0][8]_i_1_n_0 ;
  wire \data_sr[0][9]_i_1_n_0 ;
  wire \data_sr[31][15]_i_2_n_0 ;
  wire [15:0]\data_sr_reg[0] ;
  wire \data_sr_reg[1]0 ;
  wire \data_sr_reg[30][0]_srl30_n_0 ;
  wire \data_sr_reg[30][10]_srl30_n_0 ;
  wire \data_sr_reg[30][11]_srl30_n_0 ;
  wire \data_sr_reg[30][12]_srl30_n_0 ;
  wire \data_sr_reg[30][13]_srl30_n_0 ;
  wire \data_sr_reg[30][14]_srl30_n_0 ;
  wire \data_sr_reg[30][15]_srl30_n_0 ;
  wire \data_sr_reg[30][1]_srl30_n_0 ;
  wire \data_sr_reg[30][2]_srl30_n_0 ;
  wire \data_sr_reg[30][3]_srl30_n_0 ;
  wire \data_sr_reg[30][4]_srl30_n_0 ;
  wire \data_sr_reg[30][5]_srl30_n_0 ;
  wire \data_sr_reg[30][6]_srl30_n_0 ;
  wire \data_sr_reg[30][7]_srl30_n_0 ;
  wire \data_sr_reg[30][8]_srl30_n_0 ;
  wire \data_sr_reg[30][9]_srl30_n_0 ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast_int0;
  wire m_axis_tlast_int_i_1_n_0;
  wire m_axis_tlast_int_i_3_n_0;
  wire m_axis_tlast_int_i_4_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:7]p_0_in;
  wire rx_bytes_counter0;
  wire \rx_bytes_counter[0]_i_1_n_0 ;
  wire \rx_bytes_counter[1]_i_1_n_0 ;
  wire \rx_bytes_counter[2]_i_1_n_0 ;
  wire \rx_bytes_counter[3]_i_1_n_0 ;
  wire \rx_bytes_counter[4]_i_1_n_0 ;
  wire \rx_bytes_counter[5]_i_2_n_0 ;
  wire \rx_bytes_counter[5]_i_3_n_0 ;
  wire \rx_bytes_counter[5]_i_4_n_0 ;
  wire \rx_bytes_counter_reg_n_0_[0] ;
  wire \rx_bytes_counter_reg_n_0_[1] ;
  wire \rx_bytes_counter_reg_n_0_[2] ;
  wire \rx_bytes_counter_reg_n_0_[3] ;
  wire \rx_bytes_counter_reg_n_0_[4] ;
  wire \rx_bytes_counter_reg_n_0_[5] ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire [0:0]tx_words_counter;
  wire \tx_words_counter[0]_i_1_n_0 ;
  wire \tx_words_counter[0]_i_3_n_0 ;
  wire \tx_words_counter[1]_i_1_n_0 ;
  wire \tx_words_counter[2]_i_1_n_0 ;
  wire \tx_words_counter[3]_i_1_n_0 ;
  wire \tx_words_counter[4]_i_1_n_0 ;
  wire \tx_words_counter_reg_n_0_[0] ;
  wire \tx_words_counter_reg_n_0_[1] ;
  wire \tx_words_counter_reg_n_0_[2] ;
  wire \tx_words_counter_reg_n_0_[3] ;
  wire \tx_words_counter_reg_n_0_[4] ;
  wire \NLW_data_sr_reg[30][0]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][10]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][11]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][12]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][13]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][14]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][15]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][1]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][2]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][3]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][4]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][5]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][6]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][7]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][8]_srl30_Q31_UNCONNECTED ;
  wire \NLW_data_sr_reg[30][9]_srl30_Q31_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h4444444077777777)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(s_axis_tdata[3]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(s_axis_tdata[7]),
        .I5(state__0[0]),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[5]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[6]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[0]),
        .I1(s_axis_tdata[7]),
        .I2(\FSM_sequential_state[2]_i_7_n_0 ),
        .I3(s_axis_tdata[3]),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(state__1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\tx_words_counter_reg_n_0_[4] ),
        .I1(\tx_words_counter_reg_n_0_[2] ),
        .I2(\tx_words_counter_reg_n_0_[1] ),
        .I3(\tx_words_counter_reg_n_0_[0] ),
        .I4(\tx_words_counter_reg_n_0_[3] ),
        .I5(m_axis_tready),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state__0[1]),
        .I1(s_axis_tdata[7]),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tvalid),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(s_axis_tvalid),
        .I1(\rx_bytes_counter_reg_n_0_[5] ),
        .I2(\rx_bytes_counter[5]_i_4_n_0 ),
        .I3(\rx_bytes_counter_reg_n_0_[4] ),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[5]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[6]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[5]),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[4]),
        .I5(s_axis_tdata[6]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:010,wait_footer:011,wait_header:001,send_data:100" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:010,wait_footer:011,wait_header:001,send_data:100" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:010,wait_footer:011,wait_header:001,send_data:100" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__1[2]),
        .Q(state__0[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_sr[0][13]_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(\rx_bytes_counter_reg_n_0_[0] ),
        .I2(p_0_in[15]),
        .I3(\data_sr_reg[0] [13]),
        .O(\data_sr[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \data_sr[0][15]_i_1 
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(s_axis_tvalid),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\rx_bytes_counter_reg_n_0_[0] ),
        .O(\data_sr[0][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \data_sr[0][15]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(s_axis_tvalid),
        .I3(state__0[0]),
        .I4(aresetn),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \data_sr[0][7]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(s_axis_tvalid),
        .I3(\rx_bytes_counter_reg_n_0_[0] ),
        .I4(state__0[0]),
        .I5(aresetn),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_sr[0][8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(\rx_bytes_counter_reg_n_0_[0] ),
        .I2(p_0_in[15]),
        .I3(\data_sr_reg[0] [8]),
        .O(\data_sr[0][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_sr[0][9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(\rx_bytes_counter_reg_n_0_[0] ),
        .I2(p_0_in[15]),
        .I3(\data_sr_reg[0] [9]),
        .O(\data_sr[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \data_sr[31][15]_i_1 
       (.I0(\data_sr[31][15]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(m_axis_tready),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(aresetn),
        .O(\data_sr_reg[1]0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \data_sr[31][15]_i_2 
       (.I0(state__0[1]),
        .I1(s_axis_tvalid),
        .I2(\rx_bytes_counter_reg_n_0_[0] ),
        .I3(state__0[0]),
        .O(\data_sr[31][15]_i_2_n_0 ));
  FDRE \data_sr_reg[0][0] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[0]),
        .Q(\data_sr_reg[0] [0]),
        .R(1'b0));
  FDRE \data_sr_reg[0][10] 
       (.C(aclk),
        .CE(p_0_in[15]),
        .D(s_axis_tdata[2]),
        .Q(\data_sr_reg[0] [10]),
        .R(\data_sr[0][15]_i_1_n_0 ));
  FDRE \data_sr_reg[0][11] 
       (.C(aclk),
        .CE(p_0_in[15]),
        .D(s_axis_tdata[3]),
        .Q(\data_sr_reg[0] [11]),
        .R(\data_sr[0][15]_i_1_n_0 ));
  FDRE \data_sr_reg[0][12] 
       (.C(aclk),
        .CE(p_0_in[15]),
        .D(s_axis_tdata[4]),
        .Q(\data_sr_reg[0] [12]),
        .R(\data_sr[0][15]_i_1_n_0 ));
  FDRE \data_sr_reg[0][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_sr[0][13]_i_1_n_0 ),
        .Q(\data_sr_reg[0] [13]),
        .R(1'b0));
  FDRE \data_sr_reg[0][14] 
       (.C(aclk),
        .CE(p_0_in[15]),
        .D(s_axis_tdata[6]),
        .Q(\data_sr_reg[0] [14]),
        .R(\data_sr[0][15]_i_1_n_0 ));
  FDRE \data_sr_reg[0][15] 
       (.C(aclk),
        .CE(p_0_in[15]),
        .D(s_axis_tdata[7]),
        .Q(\data_sr_reg[0] [15]),
        .R(\data_sr[0][15]_i_1_n_0 ));
  FDRE \data_sr_reg[0][1] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[1]),
        .Q(\data_sr_reg[0] [1]),
        .R(1'b0));
  FDRE \data_sr_reg[0][2] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[2]),
        .Q(\data_sr_reg[0] [2]),
        .R(1'b0));
  FDRE \data_sr_reg[0][3] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[3]),
        .Q(\data_sr_reg[0] [3]),
        .R(1'b0));
  FDRE \data_sr_reg[0][4] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[4]),
        .Q(\data_sr_reg[0] [4]),
        .R(1'b0));
  FDRE \data_sr_reg[0][5] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[5]),
        .Q(\data_sr_reg[0] [5]),
        .R(1'b0));
  FDRE \data_sr_reg[0][6] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[6]),
        .Q(\data_sr_reg[0] [6]),
        .R(1'b0));
  FDRE \data_sr_reg[0][7] 
       (.C(aclk),
        .CE(p_0_in[7]),
        .D(s_axis_tdata[7]),
        .Q(\data_sr_reg[0] [7]),
        .R(1'b0));
  FDRE \data_sr_reg[0][8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_sr[0][8]_i_1_n_0 ),
        .Q(\data_sr_reg[0] [8]),
        .R(1'b0));
  FDRE \data_sr_reg[0][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\data_sr[0][9]_i_1_n_0 ),
        .Q(\data_sr_reg[0] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][0]_srl30 " *) 
  SRLC32E \data_sr_reg[30][0]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [0]),
        .Q(\data_sr_reg[30][0]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][0]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][10]_srl30 " *) 
  SRLC32E \data_sr_reg[30][10]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [10]),
        .Q(\data_sr_reg[30][10]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][10]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][11]_srl30 " *) 
  SRLC32E \data_sr_reg[30][11]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [11]),
        .Q(\data_sr_reg[30][11]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][11]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][12]_srl30 " *) 
  SRLC32E \data_sr_reg[30][12]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [12]),
        .Q(\data_sr_reg[30][12]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][12]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][13]_srl30 " *) 
  SRLC32E \data_sr_reg[30][13]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [13]),
        .Q(\data_sr_reg[30][13]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][13]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][14]_srl30 " *) 
  SRLC32E \data_sr_reg[30][14]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [14]),
        .Q(\data_sr_reg[30][14]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][14]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][15]_srl30 " *) 
  SRLC32E \data_sr_reg[30][15]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [15]),
        .Q(\data_sr_reg[30][15]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][15]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][1]_srl30 " *) 
  SRLC32E \data_sr_reg[30][1]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [1]),
        .Q(\data_sr_reg[30][1]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][1]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][2]_srl30 " *) 
  SRLC32E \data_sr_reg[30][2]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [2]),
        .Q(\data_sr_reg[30][2]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][2]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][3]_srl30 " *) 
  SRLC32E \data_sr_reg[30][3]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [3]),
        .Q(\data_sr_reg[30][3]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][3]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][4]_srl30 " *) 
  SRLC32E \data_sr_reg[30][4]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [4]),
        .Q(\data_sr_reg[30][4]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][4]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][5]_srl30 " *) 
  SRLC32E \data_sr_reg[30][5]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [5]),
        .Q(\data_sr_reg[30][5]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][5]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][6]_srl30 " *) 
  SRLC32E \data_sr_reg[30][6]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [6]),
        .Q(\data_sr_reg[30][6]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][6]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][7]_srl30 " *) 
  SRLC32E \data_sr_reg[30][7]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [7]),
        .Q(\data_sr_reg[30][7]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][7]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][8]_srl30 " *) 
  SRLC32E \data_sr_reg[30][8]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [8]),
        .Q(\data_sr_reg[30][8]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][8]_srl30_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/data_sr_reg[30] " *) 
  (* srl_name = "\U0/data_sr_reg[30][9]_srl30 " *) 
  SRLC32E \data_sr_reg[30][9]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\data_sr_reg[1]0 ),
        .CLK(aclk),
        .D(\data_sr_reg[0] [9]),
        .Q(\data_sr_reg[30][9]_srl30_n_0 ),
        .Q31(\NLW_data_sr_reg[30][9]_srl30_Q31_UNCONNECTED ));
  FDRE \data_sr_reg[31][0] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][0]_srl30_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \data_sr_reg[31][10] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][10]_srl30_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \data_sr_reg[31][11] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][11]_srl30_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \data_sr_reg[31][12] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][12]_srl30_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \data_sr_reg[31][13] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][13]_srl30_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \data_sr_reg[31][14] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][14]_srl30_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \data_sr_reg[31][15] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][15]_srl30_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \data_sr_reg[31][1] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][1]_srl30_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \data_sr_reg[31][2] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][2]_srl30_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \data_sr_reg[31][3] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][3]_srl30_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \data_sr_reg[31][4] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][4]_srl30_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \data_sr_reg[31][5] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][5]_srl30_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \data_sr_reg[31][6] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][6]_srl30_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \data_sr_reg[31][7] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][7]_srl30_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \data_sr_reg[31][8] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][8]_srl30_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \data_sr_reg[31][9] 
       (.C(aclk),
        .CE(\data_sr_reg[1]0 ),
        .D(\data_sr_reg[30][9]_srl30_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20202000)) 
    m_axis_tlast_int_i_1
       (.I0(aresetn),
        .I1(state__0[2]),
        .I2(m_axis_tlast_int_i_4_n_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tlast_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    m_axis_tlast_int_i_2
       (.I0(m_axis_tlast_int_i_4_n_0),
        .I1(state__0[2]),
        .I2(m_axis_tready),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(aresetn),
        .O(m_axis_tlast_int0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_int_i_3
       (.I0(m_axis_tlast),
        .O(m_axis_tlast_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    m_axis_tlast_int_i_4
       (.I0(state__0[1]),
        .I1(s_axis_tdata[7]),
        .I2(\FSM_sequential_state[2]_i_7_n_0 ),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tvalid),
        .I5(state__0[0]),
        .O(m_axis_tlast_int_i_4_n_0));
  FDRE m_axis_tlast_int_reg
       (.C(aclk),
        .CE(m_axis_tlast_int0),
        .D(m_axis_tlast_int_i_3_n_0),
        .Q(m_axis_tlast),
        .R(m_axis_tlast_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_bytes_counter[0]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[0] ),
        .O(\rx_bytes_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rx_bytes_counter[1]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[1] ),
        .I2(\rx_bytes_counter_reg_n_0_[0] ),
        .O(\rx_bytes_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \rx_bytes_counter[2]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[2] ),
        .I2(\rx_bytes_counter_reg_n_0_[0] ),
        .I3(\rx_bytes_counter_reg_n_0_[1] ),
        .O(\rx_bytes_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \rx_bytes_counter[3]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[3] ),
        .I2(\rx_bytes_counter_reg_n_0_[1] ),
        .I3(\rx_bytes_counter_reg_n_0_[0] ),
        .I4(\rx_bytes_counter_reg_n_0_[2] ),
        .O(\rx_bytes_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \rx_bytes_counter[4]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[4] ),
        .I2(\rx_bytes_counter_reg_n_0_[2] ),
        .I3(\rx_bytes_counter_reg_n_0_[0] ),
        .I4(\rx_bytes_counter_reg_n_0_[1] ),
        .I5(\rx_bytes_counter_reg_n_0_[3] ),
        .O(\rx_bytes_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500404000000000)) 
    \rx_bytes_counter[5]_i_1 
       (.I0(state__0[2]),
        .I1(\rx_bytes_counter[5]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(s_axis_tvalid),
        .I4(state__0[1]),
        .I5(aresetn),
        .O(rx_bytes_counter0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \rx_bytes_counter[5]_i_2 
       (.I0(state__0[1]),
        .I1(\rx_bytes_counter_reg_n_0_[5] ),
        .I2(\rx_bytes_counter[5]_i_4_n_0 ),
        .I3(\rx_bytes_counter_reg_n_0_[4] ),
        .O(\rx_bytes_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_bytes_counter[5]_i_3 
       (.I0(s_axis_tdata[7]),
        .I1(\FSM_sequential_state[2]_i_8_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tvalid),
        .O(\rx_bytes_counter[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_bytes_counter[5]_i_4 
       (.I0(\rx_bytes_counter_reg_n_0_[2] ),
        .I1(\rx_bytes_counter_reg_n_0_[0] ),
        .I2(\rx_bytes_counter_reg_n_0_[1] ),
        .I3(\rx_bytes_counter_reg_n_0_[3] ),
        .O(\rx_bytes_counter[5]_i_4_n_0 ));
  FDRE \rx_bytes_counter_reg[0] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[0]_i_1_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rx_bytes_counter_reg[1] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[1]_i_1_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_bytes_counter_reg[2] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[2]_i_1_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rx_bytes_counter_reg[3] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[3]_i_1_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_bytes_counter_reg[4] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[4]_i_1_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rx_bytes_counter_reg[5] 
       (.C(aclk),
        .CE(rx_bytes_counter0),
        .D(\rx_bytes_counter[5]_i_2_n_0 ),
        .Q(\rx_bytes_counter_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    s_axis_tready_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
    \tx_words_counter[0]_i_1 
       (.I0(tx_words_counter),
        .I1(m_axis_tlast_int_i_4_n_0),
        .I2(state__0[2]),
        .I3(\tx_words_counter[0]_i_3_n_0 ),
        .I4(aresetn),
        .I5(\tx_words_counter_reg_n_0_[0] ),
        .O(\tx_words_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \tx_words_counter[0]_i_2 
       (.I0(state__0[1]),
        .I1(\tx_words_counter_reg_n_0_[0] ),
        .I2(state__0[0]),
        .O(tx_words_counter));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \tx_words_counter[0]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(m_axis_tready),
        .O(\tx_words_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tx_words_counter[1]_i_1 
       (.I0(\tx_words_counter_reg_n_0_[0] ),
        .I1(\tx_words_counter_reg_n_0_[1] ),
        .O(\tx_words_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tx_words_counter[2]_i_1 
       (.I0(\tx_words_counter_reg_n_0_[0] ),
        .I1(\tx_words_counter_reg_n_0_[1] ),
        .I2(\tx_words_counter_reg_n_0_[2] ),
        .O(\tx_words_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tx_words_counter[3]_i_1 
       (.I0(\tx_words_counter_reg_n_0_[2] ),
        .I1(\tx_words_counter_reg_n_0_[1] ),
        .I2(\tx_words_counter_reg_n_0_[0] ),
        .I3(\tx_words_counter_reg_n_0_[3] ),
        .O(\tx_words_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tx_words_counter[4]_i_1 
       (.I0(\tx_words_counter_reg_n_0_[3] ),
        .I1(\tx_words_counter_reg_n_0_[0] ),
        .I2(\tx_words_counter_reg_n_0_[1] ),
        .I3(\tx_words_counter_reg_n_0_[2] ),
        .I4(\tx_words_counter_reg_n_0_[4] ),
        .O(\tx_words_counter[4]_i_1_n_0 ));
  FDRE \tx_words_counter_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_words_counter[0]_i_1_n_0 ),
        .Q(\tx_words_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_words_counter_reg[1] 
       (.C(aclk),
        .CE(m_axis_tlast_int0),
        .D(\tx_words_counter[1]_i_1_n_0 ),
        .Q(\tx_words_counter_reg_n_0_[1] ),
        .R(m_axis_tlast_int_i_1_n_0));
  FDRE \tx_words_counter_reg[2] 
       (.C(aclk),
        .CE(m_axis_tlast_int0),
        .D(\tx_words_counter[2]_i_1_n_0 ),
        .Q(\tx_words_counter_reg_n_0_[2] ),
        .R(m_axis_tlast_int_i_1_n_0));
  FDRE \tx_words_counter_reg[3] 
       (.C(aclk),
        .CE(m_axis_tlast_int0),
        .D(\tx_words_counter[3]_i_1_n_0 ),
        .Q(\tx_words_counter_reg_n_0_[3] ),
        .R(m_axis_tlast_int_i_1_n_0));
  FDRE \tx_words_counter_reg[4] 
       (.C(aclk),
        .CE(m_axis_tlast_int0),
        .D(\tx_words_counter[4]_i_1_n_0 ),
        .Q(\tx_words_counter_reg_n_0_[4] ),
        .R(m_axis_tlast_int_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_depacketizer_0_1,depacketizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "depacketizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_depacketizer U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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
