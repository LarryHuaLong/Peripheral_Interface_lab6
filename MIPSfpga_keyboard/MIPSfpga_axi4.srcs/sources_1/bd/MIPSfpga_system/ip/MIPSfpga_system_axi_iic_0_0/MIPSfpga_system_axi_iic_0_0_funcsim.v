// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Wed Jun 20 20:46:50 2018
// Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_axi_iic_0_0/MIPSfpga_system_axi_iic_0_0_funcsim.v
// Design      : MIPSfpga_system_axi_iic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MIPSfpga_system_axi_iic_0_0,axi_iic,{}" *) (* core_generation_info = "MIPSfpga_system_axi_iic_0_0,axi_iic,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=100000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0,C_DEFAULT_VALUE=0x00}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_iic,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module MIPSfpga_system_axi_iic_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) output iic2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_I" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_T" *) output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9:0] = \^s_axi_rdata [9:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  MIPSfpga_system_axi_iic_0_0_axi_iic U0
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [9:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module MIPSfpga_system_axi_iic_0_0_SRL_FIFO
   (Rc_Data_Exists,
    Rc_addr,
    Rc_fifo_data,
    D,
    buffer_Empty,
    \RESET_FLOPS[3].RST_FLOPS ,
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg ,
    s_axi_aclk,
    \data_i2c_i_reg[7] ,
    Rc_fifo_wr_d,
    Rc_fifo_wr,
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0 ,
    \RD_FIFO_CNTRL.Rc_fifo_rd_reg ,
    Rc_fifo_rd,
    Rc_fifo_rd_d);
  output Rc_Data_Exists;
  output [0:3]Rc_addr;
  output [0:7]Rc_fifo_data;
  output [1:0]D;
  output buffer_Empty;
  input \RESET_FLOPS[3].RST_FLOPS ;
  input \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  input s_axi_aclk;
  input [7:0]\data_i2c_i_reg[7] ;
  input Rc_fifo_wr_d;
  input Rc_fifo_wr;
  input \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0 ;
  input \RD_FIFO_CNTRL.Rc_fifo_rd_reg ;
  input Rc_fifo_rd;
  input Rc_fifo_rd_d;

  wire \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ;
  wire \Addr_Counters[1].MUXCY_L_I_n_0 ;
  wire \Addr_Counters[1].XORCY_I_n_0 ;
  wire \Addr_Counters[2].XORCY_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_n_0 ;
  wire CI;
  wire [1:0]D;
  wire D_0;
  wire \RD_FIFO_CNTRL.Rc_fifo_rd_reg ;
  wire \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  wire \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS ;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire buffer_Empty;
  wire [7:0]\data_i2c_i_reg[7] ;
  wire s_axi_aclk;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(D_0),
        .Q(Rc_addr[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\Addr_Counters[1].MUXCY_L_I_n_0 ,CI}),
        .CYINIT(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Rc_addr[2],Rc_addr[1],Rc_addr[0]}),
        .O({\Addr_Counters[3].XORCY_I_n_0 ,\Addr_Counters[2].XORCY_I_n_0 ,\Addr_Counters[1].XORCY_I_n_0 ,D_0}),
        .S({S,S2_out,S4_out,S6_out}));
  LUT4 #(
    .INIT(16'h8828)) 
    \Addr_Counters[0].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Rc_addr[0]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S6_out));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2__1 
       (.I0(\RD_FIFO_CNTRL.Rc_fifo_wr_reg_0 ),
        .I1(Rc_addr[0]),
        .I2(Rc_addr[1]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[2]),
        .I5(\RD_FIFO_CNTRL.Rc_fifo_rd_reg ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \Addr_Counters[0].MUXCY_L_I_i_3__0 
       (.I0(Rc_fifo_wr_d),
        .I1(Rc_fifo_wr),
        .I2(Rc_addr[2]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[1]),
        .I5(Rc_addr[0]),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\Addr_Counters[1].XORCY_I_n_0 ),
        .Q(Rc_addr[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT4 #(
    .INIT(16'h8828)) 
    \Addr_Counters[1].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Rc_addr[1]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S4_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\Addr_Counters[2].XORCY_I_n_0 ),
        .Q(Rc_addr[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT4 #(
    .INIT(16'h8828)) 
    \Addr_Counters[2].MUXCY_L_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Rc_addr[2]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S2_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\Addr_Counters[3].XORCY_I_n_0 ),
        .Q(Rc_addr[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT4 #(
    .INIT(16'h8828)) 
    \Addr_Counters[3].XORCY_I_i_1__1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__0_n_0 ),
        .I1(Rc_addr[3]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RD_FIFO_CNTRL.Rc_fifo_wr_reg ),
        .Q(Rc_Data_Exists),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2__0
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(buffer_Empty));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [7]),
        .Q(Rc_fifo_data[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [6]),
        .Q(Rc_fifo_data[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [5]),
        .Q(Rc_fifo_data[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [4]),
        .Q(Rc_fifo_data[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [3]),
        .Q(Rc_fifo_data[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [2]),
        .Q(Rc_fifo_data[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [1]),
        .Q(Rc_fifo_data[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__1_n_0 ),
        .CLK(s_axi_aclk),
        .D(\data_i2c_i_reg[7] [0]),
        .Q(Rc_fifo_data[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[1]_i_1 
       (.I0(Rc_Data_Exists),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sr_i[2]_i_1 
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0
   (Tx_data_exists,
    Tx_addr,
    Tx_fifo_data,
    p_3_in,
    \sr_i_reg[0] ,
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ,
    \sr_i_reg[3] ,
    buffer_Empty,
    \data_int_reg[0] ,
    Tx_fifo_rst,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    s_axi_aclk,
    s_axi_wdata,
    Tx_fifo_wr_d,
    Tx_fifo_wr,
    dynamic_MSMS,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg_0 ,
    txFifoRd,
    rdCntrFrmTxFifo,
    sda_clean,
    shift_reg_ld);
  output Tx_data_exists;
  output [0:3]Tx_addr;
  output [0:7]Tx_fifo_data;
  output p_3_in;
  output \sr_i_reg[0] ;
  output \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ;
  output [0:0]\sr_i_reg[3] ;
  output buffer_Empty;
  output [0:0]\data_int_reg[0] ;
  input Tx_fifo_rst;
  input \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input Tx_fifo_wr_d;
  input Tx_fifo_wr;
  input [0:0]dynamic_MSMS;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input \FIFO_GEN_DTR.Tx_fifo_wr_reg_0 ;
  input txFifoRd;
  input rdCntrFrmTxFifo;
  input sda_clean;
  input shift_reg_ld;

  wire \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[1].MUXCY_L_I_n_0 ;
  wire \Addr_Counters[1].XORCY_I_n_0 ;
  wire \Addr_Counters[2].XORCY_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_n_0 ;
  wire CI;
  wire D;
  wire \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg_0 ;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire buffer_Empty;
  wire [0:0]\data_int_reg[0] ;
  wire [0:0]dynamic_MSMS;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire sda_clean;
  wire shift_reg_ld;
  wire \sr_i_reg[0] ;
  wire [0:0]\sr_i_reg[3] ;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(D),
        .Q(Tx_addr[0]),
        .R(Tx_fifo_rst));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\Addr_Counters[1].MUXCY_L_I_n_0 ,CI}),
        .CYINIT(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Tx_addr[2],Tx_addr[1],Tx_addr[0]}),
        .O({\Addr_Counters[3].XORCY_I_n_0 ,\Addr_Counters[2].XORCY_I_n_0 ,\Addr_Counters[1].XORCY_I_n_0 ,D}),
        .S({S,S2_out,S4_out,S6_out}));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[0].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_addr[0]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2__0 
       (.I0(\FIFO_GEN_DTR.Tx_fifo_wr_reg_0 ),
        .I1(Tx_addr[0]),
        .I2(Tx_addr[1]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[2]),
        .I5(txFifoRd),
        .O(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_addr[2]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[1]),
        .I5(Tx_addr[0]),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\Addr_Counters[1].XORCY_I_n_0 ),
        .Q(Tx_addr[1]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[1].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_addr[1]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\Addr_Counters[2].XORCY_I_n_0 ),
        .Q(Tx_addr[2]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[2].MUXCY_L_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_addr[2]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\Addr_Counters[3].XORCY_I_n_0 ),
        .Q(Tx_addr[3]),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[3].XORCY_I_i_1__0 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(Tx_addr[3]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_GEN_DTR.Tx_fifo_wr_reg ),
        .Q(Tx_data_exists),
        .R(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(buffer_Empty));
  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1 
       (.I0(Tx_addr[3]),
        .O(\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] ));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(Tx_fifo_data[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(Tx_fifo_data[1]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(Tx_fifo_data[2]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(Tx_fifo_data[3]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(Tx_fifo_data[4]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(Tx_fifo_data[5]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(Tx_fifo_data[6]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2__0_n_0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(Tx_fifo_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    callingReadAccess_i_1
       (.I0(Tx_data_exists),
        .I1(dynamic_MSMS),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .O(p_3_in));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[0]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(sda_clean),
        .I2(shift_reg_ld),
        .O(\data_int_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sr_i[0]_i_1 
       (.I0(Tx_data_exists),
        .O(\sr_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sr_i[3]_i_1 
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(\sr_i_reg[3] ));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0
   (\Addr_Counters[0].FDRE_I_0 ,
    dynamic_MSMS,
    p_4_in,
    buffer_Empty,
    Tx_fifo_rst,
    rdCntrFrmTxFifo_reg,
    s_axi_aclk,
    \FIFO_GEN_DTR.Tx_fifo_rst_reg ,
    \FIFO_GEN_DTR.Tx_fifo_rst_reg_0 ,
    ctrl_fifo_wr_i,
    Tx_data_exists,
    txFifoRd,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    rdCntrFrmTxFifo);
  output \Addr_Counters[0].FDRE_I_0 ;
  output [0:1]dynamic_MSMS;
  output p_4_in;
  output buffer_Empty;
  input Tx_fifo_rst;
  input rdCntrFrmTxFifo_reg;
  input s_axi_aclk;
  input \FIFO_GEN_DTR.Tx_fifo_rst_reg ;
  input \FIFO_GEN_DTR.Tx_fifo_rst_reg_0 ;
  input ctrl_fifo_wr_i;
  input Tx_data_exists;
  input txFifoRd;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input rdCntrFrmTxFifo;

  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_2_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[1].MUXCY_L_I_n_0 ;
  wire \Addr_Counters[1].XORCY_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[2].XORCY_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_n_0 ;
  wire CI;
  wire D;
  wire \FIFO_GEN_DTR.Tx_fifo_rst_reg ;
  wire \FIFO_GEN_DTR.Tx_fifo_rst_reg_0 ;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire Tx_data_exists;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire buffer_Empty;
  wire ctrl_fifo_wr_i;
  wire [0:1]dynamic_MSMS;
  wire p_4_in;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo_reg;
  wire s_axi_aclk;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(D),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\Addr_Counters[1].MUXCY_L_I_n_0 ,CI}),
        .CYINIT(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({\Addr_Counters[3].XORCY_I_n_0 ,\Addr_Counters[2].XORCY_I_n_0 ,\Addr_Counters[1].XORCY_I_n_0 ,D}),
        .S({S,S2_out,S4_out,S6_out}));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(ctrl_fifo_wr_i),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(txFifoRd),
        .O(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Addr_Counters[0].MUXCY_L_I_i_3__1 
       (.I0(ctrl_fifo_wr_i),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(\Addr_Counters[1].XORCY_I_n_0 ),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(\Addr_Counters[2].XORCY_I_n_0 ),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(\Addr_Counters[0].FDRE_I_0 ),
        .D(\Addr_Counters[3].XORCY_I_n_0 ),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(Tx_fifo_rst));
  LUT5 #(
    .INIT(32'h22228288)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3__1_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo_reg),
        .Q(\Addr_Counters[0].FDRE_I_0 ),
        .R(Tx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_3__0
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(buffer_Empty));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(\FIFO_GEN_DTR.Tx_fifo_rst_reg ),
        .Q(dynamic_MSMS[0]));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
  (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(\FIFO_GEN_DTR.Tx_fifo_rst_reg_0 ),
        .Q(dynamic_MSMS[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \cr_i[5]_i_3 
       (.I0(dynamic_MSMS[1]),
        .I1(Tx_data_exists),
        .O(p_4_in));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module MIPSfpga_system_axi_iic_0_0_address_decoder
   (p_18_in,
    \s_axi_rdata_i_reg[31] ,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_wready,
    s_axi_arready,
    reset_trig_reg,
    sw_rst_cond_d1_reg,
    AXI_IP2Bus_WrAck2_reg,
    \timing_param_thddat_i_reg[0] ,
    \timing_param_tlow_i_reg[0] ,
    \timing_param_thigh_i_reg[0] ,
    \timing_param_tbuf_i_reg[0] ,
    \timing_param_tsudat_i_reg[0] ,
    \timing_param_thdsta_i_reg[0] ,
    \timing_param_tsusto_i_reg[0] ,
    \timing_param_tsusta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    \adr_i_reg[6] ,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    E,
    \ip_irpt_enable_reg_reg[0]_0 ,
    reset2Bus_Error,
    D,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    \s_axi_bresp_i_reg[1] ,
    Q,
    s_axi_aclk,
    s_axi_aresetn,
    \bus2ip_addr_i_reg[8] ,
    sw_rst_cond_d1,
    s_axi_wdata,
    bus2ip_rnw_i_reg,
    \bus2ip_addr_i_reg[5] ,
    \timing_param_tbuf_i_reg[8] ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_thigh_i_reg[9] ,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[3]_1 ,
    \bus2ip_addr_i_reg[3]_2 ,
    \bus2ip_addr_i_reg[2] ,
    \bus2ip_addr_i_reg[2]_0 ,
    \bus2ip_addr_i_reg[2]_1 ,
    \bus2ip_addr_i_reg[2]_2 ,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \ip_irpt_enable_reg_reg[7] ,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    ipif_glbl_irpt_enable_reg,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    is_read,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    is_write_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    gpo,
    \state_reg[1] ,
    s_axi_bresp);
  output p_18_in;
  output \s_axi_rdata_i_reg[31] ;
  output \ip_irpt_enable_reg_reg[0] ;
  output s_axi_wready;
  output s_axi_arready;
  output reset_trig_reg;
  output sw_rst_cond_d1_reg;
  output AXI_IP2Bus_WrAck2_reg;
  output [0:0]\timing_param_thddat_i_reg[0] ;
  output [0:0]\timing_param_tlow_i_reg[0] ;
  output [0:0]\timing_param_thigh_i_reg[0] ;
  output [0:0]\timing_param_tbuf_i_reg[0] ;
  output [0:0]\timing_param_tsudat_i_reg[0] ;
  output [0:0]\timing_param_thdsta_i_reg[0] ;
  output [0:0]\timing_param_tsusto_i_reg[0] ;
  output [0:0]\timing_param_tsusta_i_reg[0] ;
  output [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  output [0:0]\adr_i_reg[6] ;
  output \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  output [0:0]E;
  output [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  output reset2Bus_Error;
  output [10:0]D;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output \s_axi_bresp_i_reg[1] ;
  input Q;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]\bus2ip_addr_i_reg[8] ;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input bus2ip_rnw_i_reg;
  input \bus2ip_addr_i_reg[5] ;
  input \timing_param_tbuf_i_reg[8] ;
  input \timing_param_thigh_i_reg[8] ;
  input \timing_param_tbuf_i_reg[9] ;
  input \timing_param_thigh_i_reg[9] ;
  input \bus2ip_addr_i_reg[3] ;
  input \bus2ip_addr_i_reg[3]_0 ;
  input \bus2ip_addr_i_reg[3]_1 ;
  input \bus2ip_addr_i_reg[3]_2 ;
  input \bus2ip_addr_i_reg[2] ;
  input \bus2ip_addr_i_reg[2]_0 ;
  input \bus2ip_addr_i_reg[2]_1 ;
  input \bus2ip_addr_i_reg[2]_2 ;
  input \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input ipif_glbl_irpt_enable_reg;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input is_read;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input is_write_reg;
  input [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  input [0:0]gpo;
  input [1:0]\state_reg[1] ;
  input [0:0]s_axi_bresp;

  wire [0:2]AXI_Bus2IP_CS;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus_RNW_reg_i_1_n_0;
  wire [10:0]D;
  wire [0:0]E;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire IIC2Bus_Data1;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire [24:31]Intr2Bus_DBus__0;
  wire \MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ;
  wire \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ;
  wire Q;
  wire [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire [0:0]\adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[2]_0 ;
  wire \bus2ip_addr_i_reg[2]_1 ;
  wire \bus2ip_addr_i_reg[2]_2 ;
  wire \bus2ip_addr_i_reg[3] ;
  wire \bus2ip_addr_i_reg[3]_0 ;
  wire \bus2ip_addr_i_reg[3]_1 ;
  wire \bus2ip_addr_i_reg[3]_2 ;
  wire \bus2ip_addr_i_reg[5] ;
  wire [8:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i_reg;
  wire eqOp;
  wire [0:0]gpo;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire is_read;
  wire is_write_reg;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_25_in;
  wire p_28_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire reset2Bus_Error;
  wire reset_trig_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp_i_reg[1] ;
  wire \s_axi_rdata_i[9]_i_6_n_0 ;
  wire \s_axi_rdata_i[9]_i_7_n_0 ;
  wire \s_axi_rdata_i[9]_i_8_n_0 ;
  wire \s_axi_rdata_i[9]_i_9_n_0 ;
  wire \s_axi_rdata_i_reg[31] ;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [1:0]\state_reg[1] ;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_reg;
  wire [0:0]\timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[8] ;
  wire \timing_param_tbuf_i_reg[9] ;
  wire [0:0]\timing_param_thddat_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [0:0]\timing_param_thigh_i_reg[0] ;
  wire \timing_param_thigh_i_reg[8] ;
  wire \timing_param_thigh_i_reg[9] ;
  wire [0:0]\timing_param_tlow_i_reg[0] ;
  wire [0:0]\timing_param_tsudat_i_reg[0] ;
  wire [0:0]\timing_param_tsusta_i_reg[0] ;
  wire [0:0]\timing_param_tsusto_i_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    AXI_IP2Bus_RdAck2_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(bus2ip_rnw_i_reg),
        .O(AXI_IP2Bus_RdAck20));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    AXI_IP2Bus_WrAck2_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(bus2ip_rnw_i_reg),
        .O(AXI_IP2Bus_WrAck2_reg));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(\ip_irpt_enable_reg_reg[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FIFO_GEN_DTR.Tx_fifo_wr_i_1 
       (.I0(p_16_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\FIFO_GEN_DTR.Tx_fifo_wr_reg ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(p_1_in),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0 ),
        .Q(p_25_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_18_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_17_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_16_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_15_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_14_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ),
        .Q(p_13_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [4]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0 ),
        .Q(p_12_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ),
        .Q(p_11_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ),
        .Q(p_10_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0 ),
        .Q(p_9_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ),
        .Q(p_8_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I5(\bus2ip_addr_i_reg[8] [5]),
        .O(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ),
        .Q(p_7_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .I5(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ),
        .Q(p_6_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0 ),
        .Q(p_5_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0 ),
        .Q(p_4_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 
       (.I0(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0 ),
        .Q(p_3_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I4(\bus2ip_addr_i_reg[8] [5]),
        .I5(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0 ),
        .Q(p_2_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_arready),
        .I2(s_axi_aresetn),
        .O(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .I5(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(p_1_in),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ),
        .Q(p_28_in),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(p_1_in),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ),
        .Q(\s_axi_rdata_i_reg[31] ),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \GPO_GEN.gpo_i[31]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(p_9_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(gpo),
        .O(\GPO_GEN.gpo_i_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [8]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[8] [7]),
        .O(p_1_in));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_in),
        .Q(AXI_Bus2IP_CS[0]),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77070000)) 
    \MEM_DECODE_GEN[1].cs_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [5]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ),
        .O(\MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \MEM_DECODE_GEN[1].cs_out_i[1]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [7]),
        .I1(\bus2ip_addr_i_reg[8] [8]),
        .I2(Q),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .I4(\bus2ip_addr_i_reg[8] [4]),
        .I5(\bus2ip_addr_i_reg[8] [3]),
        .O(\MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0 ));
  FDRE \MEM_DECODE_GEN[1].cs_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0 ),
        .Q(AXI_Bus2IP_CS[1]),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \MEM_DECODE_GEN[2].cs_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [8]),
        .I1(Q),
        .O(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[2].cs_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0 ),
        .Q(AXI_Bus2IP_CS[2]),
        .R(\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RD_FIFO_CNTRL.Rc_fifo_rd_i_1 
       (.I0(p_15_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(Bus2IIC_RdCE));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1 
       (.I0(p_10_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adr_i[0]_i_1 
       (.I0(p_14_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\adr_i_reg[6] ));
  LUT2 #(
    .INIT(4'h2)) 
    \cr_i[0]_i_1 
       (.I0(p_18_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip_irpt_enable_reg[7]_i_1 
       (.I0(p_25_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\ip_irpt_enable_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[4]),
        .I1(p_28_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    irpt_wrack_d1_i_1
       (.I0(p_25_in),
        .I1(p_28_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(\s_axi_rdata_i_reg[31] ),
        .O(irpt_wrack));
  LUT2 #(
    .INIT(4'h2)) 
    reset_trig_i_1
       (.I0(sw_rst_cond_d1_reg),
        .I1(sw_rst_cond_d1),
        .O(reset_trig_reg));
  LUT4 #(
    .INIT(16'hF444)) 
    s_axi_arready_INST_0
       (.I0(AXI_IP2Bus_RdAck1),
        .I1(AXI_IP2Bus_RdAck2),
        .I2(is_read),
        .I3(eqOp),
        .O(s_axi_arready));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(reset2Bus_Error),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_bresp),
        .O(\s_axi_bresp_i_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(Intr2Bus_DBus__0[31]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[3] ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [0]),
        .O(Intr2Bus_DBus__0[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(Intr2Bus_DBus__0[30]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[3]_0 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(p_1_in17_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [1]),
        .O(Intr2Bus_DBus__0[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(Intr2Bus_DBus__0[29]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[3]_1 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(p_1_in14_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [2]),
        .O(Intr2Bus_DBus__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(p_25_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(p_28_in),
        .I3(\ip_irpt_enable_reg_reg[0] ),
        .I4(ipif_glbl_irpt_enable_reg),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(Intr2Bus_DBus__0[28]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[3]_2 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(p_1_in11_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [3]),
        .O(Intr2Bus_DBus__0[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(Intr2Bus_DBus__0[27]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[2] ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(p_1_in8_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [4]),
        .O(Intr2Bus_DBus__0[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(Intr2Bus_DBus__0[26]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[2]_0 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(p_1_in5_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [5]),
        .O(Intr2Bus_DBus__0[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(Intr2Bus_DBus__0[25]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[2]_1 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(p_1_in2_in),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [6]),
        .O(Intr2Bus_DBus__0[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(Intr2Bus_DBus__0[24]),
        .I1(\bus2ip_addr_i_reg[8] [7]),
        .I2(IIC2Bus_Data1),
        .I3(\bus2ip_addr_i_reg[2]_2 ),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .I5(\bus2ip_addr_i_reg[8] [0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB0808080)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .I1(\s_axi_rdata_i_reg[31] ),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_25_in),
        .I4(\ip_irpt_enable_reg_reg[7] [7]),
        .O(Intr2Bus_DBus__0[24]));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[5] ),
        .I1(\timing_param_tbuf_i_reg[8] ),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\timing_param_thigh_i_reg[8] ),
        .I4(IIC2Bus_Data1),
        .I5(\bus2ip_addr_i_reg[8] [7]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\bus2ip_addr_i_reg[5] ),
        .I1(\timing_param_tbuf_i_reg[9] ),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\timing_param_thigh_i_reg[9] ),
        .I4(IIC2Bus_Data1),
        .I5(\bus2ip_addr_i_reg[8] [7]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_rdata_i[9]_i_5 
       (.I0(\s_axi_rdata_i[9]_i_6_n_0 ),
        .I1(\s_axi_rdata_i[9]_i_7_n_0 ),
        .I2(\s_axi_rdata_i[9]_i_8_n_0 ),
        .I3(\s_axi_rdata_i[9]_i_9_n_0 ),
        .O(IIC2Bus_Data1));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \s_axi_rdata_i[9]_i_6 
       (.I0(p_7_in),
        .I1(p_3_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_4_in),
        .I4(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I5(p_2_in),
        .O(\s_axi_rdata_i[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \s_axi_rdata_i[9]_i_7 
       (.I0(p_8_in),
        .I1(p_6_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_9_in),
        .O(\s_axi_rdata_i[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \s_axi_rdata_i[9]_i_8 
       (.I0(p_10_in),
        .I1(p_13_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_14_in),
        .I4(p_11_in),
        .I5(p_12_in),
        .O(\s_axi_rdata_i[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \s_axi_rdata_i[9]_i_9 
       (.I0(p_5_in),
        .I1(p_15_in),
        .I2(\ip_irpt_enable_reg_reg[0] ),
        .I3(p_16_in),
        .I4(p_18_in),
        .I5(p_17_in),
        .O(\s_axi_rdata_i[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[2]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_wdata[0]),
        .I4(\ip_irpt_enable_reg_reg[0] ),
        .I5(AXI_Bus2IP_CS[1]),
        .O(reset2Bus_Error));
  LUT4 #(
    .INIT(16'hF444)) 
    s_axi_wready_INST_0
       (.I0(AXI_IP2Bus_WrAck1),
        .I1(AXI_IP2Bus_WrAck2),
        .I2(is_write_reg),
        .I3(eqOp),
        .O(s_axi_wready));
  LUT4 #(
    .INIT(16'h0010)) 
    s_axi_wready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    sw_rst_cond_d1_i_1
       (.I0(\ip_irpt_enable_reg_reg[0] ),
        .I1(AXI_Bus2IP_CS[1]),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[0]),
        .O(sw_rst_cond_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tbuf_i[9]_i_1 
       (.I0(p_4_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_tbuf_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thddat_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34] ),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_thddat_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thdsta_i[9]_i_1 
       (.I0(p_6_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_thdsta_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_thigh_i[9]_i_1 
       (.I0(p_3_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_thigh_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tlow_i[9]_i_1 
       (.I0(p_2_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_tlow_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsudat_i[9]_i_1 
       (.I0(p_5_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_tsudat_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsusta_i[9]_i_1 
       (.I0(p_8_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_tsusta_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timing_param_tsusto_i[9]_i_1 
       (.I0(p_7_in),
        .I1(\ip_irpt_enable_reg_reg[0] ),
        .O(\timing_param_tsusto_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_iic" *) 
module MIPSfpga_system_axi_iic_0_0_axi_iic
   (s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    iic2intc_irpt,
    s_axi_rvalid,
    s_axi_bvalid,
    sda_t,
    scl_t,
    gpo,
    s_axi_bresp,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready);
  output s_axi_wready;
  output s_axi_arready;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output iic2intc_irpt;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output sda_t;
  output scl_t;
  output [0:0]gpo;
  output [0:0]s_axi_bresp;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;

  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

  MIPSfpga_system_axi_iic_0_0_iic X_IIC
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "axi_ipif_ssp1" *) 
module MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1
   (p_18_in,
    s_axi_rresp,
    SR,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    Q,
    \timing_param_thddat_i_reg[0] ,
    \timing_param_tlow_i_reg[0] ,
    \timing_param_thigh_i_reg[0] ,
    \timing_param_tbuf_i_reg[0] ,
    \timing_param_tsudat_i_reg[0] ,
    \timing_param_thdsta_i_reg[0] ,
    \timing_param_tsusto_i_reg[0] ,
    \timing_param_tsusta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    \adr_i_reg[6] ,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    E,
    iic2intc_irpt,
    Bus2IIC_RdCE,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_wdata,
    Rc_fifo_data,
    \timing_param_tsusto_i_reg[7] ,
    \timing_param_thigh_i_reg[7] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    IIC2Bus_IntrEvent,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    \timing_param_tbuf_i_reg[8] ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_thigh_i_reg[9] ,
    \timing_param_tbuf_i_reg[0]_0 ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ,
    \timing_param_thdsta_i_reg[0]_0 ,
    Tx_addr,
    \timing_param_tsudat_i_reg[3] ,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \bus2ip_addr_i_reg[6] ,
    \IIC2Bus_IntrEvent_reg[5] ,
    \bus2ip_addr_i_reg[6]_0 ,
    \sr_i_reg[5] ,
    \bus2ip_addr_i_reg[6]_1 ,
    \sr_i_reg[4] ,
    \adr_i_reg[3] ,
    \timing_param_tsudat_i_reg[4] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \timing_param_tsudat_i_reg[6] ,
    \adr_i_reg[0] ,
    \timing_param_tsudat_i_reg[7] ,
    gpo);
  output p_18_in;
  output [0:0]s_axi_rresp;
  output [0:0]SR;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output [3:0]Q;
  output [0:0]\timing_param_thddat_i_reg[0] ;
  output [0:0]\timing_param_tlow_i_reg[0] ;
  output [0:0]\timing_param_thigh_i_reg[0] ;
  output [0:0]\timing_param_tbuf_i_reg[0] ;
  output [0:0]\timing_param_tsudat_i_reg[0] ;
  output [0:0]\timing_param_thdsta_i_reg[0] ;
  output [0:0]\timing_param_tsusto_i_reg[0] ;
  output [0:0]\timing_param_tsusta_i_reg[0] ;
  output [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  output [0:0]\adr_i_reg[6] ;
  output \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  output [0:0]E;
  output iic2intc_irpt;
  output [0:0]Bus2IIC_RdCE;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input [8:0]s_axi_wdata;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input [0:7]IIC2Bus_IntrEvent;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input \timing_param_tbuf_i_reg[8] ;
  input \timing_param_thigh_i_reg[8] ;
  input \timing_param_tbuf_i_reg[9] ;
  input \timing_param_thigh_i_reg[9] ;
  input \timing_param_tbuf_i_reg[0]_0 ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  input [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  input [0:3]Tx_addr;
  input [3:0]\timing_param_tsudat_i_reg[3] ;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input \bus2ip_addr_i_reg[6] ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input \bus2ip_addr_i_reg[6]_0 ;
  input \sr_i_reg[5] ;
  input \bus2ip_addr_i_reg[6]_1 ;
  input \sr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \timing_param_tsudat_i_reg[4] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \timing_param_tsudat_i_reg[6] ;
  input \adr_i_reg[0] ;
  input \timing_param_tsudat_i_reg[7] ;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_14;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_28;
  wire AXI_LITE_IPIF_I_n_32;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus_RNW_reg;
  wire [0:0]E;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ;
  wire [3:0]Q;
  wire [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  wire [0:7]Rc_fifo_data;
  wire [0:0]SR;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire X_INTERRUPT_CONTROL_n_0;
  wire X_INTERRUPT_CONTROL_n_13;
  wire X_INTERRUPT_CONTROL_n_15;
  wire X_INTERRUPT_CONTROL_n_16;
  wire X_INTERRUPT_CONTROL_n_7;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire [0:0]\adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[6]_1 ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in7_in;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [8:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire sw_rst_cond_d1;
  wire [0:0]\timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[0]_0 ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire \timing_param_tbuf_i_reg[8] ;
  wire \timing_param_tbuf_i_reg[9] ;
  wire [0:0]\timing_param_thddat_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  wire [0:0]\timing_param_thigh_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_thigh_i_reg[8] ;
  wire \timing_param_thigh_i_reg[9] ;
  wire [0:0]\timing_param_tlow_i_reg[0] ;
  wire [0:0]\timing_param_tsudat_i_reg[0] ;
  wire [3:0]\timing_param_tsudat_i_reg[3] ;
  wire \timing_param_tsudat_i_reg[4] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire \timing_param_tsudat_i_reg[6] ;
  wire \timing_param_tsudat_i_reg[7] ;
  wire [0:0]\timing_param_tsusta_i_reg[0] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [0:0]\timing_param_tsusto_i_reg[0] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  FDRE AXI_IP2Bus_RdAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck2),
        .Q(AXI_IP2Bus_RdAck1),
        .R(1'b0));
  FDRE AXI_IP2Bus_RdAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck20),
        .Q(AXI_IP2Bus_RdAck2),
        .R(1'b0));
  FDRE AXI_IP2Bus_WrAck1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_WrAck2),
        .Q(AXI_IP2Bus_WrAck1),
        .R(1'b0));
  FDRE AXI_IP2Bus_WrAck2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_15),
        .Q(AXI_IP2Bus_WrAck2),
        .R(1'b0));
  MIPSfpga_system_axi_iic_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_LITE_IPIF_I_n_15),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .E(E),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (\FIFO_GEN_DTR.Tx_fifo_wr_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (X_INTERRUPT_CONTROL_n_0),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (X_INTERRUPT_CONTROL_n_7),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .\GPO_GEN.gpo_i_reg[31]_0 (\GPO_GEN.gpo_i_reg[31]_0 ),
        .\IIC2Bus_IntrEvent_reg[5] (\IIC2Bus_IntrEvent_reg[5] ),
        .Q(Q),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .\adr_i_reg[1] (\adr_i_reg[1] ),
        .\adr_i_reg[2] (\adr_i_reg[2] ),
        .\adr_i_reg[3] (\adr_i_reg[3] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .\bus2ip_addr_i_reg[6]_0 (\bus2ip_addr_i_reg[6]_0 ),
        .\bus2ip_addr_i_reg[6]_1 (\bus2ip_addr_i_reg[6]_1 ),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[0] (Bus_RNW_reg),
        .\ip_irpt_enable_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_28),
        .\ip_irpt_enable_reg_reg[7] ({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,X_INTERRUPT_CONTROL_n_13,p_0_in1_in,X_INTERRUPT_CONTROL_n_15,X_INTERRUPT_CONTROL_n_16}),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_32),
        .irpt_wrack(irpt_wrack),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .reset_trig_reg(AXI_LITE_IPIF_I_n_13),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[8],s_axi_wdata[3:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[4] (\sr_i_reg[4] ),
        .\sr_i_reg[5] (\sr_i_reg[5] ),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .sw_rst_cond_d1_reg(AXI_LITE_IPIF_I_n_14),
        .\timing_param_tbuf_i_reg[0] (\timing_param_tbuf_i_reg[0] ),
        .\timing_param_tbuf_i_reg[0]_0 (\timing_param_tbuf_i_reg[0]_0 ),
        .\timing_param_tbuf_i_reg[7] (\timing_param_tbuf_i_reg[7] ),
        .\timing_param_tbuf_i_reg[8] (\timing_param_tbuf_i_reg[8] ),
        .\timing_param_tbuf_i_reg[9] (\timing_param_tbuf_i_reg[9] ),
        .\timing_param_thddat_i_reg[0] (\timing_param_thddat_i_reg[0] ),
        .\timing_param_thdsta_i_reg[0] (\timing_param_thdsta_i_reg[0] ),
        .\timing_param_thdsta_i_reg[0]_0 (\timing_param_thdsta_i_reg[0]_0 ),
        .\timing_param_thigh_i_reg[0] (\timing_param_thigh_i_reg[0] ),
        .\timing_param_thigh_i_reg[7] (\timing_param_thigh_i_reg[7] ),
        .\timing_param_thigh_i_reg[8] (\timing_param_thigh_i_reg[8] ),
        .\timing_param_thigh_i_reg[9] (\timing_param_thigh_i_reg[9] ),
        .\timing_param_tlow_i_reg[0] (\timing_param_tlow_i_reg[0] ),
        .\timing_param_tsudat_i_reg[0] (\timing_param_tsudat_i_reg[0] ),
        .\timing_param_tsudat_i_reg[3] (\timing_param_tsudat_i_reg[3] ),
        .\timing_param_tsudat_i_reg[4] (\timing_param_tsudat_i_reg[4] ),
        .\timing_param_tsudat_i_reg[5] (\timing_param_tsudat_i_reg[5] ),
        .\timing_param_tsudat_i_reg[6] (\timing_param_tsudat_i_reg[6] ),
        .\timing_param_tsudat_i_reg[7] (\timing_param_tsudat_i_reg[7] ),
        .\timing_param_tsusta_i_reg[0] (\timing_param_tsusta_i_reg[0] ),
        .\timing_param_tsusta_i_reg[7] (\timing_param_tsusta_i_reg[7] ),
        .\timing_param_tsusto_i_reg[0] (\timing_param_tsusto_i_reg[0] ),
        .\timing_param_tsusto_i_reg[7] (\timing_param_tsusto_i_reg[7] ));
  MIPSfpga_system_axi_iic_0_0_interrupt_control X_INTERRUPT_CONTROL
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .E(AXI_LITE_IPIF_I_n_28),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (AXI_LITE_IPIF_I_n_32),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (X_INTERRUPT_CONTROL_n_0),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 (X_INTERRUPT_CONTROL_n_7),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Q({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,X_INTERRUPT_CONTROL_n_13,p_0_in1_in,X_INTERRUPT_CONTROL_n_15,X_INTERRUPT_CONTROL_n_16}),
        .\RESET_FLOPS[3].RST_FLOPS (SR),
        .iic2intc_irpt(iic2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]));
  MIPSfpga_system_axi_iic_0_0_soft_reset X_SOFT_RESET
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_14),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .sw_rst_cond_d1_reg_0(AXI_LITE_IPIF_I_n_13));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module MIPSfpga_system_axi_iic_0_0_axi_lite_ipif
   (p_18_in,
    p_27_in,
    s_axi_rresp,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    Q,
    reset_trig_reg,
    sw_rst_cond_d1_reg,
    AXI_IP2Bus_WrAck2_reg,
    \timing_param_thddat_i_reg[0] ,
    \timing_param_tlow_i_reg[0] ,
    \timing_param_thigh_i_reg[0] ,
    \timing_param_tbuf_i_reg[0] ,
    \timing_param_tsudat_i_reg[0] ,
    \timing_param_thdsta_i_reg[0] ,
    \timing_param_tsusto_i_reg[0] ,
    \timing_param_tsusta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    \adr_i_reg[6] ,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    E,
    \ip_irpt_enable_reg_reg[0]_0 ,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    sw_rst_cond_d1,
    s_axi_wdata,
    Rc_fifo_data,
    \timing_param_tsusto_i_reg[7] ,
    \timing_param_thigh_i_reg[7] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    \timing_param_tbuf_i_reg[8] ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_thigh_i_reg[9] ,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \ip_irpt_enable_reg_reg[7] ,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    ipif_glbl_irpt_enable_reg,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    \timing_param_tbuf_i_reg[0]_0 ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ,
    \timing_param_thdsta_i_reg[0]_0 ,
    Tx_addr,
    \timing_param_tsudat_i_reg[3] ,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \bus2ip_addr_i_reg[6] ,
    \IIC2Bus_IntrEvent_reg[5] ,
    \bus2ip_addr_i_reg[6]_0 ,
    \sr_i_reg[5] ,
    \bus2ip_addr_i_reg[6]_1 ,
    \sr_i_reg[4] ,
    \adr_i_reg[3] ,
    \timing_param_tsudat_i_reg[4] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \timing_param_tsudat_i_reg[6] ,
    \adr_i_reg[0] ,
    \timing_param_tsudat_i_reg[7] ,
    gpo);
  output p_18_in;
  output p_27_in;
  output [0:0]s_axi_rresp;
  output \ip_irpt_enable_reg_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output [3:0]Q;
  output reset_trig_reg;
  output sw_rst_cond_d1_reg;
  output AXI_IP2Bus_WrAck2_reg;
  output [0:0]\timing_param_thddat_i_reg[0] ;
  output [0:0]\timing_param_tlow_i_reg[0] ;
  output [0:0]\timing_param_thigh_i_reg[0] ;
  output [0:0]\timing_param_tbuf_i_reg[0] ;
  output [0:0]\timing_param_tsudat_i_reg[0] ;
  output [0:0]\timing_param_thdsta_i_reg[0] ;
  output [0:0]\timing_param_tsusto_i_reg[0] ;
  output [0:0]\timing_param_tsusta_i_reg[0] ;
  output [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  output [0:0]\adr_i_reg[6] ;
  output \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  output [0:0]E;
  output [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [10:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input \timing_param_tbuf_i_reg[8] ;
  input \timing_param_thigh_i_reg[8] ;
  input \timing_param_tbuf_i_reg[9] ;
  input \timing_param_thigh_i_reg[9] ;
  input \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input ipif_glbl_irpt_enable_reg;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input \timing_param_tbuf_i_reg[0]_0 ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  input [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  input [0:3]Tx_addr;
  input [3:0]\timing_param_tsudat_i_reg[3] ;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input \bus2ip_addr_i_reg[6] ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input \bus2ip_addr_i_reg[6]_0 ;
  input \sr_i_reg[5] ;
  input \bus2ip_addr_i_reg[6]_1 ;
  input \sr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \timing_param_tsudat_i_reg[4] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \timing_param_tsudat_i_reg[6] ;
  input \adr_i_reg[0] ;
  input \timing_param_tsudat_i_reg[7] ;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:0]E;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire [3:0]Q;
  wire [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire [0:0]\adr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[6] ;
  wire \bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[6]_1 ;
  wire [0:0]gpo;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire reset_trig_reg;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_reg;
  wire [0:0]\timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[0]_0 ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire \timing_param_tbuf_i_reg[8] ;
  wire \timing_param_tbuf_i_reg[9] ;
  wire [0:0]\timing_param_thddat_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  wire [0:0]\timing_param_thigh_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_thigh_i_reg[8] ;
  wire \timing_param_thigh_i_reg[9] ;
  wire [0:0]\timing_param_tlow_i_reg[0] ;
  wire [0:0]\timing_param_tsudat_i_reg[0] ;
  wire [3:0]\timing_param_tsudat_i_reg[3] ;
  wire \timing_param_tsudat_i_reg[4] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire \timing_param_tsudat_i_reg[6] ;
  wire \timing_param_tsudat_i_reg[7] ;
  wire [0:0]\timing_param_tsusta_i_reg[0] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [0:0]\timing_param_tsusto_i_reg[0] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  MIPSfpga_system_axi_iic_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_IP2Bus_WrAck2_reg),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .E(E),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (\FIFO_GEN_DTR.Tx_fifo_wr_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .\GPO_GEN.gpo_i_reg[31]_0 (\GPO_GEN.gpo_i_reg[31]_0 ),
        .\IIC2Bus_IntrEvent_reg[5] (\IIC2Bus_IntrEvent_reg[5] ),
        .Q(Q),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ),
        .Rc_fifo_data(Rc_fifo_data),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data(Tx_fifo_data),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .\adr_i_reg[1] (\adr_i_reg[1] ),
        .\adr_i_reg[2] (\adr_i_reg[2] ),
        .\adr_i_reg[3] (\adr_i_reg[3] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[6]_0 (\bus2ip_addr_i_reg[6] ),
        .\bus2ip_addr_i_reg[6]_1 (\bus2ip_addr_i_reg[6]_0 ),
        .\bus2ip_addr_i_reg[6]_2 (\bus2ip_addr_i_reg[6]_1 ),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[0]_0 (\ip_irpt_enable_reg_reg[0]_0 ),
        .\ip_irpt_enable_reg_reg[7] (\ip_irpt_enable_reg_reg[7] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_wrack(irpt_wrack),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset_trig_reg(reset_trig_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (p_27_in),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[4] (\sr_i_reg[4] ),
        .\sr_i_reg[5] (\sr_i_reg[5] ),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .sw_rst_cond_d1_reg(sw_rst_cond_d1_reg),
        .\timing_param_tbuf_i_reg[0] (\timing_param_tbuf_i_reg[0] ),
        .\timing_param_tbuf_i_reg[0]_0 (\timing_param_tbuf_i_reg[0]_0 ),
        .\timing_param_tbuf_i_reg[7] (\timing_param_tbuf_i_reg[7] ),
        .\timing_param_tbuf_i_reg[8] (\timing_param_tbuf_i_reg[8] ),
        .\timing_param_tbuf_i_reg[9] (\timing_param_tbuf_i_reg[9] ),
        .\timing_param_thddat_i_reg[0] (\timing_param_thddat_i_reg[0] ),
        .\timing_param_thdsta_i_reg[0] (\timing_param_thdsta_i_reg[0] ),
        .\timing_param_thdsta_i_reg[0]_0 (\timing_param_thdsta_i_reg[0]_0 ),
        .\timing_param_thigh_i_reg[0] (\timing_param_thigh_i_reg[0] ),
        .\timing_param_thigh_i_reg[7] (\timing_param_thigh_i_reg[7] ),
        .\timing_param_thigh_i_reg[8] (\timing_param_thigh_i_reg[8] ),
        .\timing_param_thigh_i_reg[9] (\timing_param_thigh_i_reg[9] ),
        .\timing_param_tlow_i_reg[0] (\timing_param_tlow_i_reg[0] ),
        .\timing_param_tsudat_i_reg[0] (\timing_param_tsudat_i_reg[0] ),
        .\timing_param_tsudat_i_reg[3] (\timing_param_tsudat_i_reg[3] ),
        .\timing_param_tsudat_i_reg[4] (\timing_param_tsudat_i_reg[4] ),
        .\timing_param_tsudat_i_reg[5] (\timing_param_tsudat_i_reg[5] ),
        .\timing_param_tsudat_i_reg[6] (\timing_param_tsudat_i_reg[6] ),
        .\timing_param_tsudat_i_reg[7] (\timing_param_tsudat_i_reg[7] ),
        .\timing_param_tsusta_i_reg[0] (\timing_param_tsusta_i_reg[0] ),
        .\timing_param_tsusta_i_reg[7] (\timing_param_tsusta_i_reg[7] ),
        .\timing_param_tsusto_i_reg[0] (\timing_param_tsusto_i_reg[0] ),
        .\timing_param_tsusto_i_reg[7] (\timing_param_tsusto_i_reg[7] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module MIPSfpga_system_axi_iic_0_0_cdc_sync
   (detect_stop_reg,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output detect_stop_reg;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire Sda_clean;
  wire detect_stop_reg;
  wire s_axi_aclk;
  wire sda_i;
  wire sda_rin_d1;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_i),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(Sda_clean),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_i_3
       (.I0(Sda_clean),
        .I1(sda_rin_d1),
        .O(detect_stop_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module MIPSfpga_system_axi_iic_0_0_cdc_sync_4
   (scl_rising_edge_reg,
    scndry_out,
    \FSM_sequential_scl_state_reg[2] ,
    \FSM_sequential_scl_state_reg[1] ,
    scl_rin_d1,
    out,
    scl_i,
    s_axi_aclk);
  output scl_rising_edge_reg;
  output scndry_out;
  output \FSM_sequential_scl_state_reg[2] ;
  output \FSM_sequential_scl_state_reg[1] ;
  input scl_rin_d1;
  input [1:0]out;
  input scl_i;
  input s_axi_aclk;

  wire D;
  wire \FSM_sequential_scl_state_reg[1] ;
  wire \FSM_sequential_scl_state_reg[2] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire [1:0]out;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rising_edge_reg;
  wire scndry_out;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_scl_state[1]_i_2 
       (.I0(scndry_out),
        .I1(out[1]),
        .O(\FSM_sequential_scl_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_scl_state[2]_i_3 
       (.I0(scndry_out),
        .I1(out[0]),
        .O(\FSM_sequential_scl_state_reg[2] ));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_i),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_rising_edge_i_1
       (.I0(scndry_out),
        .I1(scl_rin_d1),
        .O(scl_rising_edge_reg));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module MIPSfpga_system_axi_iic_0_0_debounce
   (scl_rising_edge_reg,
    scndry_out,
    \FSM_sequential_scl_state_reg[2] ,
    \FSM_sequential_scl_state_reg[1] ,
    scl_rin_d1,
    out,
    scl_i,
    s_axi_aclk);
  output scl_rising_edge_reg;
  output scndry_out;
  output \FSM_sequential_scl_state_reg[2] ;
  output \FSM_sequential_scl_state_reg[1] ;
  input scl_rin_d1;
  input [1:0]out;
  input scl_i;
  input s_axi_aclk;

  wire \FSM_sequential_scl_state_reg[1] ;
  wire \FSM_sequential_scl_state_reg[2] ;
  wire [1:0]out;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rising_edge_reg;
  wire scndry_out;

  MIPSfpga_system_axi_iic_0_0_cdc_sync_4 INPUT_DOUBLE_REGS
       (.\FSM_sequential_scl_state_reg[1] (\FSM_sequential_scl_state_reg[1] ),
        .\FSM_sequential_scl_state_reg[2] (\FSM_sequential_scl_state_reg[2] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rising_edge_reg(scl_rising_edge_reg),
        .scndry_out(scndry_out));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module MIPSfpga_system_axi_iic_0_0_debounce_3
   (detect_stop_reg,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output detect_stop_reg;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire Sda_clean;
  wire detect_stop_reg;
  wire s_axi_aclk;
  wire sda_i;
  wire sda_rin_d1;

  MIPSfpga_system_axi_iic_0_0_cdc_sync INPUT_DOUBLE_REGS
       (.Sda_clean(Sda_clean),
        .detect_stop_reg(detect_stop_reg),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "dynamic_master" *) 
module MIPSfpga_system_axi_iic_0_0_dynamic_master
   (callingReadAccess,
    rdCntrFrmTxFifo,
    rxCntDone,
    firstDynStartSeen,
    D,
    txak,
    Tx_fifo_rst,
    ackDataState,
    s_axi_aclk,
    p_3_in,
    Tx_fifo_data,
    rdCntrFrmTxFifo0,
    earlyAckDataState,
    firstDynStartSeen_reg_0,
    s_axi_wdata,
    Q,
    p_18_in,
    Bus_RNW_reg,
    earlyAckHdr);
  output callingReadAccess;
  output rdCntrFrmTxFifo;
  output rxCntDone;
  output firstDynStartSeen;
  output [0:0]D;
  output txak;
  input Tx_fifo_rst;
  input ackDataState;
  input s_axi_aclk;
  input p_3_in;
  input [0:7]Tx_fifo_data;
  input rdCntrFrmTxFifo0;
  input earlyAckDataState;
  input firstDynStartSeen_reg_0;
  input [0:0]s_axi_wdata;
  input [1:0]Q;
  input p_18_in;
  input Bus_RNW_reg;
  input earlyAckHdr;

  wire Bus_RNW_reg;
  wire Cr_txModeSelect_clr_i_1_n_0;
  wire Cr_txModeSelect_set_i_1_n_0;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rst;
  wire ackDataState;
  wire ackDataState_d1;
  wire callingReadAccess;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire earlyAckDataState;
  wire earlyAckDataState_d1;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire firstDynStartSeen_reg_0;
  wire [7:0]p_0_in;
  wire p_18_in;
  wire p_3_in;
  wire \rdByteCntr[0]_i_1_n_0 ;
  wire \rdByteCntr[0]_i_3_n_0 ;
  wire \rdByteCntr[0]_i_4_n_0 ;
  wire \rdByteCntr[2]_i_2_n_0 ;
  wire \rdByteCntr[3]_i_2_n_0 ;
  wire [0:7]rdByteCntr_reg__0;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rxCntDone;
  wire rxCntDone0;
  wire rxCntDone_i_2_n_0;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire txak;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    Cr_txModeSelect_clr_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(Cr_txModeSelect_clr_i_1_n_0));
  FDRE Cr_txModeSelect_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr_txModeSelect_clr_i_1_n_0),
        .Q(cr_txModeSelect_clr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    Cr_txModeSelect_set_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(Cr_txModeSelect_set_i_1_n_0));
  FDRE Cr_txModeSelect_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr_txModeSelect_set_i_1_n_0),
        .Q(cr_txModeSelect_set),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \LEVEL_1_GEN.master_sda_i_2 
       (.I0(Q[1]),
        .I1(earlyAckDataState),
        .I2(rdByteCntr_reg__0[0]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(callingReadAccess),
        .I5(rxCntDone_i_2_n_0),
        .O(txak));
  FDRE ackDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ackDataState),
        .Q(ackDataState_d1),
        .R(Tx_fifo_rst));
  FDRE callingReadAccess_reg
       (.C(s_axi_aclk),
        .CE(p_3_in),
        .D(Tx_fifo_data[7]),
        .Q(callingReadAccess),
        .R(Tx_fifo_rst));
  LUT6 #(
    .INIT(64'h33303330AAAA3330)) 
    \cr_i[4]_i_1 
       (.I0(s_axi_wdata),
        .I1(cr_txModeSelect_clr),
        .I2(cr_txModeSelect_set),
        .I3(Q[0]),
        .I4(p_18_in),
        .I5(Bus_RNW_reg),
        .O(D));
  FDRE earlyAckDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(earlyAckDataState),
        .Q(earlyAckDataState_d1),
        .R(Tx_fifo_rst));
  FDRE firstDynStartSeen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(firstDynStartSeen_reg_0),
        .Q(firstDynStartSeen),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
    \rdByteCntr[0]_i_1 
       (.I0(rdCntrFrmTxFifo),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(\rdByteCntr[0]_i_3_n_0 ),
        .I4(earlyAckDataState),
        .I5(earlyAckDataState_d1),
        .O(\rdByteCntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \rdByteCntr[0]_i_2 
       (.I0(Tx_fifo_data[0]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[1]),
        .I3(\rdByteCntr[0]_i_4_n_0 ),
        .I4(rdByteCntr_reg__0[0]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rdByteCntr[0]_i_3 
       (.I0(rdByteCntr_reg__0[1]),
        .I1(rdByteCntr_reg__0[2]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[3]),
        .O(\rdByteCntr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rdByteCntr[0]_i_4 
       (.I0(rdByteCntr_reg__0[3]),
        .I1(rdByteCntr_reg__0[5]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[2]),
        .O(\rdByteCntr[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[1]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(rdCntrFrmTxFifo),
        .I2(\rdByteCntr[0]_i_4_n_0 ),
        .I3(rdByteCntr_reg__0[1]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[2]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(rdCntrFrmTxFifo),
        .I2(\rdByteCntr[2]_i_2_n_0 ),
        .I3(rdByteCntr_reg__0[2]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdByteCntr[2]_i_2 
       (.I0(rdByteCntr_reg__0[4]),
        .I1(rdByteCntr_reg__0[6]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[3]),
        .O(\rdByteCntr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[3]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(rdCntrFrmTxFifo),
        .I2(\rdByteCntr[3]_i_2_n_0 ),
        .I3(rdByteCntr_reg__0[3]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rdByteCntr[3]_i_2 
       (.I0(rdByteCntr_reg__0[5]),
        .I1(rdByteCntr_reg__0[7]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[4]),
        .O(\rdByteCntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \rdByteCntr[4]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[6]),
        .I5(rdByteCntr_reg__0[4]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \rdByteCntr[5]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[5]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \rdByteCntr[6]_i_1 
       (.I0(Tx_fifo_data[6]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rdByteCntr[7]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .O(p_0_in[0]));
  FDRE \rdByteCntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(rdByteCntr_reg__0[0]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(rdByteCntr_reg__0[1]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(rdByteCntr_reg__0[2]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(rdByteCntr_reg__0[3]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(rdByteCntr_reg__0[4]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(rdByteCntr_reg__0[5]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(rdByteCntr_reg__0[6]),
        .R(Tx_fifo_rst));
  FDRE \rdByteCntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\rdByteCntr[0]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(rdByteCntr_reg__0[7]),
        .R(Tx_fifo_rst));
  FDRE rdCntrFrmTxFifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo0),
        .Q(rdCntrFrmTxFifo),
        .R(Tx_fifo_rst));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    rxCntDone_i_1
       (.I0(ackDataState_d1),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(callingReadAccess),
        .I4(rxCntDone_i_2_n_0),
        .I5(ackDataState),
        .O(rxCntDone0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    rxCntDone_i_2
       (.I0(rdByteCntr_reg__0[2]),
        .I1(rdByteCntr_reg__0[1]),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[3]),
        .I5(rdByteCntr_reg__0[4]),
        .O(rxCntDone_i_2_n_0));
  FDRE rxCntDone_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCntDone0),
        .Q(rxCntDone),
        .R(Tx_fifo_rst));
endmodule

(* ORIG_REF_NAME = "filter" *) 
module MIPSfpga_system_axi_iic_0_0_filter
   (detect_stop_reg,
    Sda_clean,
    scl_rising_edge_reg,
    Scl_clean,
    \FSM_sequential_scl_state_reg[2] ,
    \FSM_sequential_scl_state_reg[1] ,
    sda_rin_d1,
    scl_rin_d1,
    out,
    scl_i,
    s_axi_aclk,
    sda_i);
  output detect_stop_reg;
  output Sda_clean;
  output scl_rising_edge_reg;
  output Scl_clean;
  output \FSM_sequential_scl_state_reg[2] ;
  output \FSM_sequential_scl_state_reg[1] ;
  input sda_rin_d1;
  input scl_rin_d1;
  input [1:0]out;
  input scl_i;
  input s_axi_aclk;
  input sda_i;

  wire \FSM_sequential_scl_state_reg[1] ;
  wire \FSM_sequential_scl_state_reg[2] ;
  wire Scl_clean;
  wire Sda_clean;
  wire detect_stop_reg;
  wire [1:0]out;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_rising_edge_reg;
  wire sda_i;
  wire sda_rin_d1;

  MIPSfpga_system_axi_iic_0_0_debounce SCL_DEBOUNCE
       (.\FSM_sequential_scl_state_reg[1] (\FSM_sequential_scl_state_reg[1] ),
        .\FSM_sequential_scl_state_reg[2] (\FSM_sequential_scl_state_reg[2] ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rising_edge_reg(scl_rising_edge_reg),
        .scndry_out(Scl_clean));
  MIPSfpga_system_axi_iic_0_0_debounce_3 SDA_DEBOUNCE
       (.Sda_clean(Sda_clean),
        .detect_stop_reg(detect_stop_reg),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "iic" *) 
module MIPSfpga_system_axi_iic_0_0_iic
   (s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    iic2intc_irpt,
    s_axi_rvalid,
    s_axi_bvalid,
    sda_t,
    scl_t,
    gpo,
    s_axi_bresp,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready);
  output s_axi_wready;
  output s_axi_arready;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output iic2intc_irpt;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output sda_t;
  output scl_t;
  output [0:0]gpo;
  output [0:0]s_axi_bresp;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;

  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire Aas;
  wire Abgc;
  wire Al;
  wire Bb;
  wire [2:5]Bus2IIC_Addr;
  wire [3:3]Bus2IIC_RdCE;
  wire [0:0]\CLKCNT/q_int_reg__0 ;
  wire [1:7]Cr;
  wire DYN_MASTER_I_n_4;
  wire [0:7]Data_i2c;
  wire FILTER_I_n_0;
  wire FILTER_I_n_2;
  wire FILTER_I_n_4;
  wire FILTER_I_n_5;
  wire [0:7]IIC2Bus_IntrEvent;
  wire IIC_CONTROL_I_n_0;
  wire IIC_CONTROL_I_n_1;
  wire IIC_CONTROL_I_n_12;
  wire IIC_CONTROL_I_n_22;
  wire IIC_CONTROL_I_n_25;
  wire IIC_CONTROL_I_n_26;
  wire IIC_CONTROL_I_n_27;
  wire Msms_set;
  wire New_rcv_dta;
  wire REG_INTERFACE_I_n_106;
  wire REG_INTERFACE_I_n_116;
  wire REG_INTERFACE_I_n_117;
  wire REG_INTERFACE_I_n_118;
  wire REG_INTERFACE_I_n_119;
  wire REG_INTERFACE_I_n_120;
  wire REG_INTERFACE_I_n_121;
  wire REG_INTERFACE_I_n_123;
  wire REG_INTERFACE_I_n_125;
  wire REG_INTERFACE_I_n_126;
  wire REG_INTERFACE_I_n_127;
  wire REG_INTERFACE_I_n_128;
  wire REG_INTERFACE_I_n_129;
  wire REG_INTERFACE_I_n_130;
  wire REG_INTERFACE_I_n_131;
  wire REG_INTERFACE_I_n_132;
  wire REG_INTERFACE_I_n_133;
  wire REG_INTERFACE_I_n_134;
  wire REG_INTERFACE_I_n_135;
  wire REG_INTERFACE_I_n_136;
  wire REG_INTERFACE_I_n_137;
  wire REG_INTERFACE_I_n_138;
  wire REG_INTERFACE_I_n_139;
  wire REG_INTERFACE_I_n_140;
  wire REG_INTERFACE_I_n_141;
  wire REG_INTERFACE_I_n_142;
  wire REG_INTERFACE_I_n_143;
  wire REG_INTERFACE_I_n_144;
  wire REG_INTERFACE_I_n_145;
  wire REG_INTERFACE_I_n_146;
  wire REG_INTERFACE_I_n_24;
  wire REG_INTERFACE_I_n_25;
  wire REG_INTERFACE_I_n_42;
  wire REG_INTERFACE_I_n_52;
  wire REG_INTERFACE_I_n_53;
  wire REG_INTERFACE_I_n_63;
  wire REG_INTERFACE_I_n_73;
  wire REG_INTERFACE_I_n_83;
  wire REG_INTERFACE_I_n_93;
  wire REG_INTERFACE_I_n_94;
  wire REG_INTERFACE_I_n_95;
  wire REG_INTERFACE_I_n_96;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_full;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire Ro_prev;
  wire [0:0]\SETUP_CNT/q_int_reg__0 ;
  wire Srw;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_full;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire Tx_under_prev;
  wire Txer;
  wire WRITE_FIFO_CTRL_I_n_0;
  wire WRITE_FIFO_I_n_14;
  wire WRITE_FIFO_I_n_15;
  wire WRITE_FIFO_I_n_18;
  wire X_AXI_IPIF_SSP1_n_13;
  wire X_AXI_IPIF_SSP1_n_14;
  wire X_AXI_IPIF_SSP1_n_15;
  wire X_AXI_IPIF_SSP1_n_16;
  wire X_AXI_IPIF_SSP1_n_17;
  wire X_AXI_IPIF_SSP1_n_18;
  wire X_AXI_IPIF_SSP1_n_19;
  wire X_AXI_IPIF_SSP1_n_2;
  wire X_AXI_IPIF_SSP1_n_20;
  wire X_AXI_IPIF_SSP1_n_21;
  wire X_AXI_IPIF_SSP1_n_22;
  wire X_AXI_IPIF_SSP1_n_23;
  wire X_AXI_IPIF_SSP1_n_24;
  wire X_AXI_IPIF_SSP1_n_27;
  wire ackDataState;
  wire arb_lost;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire callingReadAccess;
  wire ctrl_fifo_wr_i;
  wire [7:1]data4;
  wire dtre_d1;
  wire [0:1]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire new_rcv_dta_d1;
  wire [0:0]p_0_out;
  wire [6:6]p_1_out;
  wire p_3_in;
  wire p_4_in;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire scl_clean;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_t;
  wire sda_clean;
  wire sda_i;
  wire sda_rin_d1;
  wire sda_t;
  wire shift_reg_ld;
  wire [0:0]sr_i;
  wire [8:0]timing_param_tbuf_i;
  wire [8:0]timing_param_thddat_i;
  wire [8:0]timing_param_thdsta_i;
  wire [8:0]timing_param_thigh_i;
  wire [8:0]timing_param_tlow_i;
  wire [8:0]timing_param_tsudat_i;
  wire [8:0]timing_param_tsusta_i;
  wire [8:0]timing_param_tsusto_i;
  wire txFifoRd;
  wire txak;

  MIPSfpga_system_axi_iic_0_0_dynamic_master DYN_MASTER_I
       (.Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(DYN_MASTER_I_n_4),
        .Q({Cr[3],Cr[4]}),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rst(Tx_fifo_rst),
        .ackDataState(ackDataState),
        .callingReadAccess(callingReadAccess),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .firstDynStartSeen_reg_0(REG_INTERFACE_I_n_146),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[3]),
        .txak(txak));
  MIPSfpga_system_axi_iic_0_0_filter FILTER_I
       (.\FSM_sequential_scl_state_reg[1] (FILTER_I_n_5),
        .\FSM_sequential_scl_state_reg[2] (FILTER_I_n_4),
        .Scl_clean(scl_clean),
        .Sda_clean(sda_clean),
        .detect_stop_reg(FILTER_I_n_0),
        .out({IIC_CONTROL_I_n_0,IIC_CONTROL_I_n_1}),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .scl_rising_edge_reg(FILTER_I_n_2),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
  MIPSfpga_system_axi_iic_0_0_iic_control IIC_CONTROL_I
       (.Aas(Aas),
        .Bb(Bb),
        .D({Al,Txer,IIC_CONTROL_I_n_12,p_0_out}),
        .E(X_AXI_IPIF_SSP1_n_24),
        .\FIFO_GEN_DTR.Tx_fifo_rd_reg (REG_INTERFACE_I_n_116),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (FILTER_I_n_2),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (FILTER_I_n_5),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 (FILTER_I_n_4),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 (FILTER_I_n_0),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 (WRITE_FIFO_I_n_18),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Q({Cr[1],Cr[2],Cr[4],Cr[5],Cr[7]}),
        .\RD_FIFO_CNTRL.Rc_fifo_wr_reg (IIC_CONTROL_I_n_25),
        .Ro_prev(Ro_prev),
        .S(REG_INTERFACE_I_n_63),
        .SR(REG_INTERFACE_I_n_125),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3],Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6]}),
        .Tx_under_prev(Tx_under_prev),
        .ackDataState(ackDataState),
        .\adr_i_reg[0] (data4),
        .arb_lost(arb_lost),
        .callingReadAccess(callingReadAccess),
        .\cr_i_reg[2] ({IIC_CONTROL_I_n_26,IIC_CONTROL_I_n_27}),
        .\cr_i_reg[2]_0 (REG_INTERFACE_I_n_120),
        .\cr_i_reg[7] (REG_INTERFACE_I_n_145),
        .dtre_d1(dtre_d1),
        .dynamic_MSMS(dynamic_MSMS[0]),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .out({IIC_CONTROL_I_n_0,IIC_CONTROL_I_n_1}),
        .p_3_in(p_3_in),
        .p_4_in(p_4_in),
        .\q_int_reg[0] (\CLKCNT/q_int_reg__0 ),
        .\q_int_reg[0]_0 (\SETUP_CNT/q_int_reg__0 ),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .rsta_tx_under_prev_reg_0(IIC_CONTROL_I_n_22),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[7] ({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .s_axi_wdata({s_axi_wdata[5],s_axi_wdata[2]}),
        .scl_clean(scl_clean),
        .scl_rin_d1(scl_rin_d1),
        .scl_t(scl_t),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .sda_t(sda_t),
        .shift_reg_ld(shift_reg_ld),
        .sr_i(sr_i),
        .\sr_i_reg[4] ({Srw,Abgc}),
        .\timing_param_tbuf_i_reg[8] (timing_param_tbuf_i),
        .\timing_param_tbuf_i_reg[9] (REG_INTERFACE_I_n_96),
        .\timing_param_thddat_i_reg[8] (timing_param_thddat_i),
        .\timing_param_thddat_i_reg[9] (REG_INTERFACE_I_n_93),
        .\timing_param_thdsta_i_reg[8] (timing_param_thdsta_i),
        .\timing_param_thdsta_i_reg[9] (REG_INTERFACE_I_n_94),
        .\timing_param_thigh_i_reg[8] (timing_param_thigh_i),
        .\timing_param_tlow_i_reg[8] (timing_param_tlow_i),
        .\timing_param_tlow_i_reg[9] (REG_INTERFACE_I_n_95),
        .\timing_param_tsudat_i_reg[8] (timing_param_tsudat_i),
        .\timing_param_tsudat_i_reg[9] (REG_INTERFACE_I_n_106),
        .\timing_param_tsusta_i_reg[8] (timing_param_tsusta_i),
        .\timing_param_tsusta_i_reg[9] (REG_INTERFACE_I_n_83),
        .\timing_param_tsusto_i_reg[8] (timing_param_tsusto_i),
        .\timing_param_tsusto_i_reg[9] (REG_INTERFACE_I_n_73),
        .txak(txak));
  MIPSfpga_system_axi_iic_0_0_SRL_FIFO READ_FIFO_I
       (.D({p_1_out,Rc_fifo_full}),
        .\RD_FIFO_CNTRL.Rc_fifo_rd_reg (REG_INTERFACE_I_n_119),
        .\RD_FIFO_CNTRL.Rc_fifo_wr_reg (REG_INTERFACE_I_n_126),
        .\RD_FIFO_CNTRL.Rc_fifo_wr_reg_0 (REG_INTERFACE_I_n_118),
        .\RESET_FLOPS[3].RST_FLOPS (X_AXI_IPIF_SSP1_n_2),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .buffer_Empty(buffer_Empty),
        .\data_i2c_i_reg[7] ({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .s_axi_aclk(s_axi_aclk));
  MIPSfpga_system_axi_iic_0_0_reg_interface REG_INTERFACE_I
       (.Aas(Aas),
        .\Addr_Counters[0].FDRE_I (REG_INTERFACE_I_n_118),
        .\Addr_Counters[0].FDRE_I_0 (REG_INTERFACE_I_n_119),
        .\Addr_Counters[3].FDRE_I (WRITE_FIFO_I_n_15),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D(Ro_prev),
        .Data_Exists_DFF(REG_INTERFACE_I_n_121),
        .Data_Exists_DFF_0(REG_INTERFACE_I_n_123),
        .Data_Exists_DFF_1(REG_INTERFACE_I_n_126),
        .Data_Exists_DFF_2(WRITE_FIFO_I_n_14),
        .Data_Exists_DFF_3(WRITE_FIFO_CTRL_I_n_0),
        .Data_Exists_DFF_4({p_1_out,Rc_fifo_full,Tx_fifo_full,Srw,Bb,Abgc}),
        .E(X_AXI_IPIF_SSP1_n_24),
        .\FSM_sequential_scl_state_reg[0] (REG_INTERFACE_I_n_83),
        .\FSM_sequential_scl_state_reg[0]_0 (REG_INTERFACE_I_n_94),
        .\FSM_sequential_scl_state_reg[0]_1 (REG_INTERFACE_I_n_95),
        .\FSM_sequential_scl_state_reg[1] (REG_INTERFACE_I_n_120),
        .\FSM_sequential_scl_state_reg[2] (REG_INTERFACE_I_n_93),
        .\FSM_sequential_scl_state_reg[3] (REG_INTERFACE_I_n_96),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] (X_AXI_IPIF_SSP1_n_23),
        .\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] (X_AXI_IPIF_SSP1_n_22),
        .\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] (X_AXI_IPIF_SSP1_n_21),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (X_AXI_IPIF_SSP1_n_27),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] (X_AXI_IPIF_SSP1_n_20),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] (X_AXI_IPIF_SSP1_n_19),
        .\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] (X_AXI_IPIF_SSP1_n_18),
        .\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] (X_AXI_IPIF_SSP1_n_17),
        .\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] (X_AXI_IPIF_SSP1_n_16),
        .\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] (X_AXI_IPIF_SSP1_n_15),
        .\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] (X_AXI_IPIF_SSP1_n_14),
        .\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] (X_AXI_IPIF_SSP1_n_13),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .Q({Cr[1],Cr[2],Cr[3],Cr[4],Cr[5],Cr[7]}),
        .\RESET_FLOPS[3].RST_FLOPS (X_AXI_IPIF_SSP1_n_2),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .S(REG_INTERFACE_I_n_63),
        .SR(REG_INTERFACE_I_n_125),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6],Tx_fifo_data[7]}),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .al_i_reg({Al,Txer,Tx_under_prev,IIC_CONTROL_I_n_12,p_0_out}),
        .arb_lost(arb_lost),
        .buffer_Empty(buffer_Empty_0),
        .buffer_Empty_0(buffer_Empty_1),
        .buffer_Empty_1(buffer_Empty),
        .\bus2ip_addr_i_reg[6] ({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5]}),
        .callingReadAccess_reg(REG_INTERFACE_I_n_24),
        .callingReadAccess_reg_0(REG_INTERFACE_I_n_117),
        .\cr_i_reg[5]_0 (REG_INTERFACE_I_n_25),
        .\cr_i_reg[5]_1 (REG_INTERFACE_I_n_116),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .dtre_d1(dtre_d1),
        .dtre_d1_reg(sr_i),
        .firstDynStartSeen(firstDynStartSeen),
        .firstDynStartSeen_reg(REG_INTERFACE_I_n_146),
        .firstDynStartSeen_reg_0({IIC_CONTROL_I_n_26,DYN_MASTER_I_n_4,IIC_CONTROL_I_n_27}),
        .gpo(gpo),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .new_rcv_dta_i_reg(IIC_CONTROL_I_n_25),
        .p_3_in(p_3_in),
        .\q_int_reg[0] (\CLKCNT/q_int_reg__0 ),
        .\q_int_reg[0]_0 (\SETUP_CNT/q_int_reg__0 ),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .rsta_tx_under_prev_reg(REG_INTERFACE_I_n_145),
        .rsta_tx_under_prev_reg_0(IIC_CONTROL_I_n_22),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[0] (REG_INTERFACE_I_n_127),
        .\s_axi_rdata_i_reg[0]_0 (REG_INTERFACE_I_n_128),
        .\s_axi_rdata_i_reg[0]_1 (REG_INTERFACE_I_n_129),
        .\s_axi_rdata_i_reg[1] (REG_INTERFACE_I_n_42),
        .\s_axi_rdata_i_reg[1]_0 (REG_INTERFACE_I_n_130),
        .\s_axi_rdata_i_reg[2] (REG_INTERFACE_I_n_52),
        .\s_axi_rdata_i_reg[2]_0 (REG_INTERFACE_I_n_131),
        .\s_axi_rdata_i_reg[3] (REG_INTERFACE_I_n_53),
        .\s_axi_rdata_i_reg[3]_0 (REG_INTERFACE_I_n_132),
        .\s_axi_rdata_i_reg[4] (REG_INTERFACE_I_n_133),
        .\s_axi_rdata_i_reg[4]_0 (REG_INTERFACE_I_n_134),
        .\s_axi_rdata_i_reg[5] (REG_INTERFACE_I_n_135),
        .\s_axi_rdata_i_reg[5]_0 (REG_INTERFACE_I_n_136),
        .\s_axi_rdata_i_reg[6] (REG_INTERFACE_I_n_137),
        .\s_axi_rdata_i_reg[6]_0 (REG_INTERFACE_I_n_138),
        .\s_axi_rdata_i_reg[7] (REG_INTERFACE_I_n_139),
        .\s_axi_rdata_i_reg[7]_0 (REG_INTERFACE_I_n_140),
        .\s_axi_rdata_i_reg[8] (timing_param_thdsta_i),
        .\s_axi_rdata_i_reg[8]_0 (timing_param_thddat_i),
        .\s_axi_rdata_i_reg[8]_1 (timing_param_tlow_i),
        .\s_axi_rdata_i_reg[8]_2 (timing_param_thigh_i),
        .\s_axi_rdata_i_reg[8]_3 (timing_param_tsusto_i),
        .\s_axi_rdata_i_reg[8]_4 (timing_param_tsusta_i),
        .\s_axi_rdata_i_reg[8]_5 (timing_param_tbuf_i),
        .\s_axi_rdata_i_reg[8]_6 (timing_param_tsudat_i),
        .\s_axi_rdata_i_reg[8]_7 (REG_INTERFACE_I_n_141),
        .\s_axi_rdata_i_reg[8]_8 (REG_INTERFACE_I_n_142),
        .\s_axi_rdata_i_reg[9] (REG_INTERFACE_I_n_143),
        .\s_axi_rdata_i_reg[9]_0 (REG_INTERFACE_I_n_144),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .sda_cout_reg_reg(REG_INTERFACE_I_n_73),
        .sda_setup_reg(REG_INTERFACE_I_n_106),
        .slave_sda_reg(data4),
        .txFifoRd(txFifoRd));
  FDRE Rc_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_rd),
        .Q(Rc_fifo_rd_d),
        .R(X_AXI_IPIF_SSP1_n_2));
  FDRE Rc_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_wr),
        .Q(Rc_fifo_wr_d),
        .R(X_AXI_IPIF_SSP1_n_2));
  FDRE Tx_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_rd),
        .Q(Tx_fifo_rd_d),
        .R(X_AXI_IPIF_SSP1_n_2));
  FDRE Tx_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_wr),
        .Q(Tx_fifo_wr_d),
        .R(X_AXI_IPIF_SSP1_n_2));
  MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0 WRITE_FIFO_CTRL_I
       (.\Addr_Counters[0].FDRE_I_0 (WRITE_FIFO_CTRL_I_n_0),
        .\FIFO_GEN_DTR.Tx_fifo_rst_reg (REG_INTERFACE_I_n_25),
        .\FIFO_GEN_DTR.Tx_fifo_rst_reg_0 (REG_INTERFACE_I_n_24),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .buffer_Empty(buffer_Empty_0),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .dynamic_MSMS(dynamic_MSMS),
        .p_4_in(p_4_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdCntrFrmTxFifo_reg(REG_INTERFACE_I_n_121),
        .s_axi_aclk(s_axi_aclk),
        .txFifoRd(txFifoRd));
  MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0 WRITE_FIFO_I
       (.\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] (WRITE_FIFO_I_n_15),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (REG_INTERFACE_I_n_123),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg_0 (REG_INTERFACE_I_n_117),
        .Tx_addr(Tx_addr),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .buffer_Empty(buffer_Empty_1),
        .\data_int_reg[0] (WRITE_FIFO_I_n_18),
        .dynamic_MSMS(dynamic_MSMS[1]),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sda_clean(sda_clean),
        .shift_reg_ld(shift_reg_ld),
        .\sr_i_reg[0] (WRITE_FIFO_I_n_14),
        .\sr_i_reg[3] (Tx_fifo_full),
        .txFifoRd(txFifoRd));
  MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1 X_AXI_IPIF_SSP1
       (.Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .E(X_AXI_IPIF_SSP1_n_24),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (X_AXI_IPIF_SSP1_n_23),
        .\GPO_GEN.gpo_i_reg[31] (X_AXI_IPIF_SSP1_n_27),
        .\GPO_GEN.gpo_i_reg[31]_0 (REG_INTERFACE_I_n_129),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .\IIC2Bus_IntrEvent_reg[5] (REG_INTERFACE_I_n_42),
        .Q({Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5]}),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (X_AXI_IPIF_SSP1_n_21),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 (REG_INTERFACE_I_n_127),
        .Rc_fifo_data(Rc_fifo_data),
        .SR(X_AXI_IPIF_SSP1_n_2),
        .Tx_addr(Tx_addr),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3]}),
        .\adr_i_reg[0] (REG_INTERFACE_I_n_139),
        .\adr_i_reg[1] (REG_INTERFACE_I_n_137),
        .\adr_i_reg[2] (REG_INTERFACE_I_n_135),
        .\adr_i_reg[3] (REG_INTERFACE_I_n_133),
        .\adr_i_reg[6] (X_AXI_IPIF_SSP1_n_22),
        .\bus2ip_addr_i_reg[6] (REG_INTERFACE_I_n_130),
        .\bus2ip_addr_i_reg[6]_0 (REG_INTERFACE_I_n_131),
        .\bus2ip_addr_i_reg[6]_1 (REG_INTERFACE_I_n_132),
        .gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\sr_i_reg[4] (REG_INTERFACE_I_n_53),
        .\sr_i_reg[5] (REG_INTERFACE_I_n_52),
        .\timing_param_tbuf_i_reg[0] (X_AXI_IPIF_SSP1_n_16),
        .\timing_param_tbuf_i_reg[0]_0 (REG_INTERFACE_I_n_128),
        .\timing_param_tbuf_i_reg[7] (timing_param_tbuf_i[7:4]),
        .\timing_param_tbuf_i_reg[8] (REG_INTERFACE_I_n_141),
        .\timing_param_tbuf_i_reg[9] (REG_INTERFACE_I_n_143),
        .\timing_param_thddat_i_reg[0] (X_AXI_IPIF_SSP1_n_13),
        .\timing_param_thdsta_i_reg[0] (X_AXI_IPIF_SSP1_n_18),
        .\timing_param_thdsta_i_reg[0]_0 (timing_param_thdsta_i[0]),
        .\timing_param_thigh_i_reg[0] (X_AXI_IPIF_SSP1_n_15),
        .\timing_param_thigh_i_reg[7] (timing_param_thigh_i[7:0]),
        .\timing_param_thigh_i_reg[8] (REG_INTERFACE_I_n_142),
        .\timing_param_thigh_i_reg[9] (REG_INTERFACE_I_n_144),
        .\timing_param_tlow_i_reg[0] (X_AXI_IPIF_SSP1_n_14),
        .\timing_param_tsudat_i_reg[0] (X_AXI_IPIF_SSP1_n_17),
        .\timing_param_tsudat_i_reg[3] (timing_param_tsudat_i[3:0]),
        .\timing_param_tsudat_i_reg[4] (REG_INTERFACE_I_n_134),
        .\timing_param_tsudat_i_reg[5] (REG_INTERFACE_I_n_136),
        .\timing_param_tsudat_i_reg[6] (REG_INTERFACE_I_n_138),
        .\timing_param_tsudat_i_reg[7] (REG_INTERFACE_I_n_140),
        .\timing_param_tsusta_i_reg[0] (X_AXI_IPIF_SSP1_n_20),
        .\timing_param_tsusta_i_reg[7] (timing_param_tsusta_i[7:4]),
        .\timing_param_tsusto_i_reg[0] (X_AXI_IPIF_SSP1_n_19),
        .\timing_param_tsusto_i_reg[7] (timing_param_tsusto_i[7:0]));
endmodule

(* ORIG_REF_NAME = "iic_control" *) 
module MIPSfpga_system_axi_iic_0_0_iic_control
   (out,
    New_rcv_dta,
    shift_reg_ld,
    sda_rin_d1,
    scl_rin_d1,
    rsta_d1,
    Tx_under_prev,
    dtre_d1,
    Bb,
    D,
    earlyAckHdr,
    earlyAckDataState,
    ackDataState,
    rdy_new_xmt_i,
    \sr_i_reg[4] ,
    arb_lost,
    Aas,
    rsta_tx_under_prev_reg_0,
    \q_int_reg[0] ,
    \q_int_reg[0]_0 ,
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg ,
    \cr_i_reg[2] ,
    sda_t,
    scl_t,
    rdCntrFrmTxFifo0,
    \s_axi_rdata_i_reg[7] ,
    SR,
    s_axi_aclk,
    sda_clean,
    scl_clean,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    Ro_prev,
    Q,
    sr_i,
    \cr_i_reg[7] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \cr_i_reg[2]_0 ,
    \adr_i_reg[0] ,
    new_rcv_dta_d1,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ,
    S,
    \timing_param_tsusto_i_reg[9] ,
    \timing_param_tsusta_i_reg[9] ,
    \timing_param_thddat_i_reg[9] ,
    \timing_param_thdsta_i_reg[9] ,
    \timing_param_tlow_i_reg[9] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_tsudat_i_reg[9] ,
    s_axi_wdata,
    p_3_in,
    firstDynStartSeen,
    E,
    txak,
    p_4_in,
    rxCntDone,
    dynamic_MSMS,
    Tx_data_exists,
    \FIFO_GEN_DTR.Tx_fifo_rd_reg ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tsusto_i_reg[8] ,
    \timing_param_tsusta_i_reg[8] ,
    \timing_param_thddat_i_reg[8] ,
    \timing_param_thdsta_i_reg[8] ,
    \timing_param_tlow_i_reg[8] ,
    \timing_param_tbuf_i_reg[8] ,
    \timing_param_tsudat_i_reg[8] ,
    Msms_set,
    callingReadAccess,
    Tx_fifo_data,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 );
  output [1:0]out;
  output New_rcv_dta;
  output shift_reg_ld;
  output sda_rin_d1;
  output scl_rin_d1;
  output rsta_d1;
  output Tx_under_prev;
  output dtre_d1;
  output Bb;
  output [3:0]D;
  output earlyAckHdr;
  output earlyAckDataState;
  output ackDataState;
  output rdy_new_xmt_i;
  output [1:0]\sr_i_reg[4] ;
  output arb_lost;
  output Aas;
  output rsta_tx_under_prev_reg_0;
  output [0:0]\q_int_reg[0] ;
  output [0:0]\q_int_reg[0]_0 ;
  output \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  output [1:0]\cr_i_reg[2] ;
  output sda_t;
  output scl_t;
  output rdCntrFrmTxFifo0;
  output [7:0]\s_axi_rdata_i_reg[7] ;
  input [0:0]SR;
  input s_axi_aclk;
  input sda_clean;
  input scl_clean;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input Ro_prev;
  input [4:0]Q;
  input [0:0]sr_i;
  input \cr_i_reg[7] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \cr_i_reg[2]_0 ;
  input [6:0]\adr_i_reg[0] ;
  input new_rcv_dta_d1;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  input [0:0]S;
  input [0:0]\timing_param_tsusto_i_reg[9] ;
  input [0:0]\timing_param_tsusta_i_reg[9] ;
  input [0:0]\timing_param_thddat_i_reg[9] ;
  input [0:0]\timing_param_thdsta_i_reg[9] ;
  input [0:0]\timing_param_tlow_i_reg[9] ;
  input [0:0]\timing_param_tbuf_i_reg[9] ;
  input [0:0]\timing_param_tsudat_i_reg[9] ;
  input [1:0]s_axi_wdata;
  input p_3_in;
  input firstDynStartSeen;
  input [0:0]E;
  input txak;
  input p_4_in;
  input rxCntDone;
  input [0:0]dynamic_MSMS;
  input Tx_data_exists;
  input \FIFO_GEN_DTR.Tx_fifo_rd_reg ;
  input [8:0]\timing_param_thigh_i_reg[8] ;
  input [8:0]\timing_param_tsusto_i_reg[8] ;
  input [8:0]\timing_param_tsusta_i_reg[8] ;
  input [8:0]\timing_param_thddat_i_reg[8] ;
  input [8:0]\timing_param_thdsta_i_reg[8] ;
  input [8:0]\timing_param_tlow_i_reg[8] ;
  input [8:0]\timing_param_tbuf_i_reg[8] ;
  input [8:0]\timing_param_tsudat_i_reg[8] ;
  input Msms_set;
  input callingReadAccess;
  input [6:0]Tx_fifo_data;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ;

  wire Aas;
  wire AckDataState0_out;
  wire BITCNT_n_0;
  wire BITCNT_n_2;
  wire Bb;
  wire CLKCNT_n_1;
  wire CLKCNT_n_2;
  wire CLKCNT_n_3;
  wire CLKCNT_n_4;
  wire CLKCNT_n_5;
  wire CLKCNT_n_6;
  wire CLKCNT_n_7;
  wire [3:0]D;
  wire [0:0]E;
  wire EarlyAckDataState0;
  wire EarlyAckHdr0;
  wire \FIFO_GEN_DTR.Tx_fifo_rd_reg ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_sequential_scl_state[1]_i_4_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_4_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ;
  wire I2CDATA_REG_n_0;
  wire I2CDATA_REG_n_2;
  wire I2CDATA_REG_n_3;
  wire I2CDATA_REG_n_4;
  wire I2CDATA_REG_n_5;
  wire I2CDATA_REG_n_6;
  wire I2CDATA_REG_n_7;
  wire I2CDATA_REG_n_8;
  wire I2CHEADER_REG_n_0;
  wire I2CHEADER_REG_n_1;
  wire I2CHEADER_REG_n_2;
  wire I2CHEADER_REG_n_3;
  wire I2CHEADER_REG_n_4;
  wire I2CHEADER_REG_n_6;
  wire I2CHEADER_REG_n_7;
  wire I2CHEADER_REG_n_8;
  wire \LEVEL_1_GEN.master_sda_reg_n_0 ;
  wire Msms_rst;
  wire Msms_set;
  wire New_rcv_dta;
  wire [4:0]Q;
  wire \RD_FIFO_CNTRL.Rc_fifo_wr_reg ;
  wire Ro_prev;
  wire Rsta_rst;
  wire [0:0]S;
  wire SETUP_CNT_n_1;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [6:0]Tx_fifo_data;
  wire Tx_under_prev;
  wire ackDataState;
  wire [6:0]\adr_i_reg[0] ;
  wire al_i0;
  wire al_i_i_1_n_0;
  wire al_prevent_i_1_n_0;
  wire al_prevent_reg_n_0;
  wire arb_lost;
  wire arb_lost0;
  wire arb_lost_i_1_n_0;
  wire arb_lost_i_2_n_0;
  wire bit_cnt_en;
  wire bit_cnt_en0;
  wire bus_busy_d1;
  wire bus_busy_i_1_n_0;
  wire callingReadAccess;
  wire [1:0]\cr_i_reg[2] ;
  wire \cr_i_reg[2]_0 ;
  wire \cr_i_reg[7] ;
  wire detect_start;
  wire detect_start_i_1_n_0;
  wire detect_stop_i_1_n_0;
  wire detect_stop_i_2_n_0;
  wire detect_stop_reg_n_0;
  wire dtc_i;
  wire dtc_i_d1;
  wire dtc_i_d2;
  wire dtre_d1;
  wire [0:0]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire gen_start_i_1_n_0;
  wire gen_start_reg_n_0;
  wire gen_stop_d1;
  wire gen_stop_i_1_n_0;
  wire gen_stop_reg_n_0;
  wire i2c_header_en;
  wire i2c_header_en0;
  wire master_slave;
  wire master_slave_i_1_n_0;
  wire msms_d1;
  wire msms_d1_i_1_n_0;
  wire msms_d1_i_2_n_0;
  wire msms_d2;
  wire msms_rst_i;
  wire msms_rst_i_i_1_n_0;
  wire msms_rst_i_i_2_n_0;
  wire msms_rst_i_i_3_n_0;
  wire new_rcv_dta_d1;
  wire new_rcv_dta_i_i_1_n_0;
  wire p_3_in;
  wire p_4_in;
  wire [0:0]\q_int_reg[0] ;
  wire [0:0]\q_int_reg[0]_0 ;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rdy_new_xmt_i_i_1_n_0;
  wire ro_prev_d1;
  wire rsta_d1;
  wire rsta_tx_under_prev_reg_0;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [7:0]\s_axi_rdata_i_reg[7] ;
  wire [1:0]s_axi_wdata;
  wire scl_clean;
  wire scl_cout_reg;
  wire scl_cout_reg_i_1_n_0;
  wire scl_f_edg_d1;
  wire scl_f_edg_d2;
  wire scl_f_edg_d3;
  wire scl_falling_edge;
  wire scl_falling_edge_i_1_n_0;
  wire scl_rin_d1;
  wire scl_rising_edge;
  (* RTL_KEEP = "yes" *) wire [3:0]scl_state;
  wire scl_t;
  wire sda_clean;
  wire sda_cout1;
  wire sda_cout_reg;
  wire sda_cout_reg_i_3_n_0;
  wire sda_rin_d1;
  wire sda_sample;
  wire sda_sample_i_1_n_0;
  wire sda_setup_reg_n_0;
  wire sda_t;
  wire [7:7]shift_reg;
  wire shift_reg_en;
  wire shift_reg_en0;
  wire shift_reg_en_i_2_n_0;
  wire shift_reg_ld;
  wire shift_reg_ld0;
  wire shift_reg_ld_d1;
  wire slave_sda_reg_n_0;
  wire sm_stop;
  wire sm_stop_i_1_n_0;
  wire sm_stop_reg_n_0;
  wire [0:0]sr_i;
  wire [1:0]\sr_i_reg[4] ;
  wire state1;
  wire stop_scl_reg;
  wire stop_scl_reg_i_4_n_0;
  wire [8:0]\timing_param_tbuf_i_reg[8] ;
  wire [0:0]\timing_param_tbuf_i_reg[9] ;
  wire [8:0]\timing_param_thddat_i_reg[8] ;
  wire [0:0]\timing_param_thddat_i_reg[9] ;
  wire [8:0]\timing_param_thdsta_i_reg[8] ;
  wire [0:0]\timing_param_thdsta_i_reg[9] ;
  wire [8:0]\timing_param_thigh_i_reg[8] ;
  wire [8:0]\timing_param_tlow_i_reg[8] ;
  wire [0:0]\timing_param_tlow_i_reg[9] ;
  wire [8:0]\timing_param_tsudat_i_reg[8] ;
  wire [0:0]\timing_param_tsudat_i_reg[9] ;
  wire [8:0]\timing_param_tsusta_i_reg[8] ;
  wire [0:0]\timing_param_tsusta_i_reg[9] ;
  wire [8:0]\timing_param_tsusto_i_reg[8] ;
  wire [0:0]\timing_param_tsusto_i_reg[9] ;
  wire tx_under_prev_d1;
  wire tx_under_prev_i0;
  wire tx_under_prev_i_i_1_n_0;
  wire tx_under_prev_i_i_3_n_0;
  wire txak;
  wire txer_edge_i_1_n_0;
  wire txer_i;
  wire txer_i_i_1_n_0;
  wire txer_i_reg_n_0;

  assign out[1:0] = scl_state[2:1];
  LUT2 #(
    .INIT(4'h8)) 
    AckDataState_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(Q[0]),
        .O(AckDataState0_out));
  FDRE AckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AckDataState0_out),
        .Q(ackDataState),
        .R(1'b0));
  MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0 BITCNT
       (.E(BITCNT_n_0),
        .EarlyAckDataState0(EarlyAckDataState0),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state[6]_i_6_n_0 ),
        .Q(Q[0]),
        .SR(SR),
        .bit_cnt_en(bit_cnt_en),
        .detect_start(detect_start),
        .dtc_i(dtc_i),
        .dtc_i_reg(BITCNT_n_2),
        .out({\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .s_axi_aclk(s_axi_aclk),
        .scl_falling_edge(scl_falling_edge),
        .state1(state1));
  MIPSfpga_system_axi_iic_0_0_upcnt_n CLKCNT
       (.D({CLKCNT_n_1,CLKCNT_n_2,CLKCNT_n_3,CLKCNT_n_4}),
        .E(CLKCNT_n_5),
        .\FSM_sequential_scl_state_reg[1] (\FSM_sequential_scl_state[1]_i_4_n_0 ),
        .\FSM_sequential_scl_state_reg[1]_0 (\FSM_sequential_scl_state[2]_i_4_n_0 ),
        .\FSM_sequential_scl_state_reg[1]_1 (sda_cout_reg_i_3_n_0),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1 ),
        .Q(Q[3]),
        .S(S),
        .SR(SR),
        .arb_lost_reg(arb_lost),
        .bus_busy_reg(Bb),
        .\cr_i_reg[2] (\cr_i_reg[2]_0 ),
        .\cr_i_reg[2]_0 (stop_scl_reg_i_4_n_0),
        .gen_start_reg(gen_start_reg_n_0),
        .master_slave(master_slave),
        .out(scl_state),
        .\q_int_reg[0]_0 (\q_int_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_cout1(sda_cout1),
        .sda_cout_reg(sda_cout_reg),
        .sda_cout_reg_reg(CLKCNT_n_7),
        .stop_scl_reg(stop_scl_reg),
        .stop_scl_reg_reg(CLKCNT_n_6),
        .\timing_param_tbuf_i_reg[8] (\timing_param_tbuf_i_reg[8] ),
        .\timing_param_tbuf_i_reg[9] (\timing_param_tbuf_i_reg[9] ),
        .\timing_param_thddat_i_reg[8] (\timing_param_thddat_i_reg[8] ),
        .\timing_param_thddat_i_reg[9] (\timing_param_thddat_i_reg[9] ),
        .\timing_param_thdsta_i_reg[8] (\timing_param_thdsta_i_reg[8] ),
        .\timing_param_thdsta_i_reg[9] (\timing_param_thdsta_i_reg[9] ),
        .\timing_param_thigh_i_reg[8] (\timing_param_thigh_i_reg[8] ),
        .\timing_param_tlow_i_reg[8] (\timing_param_tlow_i_reg[8] ),
        .\timing_param_tlow_i_reg[9] (\timing_param_tlow_i_reg[9] ),
        .\timing_param_tsusta_i_reg[8] (\timing_param_tsusta_i_reg[8] ),
        .\timing_param_tsusta_i_reg[9] (\timing_param_tsusta_i_reg[9] ),
        .\timing_param_tsusto_i_reg[8] (\timing_param_tsusto_i_reg[8] ),
        .\timing_param_tsusto_i_reg[9] (\timing_param_tsusto_i_reg[9] ));
  FDRE EarlyAckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckDataState0),
        .Q(earlyAckDataState),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    EarlyAckHdr_i_1
       (.I0(scl_f_edg_d3),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(EarlyAckHdr0));
  FDRE EarlyAckHdr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckHdr0),
        .Q(earlyAckHdr),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(sda_sample),
        .I1(arb_lost),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444474)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(detect_start),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(sda_sample),
        .I5(arb_lost),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEEEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(detect_start),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(Ro_prev),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(Ro_prev),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(detect_stop_reg_n_0),
        .I1(Q[0]),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(detect_start),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(scl_f_edg_d2),
        .I1(Ro_prev),
        .I2(ro_prev_d1),
        .O(state1));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(I2CHEADER_REG_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(I2CHEADER_REG_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(I2CHEADER_REG_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(I2CHEADER_REG_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(BITCNT_n_0),
        .D(\FSM_onehot_state[6]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11515551)) 
    \FSM_sequential_scl_state[1]_i_4 
       (.I0(scl_state[1]),
        .I1(scl_state[0]),
        .I2(sda_clean),
        .I3(scl_state[2]),
        .I4(scl_clean),
        .I5(scl_state[3]),
        .O(\FSM_sequential_scl_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AA0000A8AA)) 
    \FSM_sequential_scl_state[2]_i_4 
       (.I0(scl_state[1]),
        .I1(Q[3]),
        .I2(arb_lost),
        .I3(stop_scl_reg),
        .I4(scl_state[0]),
        .I5(sda_clean),
        .O(\FSM_sequential_scl_state[2]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(CLKCNT_n_5),
        .D(CLKCNT_n_4),
        .Q(scl_state[0]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(CLKCNT_n_5),
        .D(CLKCNT_n_3),
        .Q(scl_state[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(CLKCNT_n_5),
        .D(CLKCNT_n_2),
        .Q(scl_state[2]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_scl_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(CLKCNT_n_5),
        .D(CLKCNT_n_1),
        .Q(scl_state[3]),
        .R(SR));
  MIPSfpga_system_axi_iic_0_0_shift8 I2CDATA_REG
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3 ),
        .\LEVEL_1_GEN.master_sda_reg (I2CDATA_REG_n_0),
        .Q({shift_reg,I2CDATA_REG_n_2,I2CDATA_REG_n_3,I2CDATA_REG_n_4,I2CDATA_REG_n_5,I2CDATA_REG_n_6,I2CDATA_REG_n_7,I2CDATA_REG_n_8}),
        .SR(SR),
        .Tx_fifo_data(Tx_fifo_data),
        .out({\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[1] }),
        .s_axi_aclk(s_axi_aclk),
        .shift_reg_en(shift_reg_en),
        .shift_reg_ld_reg(shift_reg_ld),
        .tx_under_prev_i_reg(Tx_under_prev),
        .txak(txak));
  MIPSfpga_system_axi_iic_0_0_shift8_1 I2CHEADER_REG
       (.D({I2CHEADER_REG_n_0,I2CHEADER_REG_n_1,I2CHEADER_REG_n_2,I2CHEADER_REG_n_3}),
        .E(i2c_header_en),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[4]_i_2_n_0 ),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state[5]_i_2_n_0 ),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state[0]_i_4_n_0 ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state[5]_i_3_n_0 ),
        .Q({Q[4],Q[2],Q[0]}),
        .\RD_FIFO_CNTRL.ro_prev_i_reg (\FSM_onehot_state[3]_i_2_n_0 ),
        .SR(SR),
        .aas_i_reg(I2CHEADER_REG_n_7),
        .aas_i_reg_0(Aas),
        .abgc_i_reg(I2CHEADER_REG_n_6),
        .\adr_i_reg[0] (\adr_i_reg[0] ),
        .arb_lost_reg(arb_lost),
        .\data_int_reg[7]_0 (shift_reg),
        .detect_start(detect_start),
        .detect_start_reg(\FSM_onehot_state[0]_i_3_n_0 ),
        .detect_stop_reg(detect_stop_reg_n_0),
        .master_slave(master_slave),
        .out({\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .s_axi_aclk(s_axi_aclk),
        .sda_clean(sda_clean),
        .sda_sample(sda_sample),
        .sda_sample_reg(\FSM_onehot_state[0]_i_2_n_0 ),
        .shift_reg_ld0(shift_reg_ld0),
        .slave_sda_reg(I2CHEADER_REG_n_4),
        .srw_i_reg(I2CHEADER_REG_n_8),
        .srw_i_reg_0(\sr_i_reg[4] ),
        .tx_under_prev_i_reg(Tx_under_prev),
        .txak(txak));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[4]_i_1 
       (.I0(Bb),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \IIC2Bus_IntrEvent[6]_i_1 
       (.I0(Aas),
        .O(D[0]));
  FDSE \LEVEL_1_GEN.master_sda_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CDATA_REG_n_0),
        .Q(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \RD_FIFO_CNTRL.Rc_fifo_wr_i_1 
       (.I0(New_rcv_dta),
        .I1(new_rcv_dta_d1),
        .O(\RD_FIFO_CNTRL.Rc_fifo_wr_reg ));
  MIPSfpga_system_axi_iic_0_0_upcnt_n_2 SETUP_CNT
       (.Q({Q[3],Q[0]}),
        .SR(SR),
        .gen_stop_d1(gen_stop_d1),
        .gen_stop_reg(gen_stop_reg_n_0),
        .\q_int_reg[0]_0 (\q_int_reg[0]_0 ),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .sda_setup_reg(SETUP_CNT_n_1),
        .sda_setup_reg_0(sda_setup_reg_n_0),
        .\timing_param_tsudat_i_reg[8] (\timing_param_tsudat_i_reg[8] ),
        .\timing_param_tsudat_i_reg[9] (\timing_param_tsudat_i_reg[9] ),
        .tx_under_prev_d1(tx_under_prev_d1),
        .tx_under_prev_i_reg(Tx_under_prev));
  FDRE aas_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_7),
        .Q(Aas),
        .R(1'b0));
  FDRE abgc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_6),
        .Q(\sr_i_reg[4] [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    al_i_i_1
       (.I0(al_i0),
        .I1(master_slave),
        .I2(Q[3]),
        .O(al_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
    al_i_i_2
       (.I0(arb_lost),
        .I1(detect_stop_reg_n_0),
        .I2(al_prevent_reg_n_0),
        .I3(sm_stop_reg_n_0),
        .I4(bus_busy_d1),
        .I5(gen_start_reg_n_0),
        .O(al_i0));
  FDRE al_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_i_1_n_0),
        .Q(D[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h22222220)) 
    al_prevent_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(gen_stop_reg_n_0),
        .I3(sm_stop_reg_n_0),
        .I4(al_prevent_reg_n_0),
        .O(al_prevent_i_1_n_0));
  FDRE al_prevent_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_prevent_i_1_n_0),
        .Q(al_prevent_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000002AEA2A2A)) 
    arb_lost_i_1
       (.I0(arb_lost),
        .I1(arb_lost0),
        .I2(master_slave),
        .I3(sda_clean),
        .I4(sda_cout_reg),
        .I5(arb_lost_i_2_n_0),
        .O(arb_lost_i_1_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    arb_lost_i_2
       (.I0(scl_state[2]),
        .I1(scl_state[0]),
        .I2(scl_state[1]),
        .I3(Q[0]),
        .O(arb_lost_i_2_n_0));
  FDRE arb_lost_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arb_lost_i_1_n_0),
        .Q(arb_lost),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    bit_cnt_en_i_1
       (.I0(scl_falling_edge),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(bit_cnt_en0));
  FDRE bit_cnt_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bit_cnt_en0),
        .Q(bit_cnt_en),
        .R(SR));
  FDRE bus_busy_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bb),
        .Q(bus_busy_d1),
        .R(SR));
  LUT4 #(
    .INIT(16'h00E0)) 
    bus_busy_i_1
       (.I0(Bb),
        .I1(detect_start),
        .I2(Q[0]),
        .I3(detect_stop_reg_n_0),
        .O(bus_busy_i_1_n_0));
  FDRE bus_busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus_busy_i_1_n_0),
        .Q(Bb),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA33333000)) 
    \cr_i[2]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(Rsta_rst),
        .I2(p_3_in),
        .I3(firstDynStartSeen),
        .I4(Q[3]),
        .I5(E),
        .O(\cr_i_reg[2] [1]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cr_i[2]_i_2 
       (.I0(scl_state[1]),
        .I1(scl_state[2]),
        .I2(Q[3]),
        .I3(scl_state[3]),
        .I4(scl_state[0]),
        .O(Rsta_rst));
  LUT6 #(
    .INIT(64'hAAAAAAAA33330300)) 
    \cr_i[5]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(Msms_rst),
        .I2(Bb),
        .I3(p_4_in),
        .I4(Q[1]),
        .I5(E),
        .O(\cr_i_reg[2] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \cr_i[5]_i_2 
       (.I0(rxCntDone),
        .I1(dynamic_MSMS),
        .I2(Tx_data_exists),
        .I3(\FIFO_GEN_DTR.Tx_fifo_rd_reg ),
        .I4(msms_rst_i),
        .I5(sm_stop_reg_n_0),
        .O(Msms_rst));
  FDRE \data_i2c_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_8),
        .Q(\s_axi_rdata_i_reg[7] [0]),
        .R(SR));
  FDRE \data_i2c_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_7),
        .Q(\s_axi_rdata_i_reg[7] [1]),
        .R(SR));
  FDRE \data_i2c_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_6),
        .Q(\s_axi_rdata_i_reg[7] [2]),
        .R(SR));
  FDRE \data_i2c_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_5),
        .Q(\s_axi_rdata_i_reg[7] [3]),
        .R(SR));
  FDRE \data_i2c_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_4),
        .Q(\s_axi_rdata_i_reg[7] [4]),
        .R(SR));
  FDRE \data_i2c_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_3),
        .Q(\s_axi_rdata_i_reg[7] [5]),
        .R(SR));
  FDRE \data_i2c_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(I2CDATA_REG_n_2),
        .Q(\s_axi_rdata_i_reg[7] [6]),
        .R(SR));
  FDRE \data_i2c_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(new_rcv_dta_i_i_1_n_0),
        .D(shift_reg),
        .Q(\s_axi_rdata_i_reg[7] [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    detect_start_i_1
       (.I0(detect_start),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(detect_start_i_1_n_0));
  FDRE detect_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(detect_start_i_1_n_0),
        .Q(detect_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F2020000)) 
    detect_stop_i_1
       (.I0(detect_stop_reg_n_0),
        .I1(detect_stop_i_2_n_0),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2 ),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(detect_start),
        .O(detect_stop_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    detect_stop_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .O(detect_stop_i_2_n_0));
  FDRE detect_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(detect_stop_i_1_n_0),
        .Q(detect_stop_reg_n_0),
        .R(1'b0));
  FDRE dtc_i_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i),
        .Q(dtc_i_d1),
        .R(SR));
  FDRE dtc_i_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i_d1),
        .Q(dtc_i_d2),
        .R(SR));
  FDRE dtc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BITCNT_n_2),
        .Q(dtc_i),
        .R(1'b0));
  FDRE dtre_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_i),
        .Q(dtre_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h22A200A0)) 
    gen_start_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(gen_start_reg_n_0),
        .O(gen_start_i_1_n_0));
  FDRE gen_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_start_i_1_n_0),
        .Q(gen_start_reg_n_0),
        .R(1'b0));
  FDRE gen_stop_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_stop_reg_n_0),
        .Q(gen_stop_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'h22222A2200000A00)) 
    gen_stop_i_1
       (.I0(Q[0]),
        .I1(detect_stop_reg_n_0),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(arb_lost),
        .I5(gen_stop_reg_n_0),
        .O(gen_stop_i_1_n_0));
  FDRE gen_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_stop_i_1_n_0),
        .Q(gen_stop_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    i2c_header_en_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(scl_rising_edge),
        .O(i2c_header_en0));
  FDRE i2c_header_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i2c_header_en0),
        .Q(i2c_header_en),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00C0A0A0)) 
    master_slave_i_1
       (.I0(msms_d1),
        .I1(master_slave),
        .I2(Q[0]),
        .I3(arb_lost),
        .I4(Bb),
        .O(master_slave_i_1_n_0));
  FDRE master_slave_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(master_slave_i_1_n_0),
        .Q(master_slave),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    msms_d1_i_1
       (.I0(msms_d1_i_2_n_0),
        .I1(msms_rst_i),
        .O(msms_d1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFAA)) 
    msms_d1_i_2
       (.I0(Q[1]),
        .I1(dtc_i_d2),
        .I2(dtc_i_d1),
        .I3(msms_d1),
        .I4(Msms_set),
        .I5(txer_i_reg_n_0),
        .O(msms_d1_i_2_n_0));
  FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d1_i_1_n_0),
        .Q(msms_d1),
        .R(SR));
  FDRE msms_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d1),
        .Q(msms_d2),
        .R(SR));
  LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
    msms_rst_i_i_1
       (.I0(msms_rst_i),
        .I1(msms_rst_i_i_2_n_0),
        .I2(msms_rst_i_i_3_n_0),
        .I3(arb_lost0),
        .I4(master_slave),
        .I5(Q[0]),
        .O(msms_rst_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    msms_rst_i_i_2
       (.I0(sda_cout_reg),
        .I1(sda_clean),
        .O(msms_rst_i_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    msms_rst_i_i_3
       (.I0(scl_state[1]),
        .I1(scl_state[0]),
        .I2(scl_state[2]),
        .O(msms_rst_i_i_3_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    msms_rst_i_i_4
       (.I0(scl_rising_edge),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(arb_lost0));
  FDRE msms_rst_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_rst_i_i_1_n_0),
        .Q(msms_rst_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    new_rcv_dta_i_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(scl_falling_edge),
        .I2(Ro_prev),
        .O(new_rcv_dta_i_i_1_n_0));
  FDRE new_rcv_dta_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_rcv_dta_i_i_1_n_0),
        .Q(New_rcv_dta),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    rdCntrFrmTxFifo_i_1
       (.I0(earlyAckHdr),
        .I1(Tx_data_exists),
        .I2(callingReadAccess),
        .O(rdCntrFrmTxFifo0));
  LUT6 #(
    .INIT(64'h222F2F2F22202020)) 
    rdy_new_xmt_i_i_1
       (.I0(shift_reg_ld_d1),
        .I1(shift_reg_ld),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(rdy_new_xmt_i),
        .O(rdy_new_xmt_i_i_1_n_0));
  FDRE rdy_new_xmt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i_i_1_n_0),
        .Q(rdy_new_xmt_i),
        .R(SR));
  FDRE ro_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(ro_prev_d1),
        .R(SR));
  FDRE rsta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rsta_d1),
        .R(SR));
  FDRE rsta_tx_under_prev_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cr_i_reg[7] ),
        .Q(rsta_tx_under_prev_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005417)) 
    scl_cout_reg_i_1
       (.I0(scl_state[3]),
        .I1(scl_state[0]),
        .I2(scl_state[1]),
        .I3(scl_state[2]),
        .I4(Ro_prev),
        .O(scl_cout_reg_i_1_n_0));
  FDSE scl_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_cout_reg_i_1_n_0),
        .Q(scl_cout_reg),
        .S(SR));
  FDRE scl_f_edg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_falling_edge),
        .Q(scl_f_edg_d1),
        .R(SR));
  FDRE scl_f_edg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d1),
        .Q(scl_f_edg_d2),
        .R(SR));
  FDRE scl_f_edg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d2),
        .Q(scl_f_edg_d3),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    scl_falling_edge_i_1
       (.I0(scl_rin_d1),
        .I1(scl_clean),
        .O(scl_falling_edge_i_1_n_0));
  FDRE scl_falling_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_falling_edge_i_1_n_0),
        .Q(scl_falling_edge),
        .R(SR));
  FDRE scl_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_clean),
        .Q(scl_rin_d1),
        .R(1'b0));
  FDRE scl_rising_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(scl_rising_edge),
        .R(SR));
  LUT4 #(
    .INIT(16'h0010)) 
    scl_t_INST_0
       (.I0(Ro_prev),
        .I1(sda_setup_reg_n_0),
        .I2(scl_cout_reg),
        .I3(rsta_tx_under_prev_reg_0),
        .O(scl_t));
  LUT6 #(
    .INIT(64'hABFBABFBABFBABAB)) 
    sda_cout_reg_i_3
       (.I0(scl_state[1]),
        .I1(scl_state[0]),
        .I2(scl_state[2]),
        .I3(sda_cout1),
        .I4(Q[3]),
        .I5(\LEVEL_1_GEN.master_sda_reg_n_0 ),
        .O(sda_cout_reg_i_3_n_0));
  FDSE sda_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(CLKCNT_n_7),
        .Q(sda_cout_reg),
        .S(SR));
  FDRE sda_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_clean),
        .Q(sda_rin_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sda_sample_i_1
       (.I0(sda_clean),
        .I1(scl_rising_edge),
        .I2(sda_sample),
        .O(sda_sample_i_1_n_0));
  FDRE sda_sample_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_sample_i_1_n_0),
        .Q(sda_sample),
        .R(SR));
  FDRE sda_setup_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SETUP_CNT_n_1),
        .Q(sda_setup_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h55455040)) 
    sda_t_INST_0
       (.I0(stop_scl_reg),
        .I1(sda_cout_reg),
        .I2(master_slave),
        .I3(arb_lost),
        .I4(slave_sda_reg_n_0),
        .O(sda_t));
  LUT4 #(
    .INIT(16'hFF80)) 
    shift_reg_en_i_1
       (.I0(master_slave),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(scl_rising_edge),
        .I3(shift_reg_en_i_2_n_0),
        .O(shift_reg_en0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    shift_reg_en_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(scl_rising_edge),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(scl_f_edg_d2),
        .I4(detect_start),
        .O(shift_reg_en_i_2_n_0));
  FDRE shift_reg_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_en0),
        .Q(shift_reg_en),
        .R(SR));
  FDRE shift_reg_ld_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld),
        .Q(shift_reg_ld_d1),
        .R(SR));
  FDRE shift_reg_ld_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld0),
        .Q(shift_reg_ld),
        .R(SR));
  FDSE slave_sda_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_4),
        .Q(slave_sda_reg_n_0),
        .S(SR));
  LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
    sm_stop_i_1
       (.I0(sm_stop_reg_n_0),
        .I1(state1),
        .I2(sm_stop),
        .I3(master_slave),
        .I4(Q[0]),
        .I5(detect_stop_reg_n_0),
        .O(sm_stop_i_1_n_0));
  LUT5 #(
    .INIT(32'h40404000)) 
    sm_stop_i_2
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(sda_sample),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(sm_stop));
  FDRE sm_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sm_stop_i_1_n_0),
        .Q(sm_stop_reg_n_0),
        .R(1'b0));
  FDRE srw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2CHEADER_REG_n_8),
        .Q(\sr_i_reg[4] [1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001110)) 
    stop_scl_reg_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(gen_stop_reg_n_0),
        .I3(sm_stop_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_cout1));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    stop_scl_reg_i_4
       (.I0(Q[3]),
        .I1(stop_scl_reg),
        .I2(arb_lost),
        .O(stop_scl_reg_i_4_n_0));
  FDRE stop_scl_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(CLKCNT_n_6),
        .Q(stop_scl_reg),
        .R(SR));
  FDRE tx_under_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(tx_under_prev_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA0020AAAA0000)) 
    tx_under_prev_i_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sr_i),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(tx_under_prev_i0),
        .I5(Tx_under_prev),
        .O(tx_under_prev_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h4100000000000000)) 
    tx_under_prev_i_i_2
       (.I0(gen_stop_reg_n_0),
        .I1(Aas),
        .I2(\sr_i_reg[4] [1]),
        .I3(tx_under_prev_i_i_3_n_0),
        .I4(scl_falling_edge),
        .I5(sr_i),
        .O(tx_under_prev_i0));
  LUT2 #(
    .INIT(4'hE)) 
    tx_under_prev_i_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(tx_under_prev_i_i_3_n_0));
  FDRE tx_under_prev_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_under_prev_i_i_1_n_0),
        .Q(Tx_under_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE200E2000000E200)) 
    txer_edge_i_1
       (.I0(D[2]),
        .I1(txer_i),
        .I2(sda_sample),
        .I3(Q[0]),
        .I4(scl_f_edg_d2),
        .I5(scl_falling_edge),
        .O(txer_edge_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    txer_edge_i_2
       (.I0(scl_falling_edge),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(txer_i));
  FDRE txer_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txer_edge_i_1_n_0),
        .Q(D[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    txer_i_i_1
       (.I0(sda_sample),
        .I1(scl_falling_edge),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(txer_i_reg_n_0),
        .O(txer_i_i_1_n_0));
  FDRE txer_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txer_i_i_1_n_0),
        .Q(txer_i_reg_n_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module MIPSfpga_system_axi_iic_0_0_interrupt_control
   (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ,
    ipif_glbl_irpt_enable_reg,
    Q,
    iic2intc_irpt,
    \RESET_FLOPS[3].RST_FLOPS ,
    irpt_wrack,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    Bus_RNW_reg_reg,
    p_27_in,
    s_axi_wdata,
    IIC2Bus_IntrEvent,
    E);
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ;
  output ipif_glbl_irpt_enable_reg;
  output [7:0]Q;
  output iic2intc_irpt;
  input \RESET_FLOPS[3].RST_FLOPS ;
  input irpt_wrack;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input Bus_RNW_reg_reg;
  input p_27_in;
  input [7:0]s_axi_wdata;
  input [0:7]IIC2Bus_IntrEvent;
  input [0:0]E;

  wire Bus_RNW_reg_reg;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire [7:0]Q;
  wire \RESET_FLOPS[3].RST_FLOPS ;
  wire iic2intc_irpt;
  wire iic2intc_irpt_INST_0_i_1_n_0;
  wire iic2intc_irpt_INST_0_i_2_n_0;
  wire iic2intc_irpt_INST_0_i_3_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[0]),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I5(IIC2Bus_IntrEvent[0]),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in17_in),
        .I5(IIC2Bus_IntrEvent[1]),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in17_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[2]),
        .I4(p_1_in14_in),
        .I5(IIC2Bus_IntrEvent[2]),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in14_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[3]),
        .I4(p_1_in11_in),
        .I5(IIC2Bus_IntrEvent[3]),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in11_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[4]),
        .I4(p_1_in8_in),
        .I5(IIC2Bus_IntrEvent[4]),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in8_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[5]),
        .I4(p_1_in5_in),
        .I5(IIC2Bus_IntrEvent[5]),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ),
        .Q(p_1_in5_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[6]),
        .I4(p_1_in2_in),
        .I5(IIC2Bus_IntrEvent[6]),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg),
        .I2(p_27_in),
        .I3(s_axi_wdata[7]),
        .I4(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ),
        .I5(IIC2Bus_IntrEvent[7]),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    iic2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(iic2intc_irpt_INST_0_i_1_n_0),
        .I2(iic2intc_irpt_INST_0_i_2_n_0),
        .I3(iic2intc_irpt_INST_0_i_3_n_0),
        .O(iic2intc_irpt));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    iic2intc_irpt_INST_0_i_1
       (.I0(Q[3]),
        .I1(p_1_in11_in),
        .I2(p_1_in5_in),
        .I3(Q[5]),
        .I4(p_1_in8_in),
        .I5(Q[4]),
        .O(iic2intc_irpt_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    iic2intc_irpt_INST_0_i_2
       (.I0(Q[6]),
        .I1(p_1_in2_in),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ),
        .I5(Q[7]),
        .O(iic2intc_irpt_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    iic2intc_irpt_INST_0_i_3
       (.I0(Q[2]),
        .I1(p_1_in14_in),
        .I2(Q[1]),
        .I3(p_1_in17_in),
        .O(iic2intc_irpt_INST_0_i_3_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
endmodule

(* ORIG_REF_NAME = "reg_interface" *) 
module MIPSfpga_system_axi_iic_0_0_reg_interface
   (IIC2Bus_IntrEvent,
    Q,
    D,
    Tx_fifo_wr,
    Tx_fifo_rd,
    Tx_fifo_rst,
    new_rcv_dta_d1,
    Rc_fifo_wr,
    Rc_fifo_rd,
    dtre_d1_reg,
    gpo,
    Msms_set,
    callingReadAccess_reg,
    \cr_i_reg[5]_0 ,
    slave_sda_reg,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[8]_0 ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[8]_1 ,
    S,
    \s_axi_rdata_i_reg[8]_2 ,
    sda_cout_reg_reg,
    \s_axi_rdata_i_reg[8]_3 ,
    \FSM_sequential_scl_state_reg[0] ,
    \s_axi_rdata_i_reg[8]_4 ,
    \FSM_sequential_scl_state_reg[2] ,
    \FSM_sequential_scl_state_reg[0]_0 ,
    \FSM_sequential_scl_state_reg[0]_1 ,
    \FSM_sequential_scl_state_reg[3] ,
    \s_axi_rdata_i_reg[8]_5 ,
    sda_setup_reg,
    \s_axi_rdata_i_reg[8]_6 ,
    \cr_i_reg[5]_1 ,
    callingReadAccess_reg_0,
    \Addr_Counters[0].FDRE_I ,
    \Addr_Counters[0].FDRE_I_0 ,
    \FSM_sequential_scl_state_reg[1] ,
    Data_Exists_DFF,
    ctrl_fifo_wr_i,
    Data_Exists_DFF_0,
    txFifoRd,
    SR,
    Data_Exists_DFF_1,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    \s_axi_rdata_i_reg[1]_0 ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[4]_0 ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[7]_0 ,
    \s_axi_rdata_i_reg[8]_7 ,
    \s_axi_rdata_i_reg[8]_8 ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[9]_0 ,
    rsta_tx_under_prev_reg,
    firstDynStartSeen_reg,
    \RESET_FLOPS[3].RST_FLOPS ,
    \Addr_Counters[3].FDRE_I ,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ,
    rdy_new_xmt_i,
    New_rcv_dta,
    new_rcv_dta_i_reg,
    Bus2IIC_RdCE,
    Data_Exists_DFF_2,
    Aas,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ,
    Rc_Data_Exists,
    Rc_addr,
    s_axi_wdata,
    \bus2ip_addr_i_reg[6] ,
    \q_int_reg[0] ,
    \q_int_reg[0]_0 ,
    Tx_fifo_rd_d,
    Tx_fifo_wr_d,
    Rc_fifo_wr_d,
    Rc_fifo_rd_d,
    arb_lost,
    buffer_Empty,
    rdCntrFrmTxFifo,
    Data_Exists_DFF_3,
    buffer_Empty_0,
    Tx_data_exists,
    buffer_Empty_1,
    Tx_fifo_data,
    Data_Exists_DFF_4,
    dtre_d1,
    rsta_d1,
    rsta_tx_under_prev_reg_0,
    firstDynStartSeen,
    p_3_in,
    E,
    firstDynStartSeen_reg_0,
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ,
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ,
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ,
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ,
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ,
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ,
    \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ,
    \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ,
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ,
    al_i_reg);
  output [0:7]IIC2Bus_IntrEvent;
  output [5:0]Q;
  output [0:0]D;
  output Tx_fifo_wr;
  output Tx_fifo_rd;
  output Tx_fifo_rst;
  output new_rcv_dta_d1;
  output Rc_fifo_wr;
  output Rc_fifo_rd;
  output [0:0]dtre_d1_reg;
  output [0:0]gpo;
  output Msms_set;
  output callingReadAccess_reg;
  output \cr_i_reg[5]_0 ;
  output [6:0]slave_sda_reg;
  output [8:0]\s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[1] ;
  output [8:0]\s_axi_rdata_i_reg[8]_0 ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[3] ;
  output [8:0]\s_axi_rdata_i_reg[8]_1 ;
  output [0:0]S;
  output [8:0]\s_axi_rdata_i_reg[8]_2 ;
  output [0:0]sda_cout_reg_reg;
  output [8:0]\s_axi_rdata_i_reg[8]_3 ;
  output [0:0]\FSM_sequential_scl_state_reg[0] ;
  output [8:0]\s_axi_rdata_i_reg[8]_4 ;
  output [0:0]\FSM_sequential_scl_state_reg[2] ;
  output [0:0]\FSM_sequential_scl_state_reg[0]_0 ;
  output [0:0]\FSM_sequential_scl_state_reg[0]_1 ;
  output [0:0]\FSM_sequential_scl_state_reg[3] ;
  output [8:0]\s_axi_rdata_i_reg[8]_5 ;
  output [0:0]sda_setup_reg;
  output [8:0]\s_axi_rdata_i_reg[8]_6 ;
  output \cr_i_reg[5]_1 ;
  output callingReadAccess_reg_0;
  output \Addr_Counters[0].FDRE_I ;
  output \Addr_Counters[0].FDRE_I_0 ;
  output \FSM_sequential_scl_state_reg[1] ;
  output Data_Exists_DFF;
  output ctrl_fifo_wr_i;
  output Data_Exists_DFF_0;
  output txFifoRd;
  output [0:0]SR;
  output Data_Exists_DFF_1;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[0]_0 ;
  output \s_axi_rdata_i_reg[0]_1 ;
  output \s_axi_rdata_i_reg[1]_0 ;
  output \s_axi_rdata_i_reg[2]_0 ;
  output \s_axi_rdata_i_reg[3]_0 ;
  output \s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[4]_0 ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[5]_0 ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[6]_0 ;
  output \s_axi_rdata_i_reg[7] ;
  output \s_axi_rdata_i_reg[7]_0 ;
  output \s_axi_rdata_i_reg[8]_7 ;
  output \s_axi_rdata_i_reg[8]_8 ;
  output \s_axi_rdata_i_reg[9] ;
  output \s_axi_rdata_i_reg[9]_0 ;
  output rsta_tx_under_prev_reg;
  output firstDynStartSeen_reg;
  input \RESET_FLOPS[3].RST_FLOPS ;
  input \Addr_Counters[3].FDRE_I ;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  input rdy_new_xmt_i;
  input New_rcv_dta;
  input new_rcv_dta_i_reg;
  input [0:0]Bus2IIC_RdCE;
  input Data_Exists_DFF_2;
  input Aas;
  input \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  input Rc_Data_Exists;
  input [0:3]Rc_addr;
  input [9:0]s_axi_wdata;
  input [3:0]\bus2ip_addr_i_reg[6] ;
  input [0:0]\q_int_reg[0] ;
  input [0:0]\q_int_reg[0]_0 ;
  input Tx_fifo_rd_d;
  input Tx_fifo_wr_d;
  input Rc_fifo_wr_d;
  input Rc_fifo_rd_d;
  input arb_lost;
  input buffer_Empty;
  input rdCntrFrmTxFifo;
  input Data_Exists_DFF_3;
  input buffer_Empty_0;
  input Tx_data_exists;
  input buffer_Empty_1;
  input [3:0]Tx_fifo_data;
  input [5:0]Data_Exists_DFF_4;
  input dtre_d1;
  input rsta_d1;
  input rsta_tx_under_prev_reg_0;
  input firstDynStartSeen;
  input p_3_in;
  input [0:0]E;
  input [2:0]firstDynStartSeen_reg_0;
  input [0:0]\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ;
  input [4:0]al_i_reg;

  wire Aas;
  wire \Addr_Counters[0].FDRE_I ;
  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I ;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:6]Cr;
  wire [0:0]D;
  wire Data_Exists_DFF;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_1;
  wire Data_Exists_DFF_2;
  wire Data_Exists_DFF_3;
  wire [5:0]Data_Exists_DFF_4;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_scl_state_reg[0] ;
  wire [0:0]\FSM_sequential_scl_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_scl_state_reg[0]_1 ;
  wire \FSM_sequential_scl_state_reg[1] ;
  wire [0:0]\FSM_sequential_scl_state_reg[2] ;
  wire [0:0]\FSM_sequential_scl_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire [5:0]Q;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ;
  wire \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS ;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire [0:0]S;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [3:0]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire [4:0]al_i_reg;
  wire arb_lost;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire [3:0]\bus2ip_addr_i_reg[6] ;
  wire callingReadAccess_reg;
  wire callingReadAccess_reg_0;
  wire \cr_i_reg[5]_0 ;
  wire \cr_i_reg[5]_1 ;
  wire ctrl_fifo_wr_i;
  wire dtre_d1;
  wire [0:0]dtre_d1_reg;
  wire firstDynStartSeen;
  wire firstDynStartSeen_reg;
  wire [2:0]firstDynStartSeen_reg_0;
  wire [0:0]gpo;
  wire msms_d1;
  wire msms_set_i_i_1_n_0;
  wire new_rcv_dta_d1;
  wire new_rcv_dta_i_reg;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_1_in6_in;
  wire p_3_in;
  wire [0:0]\q_int_reg[0] ;
  wire [0:0]\q_int_reg[0]_0 ;
  wire rdCntrFrmTxFifo;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire rsta_tx_under_prev_reg;
  wire rsta_tx_under_prev_reg_0;
  wire s_axi_aclk;
  wire \s_axi_rdata_i[1]_i_10_n_0 ;
  wire \s_axi_rdata_i[1]_i_8_n_0 ;
  wire \s_axi_rdata_i[1]_i_9_n_0 ;
  wire \s_axi_rdata_i[2]_i_10_n_0 ;
  wire \s_axi_rdata_i[2]_i_8_n_0 ;
  wire \s_axi_rdata_i[2]_i_9_n_0 ;
  wire \s_axi_rdata_i[3]_i_10_n_0 ;
  wire \s_axi_rdata_i[3]_i_8_n_0 ;
  wire \s_axi_rdata_i[3]_i_9_n_0 ;
  wire \s_axi_rdata_i[4]_i_10_n_0 ;
  wire \s_axi_rdata_i[5]_i_10_n_0 ;
  wire \s_axi_rdata_i[6]_i_10_n_0 ;
  wire \s_axi_rdata_i[7]_i_10_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[7]_0 ;
  wire [8:0]\s_axi_rdata_i_reg[8] ;
  wire [8:0]\s_axi_rdata_i_reg[8]_0 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_1 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_2 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_3 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_4 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_5 ;
  wire [8:0]\s_axi_rdata_i_reg[8]_6 ;
  wire \s_axi_rdata_i_reg[8]_7 ;
  wire \s_axi_rdata_i_reg[8]_8 ;
  wire \s_axi_rdata_i_reg[9] ;
  wire \s_axi_rdata_i_reg[9]_0 ;
  wire [9:0]s_axi_wdata;
  wire [0:0]sda_cout_reg_reg;
  wire [0:0]sda_setup_reg;
  wire [6:0]slave_sda_reg;
  wire [1:7]sr_i;
  wire [9:9]timing_param_tbuf_i;
  wire [9:9]timing_param_thddat_i;
  wire [9:9]timing_param_thdsta_i;
  wire [9:9]timing_param_thigh_i;
  wire [9:9]timing_param_tlow_i;
  wire [9:9]timing_param_tsudat_i;
  wire [9:9]timing_param_tsusta_i;
  wire [9:9]timing_param_tsusto_i;
  wire txFifoRd;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .O(callingReadAccess_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_4__0 
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .O(\Addr_Counters[0].FDRE_I ));
  LUT2 #(
    .INIT(4'h2)) 
    \Addr_Counters[0].MUXCY_L_I_i_5 
       (.I0(Rc_fifo_rd),
        .I1(Rc_fifo_rd_d),
        .O(\Addr_Counters[0].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'hBFBFBBBF88888888)) 
    Data_Exists_DFF_i_1
       (.I0(ctrl_fifo_wr_i),
        .I1(buffer_Empty),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_rd),
        .I4(Tx_fifo_rd_d),
        .I5(Data_Exists_DFF_3),
        .O(Data_Exists_DFF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h2FFF2020)) 
    Data_Exists_DFF_i_1__0
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .I2(buffer_Empty_0),
        .I3(txFifoRd),
        .I4(Tx_data_exists),
        .O(Data_Exists_DFF_0));
  LUT6 #(
    .INIT(64'hFF2FFFFF20202020)) 
    Data_Exists_DFF_i_1__1
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .I2(buffer_Empty_1),
        .I3(Rc_fifo_rd_d),
        .I4(Rc_fifo_rd),
        .I5(Rc_Data_Exists),
        .O(Data_Exists_DFF_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    Data_Exists_DFF_i_2__1
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_fifo_rst),
        .I3(\RESET_FLOPS[3].RST_FLOPS ),
        .O(ctrl_fifo_wr_i));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    Data_Exists_DFF_i_3
       (.I0(Tx_fifo_rd_d),
        .I1(Tx_fifo_rd),
        .I2(rdCntrFrmTxFifo),
        .O(txFifoRd));
  FDRE \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Addr_Counters[3].FDRE_I ),
        .Q(IIC2Bus_IntrEvent[7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \FIFO_GEN_DTR.Tx_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i),
        .Q(Tx_fifo_rd),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \FIFO_GEN_DTR.Tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr[6]),
        .Q(Tx_fifo_rst),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \FIFO_GEN_DTR.Tx_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ),
        .Q(Tx_fifo_wr),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT3 #(
    .INIT(8'h02)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(Tx_fifo_rst),
        .I2(\RESET_FLOPS[3].RST_FLOPS ),
        .O(\cr_i_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(Tx_fifo_rst),
        .I2(\RESET_FLOPS[3].RST_FLOPS ),
        .O(callingReadAccess_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[0]_i_11 
       (.I0(timing_param_thdsta_i),
        .I1(\q_int_reg[0] ),
        .O(\FSM_sequential_scl_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[0]_i_7 
       (.I0(timing_param_tlow_i),
        .I1(\q_int_reg[0] ),
        .O(\FSM_sequential_scl_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_scl_state[1]_i_5 
       (.I0(Q[4]),
        .I1(arb_lost),
        .O(\FSM_sequential_scl_state_reg[1] ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[2]_i_5 
       (.I0(timing_param_thddat_i),
        .I1(\q_int_reg[0] ),
        .O(\FSM_sequential_scl_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_scl_state[3]_i_1 
       (.I0(Q[0]),
        .O(SR));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[3]_i_12 
       (.I0(timing_param_tsusta_i),
        .I1(\q_int_reg[0] ),
        .O(\FSM_sequential_scl_state_reg[0] ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[3]_i_16 
       (.I0(timing_param_thigh_i),
        .I1(\q_int_reg[0] ),
        .O(S));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_scl_state[3]_i_8 
       (.I0(timing_param_tbuf_i),
        .I1(\q_int_reg[0] ),
        .O(\FSM_sequential_scl_state_reg[3] ));
  FDRE \GPO_GEN.gpo_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ),
        .Q(gpo),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[4]),
        .Q(IIC2Bus_IntrEvent[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[3]),
        .Q(IIC2Bus_IntrEvent[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[2]),
        .Q(IIC2Bus_IntrEvent[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(IIC2Bus_IntrEvent[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[1]),
        .Q(IIC2Bus_IntrEvent[4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Aas),
        .Q(IIC2Bus_IntrEvent[5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \IIC2Bus_IntrEvent_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(al_i_reg[0]),
        .Q(IIC2Bus_IntrEvent[6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IIC_RdCE),
        .Q(Rc_fifo_rd),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.Rc_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_rcv_dta_i_reg),
        .Q(Rc_fifo_wr),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ),
        .D(s_axi_wdata[3]),
        .Q(p_1_in6_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ),
        .D(s_axi_wdata[2]),
        .Q(p_1_in4_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ),
        .D(s_axi_wdata[1]),
        .Q(p_1_in),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] ),
        .D(s_axi_wdata[0]),
        .Q(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_1 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ),
        .I1(Msms_set),
        .I2(Rc_Data_Exists),
        .I3(\RESET_FLOPS[3].RST_FLOPS ),
        .I4(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_2 
       (.I0(p_1_in4_in),
        .I1(Rc_addr[2]),
        .I2(p_1_in),
        .I3(Rc_addr[1]),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \RD_FIFO_CNTRL.ro_prev_i_i_3 
       (.I0(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .I1(Rc_addr[0]),
        .I2(p_1_in6_in),
        .I3(Rc_addr[3]),
        .O(\RD_FIFO_CNTRL.ro_prev_i_i_3_n_0 ));
  FDRE \RD_FIFO_CNTRL.ro_prev_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RD_FIFO_CNTRL.ro_prev_i_i_1_n_0 ),
        .Q(D),
        .R(1'b0));
  FDRE \adr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[7]),
        .Q(slave_sda_reg[6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[6]),
        .Q(slave_sda_reg[5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[5]),
        .Q(slave_sda_reg[4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[4]),
        .Q(slave_sda_reg[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[3]),
        .Q(slave_sda_reg[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[2]),
        .Q(slave_sda_reg[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \adr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] ),
        .D(s_axi_wdata[1]),
        .Q(slave_sda_reg[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cr_i[5]_i_4 
       (.I0(Tx_fifo_rd),
        .I1(Tx_fifo_rd_d),
        .O(\cr_i_reg[5]_1 ));
  FDRE \cr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Cr[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(firstDynStartSeen_reg_0[2]),
        .Q(Q[4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(firstDynStartSeen_reg_0[1]),
        .Q(Q[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(firstDynStartSeen_reg_0[0]),
        .Q(Q[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Cr[6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \cr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT4 #(
    .INIT(16'h00E0)) 
    firstDynStartSeen_i_1
       (.I0(firstDynStartSeen),
        .I1(p_3_in),
        .I2(Q[1]),
        .I3(Tx_fifo_rst),
        .O(firstDynStartSeen_reg));
  FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(msms_d1),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'h3032003000220000)) 
    msms_set_i_i_1
       (.I0(D),
        .I1(\RESET_FLOPS[3].RST_FLOPS ),
        .I2(Data_Exists_DFF_4[1]),
        .I3(Q[1]),
        .I4(msms_d1),
        .I5(Msms_set),
        .O(msms_set_i_i_1_n_0));
  FDRE msms_set_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_set_i_i_1_n_0),
        .Q(Msms_set),
        .R(1'b0));
  FDRE new_rcv_dta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(New_rcv_dta),
        .Q(new_rcv_dta_d1),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  LUT6 #(
    .INIT(64'hA2A2A2A200A00000)) 
    rsta_tx_under_prev_i_1
       (.I0(Q[0]),
        .I1(dtre_d1),
        .I2(dtre_d1_reg),
        .I3(rsta_d1),
        .I4(Q[4]),
        .I5(rsta_tx_under_prev_reg_0),
        .O(rsta_tx_under_prev_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[0]_i_10 
       (.I0(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7] ),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8]_1 [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i_reg[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[0]_i_7 
       (.I0(gpo),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8]_0 [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(sr_i[7]),
        .O(\s_axi_rdata_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[0]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_5 [0]),
        .I1(Rc_addr[0]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\s_axi_rdata_i_reg[8]_4 [0]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(Tx_fifo_data[0]),
        .O(\s_axi_rdata_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[1]_i_10 
       (.I0(p_1_in),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8]_1 [1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(Cr[6]),
        .O(\s_axi_rdata_i[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \s_axi_rdata_i[1]_i_6 
       (.I0(\s_axi_rdata_i[1]_i_8_n_0 ),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\s_axi_rdata_i[1]_i_9_n_0 ),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[1]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[1]_i_7 
       (.I0(IIC2Bus_IntrEvent[5]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_0 [1]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[1]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_5 [1]),
        .I1(Rc_addr[1]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\s_axi_rdata_i_reg[8]_4 [1]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(Tx_fifo_data[1]),
        .O(\s_axi_rdata_i[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[1]_i_9 
       (.I0(slave_sda_reg[0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[2]_i_10 
       (.I0(p_1_in4_in),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8]_1 [2]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(Q[1]),
        .O(\s_axi_rdata_i[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \s_axi_rdata_i[2]_i_6 
       (.I0(\s_axi_rdata_i[2]_i_8_n_0 ),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\s_axi_rdata_i[2]_i_9_n_0 ),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[2]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[2]_i_7 
       (.I0(sr_i[5]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_0 [2]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[2]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_5 [2]),
        .I1(Rc_addr[2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\s_axi_rdata_i_reg[8]_4 [2]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(Tx_fifo_data[2]),
        .O(\s_axi_rdata_i[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[2]_i_9 
       (.I0(slave_sda_reg[1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[3]_i_10 
       (.I0(p_1_in6_in),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8]_1 [3]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(Q[2]),
        .O(\s_axi_rdata_i[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \s_axi_rdata_i[3]_i_6 
       (.I0(\s_axi_rdata_i[3]_i_8_n_0 ),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\s_axi_rdata_i[3]_i_9_n_0 ),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[3]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[3]_i_7 
       (.I0(sr_i[4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_0 [3]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[3]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_5 [3]),
        .I1(Rc_addr[3]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\s_axi_rdata_i_reg[8]_4 [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .I5(Tx_fifo_data[3]),
        .O(\s_axi_rdata_i[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[3]_i_9 
       (.I0(slave_sda_reg[2]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .O(\s_axi_rdata_i[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[4]_i_10 
       (.I0(Q[3]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_1 [4]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[4]_i_6 
       (.I0(slave_sda_reg[3]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[4]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[4] ));
  LUT6 #(
    .INIT(64'h0088008833300030)) 
    \s_axi_rdata_i[4]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_6 [4]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(sr_i[3]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\s_axi_rdata_i_reg[8]_0 [4]),
        .I5(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[5]_i_10 
       (.I0(Q[4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_1 [5]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[5]_i_6 
       (.I0(slave_sda_reg[4]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [5]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[5]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[5] ));
  LUT6 #(
    .INIT(64'h0088008833300030)) 
    \s_axi_rdata_i[5]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_6 [5]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(sr_i[2]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\s_axi_rdata_i_reg[8]_0 [5]),
        .I5(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[6]_i_10 
       (.I0(Q[5]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_1 [6]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[6]_i_6 
       (.I0(slave_sda_reg[5]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[6]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[6] ));
  LUT6 #(
    .INIT(64'h0088008833300030)) 
    \s_axi_rdata_i[6]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_6 [6]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(sr_i[1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\s_axi_rdata_i_reg[8]_0 [6]),
        .I5(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_rdata_i[7]_i_10 
       (.I0(Cr[0]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\s_axi_rdata_i_reg[8]_1 [7]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[7]_i_6 
       (.I0(slave_sda_reg[6]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\s_axi_rdata_i_reg[8] [7]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i[7]_i_10_n_0 ),
        .O(\s_axi_rdata_i_reg[7] ));
  LUT6 #(
    .INIT(64'h0088008833300030)) 
    \s_axi_rdata_i[7]_i_8 
       (.I0(\s_axi_rdata_i_reg[8]_6 [7]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(dtre_d1_reg),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\s_axi_rdata_i_reg[8]_0 [7]),
        .I5(\bus2ip_addr_i_reg[6] [2]),
        .O(\s_axi_rdata_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_2 
       (.I0(\s_axi_rdata_i_reg[8]_5 [8]),
        .I1(\s_axi_rdata_i_reg[8]_4 [8]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\s_axi_rdata_i_reg[8] [8]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i_reg[8]_1 [8]),
        .O(\s_axi_rdata_i_reg[8]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[8]_i_3 
       (.I0(\s_axi_rdata_i_reg[8]_2 [8]),
        .I1(\s_axi_rdata_i_reg[8]_3 [8]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\s_axi_rdata_i_reg[8]_6 [8]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(\s_axi_rdata_i_reg[8]_0 [8]),
        .O(\s_axi_rdata_i_reg[8]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_3 
       (.I0(timing_param_tbuf_i),
        .I1(timing_param_tsusta_i),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(timing_param_thdsta_i),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(timing_param_tlow_i),
        .O(\s_axi_rdata_i_reg[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata_i[9]_i_4 
       (.I0(timing_param_thigh_i),
        .I1(timing_param_tsusto_i),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(timing_param_tsudat_i),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .I5(timing_param_thddat_i),
        .O(\s_axi_rdata_i_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    sda_cout_reg_i_5
       (.I0(timing_param_tsusto_i),
        .I1(\q_int_reg[0] ),
        .O(sda_cout_reg_reg));
  LUT2 #(
    .INIT(4'h9)) 
    sda_setup_i_3
       (.I0(timing_param_tsudat_i),
        .I1(\q_int_reg[0]_0 ),
        .O(sda_setup_reg));
  FDRE \sr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_2),
        .Q(dtre_d1_reg),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[5]),
        .Q(sr_i[1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[4]),
        .Q(sr_i[2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[3]),
        .Q(sr_i[3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[2]),
        .Q(sr_i[4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[1]),
        .Q(sr_i[5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \sr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Data_Exists_DFF_4[0]),
        .Q(sr_i[7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tbuf_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_5 [0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tbuf_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_5 [1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_5 [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tbuf_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_5 [3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_5 [4]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_5 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_5 [6]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_5 [7]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tbuf_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_5 [8]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tbuf_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tbuf_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thddat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_0 [0]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_0 [1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_0 [2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_0 [3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_0 [4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_0 [5]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_0 [6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_0 [7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_0 [8]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thddat_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thddat_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thdsta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8] [0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8] [1]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8] [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8] [3]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thdsta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8] [4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8] [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thdsta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8] [6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8] [7]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thdsta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8] [8]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thdsta_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thdsta_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_2 [0]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thigh_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_2 [1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_2 [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_2 [3]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thigh_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_2 [4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_2 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_2 [6]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_2 [7]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_thigh_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_2 [8]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_thigh_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thigh_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_1 [0]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tlow_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_1 [1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_1 [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_1 [3]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tlow_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_1 [4]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_1 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_1 [6]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_1 [7]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tlow_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_1 [8]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tlow_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tlow_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsudat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_6 [0]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsudat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_6 [1]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsudat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_6 [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsudat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_6 [3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsudat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_6 [4]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsudat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_6 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsudat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_6 [6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsudat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_6 [7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsudat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_6 [8]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsudat_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsudat_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_4 [0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_4 [1]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_4 [2]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_4 [3]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_4 [4]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_4 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_4 [6]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_4 [7]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_4 [8]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusta_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsusta_i),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusto_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_rdata_i_reg[8]_3 [0]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusto_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_rdata_i_reg[8]_3 [1]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_rdata_i_reg[8]_3 [2]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusto_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_rdata_i_reg[8]_3 [3]),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_rdata_i_reg[8]_3 [4]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_rdata_i_reg[8]_3 [5]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_rdata_i_reg[8]_3 [6]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_rdata_i_reg[8]_3 [7]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDSE \timing_param_tsusto_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_rdata_i_reg[8]_3 [8]),
        .S(\RESET_FLOPS[3].RST_FLOPS ));
  FDRE \timing_param_tsusto_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] ),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsusto_i),
        .R(\RESET_FLOPS[3].RST_FLOPS ));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module MIPSfpga_system_axi_iic_0_0_shift8
   (\LEVEL_1_GEN.master_sda_reg ,
    Q,
    shift_reg_ld_reg,
    shift_reg_en,
    out,
    tx_under_prev_i_reg,
    txak,
    Tx_fifo_data,
    SR,
    s_axi_aclk,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 );
  output \LEVEL_1_GEN.master_sda_reg ;
  output [7:0]Q;
  input shift_reg_ld_reg;
  input shift_reg_en;
  input [2:0]out;
  input tx_under_prev_i_reg;
  input txak;
  input [6:0]Tx_fifo_data;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \LEVEL_1_GEN.master_sda_reg ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [6:0]Tx_fifo_data;
  wire \data_int[1]_i_1_n_0 ;
  wire \data_int[2]_i_1_n_0 ;
  wire \data_int[3]_i_1_n_0 ;
  wire \data_int[4]_i_1_n_0 ;
  wire \data_int[5]_i_1_n_0 ;
  wire \data_int[6]_i_1_n_0 ;
  wire \data_int[7]_i_1_n_0 ;
  wire \data_int[7]_i_2_n_0 ;
  wire [2:0]out;
  wire s_axi_aclk;
  wire shift_reg_en;
  wire shift_reg_ld_reg;
  wire tx_under_prev_i_reg;
  wire txak;

  LUT6 #(
    .INIT(64'hBABBBABBBA88BABB)) 
    \LEVEL_1_GEN.master_sda_i_1 
       (.I0(Q[7]),
        .I1(out[0]),
        .I2(tx_under_prev_i_reg),
        .I3(out[1]),
        .I4(out[2]),
        .I5(txak),
        .O(\LEVEL_1_GEN.master_sda_reg ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[1]_i_1 
       (.I0(Tx_fifo_data[0]),
        .I1(Q[0]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[2]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(Q[1]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[3]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(Q[2]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[4]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(Q[3]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[5]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(Q[4]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[6]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(Q[5]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_int[7]_i_1 
       (.I0(shift_reg_ld_reg),
        .I1(shift_reg_en),
        .O(\data_int[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_int[7]_i_2 
       (.I0(Tx_fifo_data[6]),
        .I1(Q[6]),
        .I2(shift_reg_ld_reg),
        .O(\data_int[7]_i_2_n_0 ));
  FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\data_int[7]_i_1_n_0 ),
        .D(\data_int[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module MIPSfpga_system_axi_iic_0_0_shift8_1
   (D,
    slave_sda_reg,
    shift_reg_ld0,
    abgc_i_reg,
    aas_i_reg,
    srw_i_reg,
    sda_sample_reg,
    out,
    detect_start_reg,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[0] ,
    \RD_FIFO_CNTRL.ro_prev_i_reg ,
    master_slave,
    \adr_i_reg[0] ,
    Q,
    txak,
    \data_int_reg[7]_0 ,
    srw_i_reg_0,
    detect_start,
    tx_under_prev_i_reg,
    detect_stop_reg,
    aas_i_reg_0,
    arb_lost_reg,
    sda_sample,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[4] ,
    SR,
    E,
    s_axi_aclk,
    sda_clean);
  output [3:0]D;
  output slave_sda_reg;
  output shift_reg_ld0;
  output abgc_i_reg;
  output aas_i_reg;
  output srw_i_reg;
  input sda_sample_reg;
  input [6:0]out;
  input detect_start_reg;
  input \FSM_onehot_state_reg[3] ;
  input \FSM_onehot_state_reg[0] ;
  input \RD_FIFO_CNTRL.ro_prev_i_reg ;
  input master_slave;
  input [6:0]\adr_i_reg[0] ;
  input [2:0]Q;
  input txak;
  input [0:0]\data_int_reg[7]_0 ;
  input [1:0]srw_i_reg_0;
  input detect_start;
  input tx_under_prev_i_reg;
  input detect_stop_reg;
  input aas_i_reg_0;
  input arb_lost_reg;
  input sda_sample;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[4] ;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;
  input sda_clean;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[4] ;
  wire [2:0]Q;
  wire \RD_FIFO_CNTRL.ro_prev_i_reg ;
  wire [0:0]SR;
  wire aas_i_reg;
  wire aas_i_reg_0;
  wire abgc_i_i_2_n_0;
  wire abgc_i_i_3_n_0;
  wire abgc_i_reg;
  wire addr_match;
  wire [6:0]\adr_i_reg[0] ;
  wire arb_lost_reg;
  wire [0:0]\data_int_reg[7]_0 ;
  wire detect_start;
  wire detect_start_reg;
  wire detect_stop_reg;
  wire master_slave;
  wire [6:0]out;
  wire [7:0]p_0_in;
  wire s_axi_aclk;
  wire sda_clean;
  wire sda_sample;
  wire sda_sample_reg;
  wire shift_reg_ld0;
  wire shift_reg_ld_i_2_n_0;
  wire slave_sda_i_3_n_0;
  wire slave_sda_i_4_n_0;
  wire slave_sda_reg;
  wire srw_i_reg;
  wire [1:0]srw_i_reg_0;
  wire tx_under_prev_i_reg;
  wire txak;

  LUT6 #(
    .INIT(64'h00000000FFFFF8C8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(sda_sample_reg),
        .I1(out[2]),
        .I2(\FSM_onehot_state[5]_i_4_n_0 ),
        .I3(detect_start_reg),
        .I4(\FSM_onehot_state_reg[3] ),
        .I5(\FSM_onehot_state_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\RD_FIFO_CNTRL.ro_prev_i_reg ),
        .I1(out[2]),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(out[1]),
        .I4(out[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000001011110010)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(arb_lost_reg),
        .I1(sda_sample),
        .I2(addr_match),
        .I3(p_0_in[0]),
        .I4(master_slave),
        .I5(Q[1]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(arb_lost_reg),
        .I1(sda_sample),
        .I2(\FSM_onehot_state_reg[0] ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(out[2]),
        .I5(\FSM_onehot_state[4]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(out[6]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(out[5]),
        .I4(master_slave),
        .I5(addr_match),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[1]),
        .I1(master_slave),
        .I2(p_0_in[0]),
        .I3(addr_match),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h080808A8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(\FSM_onehot_state_reg[4] ),
        .I2(out[3]),
        .I3(detect_start),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(addr_match),
        .I1(master_slave),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00E00000)) 
    aas_i_i_1
       (.I0(aas_i_reg_0),
        .I1(out[2]),
        .I2(Q[0]),
        .I3(detect_stop_reg),
        .I4(addr_match),
        .O(aas_i_reg));
  LUT6 #(
    .INIT(64'h000000000000EA00)) 
    abgc_i_i_1
       (.I0(srw_i_reg_0[0]),
        .I1(abgc_i_i_2_n_0),
        .I2(abgc_i_i_3_n_0),
        .I3(Q[0]),
        .I4(detect_stop_reg),
        .I5(detect_start),
        .O(abgc_i_reg));
  LUT4 #(
    .INIT(16'h0004)) 
    abgc_i_i_2
       (.I0(p_0_in[0]),
        .I1(Q[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[7]),
        .O(abgc_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    abgc_i_i_3
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(out[2]),
        .I3(p_0_in[6]),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(abgc_i_i_3_n_0));
  FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(sda_clean),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(SR));
  FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(SR));
  FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(SR));
  FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(SR));
  FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    shift_reg_ld_i_1
       (.I0(out[6]),
        .I1(out[3]),
        .I2(detect_start),
        .I3(tx_under_prev_i_reg),
        .I4(shift_reg_ld_i_2_n_0),
        .O(shift_reg_ld0));
  LUT5 #(
    .INIT(32'hF8F8A808)) 
    shift_reg_ld_i_2
       (.I0(out[2]),
        .I1(p_0_in[0]),
        .I2(master_slave),
        .I3(Q[1]),
        .I4(out[0]),
        .O(shift_reg_ld_i_2_n_0));
  LUT6 #(
    .INIT(64'hABBBA888ABBBABBB)) 
    slave_sda_i_1
       (.I0(txak),
        .I1(out[5]),
        .I2(out[2]),
        .I3(addr_match),
        .I4(\data_int_reg[7]_0 ),
        .I5(out[4]),
        .O(slave_sda_reg));
  LUT5 #(
    .INIT(32'hEAAAAAEA)) 
    slave_sda_i_2
       (.I0(srw_i_reg_0[0]),
        .I1(slave_sda_i_3_n_0),
        .I2(slave_sda_i_4_n_0),
        .I3(\adr_i_reg[0] [6]),
        .I4(p_0_in[7]),
        .O(addr_match));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    slave_sda_i_3
       (.I0(p_0_in[1]),
        .I1(\adr_i_reg[0] [0]),
        .I2(\adr_i_reg[0] [2]),
        .I3(p_0_in[3]),
        .I4(\adr_i_reg[0] [1]),
        .I5(p_0_in[2]),
        .O(slave_sda_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    slave_sda_i_4
       (.I0(p_0_in[4]),
        .I1(\adr_i_reg[0] [3]),
        .I2(\adr_i_reg[0] [5]),
        .I3(p_0_in[6]),
        .I4(\adr_i_reg[0] [4]),
        .I5(p_0_in[5]),
        .O(slave_sda_i_4_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    srw_i_i_1
       (.I0(srw_i_reg_0[1]),
        .I1(out[2]),
        .I2(p_0_in[0]),
        .I3(Q[0]),
        .O(srw_i_reg));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module MIPSfpga_system_axi_iic_0_0_slave_attachment
   (p_18_in,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_rresp,
    \ip_irpt_enable_reg_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    Q,
    reset_trig_reg,
    sw_rst_cond_d1_reg,
    AXI_IP2Bus_WrAck2_reg,
    \timing_param_thddat_i_reg[0] ,
    \timing_param_tlow_i_reg[0] ,
    \timing_param_thigh_i_reg[0] ,
    \timing_param_tbuf_i_reg[0] ,
    \timing_param_tsudat_i_reg[0] ,
    \timing_param_thdsta_i_reg[0] ,
    \timing_param_tsusto_i_reg[0] ,
    \timing_param_tsusta_i_reg[0] ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ,
    \adr_i_reg[6] ,
    \FIFO_GEN_DTR.Tx_fifo_wr_reg ,
    E,
    \ip_irpt_enable_reg_reg[0]_0 ,
    Bus2IIC_RdCE,
    irpt_wrack,
    AXI_IP2Bus_RdAck20,
    ipif_glbl_irpt_enable_reg_reg,
    \GPO_GEN.gpo_i_reg[31] ,
    s_axi_rdata,
    AXI_Bus2IP_Reset,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    sw_rst_cond_d1,
    s_axi_wdata,
    Rc_fifo_data,
    \timing_param_tsusto_i_reg[7] ,
    \timing_param_thigh_i_reg[7] ,
    Tx_fifo_data,
    \timing_param_tsusta_i_reg[7] ,
    \timing_param_tbuf_i_reg[7] ,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    \timing_param_tbuf_i_reg[8] ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_thigh_i_reg[9] ,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \ip_irpt_enable_reg_reg[7] ,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    ipif_glbl_irpt_enable_reg,
    AXI_IP2Bus_RdAck1,
    AXI_IP2Bus_RdAck2,
    AXI_IP2Bus_WrAck1,
    AXI_IP2Bus_WrAck2,
    \timing_param_tbuf_i_reg[0]_0 ,
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ,
    \timing_param_thdsta_i_reg[0]_0 ,
    Tx_addr,
    \timing_param_tsudat_i_reg[3] ,
    \GPO_GEN.gpo_i_reg[31]_0 ,
    \bus2ip_addr_i_reg[6]_0 ,
    \IIC2Bus_IntrEvent_reg[5] ,
    \bus2ip_addr_i_reg[6]_1 ,
    \sr_i_reg[5] ,
    \bus2ip_addr_i_reg[6]_2 ,
    \sr_i_reg[4] ,
    \adr_i_reg[3] ,
    \timing_param_tsudat_i_reg[4] ,
    \adr_i_reg[2] ,
    \timing_param_tsudat_i_reg[5] ,
    \adr_i_reg[1] ,
    \timing_param_tsudat_i_reg[6] ,
    \adr_i_reg[0] ,
    \timing_param_tsudat_i_reg[7] ,
    gpo);
  output p_18_in;
  output \s_axi_rdata_i_reg[31]_0 ;
  output [0:0]s_axi_rresp;
  output \ip_irpt_enable_reg_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output [3:0]Q;
  output reset_trig_reg;
  output sw_rst_cond_d1_reg;
  output AXI_IP2Bus_WrAck2_reg;
  output [0:0]\timing_param_thddat_i_reg[0] ;
  output [0:0]\timing_param_tlow_i_reg[0] ;
  output [0:0]\timing_param_thigh_i_reg[0] ;
  output [0:0]\timing_param_tbuf_i_reg[0] ;
  output [0:0]\timing_param_tsudat_i_reg[0] ;
  output [0:0]\timing_param_thdsta_i_reg[0] ;
  output [0:0]\timing_param_tsusto_i_reg[0] ;
  output [0:0]\timing_param_tsusta_i_reg[0] ;
  output [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  output [0:0]\adr_i_reg[6] ;
  output \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  output [0:0]E;
  output [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output AXI_IP2Bus_RdAck20;
  output ipif_glbl_irpt_enable_reg_reg;
  output \GPO_GEN.gpo_i_reg[31] ;
  output [10:0]s_axi_rdata;
  input AXI_Bus2IP_Reset;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input [0:7]Rc_fifo_data;
  input [7:0]\timing_param_tsusto_i_reg[7] ;
  input [7:0]\timing_param_thigh_i_reg[7] ;
  input [3:0]Tx_fifo_data;
  input [3:0]\timing_param_tsusta_i_reg[7] ;
  input [3:0]\timing_param_tbuf_i_reg[7] ;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input \timing_param_tbuf_i_reg[8] ;
  input \timing_param_thigh_i_reg[8] ;
  input \timing_param_tbuf_i_reg[9] ;
  input \timing_param_thigh_i_reg[9] ;
  input \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  input [7:0]\ip_irpt_enable_reg_reg[7] ;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input ipif_glbl_irpt_enable_reg;
  input AXI_IP2Bus_RdAck1;
  input AXI_IP2Bus_RdAck2;
  input AXI_IP2Bus_WrAck1;
  input AXI_IP2Bus_WrAck2;
  input \timing_param_tbuf_i_reg[0]_0 ;
  input \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  input [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  input [0:3]Tx_addr;
  input [3:0]\timing_param_tsudat_i_reg[3] ;
  input \GPO_GEN.gpo_i_reg[31]_0 ;
  input \bus2ip_addr_i_reg[6]_0 ;
  input \IIC2Bus_IntrEvent_reg[5] ;
  input \bus2ip_addr_i_reg[6]_1 ;
  input \sr_i_reg[5] ;
  input \bus2ip_addr_i_reg[6]_2 ;
  input \sr_i_reg[4] ;
  input \adr_i_reg[3] ;
  input \timing_param_tsudat_i_reg[4] ;
  input \adr_i_reg[2] ;
  input \timing_param_tsudat_i_reg[5] ;
  input \adr_i_reg[1] ;
  input \timing_param_tsudat_i_reg[6] ;
  input \adr_i_reg[0] ;
  input \timing_param_tsudat_i_reg[7] ;
  input [0:0]gpo;

  wire AXI_Bus2IP_Reset;
  wire [24:31]AXI_IP2Bus_Data;
  wire AXI_IP2Bus_RdAck1;
  wire AXI_IP2Bus_RdAck2;
  wire AXI_IP2Bus_RdAck20;
  wire AXI_IP2Bus_WrAck1;
  wire AXI_IP2Bus_WrAck2;
  wire AXI_IP2Bus_WrAck2_reg;
  wire [0:6]Bus2IIC_Addr;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:0]E;
  wire \FIFO_GEN_DTR.Tx_fifo_wr_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \GPO_GEN.gpo_i_reg[31] ;
  wire \GPO_GEN.gpo_i_reg[31]_0 ;
  wire [22:23]IIC2Bus_Data;
  wire \IIC2Bus_IntrEvent_reg[5] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire I_DECODER_n_38;
  wire [0:0]Intr2Bus_DBus;
  wire [3:0]Q;
  wire [0:0]\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ;
  wire [0:7]Rc_fifo_data;
  wire [0:3]Tx_addr;
  wire [3:0]Tx_fifo_data;
  wire \adr_i_reg[0] ;
  wire \adr_i_reg[1] ;
  wire \adr_i_reg[2] ;
  wire \adr_i_reg[3] ;
  wire [0:0]\adr_i_reg[6] ;
  wire \bus2ip_addr_i[0]_i_1_n_0 ;
  wire \bus2ip_addr_i[1]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg[6]_0 ;
  wire \bus2ip_addr_i_reg[6]_1 ;
  wire \bus2ip_addr_i_reg[6]_2 ;
  wire \bus2ip_addr_i_reg_n_0_[0] ;
  wire \bus2ip_addr_i_reg_n_0_[1] ;
  wire bus2ip_rnw_i0;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_rnw_i_reg_n_0;
  wire clear;
  wire [0:0]gpo;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire [0:0]\ip_irpt_enable_reg_reg[0]_0 ;
  wire [7:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_wrack;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_write;
  wire is_write_i_1_n_0;
  wire is_write_reg_n_0;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire [3:0]plusOp;
  wire reset2Bus_Error;
  wire reset_trig_reg;
  wire rst;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [10:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[0]_i_4_n_0 ;
  wire \s_axi_rdata_i[0]_i_5_n_0 ;
  wire \s_axi_rdata_i[0]_i_6_n_0 ;
  wire \s_axi_rdata_i[0]_i_9_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_4_n_0 ;
  wire \s_axi_rdata_i[1]_i_5_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_4_n_0 ;
  wire \s_axi_rdata_i[2]_i_5_n_0 ;
  wire \s_axi_rdata_i[31]_i_1_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_4_n_0 ;
  wire \s_axi_rdata_i[3]_i_5_n_0 ;
  wire \s_axi_rdata_i[4]_i_7_n_0 ;
  wire \s_axi_rdata_i[4]_i_9_n_0 ;
  wire \s_axi_rdata_i[5]_i_7_n_0 ;
  wire \s_axi_rdata_i[5]_i_9_n_0 ;
  wire \s_axi_rdata_i[6]_i_7_n_0 ;
  wire \s_axi_rdata_i[6]_i_9_n_0 ;
  wire \s_axi_rdata_i[7]_i_7_n_0 ;
  wire \s_axi_rdata_i[7]_i_9_n_0 ;
  wire \s_axi_rdata_i[9]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[31]_0 ;
  wire \s_axi_rdata_i_reg[4]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[4]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[5]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[6]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[6]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[6]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[7]_i_5_n_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \sr_i_reg[4] ;
  wire \sr_i_reg[5] ;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_reg;
  wire [0:0]\timing_param_tbuf_i_reg[0] ;
  wire \timing_param_tbuf_i_reg[0]_0 ;
  wire [3:0]\timing_param_tbuf_i_reg[7] ;
  wire \timing_param_tbuf_i_reg[8] ;
  wire \timing_param_tbuf_i_reg[9] ;
  wire [0:0]\timing_param_thddat_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0] ;
  wire [0:0]\timing_param_thdsta_i_reg[0]_0 ;
  wire [0:0]\timing_param_thigh_i_reg[0] ;
  wire [7:0]\timing_param_thigh_i_reg[7] ;
  wire \timing_param_thigh_i_reg[8] ;
  wire \timing_param_thigh_i_reg[9] ;
  wire [0:0]\timing_param_tlow_i_reg[0] ;
  wire [0:0]\timing_param_tsudat_i_reg[0] ;
  wire [3:0]\timing_param_tsudat_i_reg[3] ;
  wire \timing_param_tsudat_i_reg[4] ;
  wire \timing_param_tsudat_i_reg[5] ;
  wire \timing_param_tsudat_i_reg[6] ;
  wire \timing_param_tsudat_i_reg[7] ;
  wire [0:0]\timing_param_tsusta_i_reg[0] ;
  wire [3:0]\timing_param_tsusta_i_reg[7] ;
  wire [0:0]\timing_param_tsusto_i_reg[0] ;
  wire [7:0]\timing_param_tsusto_i_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  MIPSfpga_system_axi_iic_0_0_address_decoder I_DECODER
       (.AXI_IP2Bus_RdAck1(AXI_IP2Bus_RdAck1),
        .AXI_IP2Bus_RdAck2(AXI_IP2Bus_RdAck2),
        .AXI_IP2Bus_RdAck20(AXI_IP2Bus_RdAck20),
        .AXI_IP2Bus_WrAck1(AXI_IP2Bus_WrAck1),
        .AXI_IP2Bus_WrAck2(AXI_IP2Bus_WrAck2),
        .AXI_IP2Bus_WrAck2_reg(AXI_IP2Bus_WrAck2_reg),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D({Intr2Bus_DBus,IIC2Bus_Data[22],IIC2Bus_Data[23],AXI_IP2Bus_Data[24],AXI_IP2Bus_Data[25],AXI_IP2Bus_Data[26],AXI_IP2Bus_Data[27],AXI_IP2Bus_Data[28],AXI_IP2Bus_Data[29],AXI_IP2Bus_Data[30],AXI_IP2Bus_Data[31]}),
        .E(E),
        .\FIFO_GEN_DTR.Tx_fifo_wr_reg (\FIFO_GEN_DTR.Tx_fifo_wr_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\GPO_GEN.gpo_i_reg[31] (\GPO_GEN.gpo_i_reg[31] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .Q(start2),
        .\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] (\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .\adr_i_reg[6] (\adr_i_reg[6] ),
        .\bus2ip_addr_i_reg[2] (\s_axi_rdata_i_reg[4]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_0 (\s_axi_rdata_i_reg[5]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_1 (\s_axi_rdata_i_reg[6]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[2]_2 (\s_axi_rdata_i_reg[7]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[3] (\s_axi_rdata_i[0]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[3]_0 (\s_axi_rdata_i[1]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[3]_1 (\s_axi_rdata_i[2]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[3]_2 (\s_axi_rdata_i[3]_i_3_n_0 ),
        .\bus2ip_addr_i_reg[5] (\s_axi_rdata_i[9]_i_2_n_0 ),
        .\bus2ip_addr_i_reg[8] ({Bus2IIC_Addr[0],Bus2IIC_Addr[1],Q,Bus2IIC_Addr[6],\bus2ip_addr_i_reg_n_0_[1] ,\bus2ip_addr_i_reg_n_0_[0] }),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_n_0),
        .gpo(gpo),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[0]_0 (\ip_irpt_enable_reg_reg[0]_0 ),
        .\ip_irpt_enable_reg_reg[7] (\ip_irpt_enable_reg_reg[7] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_wrack(irpt_wrack),
        .is_read(is_read),
        .is_write_reg(is_write_reg_n_0),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset2Bus_Error(reset2Bus_Error),
        .reset_trig_reg(reset_trig_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_bresp(s_axi_bresp),
        .\s_axi_bresp_i_reg[1] (I_DECODER_n_38),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31]_0 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .\state_reg[1] (state),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .sw_rst_cond_d1_reg(sw_rst_cond_d1_reg),
        .\timing_param_tbuf_i_reg[0] (\timing_param_tbuf_i_reg[0] ),
        .\timing_param_tbuf_i_reg[8] (\timing_param_tbuf_i_reg[8] ),
        .\timing_param_tbuf_i_reg[9] (\timing_param_tbuf_i_reg[9] ),
        .\timing_param_thddat_i_reg[0] (\timing_param_thddat_i_reg[0] ),
        .\timing_param_thdsta_i_reg[0] (\timing_param_thdsta_i_reg[0] ),
        .\timing_param_thigh_i_reg[0] (\timing_param_thigh_i_reg[0] ),
        .\timing_param_thigh_i_reg[8] (\timing_param_thigh_i_reg[8] ),
        .\timing_param_thigh_i_reg[9] (\timing_param_thigh_i_reg[9] ),
        .\timing_param_tlow_i_reg[0] (\timing_param_tlow_i_reg[0] ),
        .\timing_param_tsudat_i_reg[0] (\timing_param_tsudat_i_reg[0] ),
        .\timing_param_tsusta_i_reg[0] (\timing_param_tsusta_i_reg[0] ),
        .\timing_param_tsusto_i_reg[0] (\timing_param_tsusto_i_reg[0] ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_awaddr[7]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCACCCC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_awaddr[8]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[0]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[0] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[1]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[1] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IIC_Addr[6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(Bus2IIC_Addr[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(Bus2IIC_Addr[0]),
        .R(rst));
  LUT6 #(
    .INIT(64'h000200FF00020002)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst),
        .I4(bus2ip_rnw_i0),
        .I5(bus2ip_rnw_i_reg_n_0),
        .O(bus2ip_rnw_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    bus2ip_rnw_i_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(bus2ip_rnw_i0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3FFA000A)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(state1),
        .I2(state[0]),
        .I3(state[1]),
        .I4(is_read),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read),
        .R(rst));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    is_write_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(is_write),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hF88800000000FFFF)) 
    is_write_i_2
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(state[0]),
        .I5(state[1]),
        .O(is_write));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_Bus2IP_Reset),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_38),
        .Q(s_axi_bresp),
        .R(rst));
  LUT6 #(
    .INIT(64'h000800FF00080008)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rst),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\s_axi_rdata_i[0]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\s_axi_rdata_i[0]_i_5_n_0 ),
        .I3(Bus2IIC_Addr[6]),
        .I4(\s_axi_rdata_i[0]_i_6_n_0 ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(Rc_fifo_data[7]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [0]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [0]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[0]_i_5 
       (.I0(Tx_addr[0]),
        .I1(Q[2]),
        .I2(\timing_param_tsudat_i_reg[3] [0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\GPO_GEN.gpo_i_reg[31]_0 ),
        .O(\s_axi_rdata_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \s_axi_rdata_i[0]_i_6 
       (.I0(\timing_param_tbuf_i_reg[0]_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\s_axi_rdata_i[0]_i_9_n_0 ),
        .I4(Q[1]),
        .I5(\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0 ),
        .O(\s_axi_rdata_i[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \s_axi_rdata_i[0]_i_9 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\timing_param_thdsta_i_reg[0]_0 ),
        .O(\s_axi_rdata_i[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\s_axi_rdata_i[1]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\s_axi_rdata_i[1]_i_5_n_0 ),
        .I3(Bus2IIC_Addr[6]),
        .I4(\bus2ip_addr_i_reg[6]_0 ),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(Rc_fifo_data[6]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [1]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [1]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[1]_i_5 
       (.I0(Tx_addr[1]),
        .I1(Q[2]),
        .I2(\timing_param_tsudat_i_reg[3] [1]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\IIC2Bus_IntrEvent_reg[5] ),
        .O(\s_axi_rdata_i[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i[2]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\s_axi_rdata_i[2]_i_5_n_0 ),
        .I3(Bus2IIC_Addr[6]),
        .I4(\bus2ip_addr_i_reg[6]_1 ),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[2]_i_4 
       (.I0(Rc_fifo_data[5]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [2]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [2]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[2]_i_5 
       (.I0(Tx_addr[2]),
        .I1(Q[2]),
        .I2(\timing_param_tsudat_i_reg[3] [2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\sr_i_reg[5] ),
        .O(\s_axi_rdata_i[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\s_axi_rdata_i[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\s_axi_rdata_i[3]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\s_axi_rdata_i[3]_i_5_n_0 ),
        .I3(Bus2IIC_Addr[6]),
        .I4(\bus2ip_addr_i_reg[6]_2 ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[3]_i_4 
       (.I0(Rc_fifo_data[4]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [3]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [3]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \s_axi_rdata_i[3]_i_5 
       (.I0(Tx_addr[3]),
        .I1(Q[2]),
        .I2(\timing_param_tsudat_i_reg[3] [3]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\sr_i_reg[4] ),
        .O(\s_axi_rdata_i[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[4]_i_7 
       (.I0(Tx_fifo_data[0]),
        .I1(Q[2]),
        .I2(\timing_param_tsusta_i_reg[7] [0]),
        .I3(Q[1]),
        .I4(\timing_param_tbuf_i_reg[7] [0]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[4]_i_9 
       (.I0(Rc_fifo_data[3]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [4]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [4]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[5]_i_7 
       (.I0(Tx_fifo_data[1]),
        .I1(Q[2]),
        .I2(\timing_param_tsusta_i_reg[7] [1]),
        .I3(Q[1]),
        .I4(\timing_param_tbuf_i_reg[7] [1]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[5]_i_9 
       (.I0(Rc_fifo_data[2]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [5]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [5]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[6]_i_7 
       (.I0(Tx_fifo_data[2]),
        .I1(Q[2]),
        .I2(\timing_param_tsusta_i_reg[7] [2]),
        .I3(Q[1]),
        .I4(\timing_param_tbuf_i_reg[7] [2]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[6]_i_9 
       (.I0(Rc_fifo_data[1]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [6]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [6]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[7]_i_7 
       (.I0(Tx_fifo_data[3]),
        .I1(Q[2]),
        .I2(\timing_param_tsusta_i_reg[7] [3]),
        .I3(Q[1]),
        .I4(\timing_param_tbuf_i_reg[7] [3]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \s_axi_rdata_i[7]_i_9 
       (.I0(Rc_fifo_data[0]),
        .I1(Q[2]),
        .I2(\timing_param_tsusto_i_reg[7] [7]),
        .I3(Q[1]),
        .I4(\timing_param_thigh_i_reg[7] [7]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002224)) 
    \s_axi_rdata_i[9]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\bus2ip_addr_i_reg_n_0_[1] ),
        .I5(\bus2ip_addr_i_reg_n_0_[0] ),
        .O(\s_axi_rdata_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(Intr2Bus_DBus),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  MUXF8 \s_axi_rdata_i_reg[4]_i_3 
       (.I0(\s_axi_rdata_i_reg[4]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[4]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_3_n_0 ),
        .S(Bus2IIC_Addr[6]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_4 
       (.I0(\adr_i_reg[3] ),
        .I1(\s_axi_rdata_i[4]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_4_n_0 ),
        .S(Q[0]));
  MUXF7 \s_axi_rdata_i_reg[4]_i_5 
       (.I0(\timing_param_tsudat_i_reg[4] ),
        .I1(\s_axi_rdata_i[4]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[4]_i_5_n_0 ),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  MUXF8 \s_axi_rdata_i_reg[5]_i_3 
       (.I0(\s_axi_rdata_i_reg[5]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[5]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_3_n_0 ),
        .S(Bus2IIC_Addr[6]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_4 
       (.I0(\adr_i_reg[2] ),
        .I1(\s_axi_rdata_i[5]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_4_n_0 ),
        .S(Q[0]));
  MUXF7 \s_axi_rdata_i_reg[5]_i_5 
       (.I0(\timing_param_tsudat_i_reg[5] ),
        .I1(\s_axi_rdata_i[5]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_i_5_n_0 ),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  MUXF8 \s_axi_rdata_i_reg[6]_i_3 
       (.I0(\s_axi_rdata_i_reg[6]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[6]_i_3_n_0 ),
        .S(Bus2IIC_Addr[6]));
  MUXF7 \s_axi_rdata_i_reg[6]_i_4 
       (.I0(\adr_i_reg[1] ),
        .I1(\s_axi_rdata_i[6]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[6]_i_4_n_0 ),
        .S(Q[0]));
  MUXF7 \s_axi_rdata_i_reg[6]_i_5 
       (.I0(\timing_param_tsudat_i_reg[6] ),
        .I1(\s_axi_rdata_i[6]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[6]_i_5_n_0 ),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(AXI_IP2Bus_Data[24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  MUXF8 \s_axi_rdata_i_reg[7]_i_3 
       (.I0(\s_axi_rdata_i_reg[7]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[7]_i_5_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_3_n_0 ),
        .S(Bus2IIC_Addr[6]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_4 
       (.I0(\adr_i_reg[0] ),
        .I1(\s_axi_rdata_i[7]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_4_n_0 ),
        .S(Q[0]));
  MUXF7 \s_axi_rdata_i_reg[7]_i_5 
       (.I0(\timing_param_tsudat_i_reg[7] ),
        .I1(\s_axi_rdata_i[7]_i_9_n_0 ),
        .O(\s_axi_rdata_i_reg[7]_i_5_n_0 ),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(IIC2Bus_Data[23]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(IIC2Bus_Data[22]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata_i[31]_i_1_n_0 ),
        .D(reset2Bus_Error),
        .Q(s_axi_rresp),
        .R(rst));
  LUT6 #(
    .INIT(64'h000800FF00080008)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(s_axi_wready),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5FFC50FC)) 
    \state[1]_i_1 
       (.I0(state1),
        .I1(\state[1]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arready),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1));
  LUT3 #(
    .INIT(8'h08)) 
    \state[1]_i_3 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "soft_reset" *) 
module MIPSfpga_system_axi_iic_0_0_soft_reset
   (sw_rst_cond_d1,
    AXI_Bus2IP_Reset,
    SR,
    Bus_RNW_reg_reg,
    s_axi_aclk,
    sw_rst_cond_d1_reg_0,
    s_axi_aresetn);
  output sw_rst_cond_d1;
  output AXI_Bus2IP_Reset;
  output [0:0]SR;
  input Bus_RNW_reg_reg;
  input s_axi_aclk;
  input sw_rst_cond_d1_reg_0;
  input s_axi_aresetn;

  wire AXI_Bus2IP_Reset;
  wire Bus_RNW_reg_reg;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_n_0 ;
  wire [0:0]SR;
  wire [1:3]flop_q_chain;
  wire reset_trig;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_reg_0;

  LUT2 #(
    .INIT(4'hB)) 
    \GPO_GEN.gpo_i[31]_i_1 
       (.I0(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .I1(s_axi_aresetn),
        .O(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig),
        .Q(flop_q_chain[1]),
        .R(AXI_Bus2IP_Reset));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(AXI_Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(AXI_Bus2IP_Reset));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[3].RST_FLOPS_n_0 ),
        .R(AXI_Bus2IP_Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond_d1_reg_0),
        .Q(reset_trig),
        .R(AXI_Bus2IP_Reset));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(AXI_Bus2IP_Reset));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(sw_rst_cond_d1),
        .R(AXI_Bus2IP_Reset));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module MIPSfpga_system_axi_iic_0_0_upcnt_n
   (\q_int_reg[0]_0 ,
    D,
    E,
    stop_scl_reg_reg,
    sda_cout_reg_reg,
    out,
    scl_clean,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    sda_clean,
    \FSM_sequential_scl_state_reg[1] ,
    \cr_i_reg[2] ,
    stop_scl_reg,
    Q,
    arb_lost_reg,
    \cr_i_reg[2]_0 ,
    bus_busy_reg,
    master_slave,
    gen_start_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    \FSM_sequential_scl_state_reg[1]_0 ,
    S,
    \timing_param_tsusto_i_reg[9] ,
    \timing_param_tsusta_i_reg[9] ,
    \timing_param_thddat_i_reg[9] ,
    \timing_param_thdsta_i_reg[9] ,
    \timing_param_tlow_i_reg[9] ,
    \timing_param_tbuf_i_reg[9] ,
    \timing_param_thigh_i_reg[8] ,
    \timing_param_tsusto_i_reg[8] ,
    \timing_param_tsusta_i_reg[8] ,
    \timing_param_thddat_i_reg[8] ,
    \timing_param_thdsta_i_reg[8] ,
    \timing_param_tlow_i_reg[8] ,
    \timing_param_tbuf_i_reg[8] ,
    sda_cout1,
    \FSM_sequential_scl_state_reg[1]_1 ,
    sda_cout_reg,
    SR,
    s_axi_aclk);
  output [0:0]\q_int_reg[0]_0 ;
  output [3:0]D;
  output [0:0]E;
  output stop_scl_reg_reg;
  output sda_cout_reg_reg;
  input [3:0]out;
  input scl_clean;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input sda_clean;
  input \FSM_sequential_scl_state_reg[1] ;
  input \cr_i_reg[2] ;
  input stop_scl_reg;
  input [0:0]Q;
  input arb_lost_reg;
  input \cr_i_reg[2]_0 ;
  input bus_busy_reg;
  input master_slave;
  input gen_start_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input \FSM_sequential_scl_state_reg[1]_0 ;
  input [0:0]S;
  input [0:0]\timing_param_tsusto_i_reg[9] ;
  input [0:0]\timing_param_tsusta_i_reg[9] ;
  input [0:0]\timing_param_thddat_i_reg[9] ;
  input [0:0]\timing_param_thdsta_i_reg[9] ;
  input [0:0]\timing_param_tlow_i_reg[9] ;
  input [0:0]\timing_param_tbuf_i_reg[9] ;
  input [8:0]\timing_param_thigh_i_reg[8] ;
  input [8:0]\timing_param_tsusto_i_reg[8] ;
  input [8:0]\timing_param_tsusta_i_reg[8] ;
  input [8:0]\timing_param_thddat_i_reg[8] ;
  input [8:0]\timing_param_thdsta_i_reg[8] ;
  input [8:0]\timing_param_tlow_i_reg[8] ;
  input [8:0]\timing_param_tbuf_i_reg[8] ;
  input sda_cout1;
  input \FSM_sequential_scl_state_reg[1]_1 ;
  input sda_cout_reg;
  input [0:0]SR;
  input s_axi_aclk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_scl_state[0]_i_10_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_12_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_13_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_14_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_2_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_3_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_4_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_8_n_0 ;
  wire \FSM_sequential_scl_state[0]_i_9_n_0 ;
  wire \FSM_sequential_scl_state[1]_i_3_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_6_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_7_n_0 ;
  wire \FSM_sequential_scl_state[2]_i_8_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_10_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_11_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_13_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_14_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_15_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_17_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_18_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_19_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_4_n_0 ;
  wire \FSM_sequential_scl_state[3]_i_9_n_0 ;
  wire \FSM_sequential_scl_state_reg[0]_i_5_n_1 ;
  wire \FSM_sequential_scl_state_reg[0]_i_5_n_2 ;
  wire \FSM_sequential_scl_state_reg[0]_i_5_n_3 ;
  wire \FSM_sequential_scl_state_reg[0]_i_6_n_1 ;
  wire \FSM_sequential_scl_state_reg[0]_i_6_n_2 ;
  wire \FSM_sequential_scl_state_reg[0]_i_6_n_3 ;
  wire \FSM_sequential_scl_state_reg[1] ;
  wire \FSM_sequential_scl_state_reg[1]_0 ;
  wire \FSM_sequential_scl_state_reg[1]_1 ;
  wire \FSM_sequential_scl_state_reg[2]_i_2_n_1 ;
  wire \FSM_sequential_scl_state_reg[2]_i_2_n_2 ;
  wire \FSM_sequential_scl_state_reg[2]_i_2_n_3 ;
  wire \FSM_sequential_scl_state_reg[3]_i_5_n_1 ;
  wire \FSM_sequential_scl_state_reg[3]_i_5_n_2 ;
  wire \FSM_sequential_scl_state_reg[3]_i_5_n_3 ;
  wire \FSM_sequential_scl_state_reg[3]_i_6_n_1 ;
  wire \FSM_sequential_scl_state_reg[3]_i_6_n_2 ;
  wire \FSM_sequential_scl_state_reg[3]_i_6_n_3 ;
  wire \FSM_sequential_scl_state_reg[3]_i_7_n_1 ;
  wire \FSM_sequential_scl_state_reg[3]_i_7_n_2 ;
  wire \FSM_sequential_scl_state_reg[3]_i_7_n_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire arb_lost_reg;
  wire bus_busy_reg;
  wire clk_cnt_en1;
  wire clk_cnt_en11_out;
  wire clk_cnt_en12_out;
  wire clk_cnt_en2;
  wire clk_cnt_rst;
  wire \cr_i_reg[2] ;
  wire \cr_i_reg[2]_0 ;
  wire gen_start_reg;
  wire master_slave;
  wire next_scl_state1;
  wire next_scl_state10_out;
  wire next_scl_state13_out;
  wire [3:0]out;
  wire \q_int[0]_i_1_n_0 ;
  wire \q_int[0]_i_2_n_0 ;
  wire \q_int[0]_i_4__0_n_0 ;
  wire \q_int[0]_i_5__0_n_0 ;
  wire \q_int[0]_i_6_n_0 ;
  wire \q_int[0]_i_7_n_0 ;
  wire \q_int[0]_i_8_n_0 ;
  wire \q_int[0]_i_9_n_0 ;
  wire \q_int[1]_i_1_n_0 ;
  wire \q_int[2]_i_1_n_0 ;
  wire \q_int[3]_i_1_n_0 ;
  wire \q_int[4]_i_1_n_0 ;
  wire \q_int[4]_i_2_n_0 ;
  wire \q_int[5]_i_1_n_0 ;
  wire \q_int[6]_i_1_n_0 ;
  wire \q_int[7]_i_1_n_0 ;
  wire \q_int[8]_i_1_n_0 ;
  wire \q_int[9]_i_1_n_0 ;
  wire [0:0]\q_int_reg[0]_0 ;
  wire [1:9]q_int_reg__0;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_cout1;
  wire sda_cout_reg;
  wire sda_cout_reg_i_4_n_0;
  wire sda_cout_reg_i_6_n_0;
  wire sda_cout_reg_i_7_n_0;
  wire sda_cout_reg_i_8_n_0;
  wire sda_cout_reg_reg;
  wire sda_cout_reg_reg_i_2_n_1;
  wire sda_cout_reg_reg_i_2_n_2;
  wire sda_cout_reg_reg_i_2_n_3;
  wire stop_scl;
  wire stop_scl_reg;
  wire stop_scl_reg_reg;
  wire [8:0]\timing_param_tbuf_i_reg[8] ;
  wire [0:0]\timing_param_tbuf_i_reg[9] ;
  wire [8:0]\timing_param_thddat_i_reg[8] ;
  wire [0:0]\timing_param_thddat_i_reg[9] ;
  wire [8:0]\timing_param_thdsta_i_reg[8] ;
  wire [0:0]\timing_param_thdsta_i_reg[9] ;
  wire [8:0]\timing_param_thigh_i_reg[8] ;
  wire [8:0]\timing_param_tlow_i_reg[8] ;
  wire [0:0]\timing_param_tlow_i_reg[9] ;
  wire [8:0]\timing_param_tsusta_i_reg[8] ;
  wire [0:0]\timing_param_tsusta_i_reg[9] ;
  wire [8:0]\timing_param_tsusto_i_reg[8] ;
  wire [0:0]\timing_param_tsusto_i_reg[9] ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[3]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_scl_state_reg[3]_i_7_O_UNCONNECTED ;
  wire [3:0]NLW_sda_cout_reg_reg_i_2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \FSM_sequential_scl_state[0]_i_1 
       (.I0(\FSM_sequential_scl_state[0]_i_2_n_0 ),
        .I1(out[1]),
        .I2(\FSM_sequential_scl_state[0]_i_3_n_0 ),
        .I3(out[0]),
        .I4(\FSM_sequential_scl_state[0]_i_4_n_0 ),
        .I5(out[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_10 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_tlow_i_reg[8] [0]),
        .I2(\timing_param_tlow_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_tlow_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_12 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_thdsta_i_reg[8] [6]),
        .I2(\timing_param_thdsta_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_thdsta_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_13 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_thdsta_i_reg[8] [3]),
        .I2(\timing_param_thdsta_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_thdsta_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_14 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_thdsta_i_reg[8] [0]),
        .I2(\timing_param_thdsta_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_thdsta_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h8B888888)) 
    \FSM_sequential_scl_state[0]_i_2 
       (.I0(next_scl_state10_out),
        .I1(out[2]),
        .I2(bus_busy_reg),
        .I3(master_slave),
        .I4(gen_start_reg),
        .O(\FSM_sequential_scl_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_scl_state[0]_i_3 
       (.I0(arb_lost_reg),
        .I1(out[2]),
        .I2(next_scl_state13_out),
        .O(\FSM_sequential_scl_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h05F7AFA2)) 
    \FSM_sequential_scl_state[0]_i_4 
       (.I0(out[1]),
        .I1(clk_cnt_en2),
        .I2(scl_clean),
        .I3(out[2]),
        .I4(sda_clean),
        .O(\FSM_sequential_scl_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_8 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_tlow_i_reg[8] [6]),
        .I2(\timing_param_tlow_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_tlow_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[0]_i_9 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_tlow_i_reg[8] [3]),
        .I2(\timing_param_tlow_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_tlow_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0070)) 
    \FSM_sequential_scl_state[1]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I1(clk_cnt_en2),
        .I2(out[0]),
        .I3(sda_clean),
        .I4(\FSM_sequential_scl_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_scl_state_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0FDF00DFFFFFFFFF)) 
    \FSM_sequential_scl_state[1]_i_3 
       (.I0(clk_cnt_en2),
        .I1(scl_clean),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\cr_i_reg[2] ),
        .I5(out[1]),
        .O(\FSM_sequential_scl_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040055550400)) 
    \FSM_sequential_scl_state[2]_i_1 
       (.I0(out[3]),
        .I1(clk_cnt_en2),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I3(out[0]),
        .I4(out[2]),
        .I5(\FSM_sequential_scl_state_reg[1]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[2]_i_6 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_thddat_i_reg[8] [6]),
        .I2(\timing_param_thddat_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_thddat_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[2]_i_7 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_thddat_i_reg[8] [3]),
        .I2(\timing_param_thddat_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_thddat_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[2]_i_8 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_thddat_i_reg[8] [0]),
        .I2(\timing_param_thddat_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_thddat_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_10 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_tbuf_i_reg[8] [3]),
        .I2(\timing_param_tbuf_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_tbuf_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_11 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_tbuf_i_reg[8] [0]),
        .I2(\timing_param_tbuf_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_tbuf_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_13 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_tsusta_i_reg[8] [6]),
        .I2(\timing_param_tsusta_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_tsusta_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_14 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_tsusta_i_reg[8] [3]),
        .I2(\timing_param_tsusta_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_tsusta_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_15 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_tsusta_i_reg[8] [0]),
        .I2(\timing_param_tsusta_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_tsusta_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_17 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_thigh_i_reg[8] [6]),
        .I2(\timing_param_thigh_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_thigh_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_18 
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_thigh_i_reg[8] [3]),
        .I2(\timing_param_thigh_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_thigh_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(\FSM_sequential_scl_state[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_19 
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_thigh_i_reg[8] [0]),
        .I2(\timing_param_thigh_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_thigh_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(\FSM_sequential_scl_state[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00110011FFFFFFF7)) 
    \FSM_sequential_scl_state[3]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(arb_lost_reg),
        .I3(out[0]),
        .I4(\FSM_sequential_scl_state[3]_i_4_n_0 ),
        .I5(out[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000C00000110000)) 
    \FSM_sequential_scl_state[3]_i_3 
       (.I0(next_scl_state1),
        .I1(out[0]),
        .I2(sda_clean),
        .I3(out[2]),
        .I4(out[3]),
        .I5(out[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_scl_state[3]_i_4 
       (.I0(clk_cnt_en12_out),
        .I1(Q),
        .I2(clk_cnt_en11_out),
        .I3(stop_scl_reg),
        .I4(clk_cnt_en1),
        .O(\FSM_sequential_scl_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_scl_state[3]_i_9 
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_tbuf_i_reg[8] [6]),
        .I2(\timing_param_tbuf_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_tbuf_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(\FSM_sequential_scl_state[3]_i_9_n_0 ));
  CARRY4 \FSM_sequential_scl_state_reg[0]_i_5 
       (.CI(1'b0),
        .CO({next_scl_state10_out,\FSM_sequential_scl_state_reg[0]_i_5_n_1 ,\FSM_sequential_scl_state_reg[0]_i_5_n_2 ,\FSM_sequential_scl_state_reg[0]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\timing_param_tlow_i_reg[9] ,\FSM_sequential_scl_state[0]_i_8_n_0 ,\FSM_sequential_scl_state[0]_i_9_n_0 ,\FSM_sequential_scl_state[0]_i_10_n_0 }));
  CARRY4 \FSM_sequential_scl_state_reg[0]_i_6 
       (.CI(1'b0),
        .CO({next_scl_state13_out,\FSM_sequential_scl_state_reg[0]_i_6_n_1 ,\FSM_sequential_scl_state_reg[0]_i_6_n_2 ,\FSM_sequential_scl_state_reg[0]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\timing_param_thdsta_i_reg[9] ,\FSM_sequential_scl_state[0]_i_12_n_0 ,\FSM_sequential_scl_state[0]_i_13_n_0 ,\FSM_sequential_scl_state[0]_i_14_n_0 }));
  CARRY4 \FSM_sequential_scl_state_reg[2]_i_2 
       (.CI(1'b0),
        .CO({clk_cnt_en2,\FSM_sequential_scl_state_reg[2]_i_2_n_1 ,\FSM_sequential_scl_state_reg[2]_i_2_n_2 ,\FSM_sequential_scl_state_reg[2]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\timing_param_thddat_i_reg[9] ,\FSM_sequential_scl_state[2]_i_6_n_0 ,\FSM_sequential_scl_state[2]_i_7_n_0 ,\FSM_sequential_scl_state[2]_i_8_n_0 }));
  CARRY4 \FSM_sequential_scl_state_reg[3]_i_5 
       (.CI(1'b0),
        .CO({next_scl_state1,\FSM_sequential_scl_state_reg[3]_i_5_n_1 ,\FSM_sequential_scl_state_reg[3]_i_5_n_2 ,\FSM_sequential_scl_state_reg[3]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[3]_i_5_O_UNCONNECTED [3:0]),
        .S({\timing_param_tbuf_i_reg[9] ,\FSM_sequential_scl_state[3]_i_9_n_0 ,\FSM_sequential_scl_state[3]_i_10_n_0 ,\FSM_sequential_scl_state[3]_i_11_n_0 }));
  CARRY4 \FSM_sequential_scl_state_reg[3]_i_6 
       (.CI(1'b0),
        .CO({clk_cnt_en12_out,\FSM_sequential_scl_state_reg[3]_i_6_n_1 ,\FSM_sequential_scl_state_reg[3]_i_6_n_2 ,\FSM_sequential_scl_state_reg[3]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\timing_param_tsusta_i_reg[9] ,\FSM_sequential_scl_state[3]_i_13_n_0 ,\FSM_sequential_scl_state[3]_i_14_n_0 ,\FSM_sequential_scl_state[3]_i_15_n_0 }));
  CARRY4 \FSM_sequential_scl_state_reg[3]_i_7 
       (.CI(1'b0),
        .CO({clk_cnt_en1,\FSM_sequential_scl_state_reg[3]_i_7_n_1 ,\FSM_sequential_scl_state_reg[3]_i_7_n_2 ,\FSM_sequential_scl_state_reg[3]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_scl_state_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S({S,\FSM_sequential_scl_state[3]_i_17_n_0 ,\FSM_sequential_scl_state[3]_i_18_n_0 ,\FSM_sequential_scl_state[3]_i_19_n_0 }));
  LUT6 #(
    .INIT(64'hFEFEEEFEAEAEEEAE)) 
    \q_int[0]_i_1 
       (.I0(clk_cnt_rst),
        .I1(\q_int[0]_i_4__0_n_0 ),
        .I2(out[2]),
        .I3(\FSM_sequential_scl_state[3]_i_4_n_0 ),
        .I4(arb_lost_reg),
        .I5(\q_int[0]_i_5__0_n_0 ),
        .O(\q_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[0]_i_2 
       (.I0(\q_int_reg[0]_0 ),
        .I1(q_int_reg__0[1]),
        .I2(q_int_reg__0[3]),
        .I3(\q_int[0]_i_6_n_0 ),
        .I4(q_int_reg__0[2]),
        .I5(clk_cnt_rst),
        .O(\q_int[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA02)) 
    \q_int[0]_i_3 
       (.I0(\q_int[0]_i_7_n_0 ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(\q_int[0]_i_8_n_0 ),
        .O(clk_cnt_rst));
  LUT6 #(
    .INIT(64'h00010000005555AA)) 
    \q_int[0]_i_4__0 
       (.I0(out[3]),
        .I1(clk_cnt_en2),
        .I2(scl_clean),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\q_int[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000001055555F5F)) 
    \q_int[0]_i_5__0 
       (.I0(out[3]),
        .I1(clk_cnt_en2),
        .I2(out[1]),
        .I3(scl_clean),
        .I4(out[2]),
        .I5(out[0]),
        .O(\q_int[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_int[0]_i_6 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(q_int_reg__0[5]),
        .O(\q_int[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55545555)) 
    \q_int[0]_i_7 
       (.I0(out[3]),
        .I1(clk_cnt_en2),
        .I2(out[2]),
        .I3(scl_clean),
        .I4(out[1]),
        .O(\q_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00B8000000B8)) 
    \q_int[0]_i_8 
       (.I0(clk_cnt_en11_out),
        .I1(stop_scl_reg),
        .I2(clk_cnt_en1),
        .I3(\q_int[0]_i_9_n_0 ),
        .I4(Q),
        .I5(clk_cnt_en12_out),
        .O(\q_int[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \q_int[0]_i_9 
       (.I0(out[2]),
        .I1(arb_lost_reg),
        .I2(out[1]),
        .O(\q_int[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[1]_i_1 
       (.I0(q_int_reg__0[1]),
        .I1(q_int_reg__0[2]),
        .I2(\q_int[0]_i_6_n_0 ),
        .I3(q_int_reg__0[3]),
        .I4(clk_cnt_rst),
        .O(\q_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[2]_i_1 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[3]),
        .I2(\q_int[0]_i_6_n_0 ),
        .I3(clk_cnt_rst),
        .O(\q_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[3]_i_1 
       (.I0(q_int_reg__0[3]),
        .I1(\q_int[0]_i_6_n_0 ),
        .I2(clk_cnt_rst),
        .O(\q_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[4]_i_1 
       (.I0(q_int_reg__0[4]),
        .I1(\q_int[4]_i_2_n_0 ),
        .I2(clk_cnt_rst),
        .O(\q_int[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q_int[4]_i_2 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(q_int_reg__0[6]),
        .O(\q_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[5]_i_1 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(clk_cnt_rst),
        .O(\q_int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[6]_i_1 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(clk_cnt_rst),
        .O(\q_int[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[7]_i_1 
       (.I0(q_int_reg__0[7]),
        .I1(q_int_reg__0[8]),
        .I2(q_int_reg__0[9]),
        .I3(clk_cnt_rst),
        .O(\q_int[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[8]_i_1 
       (.I0(q_int_reg__0[8]),
        .I1(q_int_reg__0[9]),
        .I2(clk_cnt_rst),
        .O(\q_int[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[9]_i_1 
       (.I0(q_int_reg__0[9]),
        .I1(clk_cnt_rst),
        .O(\q_int[9]_i_1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[0]_i_2_n_0 ),
        .Q(\q_int_reg[0]_0 ),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[1]_i_1_n_0 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[2]_i_1_n_0 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[3]_i_1_n_0 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
  FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[4]_i_1_n_0 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
  FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[5]_i_1_n_0 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
  FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[6]_i_1_n_0 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
  FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[7]_i_1_n_0 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
  FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[8]_i_1_n_0 ),
        .Q(q_int_reg__0[8]),
        .R(SR));
  FDRE \q_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1_n_0 ),
        .D(\q_int[9]_i_1_n_0 ),
        .Q(q_int_reg__0[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFF8FCFC00080C0C)) 
    sda_cout_reg_i_1
       (.I0(clk_cnt_en11_out),
        .I1(\FSM_sequential_scl_state_reg[1]_1 ),
        .I2(out[3]),
        .I3(sda_cout_reg_i_4_n_0),
        .I4(out[1]),
        .I5(sda_cout_reg),
        .O(sda_cout_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    sda_cout_reg_i_4
       (.I0(clk_cnt_en11_out),
        .I1(out[0]),
        .I2(out[2]),
        .I3(arb_lost_reg),
        .I4(stop_scl_reg),
        .I5(Q),
        .O(sda_cout_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_cout_reg_i_6
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_tsusto_i_reg[8] [6]),
        .I2(\timing_param_tsusto_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_tsusto_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(sda_cout_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_cout_reg_i_7
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_tsusto_i_reg[8] [3]),
        .I2(\timing_param_tsusto_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_tsusto_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(sda_cout_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_cout_reg_i_8
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_tsusto_i_reg[8] [0]),
        .I2(\timing_param_tsusto_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_tsusto_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(sda_cout_reg_i_8_n_0));
  CARRY4 sda_cout_reg_reg_i_2
       (.CI(1'b0),
        .CO({clk_cnt_en11_out,sda_cout_reg_reg_i_2_n_1,sda_cout_reg_reg_i_2_n_2,sda_cout_reg_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sda_cout_reg_reg_i_2_O_UNCONNECTED[3:0]),
        .S({\timing_param_tsusto_i_reg[9] ,sda_cout_reg_i_6_n_0,sda_cout_reg_i_7_n_0,sda_cout_reg_i_8_n_0}));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    stop_scl_reg_i_1
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(sda_cout1),
        .I4(stop_scl),
        .I5(stop_scl_reg),
        .O(stop_scl_reg_reg));
  LUT6 #(
    .INIT(64'h00555555100055FF)) 
    stop_scl_reg_i_3
       (.I0(out[3]),
        .I1(\cr_i_reg[2]_0 ),
        .I2(clk_cnt_en11_out),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(stop_scl));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module MIPSfpga_system_axi_iic_0_0_upcnt_n_2
   (\q_int_reg[0]_0 ,
    sda_setup_reg,
    \timing_param_tsudat_i_reg[9] ,
    sda_setup_reg_0,
    \timing_param_tsudat_i_reg[8] ,
    sda_clean,
    sda_rin_d1,
    tx_under_prev_i_reg,
    tx_under_prev_d1,
    gen_stop_d1,
    gen_stop_reg,
    rsta_d1,
    Q,
    scl_clean,
    SR,
    s_axi_aclk);
  output [0:0]\q_int_reg[0]_0 ;
  output sda_setup_reg;
  input [0:0]\timing_param_tsudat_i_reg[9] ;
  input sda_setup_reg_0;
  input [8:0]\timing_param_tsudat_i_reg[8] ;
  input sda_clean;
  input sda_rin_d1;
  input tx_under_prev_i_reg;
  input tx_under_prev_d1;
  input gen_stop_d1;
  input gen_stop_reg;
  input rsta_d1;
  input [1:0]Q;
  input scl_clean;
  input [0:0]SR;
  input s_axi_aclk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire gen_stop_d1;
  wire gen_stop_reg;
  wire p_13_in;
  wire \q_int[0]_i_1__0_n_0 ;
  wire \q_int[0]_i_2__1_n_0 ;
  wire \q_int[0]_i_4_n_0 ;
  wire \q_int[0]_i_5_n_0 ;
  wire \q_int[1]_i_1__1_n_0 ;
  wire \q_int[2]_i_1__1_n_0 ;
  wire \q_int[3]_i_1__0_n_0 ;
  wire \q_int[4]_i_1__0_n_0 ;
  wire \q_int[4]_i_2__0_n_0 ;
  wire \q_int[5]_i_1__0_n_0 ;
  wire \q_int[6]_i_1__0_n_0 ;
  wire \q_int[7]_i_1__0_n_0 ;
  wire \q_int[8]_i_1__0_n_0 ;
  wire \q_int[9]_i_1__0_n_0 ;
  wire [0:0]\q_int_reg[0]_0 ;
  wire [1:9]q_int_reg__0;
  wire rsta_d1;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_rin_d1;
  wire sda_setup_i_4_n_0;
  wire sda_setup_i_5_n_0;
  wire sda_setup_i_6_n_0;
  wire sda_setup_reg;
  wire sda_setup_reg_0;
  wire sda_setup_reg_i_2_n_0;
  wire sda_setup_reg_i_2_n_1;
  wire sda_setup_reg_i_2_n_2;
  wire sda_setup_reg_i_2_n_3;
  wire [8:0]\timing_param_tsudat_i_reg[8] ;
  wire [0:0]\timing_param_tsudat_i_reg[9] ;
  wire tx_under_prev_d1;
  wire tx_under_prev_i_reg;
  wire [3:0]NLW_sda_setup_reg_i_2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \q_int[0]_i_1__0 
       (.I0(p_13_in),
        .I1(sda_setup_reg_0),
        .O(\q_int[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[0]_i_2__1 
       (.I0(\q_int_reg[0]_0 ),
        .I1(q_int_reg__0[1]),
        .I2(q_int_reg__0[3]),
        .I3(\q_int[0]_i_4_n_0 ),
        .I4(q_int_reg__0[2]),
        .I5(p_13_in),
        .O(\q_int[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFBEBE)) 
    \q_int[0]_i_3__0 
       (.I0(\q_int[0]_i_5_n_0 ),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(tx_under_prev_i_reg),
        .I4(tx_under_prev_d1),
        .O(p_13_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q_int[0]_i_4 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(q_int_reg__0[5]),
        .O(\q_int[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \q_int[0]_i_5 
       (.I0(gen_stop_d1),
        .I1(gen_stop_reg),
        .I2(rsta_d1),
        .I3(Q[1]),
        .O(\q_int[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[1]_i_1__1 
       (.I0(q_int_reg__0[1]),
        .I1(q_int_reg__0[2]),
        .I2(\q_int[0]_i_4_n_0 ),
        .I3(q_int_reg__0[3]),
        .I4(p_13_in),
        .O(\q_int[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[2]_i_1__1 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[3]),
        .I2(\q_int[0]_i_4_n_0 ),
        .I3(p_13_in),
        .O(\q_int[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[3]_i_1__0 
       (.I0(q_int_reg__0[3]),
        .I1(\q_int[0]_i_4_n_0 ),
        .I2(p_13_in),
        .O(\q_int[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[4]_i_1__0 
       (.I0(q_int_reg__0[4]),
        .I1(\q_int[4]_i_2__0_n_0 ),
        .I2(p_13_in),
        .O(\q_int[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q_int[4]_i_2__0 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(q_int_reg__0[6]),
        .O(\q_int[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \q_int[5]_i_1__0 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(p_13_in),
        .O(\q_int[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[6]_i_1__0 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(p_13_in),
        .O(\q_int[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[7]_i_1__0 
       (.I0(q_int_reg__0[7]),
        .I1(q_int_reg__0[8]),
        .I2(q_int_reg__0[9]),
        .I3(p_13_in),
        .O(\q_int[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[8]_i_1__0 
       (.I0(q_int_reg__0[8]),
        .I1(q_int_reg__0[9]),
        .I2(p_13_in),
        .O(\q_int[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_int[9]_i_1__0 
       (.I0(q_int_reg__0[9]),
        .I1(p_13_in),
        .O(\q_int[9]_i_1__0_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[0]_i_2__1_n_0 ),
        .Q(\q_int_reg[0]_0 ),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[1]_i_1__1_n_0 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[2]_i_1__1_n_0 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[3]_i_1__0_n_0 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
  FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[4]_i_1__0_n_0 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
  FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[5]_i_1__0_n_0 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
  FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[6]_i_1__0_n_0 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
  FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[7]_i_1__0_n_0 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
  FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[8]_i_1__0_n_0 ),
        .Q(q_int_reg__0[8]),
        .R(SR));
  FDRE \q_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__0_n_0 ),
        .D(\q_int[9]_i_1__0_n_0 ),
        .Q(q_int_reg__0[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2222AAA20000AAA0)) 
    sda_setup_i_1
       (.I0(Q[0]),
        .I1(sda_setup_reg_i_2_n_0),
        .I2(tx_under_prev_i_reg),
        .I3(p_13_in),
        .I4(scl_clean),
        .I5(sda_setup_reg_0),
        .O(sda_setup_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_setup_i_4
       (.I0(q_int_reg__0[3]),
        .I1(\timing_param_tsudat_i_reg[8] [6]),
        .I2(\timing_param_tsudat_i_reg[8] [8]),
        .I3(q_int_reg__0[1]),
        .I4(\timing_param_tsudat_i_reg[8] [7]),
        .I5(q_int_reg__0[2]),
        .O(sda_setup_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_setup_i_5
       (.I0(q_int_reg__0[6]),
        .I1(\timing_param_tsudat_i_reg[8] [3]),
        .I2(\timing_param_tsudat_i_reg[8] [5]),
        .I3(q_int_reg__0[4]),
        .I4(\timing_param_tsudat_i_reg[8] [4]),
        .I5(q_int_reg__0[5]),
        .O(sda_setup_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sda_setup_i_6
       (.I0(q_int_reg__0[9]),
        .I1(\timing_param_tsudat_i_reg[8] [0]),
        .I2(\timing_param_tsudat_i_reg[8] [2]),
        .I3(q_int_reg__0[7]),
        .I4(\timing_param_tsudat_i_reg[8] [1]),
        .I5(q_int_reg__0[8]),
        .O(sda_setup_i_6_n_0));
  CARRY4 sda_setup_reg_i_2
       (.CI(1'b0),
        .CO({sda_setup_reg_i_2_n_0,sda_setup_reg_i_2_n_1,sda_setup_reg_i_2_n_2,sda_setup_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sda_setup_reg_i_2_O_UNCONNECTED[3:0]),
        .S({\timing_param_tsudat_i_reg[9] ,sda_setup_i_4_n_0,sda_setup_i_5_n_0,sda_setup_i_6_n_0}));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0
   (E,
    EarlyAckDataState0,
    dtc_i_reg,
    out,
    detect_start,
    state1,
    bit_cnt_en,
    scl_falling_edge,
    Q,
    dtc_i,
    \FSM_onehot_state_reg[4] ,
    SR,
    s_axi_aclk);
  output [0:0]E;
  output EarlyAckDataState0;
  output dtc_i_reg;
  input [5:0]out;
  input detect_start;
  input state1;
  input bit_cnt_en;
  input scl_falling_edge;
  input [0:0]Q;
  input dtc_i;
  input \FSM_onehot_state_reg[4] ;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]E;
  wire EarlyAckDataState0;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire bit_cnt_en;
  wire bit_cnt_ld;
  wire detect_start;
  wire dtc_i;
  wire dtc_i_i_2_n_0;
  wire dtc_i_reg;
  wire [5:0]out;
  wire \q_int[0]_i_1__1_n_0 ;
  wire \q_int[0]_i_2__0_n_0 ;
  wire \q_int[1]_i_1__0_n_0 ;
  wire \q_int[2]_i_1__0_n_0 ;
  wire \q_int[3]_i_1__1_n_0 ;
  wire \q_int_reg_n_0_[0] ;
  wire \q_int_reg_n_0_[1] ;
  wire \q_int_reg_n_0_[2] ;
  wire \q_int_reg_n_0_[3] ;
  wire s_axi_aclk;
  wire scl_falling_edge;
  wire state1;

  LUT6 #(
    .INIT(64'hAAABAAAAEAAAAAAA)) 
    EarlyAckDataState_i_1
       (.I0(out[4]),
        .I1(\q_int_reg_n_0_[3] ),
        .I2(\q_int_reg_n_0_[2] ),
        .I3(\q_int_reg_n_0_[1] ),
        .I4(out[3]),
        .I5(\q_int_reg_n_0_[0] ),
        .O(EarlyAckDataState0));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(state1),
        .I1(\FSM_onehot_state[6]_i_5_n_0 ),
        .I2(out[2]),
        .I3(detect_start),
        .I4(out[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFCFCFC)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(out[1]),
        .I1(out[5]),
        .I2(out[4]),
        .I3(\FSM_onehot_state_reg[4] ),
        .I4(detect_start),
        .I5(\FSM_onehot_state[6]_i_7_n_0 ),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(\q_int_reg_n_0_[3] ),
        .I1(\q_int_reg_n_0_[1] ),
        .I2(\q_int_reg_n_0_[0] ),
        .I3(\q_int_reg_n_0_[2] ),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040000000)) 
    dtc_i_i_1
       (.I0(\q_int_reg_n_0_[0] ),
        .I1(\q_int_reg_n_0_[1] ),
        .I2(dtc_i_i_2_n_0),
        .I3(scl_falling_edge),
        .I4(Q),
        .I5(dtc_i),
        .O(dtc_i_reg));
  LUT2 #(
    .INIT(4'h8)) 
    dtc_i_i_2
       (.I0(\q_int_reg_n_0_[2] ),
        .I1(\q_int_reg_n_0_[3] ),
        .O(dtc_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_int[0]_i_1__1 
       (.I0(out[5]),
        .I1(out[2]),
        .I2(out[4]),
        .I3(detect_start),
        .I4(out[0]),
        .I5(bit_cnt_en),
        .O(\q_int[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \q_int[0]_i_2__0 
       (.I0(\q_int_reg_n_0_[0] ),
        .I1(\q_int_reg_n_0_[1] ),
        .I2(\q_int_reg_n_0_[3] ),
        .I3(\q_int_reg_n_0_[2] ),
        .I4(bit_cnt_ld),
        .O(\q_int[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q_int[0]_i_3__1 
       (.I0(out[0]),
        .I1(detect_start),
        .I2(out[4]),
        .I3(out[2]),
        .I4(out[5]),
        .O(bit_cnt_ld));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q_int[1]_i_1__0 
       (.I0(\q_int_reg_n_0_[1] ),
        .I1(\q_int_reg_n_0_[2] ),
        .I2(\q_int_reg_n_0_[3] ),
        .I3(bit_cnt_ld),
        .O(\q_int[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q_int[2]_i_1__0 
       (.I0(\q_int_reg_n_0_[2] ),
        .I1(\q_int_reg_n_0_[3] ),
        .I2(bit_cnt_ld),
        .O(\q_int[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q_int[3]_i_1__1 
       (.I0(\q_int_reg_n_0_[3] ),
        .I1(out[5]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(detect_start),
        .I5(out[0]),
        .O(\q_int[3]_i_1__1_n_0 ));
  FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[0]_i_2__0_n_0 ),
        .Q(\q_int_reg_n_0_[0] ),
        .R(SR));
  FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[1]_i_1__0_n_0 ),
        .Q(\q_int_reg_n_0_[1] ),
        .R(SR));
  FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[2]_i_1__0_n_0 ),
        .Q(\q_int_reg_n_0_[2] ),
        .R(SR));
  FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\q_int[0]_i_1__1_n_0 ),
        .D(\q_int[3]_i_1__1_n_0 ),
        .Q(\q_int_reg_n_0_[3] ),
        .R(SR));
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
