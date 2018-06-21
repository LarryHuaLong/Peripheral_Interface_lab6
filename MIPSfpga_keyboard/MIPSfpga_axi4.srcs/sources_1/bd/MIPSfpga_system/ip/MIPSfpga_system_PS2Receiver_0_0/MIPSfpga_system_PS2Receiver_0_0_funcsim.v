// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Jun 21 21:30:37 2018
// Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Peripheral_Interface_lab6/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_PS2Receiver_0_0/MIPSfpga_system_PS2Receiver_0_0_funcsim.v
// Design      : MIPSfpga_system_PS2Receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MIPSfpga_system_PS2Receiver_0_0,PS2Receiver_v1_0,{}" *) (* CORE_GENERATION_INFO = "MIPSfpga_system_PS2Receiver_0_0,PS2Receiver_v1_0,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=PS2Receiver,x_ipVersion=1.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=4}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "PS2Receiver_v1_0,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module MIPSfpga_system_PS2Receiver_0_0
   (PS2_CLK,
    PS2_DATA,
    irq,
    flag,
    keycodeout,
    lastkeycode,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input PS2_CLK;
  input PS2_DATA;
  output irq;
  output flag;
  output [31:0]keycodeout;
  output [31:0]lastkeycode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire PS2_CLK;
  wire PS2_DATA;
  wire flag;
  wire irq;
  wire [31:0]keycodeout;
  wire [31:0]lastkeycode;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0 inst
       (.PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .flag(flag),
        .irq(irq),
        .keycodeout(keycodeout[31:8]),
        .\keycodeout_0__s_port_] (keycodeout[0]),
        .\keycodeout_1__s_port_] (keycodeout[1]),
        .\keycodeout_2__s_port_] (keycodeout[2]),
        .\keycodeout_3__s_port_] (keycodeout[3]),
        .\keycodeout_4__s_port_] (keycodeout[4]),
        .\keycodeout_5__s_port_] (keycodeout[5]),
        .\keycodeout_6__s_port_] (keycodeout[6]),
        .\keycodeout_7__s_port_] (keycodeout[7]),
        .lastkeycode(lastkeycode),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "PS2Receiver" *) 
module MIPSfpga_system_PS2Receiver_0_0_PS2Receiver
   (irq,
    D,
    CLK,
    S,
    keycodeout,
    SR,
    CO,
    s00_axi_aclk,
    PS2_CLK,
    PS2_DATA,
    lastkeycode);
  output irq;
  output [23:0]D;
  output CLK;
  output [0:0]S;
  output [7:0]keycodeout;
  input [0:0]SR;
  input [0:0]CO;
  input s00_axi_aclk;
  input PS2_CLK;
  input PS2_DATA;
  input [1:0]lastkeycode;

  wire CLK;
  wire [0:0]CO;
  wire [23:0]D;
  wire PS2_CLK;
  wire PS2_DATA;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:2]cnt0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire [3:0]cnt_reg__0;
  wire [7:0]datacur;
  wire debounce_n_1;
  wire debounce_n_2;
  wire debounce_n_3;
  wire debounce_n_4;
  wire debounce_n_5;
  wire debounce_n_6;
  wire debounce_n_7;
  wire debounce_n_8;
  wire flag_i_1_n_0;
  wire irq;
  wire kclkf;
  wire \keycode[31]_i_1_n_0 ;
  wire \keycode[31]_i_2_n_0 ;
  wire \keycode[31]_i_3_n_0 ;
  wire [7:0]keycodeout;
  wire [1:0]lastkeycode;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .O(cnt0[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h575F)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[0]),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_3 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .O(cnt0[3]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(kclkf),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(kclkf),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg__0[1]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(kclkf),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(cnt0[2]),
        .Q(cnt_reg__0[2]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(kclkf),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(cnt0[3]),
        .Q(cnt_reg__0[3]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[0] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_8),
        .Q(datacur[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[1] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_7),
        .Q(datacur[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[2] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_6),
        .Q(datacur[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[3] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_5),
        .Q(datacur[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[4] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_4),
        .Q(datacur[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[5] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_3),
        .Q(datacur[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[6] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_2),
        .Q(datacur[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[7] 
       (.C(kclkf),
        .CE(1'b1),
        .D(debounce_n_1),
        .Q(datacur[7]),
        .R(1'b0));
  MIPSfpga_system_PS2Receiver_0_0_debouncer debounce
       (.PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .cnt_reg__0(cnt_reg__0),
        .datacur(datacur),
        .\datacur_reg[0] (debounce_n_8),
        .\datacur_reg[1] (debounce_n_7),
        .\datacur_reg[2] (debounce_n_6),
        .\datacur_reg[3] (debounce_n_5),
        .\datacur_reg[4] (debounce_n_4),
        .\datacur_reg[5] (debounce_n_3),
        .\datacur_reg[6] (debounce_n_2),
        .\datacur_reg[7] (debounce_n_1),
        .kclkf(kclkf),
        .s00_axi_aclk(s00_axi_aclk));
  LUT5 #(
    .INIT(32'hEFFF0400)) 
    flag_i_1
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[3]),
        .I4(CLK),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    flag_reg
       (.C(kclkf),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    interupt_i_4
       (.I0(keycodeout[7]),
        .I1(lastkeycode[1]),
        .I2(keycodeout[6]),
        .I3(lastkeycode[0]),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    interupt_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(CO),
        .Q(irq),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \keycode[31]_i_1 
       (.I0(D[6]),
        .I1(datacur[6]),
        .I2(D[7]),
        .I3(datacur[7]),
        .I4(\keycode[31]_i_2_n_0 ),
        .I5(\keycode[31]_i_3_n_0 ),
        .O(\keycode[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \keycode[31]_i_2 
       (.I0(datacur[0]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(datacur[1]),
        .I4(D[2]),
        .I5(datacur[2]),
        .O(\keycode[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \keycode[31]_i_3 
       (.I0(datacur[3]),
        .I1(D[3]),
        .I2(D[5]),
        .I3(datacur[5]),
        .I4(D[4]),
        .I5(datacur[4]),
        .O(\keycode[31]_i_3_n_0 ));
  FDRE \keycode_reg[0] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \keycode_reg[10] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE \keycode_reg[11] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE \keycode_reg[12] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(D[12]),
        .R(1'b0));
  FDRE \keycode_reg[13] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(D[13]),
        .R(1'b0));
  FDRE \keycode_reg[14] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(D[14]),
        .R(1'b0));
  FDRE \keycode_reg[15] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(D[15]),
        .R(1'b0));
  FDRE \keycode_reg[16] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(D[16]),
        .R(1'b0));
  FDRE \keycode_reg[17] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(D[17]),
        .R(1'b0));
  FDRE \keycode_reg[18] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(D[18]),
        .R(1'b0));
  FDRE \keycode_reg[19] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(D[19]),
        .R(1'b0));
  FDRE \keycode_reg[1] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \keycode_reg[20] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(D[20]),
        .R(1'b0));
  FDRE \keycode_reg[21] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(D[21]),
        .R(1'b0));
  FDRE \keycode_reg[22] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(D[22]),
        .R(1'b0));
  FDRE \keycode_reg[23] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(D[23]),
        .R(1'b0));
  FDRE \keycode_reg[24] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(keycodeout[0]),
        .R(1'b0));
  FDRE \keycode_reg[25] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(keycodeout[1]),
        .R(1'b0));
  FDRE \keycode_reg[26] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(keycodeout[2]),
        .R(1'b0));
  FDRE \keycode_reg[27] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(keycodeout[3]),
        .R(1'b0));
  FDRE \keycode_reg[28] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(keycodeout[4]),
        .R(1'b0));
  FDRE \keycode_reg[29] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(keycodeout[5]),
        .R(1'b0));
  FDRE \keycode_reg[2] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \keycode_reg[30] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(keycodeout[6]),
        .R(1'b0));
  FDRE \keycode_reg[31] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(keycodeout[7]),
        .R(1'b0));
  FDRE \keycode_reg[3] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \keycode_reg[4] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \keycode_reg[5] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \keycode_reg[6] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \keycode_reg[7] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(datacur[7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE \keycode_reg[8] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE \keycode_reg[9] 
       (.C(CLK),
        .CE(\keycode[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PS2Receiver_v1_0" *) 
module MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0
   (\keycodeout_6__s_port_] ,
    \keycodeout_7__s_port_] ,
    \keycodeout_0__s_port_] ,
    \keycodeout_1__s_port_] ,
    \keycodeout_2__s_port_] ,
    \keycodeout_3__s_port_] ,
    \keycodeout_5__s_port_] ,
    \keycodeout_4__s_port_] ,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    lastkeycode,
    keycodeout,
    flag,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    PS2_CLK,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    PS2_DATA,
    s00_axi_bready,
    s00_axi_rready);
  output \keycodeout_6__s_port_] ;
  output \keycodeout_7__s_port_] ;
  output \keycodeout_0__s_port_] ;
  output \keycodeout_1__s_port_] ;
  output \keycodeout_2__s_port_] ;
  output \keycodeout_3__s_port_] ;
  output \keycodeout_5__s_port_] ;
  output \keycodeout_4__s_port_] ;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]lastkeycode;
  output [23:0]keycodeout;
  output flag;
  output [31:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input PS2_CLK;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input PS2_DATA;
  input s00_axi_bready;
  input s00_axi_rready;

  wire PS2Receiver_v1_0_S00_AXI_inst_n_1;
  wire PS2Receiver_v1_0_S00_AXI_inst_n_6;
  wire PS2_CLK;
  wire PS2_DATA;
  wire flag;
  wire irq;
  wire keyboard_n_26;
  wire [23:0]keycodeout;
  wire keycodeout_0__s_net_1;
  wire keycodeout_1__s_net_1;
  wire keycodeout_2__s_net_1;
  wire keycodeout_3__s_net_1;
  wire keycodeout_4__s_net_1;
  wire keycodeout_5__s_net_1;
  wire keycodeout_6__s_net_1;
  wire keycodeout_7__s_net_1;
  wire [31:0]lastkeycode;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign \keycodeout_0__s_port_]  = keycodeout_0__s_net_1;
  assign \keycodeout_1__s_port_]  = keycodeout_1__s_net_1;
  assign \keycodeout_2__s_port_]  = keycodeout_2__s_net_1;
  assign \keycodeout_3__s_port_]  = keycodeout_3__s_net_1;
  assign \keycodeout_4__s_port_]  = keycodeout_4__s_net_1;
  assign \keycodeout_5__s_port_]  = keycodeout_5__s_net_1;
  assign \keycodeout_6__s_port_]  = keycodeout_6__s_net_1;
  assign \keycodeout_7__s_port_]  = keycodeout_7__s_net_1;
  MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI PS2Receiver_v1_0_S00_AXI_inst
       (.CO(PS2Receiver_v1_0_S00_AXI_inst_n_6),
        .D({keycodeout_7__s_net_1,keycodeout_6__s_net_1,keycodeout_5__s_net_1,keycodeout_4__s_net_1,keycodeout_3__s_net_1,keycodeout_2__s_net_1,keycodeout_1__s_net_1,keycodeout_0__s_net_1}),
        .Q(keycodeout),
        .S(keyboard_n_26),
        .SR(PS2Receiver_v1_0_S00_AXI_inst_n_1),
        .lastkeycode(lastkeycode),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  MIPSfpga_system_PS2Receiver_0_0_PS2Receiver keyboard
       (.CLK(flag),
        .CO(PS2Receiver_v1_0_S00_AXI_inst_n_6),
        .D({keycodeout[15:0],keycodeout_7__s_net_1,keycodeout_6__s_net_1,keycodeout_5__s_net_1,keycodeout_4__s_net_1,keycodeout_3__s_net_1,keycodeout_2__s_net_1,keycodeout_1__s_net_1,keycodeout_0__s_net_1}),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .S(keyboard_n_26),
        .SR(PS2Receiver_v1_0_S00_AXI_inst_n_1),
        .irq(irq),
        .keycodeout(keycodeout[23:16]),
        .lastkeycode(lastkeycode[31:30]),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "PS2Receiver_v1_0_S00_AXI" *) 
module MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    CO,
    lastkeycode,
    s00_axi_rdata,
    s00_axi_aclk,
    S,
    Q,
    D,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]CO;
  output [31:0]lastkeycode;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [0:0]S;
  input [23:0]Q;
  input [7:0]D;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [7:0]D;
  wire [23:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire interupt_i_10_n_0;
  wire interupt_i_11_n_0;
  wire interupt_i_12_n_0;
  wire interupt_i_13_n_0;
  wire interupt_i_14_n_0;
  wire interupt_i_15_n_0;
  wire interupt_i_5_n_0;
  wire interupt_i_6_n_0;
  wire interupt_i_8_n_0;
  wire interupt_i_9_n_0;
  wire interupt_reg_i_2_n_2;
  wire interupt_reg_i_2_n_3;
  wire interupt_reg_i_3_n_0;
  wire interupt_reg_i_3_n_1;
  wire interupt_reg_i_3_n_2;
  wire interupt_reg_i_3_n_3;
  wire interupt_reg_i_7_n_0;
  wire interupt_reg_i_7_n_1;
  wire interupt_reg_i_7_n_2;
  wire interupt_reg_i_7_n_3;
  wire [31:0]lastkeycode;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire [3:3]NLW_interupt_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_interupt_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_interupt_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_interupt_reg_i_7_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_awready_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT4 #(
    .INIT(16'h0C44)) 
    axi_bvalid_i_1
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_bready),
        .I3(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(lastkeycode[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(D[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(lastkeycode[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[10]),
        .I4(axi_araddr[3]),
        .I5(Q[2]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(lastkeycode[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(Q[3]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(lastkeycode[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[12]),
        .I4(axi_araddr[3]),
        .I5(Q[4]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(lastkeycode[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[13]),
        .I4(axi_araddr[3]),
        .I5(Q[5]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(lastkeycode[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[14]),
        .I4(axi_araddr[3]),
        .I5(Q[6]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(lastkeycode[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[15]),
        .I4(axi_araddr[3]),
        .I5(Q[7]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(lastkeycode[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(Q[8]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(lastkeycode[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[17]),
        .I4(axi_araddr[3]),
        .I5(Q[9]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(lastkeycode[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(Q[10]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(lastkeycode[19]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(Q[11]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(lastkeycode[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(D[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(lastkeycode[20]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[20]),
        .I4(axi_araddr[3]),
        .I5(Q[12]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(lastkeycode[21]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[21]),
        .I4(axi_araddr[3]),
        .I5(Q[13]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(lastkeycode[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[22]),
        .I4(axi_araddr[3]),
        .I5(Q[14]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(lastkeycode[23]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[23]),
        .I4(axi_araddr[3]),
        .I5(Q[15]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(lastkeycode[24]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[24]),
        .I4(axi_araddr[3]),
        .I5(Q[16]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(lastkeycode[25]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[25]),
        .I4(axi_araddr[3]),
        .I5(Q[17]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(lastkeycode[26]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[26]),
        .I4(axi_araddr[3]),
        .I5(Q[18]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(lastkeycode[27]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[27]),
        .I4(axi_araddr[3]),
        .I5(Q[19]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(lastkeycode[28]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[28]),
        .I4(axi_araddr[3]),
        .I5(Q[20]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(lastkeycode[29]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[29]),
        .I4(axi_araddr[3]),
        .I5(Q[21]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(lastkeycode[2]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[2]),
        .I4(axi_araddr[3]),
        .I5(D[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(lastkeycode[30]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[30]),
        .I4(axi_araddr[3]),
        .I5(Q[22]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(lastkeycode[31]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[31]),
        .I4(axi_araddr[3]),
        .I5(Q[23]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(lastkeycode[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[3]),
        .I4(axi_araddr[3]),
        .I5(D[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(lastkeycode[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[4]),
        .I4(axi_araddr[3]),
        .I5(D[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(lastkeycode[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[5]),
        .I4(axi_araddr[3]),
        .I5(D[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(lastkeycode[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[6]),
        .I4(axi_araddr[3]),
        .I5(D[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(lastkeycode[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[7]),
        .I4(axi_araddr[3]),
        .I5(D[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(lastkeycode[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[8]),
        .I4(axi_araddr[3]),
        .I5(Q[0]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(lastkeycode[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[9]),
        .I4(axi_araddr[3]),
        .I5(Q[1]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F08080)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_rready),
        .I4(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wready_i_1
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    interupt_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_10
       (.I0(lastkeycode[15]),
        .I1(Q[7]),
        .I2(lastkeycode[16]),
        .I3(Q[8]),
        .I4(Q[9]),
        .I5(lastkeycode[17]),
        .O(interupt_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_11
       (.I0(lastkeycode[12]),
        .I1(Q[4]),
        .I2(lastkeycode[13]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(lastkeycode[14]),
        .O(interupt_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_12
       (.I0(lastkeycode[9]),
        .I1(Q[1]),
        .I2(lastkeycode[10]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(lastkeycode[11]),
        .O(interupt_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_13
       (.I0(lastkeycode[7]),
        .I1(D[7]),
        .I2(lastkeycode[6]),
        .I3(D[6]),
        .I4(Q[0]),
        .I5(lastkeycode[8]),
        .O(interupt_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_14
       (.I0(lastkeycode[5]),
        .I1(D[5]),
        .I2(lastkeycode[3]),
        .I3(D[3]),
        .I4(D[4]),
        .I5(lastkeycode[4]),
        .O(interupt_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_15
       (.I0(lastkeycode[2]),
        .I1(D[2]),
        .I2(lastkeycode[0]),
        .I3(D[0]),
        .I4(D[1]),
        .I5(lastkeycode[1]),
        .O(interupt_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_5
       (.I0(lastkeycode[29]),
        .I1(Q[21]),
        .I2(lastkeycode[27]),
        .I3(Q[19]),
        .I4(Q[20]),
        .I5(lastkeycode[28]),
        .O(interupt_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_6
       (.I0(lastkeycode[24]),
        .I1(Q[16]),
        .I2(lastkeycode[25]),
        .I3(Q[17]),
        .I4(Q[18]),
        .I5(lastkeycode[26]),
        .O(interupt_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_8
       (.I0(lastkeycode[23]),
        .I1(Q[15]),
        .I2(lastkeycode[21]),
        .I3(Q[13]),
        .I4(Q[14]),
        .I5(lastkeycode[22]),
        .O(interupt_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    interupt_i_9
       (.I0(lastkeycode[20]),
        .I1(Q[12]),
        .I2(lastkeycode[18]),
        .I3(Q[10]),
        .I4(Q[11]),
        .I5(lastkeycode[19]),
        .O(interupt_i_9_n_0));
  CARRY4 interupt_reg_i_2
       (.CI(interupt_reg_i_3_n_0),
        .CO({NLW_interupt_reg_i_2_CO_UNCONNECTED[3],CO,interupt_reg_i_2_n_2,interupt_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_interupt_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,S,interupt_i_5_n_0,interupt_i_6_n_0}));
  CARRY4 interupt_reg_i_3
       (.CI(interupt_reg_i_7_n_0),
        .CO({interupt_reg_i_3_n_0,interupt_reg_i_3_n_1,interupt_reg_i_3_n_2,interupt_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_interupt_reg_i_3_O_UNCONNECTED[3:0]),
        .S({interupt_i_8_n_0,interupt_i_9_n_0,interupt_i_10_n_0,interupt_i_11_n_0}));
  CARRY4 interupt_reg_i_7
       (.CI(1'b0),
        .CO({interupt_reg_i_7_n_0,interupt_reg_i_7_n_1,interupt_reg_i_7_n_2,interupt_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_interupt_reg_i_7_O_UNCONNECTED[3:0]),
        .S({interupt_i_12_n_0,interupt_i_13_n_0,interupt_i_14_n_0,interupt_i_15_n_0}));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg1[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg1[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(lastkeycode[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(lastkeycode[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(lastkeycode[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(lastkeycode[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(lastkeycode[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(lastkeycode[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(lastkeycode[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(lastkeycode[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(lastkeycode[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(lastkeycode[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(lastkeycode[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(lastkeycode[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(lastkeycode[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(lastkeycode[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(lastkeycode[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(lastkeycode[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(lastkeycode[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(lastkeycode[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(lastkeycode[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(lastkeycode[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(lastkeycode[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(lastkeycode[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(lastkeycode[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(lastkeycode[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(lastkeycode[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(lastkeycode[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(lastkeycode[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(lastkeycode[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(lastkeycode[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(lastkeycode[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(lastkeycode[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(lastkeycode[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module MIPSfpga_system_PS2Receiver_0_0_debouncer
   (kclkf,
    \datacur_reg[7] ,
    \datacur_reg[6] ,
    \datacur_reg[5] ,
    \datacur_reg[4] ,
    \datacur_reg[3] ,
    \datacur_reg[2] ,
    \datacur_reg[1] ,
    \datacur_reg[0] ,
    PS2_CLK,
    s00_axi_aclk,
    PS2_DATA,
    cnt_reg__0,
    datacur);
  output kclkf;
  output \datacur_reg[7] ;
  output \datacur_reg[6] ;
  output \datacur_reg[5] ;
  output \datacur_reg[4] ;
  output \datacur_reg[3] ;
  output \datacur_reg[2] ;
  output \datacur_reg[1] ;
  output \datacur_reg[0] ;
  input PS2_CLK;
  input s00_axi_aclk;
  input PS2_DATA;
  input [3:0]cnt_reg__0;
  input [7:0]datacur;

  wire Iv0;
  wire Iv1;
  wire O0_i_1_n_0;
  wire O0_i_2_n_0;
  wire O1_i_1_n_0;
  wire PS2_CLK;
  wire PS2_DATA;
  wire clear;
  wire \cnt0[0]_i_1_n_0 ;
  wire \cnt0[1]_i_1_n_0 ;
  wire \cnt0[2]_i_1_n_0 ;
  wire \cnt0[3]_i_1_n_0 ;
  wire \cnt0[4]_i_1_n_0 ;
  wire [4:0]cnt0_reg;
  wire \cnt1[1]_i_1_n_0 ;
  wire \cnt1[1]_i_2_n_0 ;
  wire [1:0]cnt1_reg__0;
  wire [3:0]cnt_reg__0;
  wire [7:0]datacur;
  wire \datacur_reg[0] ;
  wire \datacur_reg[1] ;
  wire \datacur_reg[2] ;
  wire \datacur_reg[3] ;
  wire \datacur_reg[4] ;
  wire \datacur_reg[5] ;
  wire \datacur_reg[6] ;
  wire \datacur_reg[7] ;
  wire kclkf;
  wire kdataf;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDRE #(
    .INIT(1'b0)) 
    Iv0_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PS2_CLK),
        .Q(Iv0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Iv1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PS2_DATA),
        .Q(Iv1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFD80)) 
    O0_i_1
       (.I0(O0_i_2_n_0),
        .I1(Iv0),
        .I2(PS2_CLK),
        .I3(kclkf),
        .O(O0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000800)) 
    O0_i_2
       (.I0(cnt0_reg[0]),
        .I1(cnt0_reg[1]),
        .I2(cnt0_reg[3]),
        .I3(cnt0_reg[4]),
        .I4(cnt0_reg[2]),
        .O(O0_i_2_n_0));
  FDRE O0_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O0_i_1_n_0),
        .Q(kclkf),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF78000)) 
    O1_i_1
       (.I0(cnt1_reg__0[1]),
        .I1(cnt1_reg__0[0]),
        .I2(Iv1),
        .I3(PS2_DATA),
        .I4(kdataf),
        .O(O1_i_1_n_0));
  FDRE O1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O1_i_1_n_0),
        .Q(kdataf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111111511111)) 
    \cnt0[0]_i_1 
       (.I0(clear),
        .I1(cnt0_reg[0]),
        .I2(cnt0_reg[1]),
        .I3(cnt0_reg[3]),
        .I4(cnt0_reg[4]),
        .I5(cnt0_reg[2]),
        .O(\cnt0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004FFFF00)) 
    \cnt0[1]_i_1 
       (.I0(cnt0_reg[2]),
        .I1(cnt0_reg[4]),
        .I2(cnt0_reg[3]),
        .I3(cnt0_reg[1]),
        .I4(cnt0_reg[0]),
        .I5(clear),
        .O(\cnt0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1101444444444444)) 
    \cnt0[2]_i_1 
       (.I0(clear),
        .I1(cnt0_reg[2]),
        .I2(cnt0_reg[4]),
        .I3(cnt0_reg[3]),
        .I4(cnt0_reg[1]),
        .I5(cnt0_reg[0]),
        .O(\cnt0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0999999990000000)) 
    \cnt0[3]_i_1 
       (.I0(Iv0),
        .I1(PS2_CLK),
        .I2(cnt0_reg[2]),
        .I3(cnt0_reg[0]),
        .I4(cnt0_reg[1]),
        .I5(cnt0_reg[3]),
        .O(\cnt0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFEAAAAAAA)) 
    \cnt0[4]_i_1 
       (.I0(clear),
        .I1(cnt0_reg[1]),
        .I2(cnt0_reg[0]),
        .I3(cnt0_reg[2]),
        .I4(cnt0_reg[3]),
        .I5(cnt0_reg[4]),
        .O(\cnt0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt0[4]_i_2 
       (.I0(PS2_CLK),
        .I1(Iv0),
        .O(clear));
  FDRE \cnt0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt0[0]_i_1_n_0 ),
        .Q(cnt0_reg[0]),
        .R(1'b0));
  FDRE \cnt0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt0[1]_i_1_n_0 ),
        .Q(cnt0_reg[1]),
        .R(1'b0));
  FDRE \cnt0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt0[2]_i_1_n_0 ),
        .Q(cnt0_reg[2]),
        .R(1'b0));
  FDRE \cnt0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt0[3]_i_1_n_0 ),
        .Q(cnt0_reg[3]),
        .R(1'b0));
  FDRE \cnt0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt0[4]_i_1_n_0 ),
        .Q(cnt0_reg[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt1[0]_i_1 
       (.I0(cnt1_reg__0[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt1[1]_i_1 
       (.I0(PS2_DATA),
        .I1(Iv1),
        .O(\cnt1[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt1[1]_i_2 
       (.I0(cnt1_reg__0[0]),
        .I1(cnt1_reg__0[1]),
        .O(\cnt1[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt1[1]_i_3 
       (.I0(cnt1_reg__0[0]),
        .I1(cnt1_reg__0[1]),
        .O(p_0_in[1]));
  FDRE \cnt1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt1[1]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(cnt1_reg__0[0]),
        .R(\cnt1[1]_i_1_n_0 ));
  FDRE \cnt1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt1[1]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(cnt1_reg__0[1]),
        .R(\cnt1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[0]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[3]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[1]),
        .I5(datacur[0]),
        .O(\datacur_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[1]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[3]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[0]),
        .I5(datacur[1]),
        .O(\datacur_reg[1] ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \datacur[2]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[3]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[1]),
        .I5(datacur[2]),
        .O(\datacur_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[3]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[0]),
        .I5(datacur[3]),
        .O(\datacur_reg[3] ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \datacur[4]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[0]),
        .I5(datacur[4]),
        .O(\datacur_reg[4] ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \datacur[5]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[2]),
        .I4(cnt_reg__0[1]),
        .I5(datacur[5]),
        .O(\datacur_reg[5] ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \datacur[6]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[1]),
        .I5(datacur[6]),
        .O(\datacur_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[7]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[2]),
        .I3(cnt_reg__0[3]),
        .I4(cnt_reg__0[0]),
        .I5(datacur[7]),
        .O(\datacur_reg[7] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
