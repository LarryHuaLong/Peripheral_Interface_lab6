-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Wed Jun 20 20:46:51 2018
-- Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Peripheral_Interface_lab/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_axi_iic_0_0/MIPSfpga_system_axi_iic_0_0_funcsim.vhdl
-- Design      : MIPSfpga_system_axi_iic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_SRL_FIFO is
  port (
    Rc_Data_Exists : out STD_LOGIC;
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_Empty : out STD_LOGIC;
    \RESET_FLOPS[3].RST_FLOPS\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \data_i2c_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr : in STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_rd_reg\ : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_SRL_FIFO : entity is "SRL_FIFO";
end MIPSfpga_system_axi_iic_0_0_SRL_FIFO;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_SRL_FIFO is
  signal \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].MUXCY_L_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \^rc_data_exists\ : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair23";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair23";
begin
  Rc_Data_Exists <= \^rc_data_exists\;
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => D_0,
      Q => \^rc_addr\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Addr_Counters[1].MUXCY_L_I_n_0\,
      CO(0) => CI,
      CYINIT => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(3) => \Addr_Counters[3].XORCY_I_n_0\,
      O(2) => \Addr_Counters[2].XORCY_I_n_0\,
      O(1) => \Addr_Counters[1].XORCY_I_n_0\,
      O(0) => D_0,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => \^rc_addr\(0),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\,
      I1 => \^rc_addr\(0),
      I2 => \^rc_addr\(1),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(2),
      I5 => \RD_FIFO_CNTRL.Rc_fifo_rd_reg\,
      O => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => Rc_fifo_wr_d,
      I1 => Rc_fifo_wr,
      I2 => \^rc_addr\(2),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(1),
      I5 => \^rc_addr\(0),
      O => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \Addr_Counters[1].XORCY_I_n_0\,
      Q => \^rc_addr\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => \^rc_addr\(1),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \Addr_Counters[2].XORCY_I_n_0\,
      Q => \^rc_addr\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => \^rc_addr\(2),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \Addr_Counters[3].XORCY_I_n_0\,
      Q => \^rc_addr\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => \^rc_addr\(3),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO_CNTRL.Rc_fifo_wr_reg\,
      Q => \^rc_data_exists\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__1_n_0\,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(0),
      Q => Rc_fifo_data(7)
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rc_data_exists\,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0 is
  port (
    Tx_data_exists : out STD_LOGIC;
    Tx_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Tx_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    p_3_in : out STD_LOGIC;
    \sr_i_reg[0]\ : out STD_LOGIC;
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\ : out STD_LOGIC;
    \sr_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_Empty : out STD_LOGIC;
    \data_int_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_wr_d : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\ : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0 : entity is "SRL_FIFO";
end MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0 is
  signal \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].MUXCY_L_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^tx_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^tx_data_exists\ : STD_LOGIC;
  signal \^tx_fifo_data\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair31";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of callingReadAccess_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sr_i[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair31";
begin
  Tx_addr(0 to 3) <= \^tx_addr\(0 to 3);
  Tx_data_exists <= \^tx_data_exists\;
  Tx_fifo_data(0 to 7) <= \^tx_fifo_data\(0 to 7);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => D,
      Q => \^tx_addr\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Addr_Counters[1].MUXCY_L_I_n_0\,
      CO(0) => CI,
      CYINIT => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^tx_addr\(2),
      DI(1) => \^tx_addr\(1),
      DI(0) => \^tx_addr\(0),
      O(3) => \Addr_Counters[3].XORCY_I_n_0\,
      O(2) => \Addr_Counters[2].XORCY_I_n_0\,
      O(1) => \Addr_Counters[1].XORCY_I_n_0\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => \^tx_addr\(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\,
      I1 => \^tx_addr\(0),
      I2 => \^tx_addr\(1),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(2),
      I5 => txFifoRd,
      O => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => Tx_fifo_wr_d,
      I1 => Tx_fifo_wr,
      I2 => \^tx_addr\(2),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(1),
      I5 => \^tx_addr\(0),
      O => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \Addr_Counters[1].XORCY_I_n_0\,
      Q => \^tx_addr\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => \^tx_addr\(1),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \Addr_Counters[2].XORCY_I_n_0\,
      Q => \^tx_addr\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => \^tx_addr\(2),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \Addr_Counters[3].XORCY_I_n_0\,
      Q => \^tx_addr\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => \^tx_addr\(3),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_GEN_DTR.Tx_fifo_wr_reg\,
      Q => \^tx_data_exists\,
      R => Tx_fifo_rst
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => buffer_Empty
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_addr\(3),
      O => \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data\(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data\(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data\(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data\(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data\(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data\(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \Addr_Counters[0].MUXCY_L_I_i_2__0_n_0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data\(7)
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^tx_data_exists\,
      I1 => dynamic_MSMS(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      O => p_3_in
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^tx_fifo_data\(7),
      I1 => sda_clean,
      I2 => shift_reg_ld,
      O => \data_int_reg[0]\(0)
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_data_exists\,
      O => \sr_i_reg[0]\
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => \sr_i_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0\ is
  port (
    \Addr_Counters[0].FDRE_I_0\ : out STD_LOGIC;
    dynamic_MSMS : out STD_LOGIC_VECTOR ( 0 to 1 );
    p_4_in : out STD_LOGIC;
    buffer_Empty : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    rdCntrFrmTxFifo_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rst_reg\ : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ : in STD_LOGIC;
    ctrl_fifo_wr_i : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0\ is
  signal \^addr_counters[0].fdre_i_0\ : STD_LOGIC;
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_2_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].MUXCY_L_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].XORCY_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^dynamic_msms\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3__1\ : label is "soft_lutpair29";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_3__0\ : label is "soft_lutpair29";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  \Addr_Counters[0].FDRE_I_0\ <= \^addr_counters[0].fdre_i_0\;
  dynamic_MSMS(0 to 1) <= \^dynamic_msms\(0 to 1);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => D,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Addr_Counters[1].MUXCY_L_I_n_0\,
      CO(0) => CI,
      CYINIT => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => \Addr_Counters[3].XORCY_I_n_0\,
      O(2) => \Addr_Counters[2].XORCY_I_n_0\,
      O(1) => \Addr_Counters[1].XORCY_I_n_0\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[1].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[2].FDRE_I_n_0\,
      I5 => txFifoRd,
      O => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => \Addr_Counters[1].XORCY_I_n_0\,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => \Addr_Counters[2].XORCY_I_n_0\,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => \Addr_Counters[3].XORCY_I_n_0\,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo_reg,
      Q => \^addr_counters[0].fdre_i_0\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CLK => s_axi_aclk,
      D => \FIFO_GEN_DTR.Tx_fifo_rst_reg\,
      Q => \^dynamic_msms\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CLK => s_axi_aclk,
      D => \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\,
      Q => \^dynamic_msms\(1)
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dynamic_msms\(1),
      I1 => Tx_data_exists,
      O => p_4_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_address_decoder is
  port (
    p_18_in : out STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[0]\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    reset_trig_reg : out STD_LOGIC;
    sw_rst_cond_d1_reg : out STD_LOGIC;
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    \timing_param_thddat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thigh_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsudat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset2Bus_Error : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    \s_axi_bresp_i_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[9]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]_1\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]_2\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_1\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_2\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    is_read : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_address_decoder : entity is "address_decoder";
end MIPSfpga_system_axi_iic_0_0_address_decoder;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_address_decoder is
  signal AXI_Bus2IP_CS : STD_LOGIC_VECTOR ( 0 to 2 );
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\ : STD_LOGIC;
  signal IIC2Bus_Data1 : STD_LOGIC;
  signal \Intr2Bus_DBus__0\ : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[0]\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal \^p_18_in\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^reset2bus_error\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_9_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[31]\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^sw_rst_cond_d1_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck2_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck2_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.Rc_fifo_rd_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \timing_param_thddat_i[9]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[9]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[9]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[9]_i_1\ : label is "soft_lutpair42";
begin
  \ip_irpt_enable_reg_reg[0]\ <= \^ip_irpt_enable_reg_reg[0]\;
  p_18_in <= \^p_18_in\;
  reset2Bus_Error <= \^reset2bus_error\;
  s_axi_arready <= \^s_axi_arready\;
  \s_axi_rdata_i_reg[31]\ <= \^s_axi_rdata_i_reg[31]\;
  s_axi_wready <= \^s_axi_wready\;
  sw_rst_cond_d1_reg <= \^sw_rst_cond_d1_reg\;
AXI_IP2Bus_RdAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => bus2ip_rnw_i_reg,
      O => AXI_IP2Bus_RdAck20
    );
AXI_IP2Bus_WrAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => bus2ip_rnw_i_reg,
      O => AXI_IP2Bus_WrAck2_reg
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^ip_irpt_enable_reg_reg[0]\,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_16_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \FIFO_GEN_DTR.Tx_fifo_wr_reg\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => p_1_in,
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1_n_0\,
      Q => p_25_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\,
      Q => \^p_18_in\,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\,
      Q => p_17_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\,
      Q => p_16_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\,
      Q => p_15_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\,
      Q => p_14_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\,
      Q => p_13_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\,
      Q => p_12_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\,
      Q => p_11_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\,
      Q => p_10_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\,
      Q => p_9_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\,
      Q => p_8_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(5),
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\,
      Q => p_7_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\,
      Q => p_6_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\,
      Q => p_5_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\,
      Q => p_4_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\,
      Q => p_3_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(6),
      I3 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\,
      Q => p_2_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_arready\,
      I2 => s_axi_aresetn,
      O => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(4),
      I2 => \bus2ip_addr_i_reg[8]\(6),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2_n_0\,
      Q => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => p_1_in,
      I4 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_28_in,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_1_in,
      I1 => \bus2ip_addr_i_reg[8]\(4),
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0\,
      Q => \^s_axi_rdata_i_reg[31]\,
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_9_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => gpo(0),
      O => \GPO_GEN.gpo_i_reg[31]\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(7),
      O => p_1_in
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_in,
      Q => AXI_Bus2IP_CS(0),
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77070000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\,
      O => \MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(7),
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => \bus2ip_addr_i_reg[8]\(4),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\
    );
\MEM_DECODE_GEN[1].cs_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].cs_out_i[1]_i_1_n_0\,
      Q => AXI_Bus2IP_CS(1),
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\MEM_DECODE_GEN[2].cs_out_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(8),
      I1 => Q,
      O => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[2].cs_out_i[2]_i_1_n_0\,
      Q => AXI_Bus2IP_CS(2),
      R => \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1_n_0\
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_15_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_10_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_14_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \adr_i_reg[6]\(0)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_18_in\,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => E(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_25_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \ip_irpt_enable_reg_reg[0]_0\(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => p_28_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => ipif_glbl_irpt_enable_reg_reg
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => p_25_in,
      I1 => p_28_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => \^s_axi_rdata_i_reg[31]\,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sw_rst_cond_d1_reg\,
      I1 => sw_rst_cond_d1,
      O => reset_trig_reg
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => AXI_IP2Bus_RdAck1,
      I1 => AXI_IP2Bus_RdAck2,
      I2 => is_read,
      I3 => eqOp,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^reset2bus_error\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => s_axi_bresp(0),
      O => \s_axi_bresp_i_reg[1]\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(31),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[3]\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(0)
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(0),
      O => \Intr2Bus_DBus__0\(31)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(30),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[3]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in17_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(1),
      O => \Intr2Bus_DBus__0\(30)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(29),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[3]_1\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(2)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in14_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(2),
      O => \Intr2Bus_DBus__0\(29)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_25_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => p_28_in,
      I3 => \^ip_irpt_enable_reg_reg[0]\,
      I4 => ipif_glbl_irpt_enable_reg,
      O => D(10)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(28),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[3]_2\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(3)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(3),
      O => \Intr2Bus_DBus__0\(28)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(27),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[2]\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in8_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(4),
      O => \Intr2Bus_DBus__0\(27)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(26),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[2]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(5)
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in5_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(5),
      O => \Intr2Bus_DBus__0\(26)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(25),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[2]_1\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(6)
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(6),
      O => \Intr2Bus_DBus__0\(25)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Intr2Bus_DBus__0\(24),
      I1 => \bus2ip_addr_i_reg[8]\(7),
      I2 => IIC2Bus_Data1,
      I3 => \bus2ip_addr_i_reg[2]_2\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => D(7)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\,
      I1 => \^s_axi_rdata_i_reg[31]\,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_25_in,
      I4 => \ip_irpt_enable_reg_reg[7]\(7),
      O => \Intr2Bus_DBus__0\(24)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\,
      I1 => \timing_param_tbuf_i_reg[8]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \timing_param_thigh_i_reg[8]\,
      I4 => IIC2Bus_Data1,
      I5 => \bus2ip_addr_i_reg[8]\(7),
      O => D(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\,
      I1 => \timing_param_tbuf_i_reg[9]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \timing_param_thigh_i_reg[9]\,
      I4 => IIC2Bus_Data1,
      I5 => \bus2ip_addr_i_reg[8]\(7),
      O => D(9)
    );
\s_axi_rdata_i[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_axi_rdata_i[9]_i_6_n_0\,
      I1 => \s_axi_rdata_i[9]_i_7_n_0\,
      I2 => \s_axi_rdata_i[9]_i_8_n_0\,
      I3 => \s_axi_rdata_i[9]_i_9_n_0\,
      O => IIC2Bus_Data1
    );
\s_axi_rdata_i[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
        port map (
      I0 => p_7_in,
      I1 => p_3_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_4_in,
      I4 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I5 => p_2_in,
      O => \s_axi_rdata_i[9]_i_6_n_0\
    );
\s_axi_rdata_i[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => p_8_in,
      I1 => p_6_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_9_in,
      O => \s_axi_rdata_i[9]_i_7_n_0\
    );
\s_axi_rdata_i[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
        port map (
      I0 => p_10_in,
      I1 => p_13_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_14_in,
      I4 => p_11_in,
      I5 => p_12_in,
      O => \s_axi_rdata_i[9]_i_8_n_0\
    );
\s_axi_rdata_i[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
        port map (
      I0 => p_5_in,
      I1 => p_15_in,
      I2 => \^ip_irpt_enable_reg_reg[0]\,
      I3 => p_16_in,
      I4 => \^p_18_in\,
      I5 => p_17_in,
      O => \s_axi_rdata_i[9]_i_9_n_0\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFDF00000000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(3),
      I3 => s_axi_wdata(0),
      I4 => \^ip_irpt_enable_reg_reg[0]\,
      I5 => AXI_Bus2IP_CS(1),
      O => \^reset2bus_error\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => AXI_IP2Bus_WrAck1,
      I1 => AXI_IP2Bus_WrAck2,
      I2 => is_write_reg,
      I3 => eqOp,
      O => \^s_axi_wready\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      O => eqOp
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[0]\,
      I1 => AXI_Bus2IP_CS(1),
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(0),
      O => \^sw_rst_cond_d1_reg\
    );
\timing_param_tbuf_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_tbuf_i_reg[0]\(0)
    );
\timing_param_thddat_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_thddat_i_reg[0]\(0)
    );
\timing_param_thdsta_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_thdsta_i_reg[0]\(0)
    );
\timing_param_thigh_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_thigh_i_reg[0]\(0)
    );
\timing_param_tlow_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_tlow_i_reg[0]\(0)
    );
\timing_param_tsudat_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_tsudat_i_reg[0]\(0)
    );
\timing_param_tsusta_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_8_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_tsusta_i_reg[0]\(0)
    );
\timing_param_tsusto_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => \^ip_irpt_enable_reg_reg[0]\,
      O => \timing_param_tsusto_i_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_cdc_sync is
  port (
    detect_stop_reg : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_cdc_sync : entity is "cdc_sync";
end MIPSfpga_system_axi_iic_0_0_cdc_sync;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_cdc_sync is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  signal \^sda_clean\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  Sda_clean <= \^sda_clean\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => \^sda_clean\,
      R => '0'
    );
detect_stop_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sda_clean\,
      I1 => sda_rin_d1,
      O => detect_stop_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_cdc_sync_4 is
  port (
    scl_rising_edge_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_cdc_sync_4 : entity is "cdc_sync";
end MIPSfpga_system_axi_iic_0_0_cdc_sync_4;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_cdc_sync_4 is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[2]_i_3\ : label is "soft_lutpair3";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of scl_rising_edge_i_1 : label is "soft_lutpair3";
begin
  scndry_out <= \^scndry_out\;
\FSM_sequential_scl_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \out\(1),
      O => \FSM_sequential_scl_state_reg[1]\
    );
\FSM_sequential_scl_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => \out\(0),
      O => \FSM_sequential_scl_state_reg[2]\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => \^scndry_out\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => scl_rin_d1,
      O => scl_rising_edge_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_dynamic_master is
  port (
    callingReadAccess : out STD_LOGIC;
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    txak : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    rdCntrFrmTxFifo0 : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    firstDynStartSeen_reg_0 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_18_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_dynamic_master : entity is "dynamic_master";
end MIPSfpga_system_axi_iic_0_0_dynamic_master;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_dynamic_master is
  signal Cr_txModeSelect_clr_i_1_n_0 : STD_LOGIC;
  signal Cr_txModeSelect_set_i_1_n_0 : STD_LOGIC;
  signal ackDataState_d1 : STD_LOGIC;
  signal \^callingreadaccess\ : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal \^firstdynstartseen\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdByteCntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdByteCntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdByteCntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdByteCntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdByteCntr_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  signal rxCntDone_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cr_txModeSelect_clr_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdByteCntr[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair1";
begin
  callingReadAccess <= \^callingreadaccess\;
  firstDynStartSeen <= \^firstdynstartseen\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
Cr_txModeSelect_clr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => Cr_txModeSelect_clr_i_1_n_0
    );
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_clr_i_1_n_0,
      Q => cr_txModeSelect_clr,
      R => '0'
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => Cr_txModeSelect_set_i_1_n_0
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_set_i_1_n_0,
      Q => cr_txModeSelect_set,
      R => '0'
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => earlyAckDataState,
      I2 => \rdByteCntr_reg__0\(0),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \^callingreadaccess\,
      I5 => rxCntDone_i_2_n_0,
      O => txak
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data(7),
      Q => \^callingreadaccess\,
      R => Tx_fifo_rst
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33303330AAAA3330"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => cr_txModeSelect_clr,
      I2 => cr_txModeSelect_set,
      I3 => Q(0),
      I4 => p_18_in,
      I5 => Bus_RNW_reg,
      O => D(0)
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0,
      Q => \^firstdynstartseen\,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFEAAAA"
    )
        port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr[0]_i_3_n_0\,
      I4 => earlyAckDataState,
      I5 => earlyAckDataState_d1,
      O => \rdByteCntr[0]_i_1_n_0\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Tx_fifo_data(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(1),
      I3 => \rdByteCntr[0]_i_4_n_0\,
      I4 => \rdByteCntr_reg__0\(0),
      O => p_0_in(7)
    );
\rdByteCntr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(1),
      I1 => \rdByteCntr_reg__0\(2),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(3),
      O => \rdByteCntr[0]_i_3_n_0\
    );
\rdByteCntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(3),
      I1 => \rdByteCntr_reg__0\(5),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(2),
      O => \rdByteCntr[0]_i_4_n_0\
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(1),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr[0]_i_4_n_0\,
      I3 => \rdByteCntr_reg__0\(1),
      O => p_0_in(6)
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(2),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr[2]_i_2_n_0\,
      I3 => \rdByteCntr_reg__0\(2),
      O => p_0_in(5)
    );
\rdByteCntr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(4),
      I1 => \rdByteCntr_reg__0\(6),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(3),
      O => \rdByteCntr[2]_i_2_n_0\
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(3),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr[3]_i_2_n_0\,
      I3 => \rdByteCntr_reg__0\(3),
      O => p_0_in(4)
    );
\rdByteCntr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(5),
      I1 => \rdByteCntr_reg__0\(7),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(4),
      O => \rdByteCntr[3]_i_2_n_0\
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => Tx_fifo_data(4),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(6),
      I5 => \rdByteCntr_reg__0\(4),
      O => p_0_in(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Tx_fifo_data(5),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(5),
      O => p_0_in(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(6),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      O => p_0_in(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Tx_fifo_data(7),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      O => p_0_in(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(7),
      Q => \rdByteCntr_reg__0\(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(6),
      Q => \rdByteCntr_reg__0\(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(5),
      Q => \rdByteCntr_reg__0\(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(4),
      Q => \rdByteCntr_reg__0\(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(3),
      Q => \rdByteCntr_reg__0\(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(2),
      Q => \rdByteCntr_reg__0\(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(1),
      Q => \rdByteCntr_reg__0\(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => p_0_in(0),
      Q => \rdByteCntr_reg__0\(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => ackDataState_d1,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \^callingreadaccess\,
      I4 => rxCntDone_i_2_n_0,
      I5 => ackDataState,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(2),
      I1 => \rdByteCntr_reg__0\(1),
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(3),
      I5 => \rdByteCntr_reg__0\(4),
      O => rxCntDone_i_2_n_0
    );
rxCntDone_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_interrupt_control is
  port (
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    p_1_in11_in : out STD_LOGIC;
    p_1_in8_in : out STD_LOGIC;
    p_1_in5_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic2intc_irpt : out STD_LOGIC;
    \RESET_FLOPS[3].RST_FLOPS\ : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    p_27_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_interrupt_control : entity is "interrupt_control";
end MIPSfpga_system_axi_iic_0_0_interrupt_control;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_interrupt_control is
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[7].gen_reg_status.ip_irpt_status_reg_reg[7]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal iic2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal \^p_1_in11_in\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in2_in\ : STD_LOGIC;
  signal \^p_1_in5_in\ : STD_LOGIC;
  signal \^p_1_in8_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ <= \^gen_ip_irpt_status_reg[7].gen_reg_status.ip_irpt_status_reg_reg[7]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in11_in <= \^p_1_in11_in\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in2_in <= \^p_1_in2_in\;
  p_1_in5_in <= \^p_1_in5_in\;
  p_1_in8_in <= \^p_1_in8_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(0),
      I4 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I5 => IIC2Bus_IntrEvent(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(1),
      I4 => \^p_1_in17_in\,
      I5 => IIC2Bus_IntrEvent(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in17_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(2),
      I4 => \^p_1_in14_in\,
      I5 => IIC2Bus_IntrEvent(2),
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in14_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(3),
      I4 => \^p_1_in11_in\,
      I5 => IIC2Bus_IntrEvent(3),
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in11_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(4),
      I4 => \^p_1_in8_in\,
      I5 => IIC2Bus_IntrEvent(4),
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in8_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(5),
      I4 => \^p_1_in5_in\,
      I5 => IIC2Bus_IntrEvent(5),
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\,
      Q => \^p_1_in5_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(6),
      I4 => \^p_1_in2_in\,
      I5 => IIC2Bus_IntrEvent(6),
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in2_in\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg_reg,
      I2 => p_27_in,
      I3 => s_axi_wdata(7),
      I4 => \^gen_ip_irpt_status_reg[7].gen_reg_status.ip_irpt_status_reg_reg[7]_0\,
      I5 => IIC2Bus_IntrEvent(7),
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[7].gen_reg_status.ip_irpt_status_reg_reg[7]_0\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => iic2intc_irpt_INST_0_i_1_n_0,
      I2 => iic2intc_irpt_INST_0_i_2_n_0,
      I3 => iic2intc_irpt_INST_0_i_3_n_0,
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^p_1_in11_in\,
      I2 => \^p_1_in5_in\,
      I3 => \^q\(5),
      I4 => \^p_1_in8_in\,
      I5 => \^q\(4),
      O => iic2intc_irpt_INST_0_i_1_n_0
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^p_1_in2_in\,
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I3 => \^q\(0),
      I4 => \^gen_ip_irpt_status_reg[7].gen_reg_status.ip_irpt_status_reg_reg[7]_0\,
      I5 => \^q\(7),
      O => iic2intc_irpt_INST_0_i_2_n_0
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^p_1_in14_in\,
      I2 => \^q\(1),
      I3 => \^p_1_in17_in\,
      O => iic2intc_irpt_INST_0_i_3_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    dtre_d1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    callingReadAccess_reg : out STD_LOGIC;
    \cr_i_reg[5]_0\ : out STD_LOGIC;
    slave_sda_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \s_axi_rdata_i_reg[1]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \s_axi_rdata_i_reg[2]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_1\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_2\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_cout_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_3\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_scl_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_4\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_scl_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_scl_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_scl_state_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_scl_state_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_5\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_setup_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_6\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \cr_i_reg[5]_1\ : out STD_LOGIC;
    callingReadAccess_reg_0 : out STD_LOGIC;
    \Addr_Counters[0].FDRE_I\ : out STD_LOGIC;
    \Addr_Counters[0].FDRE_I_0\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    Data_Exists_DFF : out STD_LOGIC;
    ctrl_fifo_wr_i : out STD_LOGIC;
    Data_Exists_DFF_0 : out STD_LOGIC;
    txFifoRd : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Data_Exists_DFF_1 : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_7\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_8\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : out STD_LOGIC;
    rsta_tx_under_prev_reg : out STD_LOGIC;
    firstDynStartSeen_reg : out STD_LOGIC;
    \RESET_FLOPS[3].RST_FLOPS\ : in STD_LOGIC;
    \Addr_Counters[3].FDRE_I\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\ : in STD_LOGIC;
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    new_rcv_dta_i_reg : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_Exists_DFF_2 : in STD_LOGIC;
    Aas : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ : in STD_LOGIC;
    Rc_Data_Exists : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_int_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_int_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    buffer_Empty : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Data_Exists_DFF_3 : in STD_LOGIC;
    buffer_Empty_0 : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    buffer_Empty_1 : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Data_Exists_DFF_4 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dtre_d1 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    rsta_tx_under_prev_reg_0 : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    firstDynStartSeen_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    al_i_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_reg_interface : entity is "reg_interface";
end MIPSfpga_system_axi_iic_0_0_reg_interface;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_reg_interface is
  signal Cr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^iic2bus_intrevent\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^msms_set\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\ : STD_LOGIC;
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal \^ctrl_fifo_wr_i\ : STD_LOGIC;
  signal \^dtre_d1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msms_d1 : STD_LOGIC;
  signal msms_set_i_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_10_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[8]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_4\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_6\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^slave_sda_reg\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 7 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \^txfiford\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[1]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cr_i[5]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_10\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_10\ : label is "soft_lutpair26";
begin
  D(0) <= \^d\(0);
  IIC2Bus_IntrEvent(0 to 7) <= \^iic2bus_intrevent\(0 to 7);
  Msms_set <= \^msms_set\;
  Q(5 downto 0) <= \^q\(5 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  ctrl_fifo_wr_i <= \^ctrl_fifo_wr_i\;
  dtre_d1_reg(0) <= \^dtre_d1_reg\(0);
  gpo(0) <= \^gpo\(0);
  \s_axi_rdata_i_reg[8]\(8 downto 0) <= \^s_axi_rdata_i_reg[8]\(8 downto 0);
  \s_axi_rdata_i_reg[8]_0\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_0\(8 downto 0);
  \s_axi_rdata_i_reg[8]_1\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_1\(8 downto 0);
  \s_axi_rdata_i_reg[8]_2\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_2\(8 downto 0);
  \s_axi_rdata_i_reg[8]_3\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_3\(8 downto 0);
  \s_axi_rdata_i_reg[8]_4\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_4\(8 downto 0);
  \s_axi_rdata_i_reg[8]_5\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_5\(8 downto 0);
  \s_axi_rdata_i_reg[8]_6\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_6\(8 downto 0);
  slave_sda_reg(6 downto 0) <= \^slave_sda_reg\(6 downto 0);
  txFifoRd <= \^txfiford\;
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => callingReadAccess_reg_0
    );
\Addr_Counters[0].MUXCY_L_I_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      O => \Addr_Counters[0].FDRE_I\
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      O => \Addr_Counters[0].FDRE_I_0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBBBF88888888"
    )
        port map (
      I0 => \^ctrl_fifo_wr_i\,
      I1 => buffer_Empty,
      I2 => rdCntrFrmTxFifo,
      I3 => \^tx_fifo_rd\,
      I4 => Tx_fifo_rd_d,
      I5 => Data_Exists_DFF_3,
      O => Data_Exists_DFF
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2020"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      I2 => buffer_Empty_0,
      I3 => \^txfiford\,
      I4 => Tx_data_exists,
      O => Data_Exists_DFF_0
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF20202020"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      I2 => buffer_Empty_1,
      I3 => Rc_fifo_rd_d,
      I4 => \^rc_fifo_rd\,
      I5 => Rc_Data_Exists,
      O => Data_Exists_DFF_1
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => Tx_fifo_wr_d,
      I1 => \^tx_fifo_wr\,
      I2 => \^tx_fifo_rst\,
      I3 => \RESET_FLOPS[3].RST_FLOPS\,
      O => \^ctrl_fifo_wr_i\
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Tx_fifo_rd_d,
      I1 => \^tx_fifo_rd\,
      I2 => rdCntrFrmTxFifo,
      O => \^txfiford\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Addr_Counters[3].FDRE_I\,
      Q => \^iic2bus_intrevent\(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr(6),
      Q => \^tx_fifo_rst\,
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\,
      Q => \^tx_fifo_wr\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \^tx_fifo_rst\,
      I2 => \RESET_FLOPS[3].RST_FLOPS\,
      O => \cr_i_reg[5]_0\
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^tx_fifo_rst\,
      I2 => \RESET_FLOPS[3].RST_FLOPS\,
      O => callingReadAccess_reg
    );
\FSM_sequential_scl_state[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_thdsta_i(9),
      I1 => \q_int_reg[0]\(0),
      O => \FSM_sequential_scl_state_reg[0]_0\(0)
    );
\FSM_sequential_scl_state[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_tlow_i(9),
      I1 => \q_int_reg[0]\(0),
      O => \FSM_sequential_scl_state_reg[0]_1\(0)
    );
\FSM_sequential_scl_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => arb_lost,
      O => \FSM_sequential_scl_state_reg[1]\
    );
\FSM_sequential_scl_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_thddat_i(9),
      I1 => \q_int_reg[0]\(0),
      O => \FSM_sequential_scl_state_reg[2]\(0)
    );
\FSM_sequential_scl_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => SR(0)
    );
\FSM_sequential_scl_state[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_tsusta_i(9),
      I1 => \q_int_reg[0]\(0),
      O => \FSM_sequential_scl_state_reg[0]\(0)
    );
\FSM_sequential_scl_state[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_thigh_i(9),
      I1 => \q_int_reg[0]\(0),
      O => S(0)
    );
\FSM_sequential_scl_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_tbuf_i(9),
      I1 => \q_int_reg[0]\(0),
      O => \FSM_sequential_scl_state_reg[3]\(0)
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\,
      Q => \^gpo\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(4),
      Q => \^iic2bus_intrevent\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(3),
      Q => \^iic2bus_intrevent\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(2),
      Q => \^iic2bus_intrevent\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \^iic2bus_intrevent\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(1),
      Q => \^iic2bus_intrevent\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => \^iic2bus_intrevent\(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(0),
      Q => \^iic2bus_intrevent\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => new_rcv_dta_i_reg,
      Q => \^rc_fifo_wr\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\(0),
      D => s_axi_wdata(3),
      Q => p_1_in6_in,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\(0),
      D => s_axi_wdata(2),
      Q => p_1_in4_in,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\(0),
      D => s_axi_wdata(1),
      Q => p_1_in,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\(0),
      D => s_axi_wdata(0),
      Q => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7]\,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\,
      I1 => \^msms_set\,
      I2 => Rc_Data_Exists,
      I3 => \RESET_FLOPS[3].RST_FLOPS\,
      I4 => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\,
      O => \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_1_in4_in,
      I1 => Rc_addr(2),
      I2 => p_1_in,
      I3 => Rc_addr(1),
      O => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7]\,
      I1 => Rc_addr(0),
      I2 => p_1_in6_in,
      I3 => Rc_addr(3),
      O => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO_CNTRL.ro_prev_i_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(7),
      Q => \^slave_sda_reg\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(6),
      Q => \^slave_sda_reg\(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(5),
      Q => \^slave_sda_reg\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(4),
      Q => \^slave_sda_reg\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(3),
      Q => \^slave_sda_reg\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(2),
      Q => \^slave_sda_reg\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0),
      D => s_axi_wdata(1),
      Q => \^slave_sda_reg\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      O => \cr_i_reg[5]_1\
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => Cr(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0(2),
      Q => \^q\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0(1),
      Q => \^q\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0(0),
      Q => \^q\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => Cr(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => firstDynStartSeen,
      I1 => p_3_in,
      I2 => \^q\(1),
      I3 => \^tx_fifo_rst\,
      O => firstDynStartSeen_reg
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => msms_d1,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
msms_set_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3032003000220000"
    )
        port map (
      I0 => \^d\(0),
      I1 => \RESET_FLOPS[3].RST_FLOPS\,
      I2 => Data_Exists_DFF_4(1),
      I3 => \^q\(1),
      I4 => msms_d1,
      I5 => \^msms_set\,
      O => msms_set_i_i_1_n_0
    );
msms_set_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_set_i_i_1_n_0,
      Q => \^msms_set\,
      R => '0'
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A200A00000"
    )
        port map (
      I0 => \^q\(0),
      I1 => dtre_d1,
      I2 => \^dtre_d1_reg\(0),
      I3 => rsta_d1,
      I4 => \^q\(4),
      I5 => rsta_tx_under_prev_reg_0,
      O => rsta_tx_under_prev_reg
    );
\s_axi_rdata_i[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg_n_0_[7]\,
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]_1\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^q\(0),
      O => \s_axi_rdata_i_reg[0]\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^gpo\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]_0\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => sr_i(7),
      O => \s_axi_rdata_i_reg[0]_1\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_5\(0),
      I1 => Rc_addr(0),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_4\(0),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => Tx_fifo_data(0),
      O => \s_axi_rdata_i_reg[0]_0\
    );
\s_axi_rdata_i[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in,
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]_1\(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => Cr(6),
      O => \s_axi_rdata_i[1]_i_10_n_0\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_8_n_0\,
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \s_axi_rdata_i[1]_i_9_n_0\,
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[1]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[1]_0\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^iic2bus_intrevent\(5),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_0\(1),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[1]\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_5\(1),
      I1 => Rc_addr(1),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_4\(1),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => Tx_fifo_data(1),
      O => \s_axi_rdata_i[1]_i_8_n_0\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^slave_sda_reg\(0),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[1]_i_9_n_0\
    );
\s_axi_rdata_i[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in4_in,
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]_1\(2),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^q\(1),
      O => \s_axi_rdata_i[2]_i_10_n_0\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_8_n_0\,
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \s_axi_rdata_i[2]_i_9_n_0\,
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[2]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[2]_0\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(5),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_0\(2),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[2]\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_5\(2),
      I1 => Rc_addr(2),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_4\(2),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => Tx_fifo_data(2),
      O => \s_axi_rdata_i[2]_i_8_n_0\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^slave_sda_reg\(1),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[2]_i_9_n_0\
    );
\s_axi_rdata_i[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]_1\(3),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[3]_i_10_n_0\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_8_n_0\,
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \s_axi_rdata_i[3]_i_9_n_0\,
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[3]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[3]_0\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(4),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_0\(3),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[3]\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_5\(3),
      I1 => Rc_addr(3),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_4\(3),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => Tx_fifo_data(3),
      O => \s_axi_rdata_i[3]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^slave_sda_reg\(2),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[3]_i_9_n_0\
    );
\s_axi_rdata_i[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_1\(4),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i[4]_i_10_n_0\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^slave_sda_reg\(3),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[4]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[4]\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_6\(4),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => sr_i(3),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^s_axi_rdata_i_reg[8]_0\(4),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[4]_0\
    );
\s_axi_rdata_i[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_1\(5),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i[5]_i_10_n_0\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^slave_sda_reg\(4),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[5]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[5]\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_6\(5),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => sr_i(2),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^s_axi_rdata_i_reg[8]_0\(5),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[5]_0\
    );
\s_axi_rdata_i[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_1\(6),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i[6]_i_10_n_0\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^slave_sda_reg\(5),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(6),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[6]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[6]\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_6\(6),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => sr_i(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^s_axi_rdata_i_reg[8]_0\(6),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[6]_0\
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => Cr(0),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]_1\(7),
      I3 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i[7]_i_10_n_0\
    );
\s_axi_rdata_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^slave_sda_reg\(6),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => \^s_axi_rdata_i_reg[8]\(7),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \s_axi_rdata_i[7]_i_10_n_0\,
      O => \s_axi_rdata_i_reg[7]\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_6\(7),
      I1 => \bus2ip_addr_i_reg[6]\(1),
      I2 => \^dtre_d1_reg\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      I4 => \^s_axi_rdata_i_reg[8]_0\(7),
      I5 => \bus2ip_addr_i_reg[6]\(2),
      O => \s_axi_rdata_i_reg[7]_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_5\(8),
      I1 => \^s_axi_rdata_i_reg[8]_4\(8),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \^s_axi_rdata_i_reg[8]\(8),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \^s_axi_rdata_i_reg[8]_1\(8),
      O => \s_axi_rdata_i_reg[8]_7\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_2\(8),
      I1 => \^s_axi_rdata_i_reg[8]_3\(8),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => \^s_axi_rdata_i_reg[8]_6\(8),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => \^s_axi_rdata_i_reg[8]_0\(8),
      O => \s_axi_rdata_i_reg[8]_8\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(9),
      I1 => timing_param_tsusta_i(9),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => timing_param_thdsta_i(9),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => timing_param_tlow_i(9),
      O => \s_axi_rdata_i_reg[9]\
    );
\s_axi_rdata_i[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_thigh_i(9),
      I1 => timing_param_tsusto_i(9),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => timing_param_tsudat_i(9),
      I4 => \bus2ip_addr_i_reg[6]\(1),
      I5 => timing_param_thddat_i(9),
      O => \s_axi_rdata_i_reg[9]_0\
    );
sda_cout_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_tsusto_i(9),
      I1 => \q_int_reg[0]\(0),
      O => sda_cout_reg_reg(0)
    );
sda_setup_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => timing_param_tsudat_i(9),
      I1 => \q_int_reg[0]_0\(0),
      O => sda_setup_reg(0)
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_2,
      Q => \^dtre_d1_reg\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(5),
      Q => sr_i(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(4),
      Q => sr_i(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(3),
      Q => sr_i(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(2),
      Q => sr_i(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(1),
      Q => sr_i(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_4(0),
      Q => sr_i(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_5\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_5\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_5\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_5\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_5\(4),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_5\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_5\(6),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_5\(7),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_5\(8),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tbuf_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_tbuf_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_0\(0),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_0\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_0\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_0\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_0\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_0\(5),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_0\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_0\(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_0\(8),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thddat_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_thddat_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]\(1),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]\(3),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]\(7),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]\(8),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thdsta_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_thdsta_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_2\(0),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_2\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_2\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_2\(3),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_2\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_2\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_2\(6),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_2\(7),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_2\(8),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_thigh_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_thigh_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_1\(0),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_1\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_1\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_1\(3),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_1\(4),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_1\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_1\(6),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_1\(7),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_1\(8),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tlow_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_tlow_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_6\(0),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_6\(1),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_6\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_6\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_6\(4),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_6\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_6\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_6\(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_6\(8),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsudat_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsudat_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_4\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_4\(1),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_4\(2),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_4\(3),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_4\(4),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_4\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_4\(6),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_4\(7),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_4\(8),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusta_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsusta_i(9),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_3\(0),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_3\(1),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_3\(2),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_3\(3),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_3\(4),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_3\(5),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_3\(6),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_3\(7),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_3\(8),
      S => \RESET_FLOPS[3].RST_FLOPS\
    );
\timing_param_tsusto_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsusto_i(9),
      R => \RESET_FLOPS[3].RST_FLOPS\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_shift8 is
  port (
    \LEVEL_1_GEN.master_sda_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_reg_ld_reg : in STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_under_prev_i_reg : in STD_LOGIC;
    txak : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_shift8 : entity is "shift8";
end MIPSfpga_system_axi_iic_0_0_shift8;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair13";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBA88BABB"
    )
        port map (
      I0 => \^q\(7),
      I1 => \out\(0),
      I2 => tx_under_prev_i_reg,
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => txak,
      O => \LEVEL_1_GEN.master_sda_reg\
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(0),
      I1 => \^q\(0),
      I2 => shift_reg_ld_reg,
      O => \data_int[1]_i_1_n_0\
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(1),
      I1 => \^q\(1),
      I2 => shift_reg_ld_reg,
      O => \data_int[2]_i_1_n_0\
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(2),
      I1 => \^q\(2),
      I2 => shift_reg_ld_reg,
      O => \data_int[3]_i_1_n_0\
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(3),
      I1 => \^q\(3),
      I2 => shift_reg_ld_reg,
      O => \data_int[4]_i_1_n_0\
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(4),
      I1 => \^q\(4),
      I2 => shift_reg_ld_reg,
      O => \data_int[5]_i_1_n_0\
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(5),
      I1 => \^q\(5),
      I2 => shift_reg_ld_reg,
      O => \data_int[6]_i_1_n_0\
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_reg_ld_reg,
      I1 => shift_reg_en,
      O => \data_int[7]_i_1_n_0\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Tx_fifo_data(6),
      I1 => \^q\(6),
      I2 => shift_reg_ld_reg,
      O => \data_int[7]_i_2_n_0\
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[1]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[2]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[3]_i_1_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[4]_i_1_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[5]_i_1_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[6]_i_1_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[7]_i_2_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_shift8_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    slave_sda_reg : out STD_LOGIC;
    shift_reg_ld0 : out STD_LOGIC;
    abgc_i_reg : out STD_LOGIC;
    aas_i_reg : out STD_LOGIC;
    srw_i_reg : out STD_LOGIC;
    sda_sample_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    detect_start_reg : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.ro_prev_i_reg\ : in STD_LOGIC;
    master_slave : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txak : in STD_LOGIC;
    \data_int_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    srw_i_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    detect_start : in STD_LOGIC;
    tx_under_prev_i_reg : in STD_LOGIC;
    detect_stop_reg : in STD_LOGIC;
    aas_i_reg_0 : in STD_LOGIC;
    arb_lost_reg : in STD_LOGIC;
    sda_sample : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    sda_clean : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_shift8_1 : entity is "shift8";
end MIPSfpga_system_axi_iic_0_0_shift8_1;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_shift8_1 is
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal abgc_i_i_2_n_0 : STD_LOGIC;
  signal abgc_i_i_3_n_0 : STD_LOGIC;
  signal addr_match : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_reg_ld_i_2_n_0 : STD_LOGIC;
  signal slave_sda_i_3_n_0 : STD_LOGIC;
  signal slave_sda_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair14";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF8C8"
    )
        port map (
      I0 => sda_sample_reg,
      I1 => \out\(2),
      I2 => \FSM_onehot_state[5]_i_4_n_0\,
      I3 => detect_start_reg,
      I4 => \FSM_onehot_state_reg[3]\,
      I5 => \FSM_onehot_state_reg[0]\,
      O => D(0)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.ro_prev_i_reg\,
      I1 => \out\(2),
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      O => D(1)
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001011110010"
    )
        port map (
      I0 => arb_lost_reg,
      I1 => sda_sample,
      I2 => addr_match,
      I3 => p_0_in(0),
      I4 => master_slave,
      I5 => Q(1),
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => arb_lost_reg,
      I1 => sda_sample,
      I2 => \FSM_onehot_state_reg[0]\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => \out\(2),
      I5 => \FSM_onehot_state[4]_i_4_n_0\,
      O => D(2)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020000"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(4),
      I2 => \out\(3),
      I3 => \out\(5),
      I4 => master_slave,
      I5 => addr_match,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => Q(1),
      I1 => master_slave,
      I2 => p_0_in(0),
      I3 => addr_match,
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]\,
      I1 => \FSM_onehot_state_reg[4]\,
      I2 => \out\(3),
      I3 => detect_start,
      I4 => \FSM_onehot_state[5]_i_4_n_0\,
      O => D(3)
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_match,
      I1 => master_slave,
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => aas_i_reg_0,
      I1 => \out\(2),
      I2 => Q(0),
      I3 => detect_stop_reg,
      I4 => addr_match,
      O => aas_i_reg
    );
abgc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EA00"
    )
        port map (
      I0 => srw_i_reg_0(0),
      I1 => abgc_i_i_2_n_0,
      I2 => abgc_i_i_3_n_0,
      I3 => Q(0),
      I4 => detect_stop_reg,
      I5 => detect_start,
      O => abgc_i_reg
    );
abgc_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => p_0_in(0),
      I1 => Q(2),
      I2 => p_0_in(1),
      I3 => p_0_in(7),
      O => abgc_i_i_2_n_0
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => \out\(2),
      I3 => p_0_in(6),
      I4 => p_0_in(4),
      I5 => p_0_in(5),
      O => abgc_i_i_3_n_0
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => sda_clean,
      Q => p_0_in(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(0),
      Q => p_0_in(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(1),
      Q => p_0_in(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(2),
      Q => p_0_in(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(3),
      Q => p_0_in(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(4),
      Q => p_0_in(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(5),
      Q => p_0_in(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(6),
      Q => p_0_in(7),
      R => SR(0)
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(3),
      I2 => detect_start,
      I3 => tx_under_prev_i_reg,
      I4 => shift_reg_ld_i_2_n_0,
      O => shift_reg_ld0
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8A808"
    )
        port map (
      I0 => \out\(2),
      I1 => p_0_in(0),
      I2 => master_slave,
      I3 => Q(1),
      I4 => \out\(0),
      O => shift_reg_ld_i_2_n_0
    );
slave_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBA888ABBBABBB"
    )
        port map (
      I0 => txak,
      I1 => \out\(5),
      I2 => \out\(2),
      I3 => addr_match,
      I4 => \data_int_reg[7]_0\(0),
      I5 => \out\(4),
      O => slave_sda_reg
    );
slave_sda_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAEA"
    )
        port map (
      I0 => srw_i_reg_0(0),
      I1 => slave_sda_i_3_n_0,
      I2 => slave_sda_i_4_n_0,
      I3 => \adr_i_reg[0]\(6),
      I4 => p_0_in(7),
      O => addr_match
    );
slave_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \adr_i_reg[0]\(0),
      I2 => \adr_i_reg[0]\(2),
      I3 => p_0_in(3),
      I4 => \adr_i_reg[0]\(1),
      I5 => p_0_in(2),
      O => slave_sda_i_3_n_0
    );
slave_sda_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \adr_i_reg[0]\(3),
      I2 => \adr_i_reg[0]\(5),
      I3 => p_0_in(6),
      I4 => \adr_i_reg[0]\(4),
      I5 => p_0_in(5),
      O => slave_sda_i_4_n_0
    );
srw_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => srw_i_reg_0(1),
      I1 => \out\(2),
      I2 => p_0_in(0),
      I3 => Q(0),
      O => srw_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sw_rst_cond_d1_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_soft_reset : entity is "soft_reset";
end MIPSfpga_system_axi_iic_0_0_soft_reset;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_n_0\ : STD_LOGIC;
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 3 );
  signal reset_trig : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair48";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair48";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      I1 => s_axi_aresetn,
      O => SR(0)
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig,
      Q => flop_q_chain(1),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_trig,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_trig,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_trig,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond_d1_reg_0,
      Q => reset_trig,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_upcnt_n is
  port (
    \q_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    stop_scl_reg_reg : out STD_LOGIC;
    sda_cout_reg_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scl_clean : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : in STD_LOGIC;
    \cr_i_reg[2]\ : in STD_LOGIC;
    stop_scl_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_lost_reg : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    bus_busy_reg : in STD_LOGIC;
    master_slave : in STD_LOGIC;
    gen_start_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]_0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thddat_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tsusto_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tsusta_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_thdsta_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tlow_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_cout1 : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]_1\ : in STD_LOGIC;
    sda_cout_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_upcnt_n : entity is "upcnt_n";
end MIPSfpga_system_axi_iic_0_0_upcnt_n;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_upcnt_n is
  signal \FSM_sequential_scl_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_5_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_5_n_3\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_6_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_6_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_6_n_3\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_7_n_2\ : STD_LOGIC;
  signal \FSM_sequential_scl_state_reg[3]_i_7_n_3\ : STD_LOGIC;
  signal clk_cnt_en1 : STD_LOGIC;
  signal clk_cnt_en11_out : STD_LOGIC;
  signal clk_cnt_en12_out : STD_LOGIC;
  signal clk_cnt_en2 : STD_LOGIC;
  signal clk_cnt_rst : STD_LOGIC;
  signal next_scl_state1 : STD_LOGIC;
  signal next_scl_state10_out : STD_LOGIC;
  signal next_scl_state13_out : STD_LOGIC;
  signal \q_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \^q_int_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 1 to 9 );
  signal sda_cout_reg_i_4_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_6_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_7_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_8_n_0 : STD_LOGIC;
  signal sda_cout_reg_reg_i_2_n_1 : STD_LOGIC;
  signal sda_cout_reg_reg_i_2_n_2 : STD_LOGIC;
  signal sda_cout_reg_reg_i_2_n_3 : STD_LOGIC;
  signal stop_scl : STD_LOGIC;
  signal \NLW_FSM_sequential_scl_state_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_scl_state_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_scl_state_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_scl_state_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_scl_state_reg[3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_scl_state_reg[3]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sda_cout_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_int[0]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_int[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_int[9]_i_1\ : label is "soft_lutpair9";
begin
  \q_int_reg[0]_0\(0) <= \^q_int_reg[0]_0\(0);
\FSM_sequential_scl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \FSM_sequential_scl_state[0]_i_2_n_0\,
      I1 => \out\(1),
      I2 => \FSM_sequential_scl_state[0]_i_3_n_0\,
      I3 => \out\(0),
      I4 => \FSM_sequential_scl_state[0]_i_4_n_0\,
      I5 => \out\(3),
      O => D(0)
    );
\FSM_sequential_scl_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_tlow_i_reg[8]\(0),
      I2 => \timing_param_tlow_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_tlow_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[0]_i_10_n_0\
    );
\FSM_sequential_scl_state[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_thdsta_i_reg[8]\(6),
      I2 => \timing_param_thdsta_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_thdsta_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[0]_i_12_n_0\
    );
\FSM_sequential_scl_state[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_thdsta_i_reg[8]\(3),
      I2 => \timing_param_thdsta_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_thdsta_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[0]_i_13_n_0\
    );
\FSM_sequential_scl_state[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_thdsta_i_reg[8]\(0),
      I2 => \timing_param_thdsta_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_thdsta_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[0]_i_14_n_0\
    );
\FSM_sequential_scl_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => next_scl_state10_out,
      I1 => \out\(2),
      I2 => bus_busy_reg,
      I3 => master_slave,
      I4 => gen_start_reg,
      O => \FSM_sequential_scl_state[0]_i_2_n_0\
    );
\FSM_sequential_scl_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => arb_lost_reg,
      I1 => \out\(2),
      I2 => next_scl_state13_out,
      O => \FSM_sequential_scl_state[0]_i_3_n_0\
    );
\FSM_sequential_scl_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05F7AFA2"
    )
        port map (
      I0 => \out\(1),
      I1 => clk_cnt_en2,
      I2 => scl_clean,
      I3 => \out\(2),
      I4 => sda_clean,
      O => \FSM_sequential_scl_state[0]_i_4_n_0\
    );
\FSM_sequential_scl_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_tlow_i_reg[8]\(6),
      I2 => \timing_param_tlow_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_tlow_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[0]_i_8_n_0\
    );
\FSM_sequential_scl_state[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_tlow_i_reg[8]\(3),
      I2 => \timing_param_tlow_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_tlow_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[0]_i_9_n_0\
    );
\FSM_sequential_scl_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0070"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I1 => clk_cnt_en2,
      I2 => \out\(0),
      I3 => sda_clean,
      I4 => \FSM_sequential_scl_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_scl_state_reg[1]\,
      O => D(1)
    );
\FSM_sequential_scl_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDF00DFFFFFFFFF"
    )
        port map (
      I0 => clk_cnt_en2,
      I1 => scl_clean,
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \cr_i_reg[2]\,
      I5 => \out\(1),
      O => \FSM_sequential_scl_state[1]_i_3_n_0\
    );
\FSM_sequential_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040055550400"
    )
        port map (
      I0 => \out\(3),
      I1 => clk_cnt_en2,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \FSM_sequential_scl_state_reg[1]_0\,
      O => D(2)
    );
\FSM_sequential_scl_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_thddat_i_reg[8]\(6),
      I2 => \timing_param_thddat_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_thddat_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[2]_i_6_n_0\
    );
\FSM_sequential_scl_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_thddat_i_reg[8]\(3),
      I2 => \timing_param_thddat_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_thddat_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[2]_i_7_n_0\
    );
\FSM_sequential_scl_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_thddat_i_reg[8]\(0),
      I2 => \timing_param_thddat_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_thddat_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[2]_i_8_n_0\
    );
\FSM_sequential_scl_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_tbuf_i_reg[8]\(3),
      I2 => \timing_param_tbuf_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_tbuf_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[3]_i_10_n_0\
    );
\FSM_sequential_scl_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_tbuf_i_reg[8]\(0),
      I2 => \timing_param_tbuf_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_tbuf_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[3]_i_11_n_0\
    );
\FSM_sequential_scl_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_tsusta_i_reg[8]\(6),
      I2 => \timing_param_tsusta_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_tsusta_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[3]_i_13_n_0\
    );
\FSM_sequential_scl_state[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_tsusta_i_reg[8]\(3),
      I2 => \timing_param_tsusta_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_tsusta_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[3]_i_14_n_0\
    );
\FSM_sequential_scl_state[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_tsusta_i_reg[8]\(0),
      I2 => \timing_param_tsusta_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_tsusta_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[3]_i_15_n_0\
    );
\FSM_sequential_scl_state[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_thigh_i_reg[8]\(6),
      I2 => \timing_param_thigh_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_thigh_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[3]_i_17_n_0\
    );
\FSM_sequential_scl_state[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_thigh_i_reg[8]\(3),
      I2 => \timing_param_thigh_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_thigh_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => \FSM_sequential_scl_state[3]_i_18_n_0\
    );
\FSM_sequential_scl_state[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_thigh_i_reg[8]\(0),
      I2 => \timing_param_thigh_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_thigh_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => \FSM_sequential_scl_state[3]_i_19_n_0\
    );
\FSM_sequential_scl_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00110011FFFFFFF7"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => arb_lost_reg,
      I3 => \out\(0),
      I4 => \FSM_sequential_scl_state[3]_i_4_n_0\,
      I5 => \out\(3),
      O => E(0)
    );
\FSM_sequential_scl_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00000110000"
    )
        port map (
      I0 => next_scl_state1,
      I1 => \out\(0),
      I2 => sda_clean,
      I3 => \out\(2),
      I4 => \out\(3),
      I5 => \out\(1),
      O => D(3)
    );
\FSM_sequential_scl_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => clk_cnt_en12_out,
      I1 => Q(0),
      I2 => clk_cnt_en11_out,
      I3 => stop_scl_reg,
      I4 => clk_cnt_en1,
      O => \FSM_sequential_scl_state[3]_i_4_n_0\
    );
\FSM_sequential_scl_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_tbuf_i_reg[8]\(6),
      I2 => \timing_param_tbuf_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_tbuf_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => \FSM_sequential_scl_state[3]_i_9_n_0\
    );
\FSM_sequential_scl_state_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_scl_state10_out,
      CO(2) => \FSM_sequential_scl_state_reg[0]_i_5_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[0]_i_5_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[0]_i_5_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \timing_param_tlow_i_reg[9]\(0),
      S(2) => \FSM_sequential_scl_state[0]_i_8_n_0\,
      S(1) => \FSM_sequential_scl_state[0]_i_9_n_0\,
      S(0) => \FSM_sequential_scl_state[0]_i_10_n_0\
    );
\FSM_sequential_scl_state_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_scl_state13_out,
      CO(2) => \FSM_sequential_scl_state_reg[0]_i_6_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[0]_i_6_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[0]_i_6_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \timing_param_thdsta_i_reg[9]\(0),
      S(2) => \FSM_sequential_scl_state[0]_i_12_n_0\,
      S(1) => \FSM_sequential_scl_state[0]_i_13_n_0\,
      S(0) => \FSM_sequential_scl_state[0]_i_14_n_0\
    );
\FSM_sequential_scl_state_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt_en2,
      CO(2) => \FSM_sequential_scl_state_reg[2]_i_2_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[2]_i_2_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[2]_i_2_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \timing_param_thddat_i_reg[9]\(0),
      S(2) => \FSM_sequential_scl_state[2]_i_6_n_0\,
      S(1) => \FSM_sequential_scl_state[2]_i_7_n_0\,
      S(0) => \FSM_sequential_scl_state[2]_i_8_n_0\
    );
\FSM_sequential_scl_state_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_scl_state1,
      CO(2) => \FSM_sequential_scl_state_reg[3]_i_5_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[3]_i_5_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[3]_i_5_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \timing_param_tbuf_i_reg[9]\(0),
      S(2) => \FSM_sequential_scl_state[3]_i_9_n_0\,
      S(1) => \FSM_sequential_scl_state[3]_i_10_n_0\,
      S(0) => \FSM_sequential_scl_state[3]_i_11_n_0\
    );
\FSM_sequential_scl_state_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt_en12_out,
      CO(2) => \FSM_sequential_scl_state_reg[3]_i_6_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[3]_i_6_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[3]_i_6_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[3]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \timing_param_tsusta_i_reg[9]\(0),
      S(2) => \FSM_sequential_scl_state[3]_i_13_n_0\,
      S(1) => \FSM_sequential_scl_state[3]_i_14_n_0\,
      S(0) => \FSM_sequential_scl_state[3]_i_15_n_0\
    );
\FSM_sequential_scl_state_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt_en1,
      CO(2) => \FSM_sequential_scl_state_reg[3]_i_7_n_1\,
      CO(1) => \FSM_sequential_scl_state_reg[3]_i_7_n_2\,
      CO(0) => \FSM_sequential_scl_state_reg[3]_i_7_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_scl_state_reg[3]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => S(0),
      S(2) => \FSM_sequential_scl_state[3]_i_17_n_0\,
      S(1) => \FSM_sequential_scl_state[3]_i_18_n_0\,
      S(0) => \FSM_sequential_scl_state[3]_i_19_n_0\
    );
\q_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEEEFEAEAEEEAE"
    )
        port map (
      I0 => clk_cnt_rst,
      I1 => \q_int[0]_i_4__0_n_0\,
      I2 => \out\(2),
      I3 => \FSM_sequential_scl_state[3]_i_4_n_0\,
      I4 => arb_lost_reg,
      I5 => \q_int[0]_i_5__0_n_0\,
      O => \q_int[0]_i_1_n_0\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \q_int_reg__0\(3),
      I3 => \q_int[0]_i_6_n_0\,
      I4 => \q_int_reg__0\(2),
      I5 => clk_cnt_rst,
      O => \q_int[0]_i_2_n_0\
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA02"
    )
        port map (
      I0 => \q_int[0]_i_7_n_0\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => \q_int[0]_i_8_n_0\,
      O => clk_cnt_rst
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000005555AA"
    )
        port map (
      I0 => \out\(3),
      I1 => clk_cnt_en2,
      I2 => scl_clean,
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => \out\(0),
      O => \q_int[0]_i_4__0_n_0\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001055555F5F"
    )
        port map (
      I0 => \out\(3),
      I1 => clk_cnt_en2,
      I2 => \out\(1),
      I3 => scl_clean,
      I4 => \out\(2),
      I5 => \out\(0),
      O => \q_int[0]_i_5__0_n_0\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => \q_int_reg__0\(5),
      O => \q_int[0]_i_6_n_0\
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
        port map (
      I0 => \out\(3),
      I1 => clk_cnt_en2,
      I2 => \out\(2),
      I3 => scl_clean,
      I4 => \out\(1),
      O => \q_int[0]_i_7_n_0\
    );
\q_int[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00B8000000B8"
    )
        port map (
      I0 => clk_cnt_en11_out,
      I1 => stop_scl_reg,
      I2 => clk_cnt_en1,
      I3 => \q_int[0]_i_9_n_0\,
      I4 => Q(0),
      I5 => clk_cnt_en12_out,
      O => \q_int[0]_i_8_n_0\
    );
\q_int[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \out\(2),
      I1 => arb_lost_reg,
      I2 => \out\(1),
      O => \q_int[0]_i_9_n_0\
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \q_int_reg__0\(1),
      I1 => \q_int_reg__0\(2),
      I2 => \q_int[0]_i_6_n_0\,
      I3 => \q_int_reg__0\(3),
      I4 => clk_cnt_rst,
      O => \q_int[1]_i_1_n_0\
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(3),
      I2 => \q_int[0]_i_6_n_0\,
      I3 => clk_cnt_rst,
      O => \q_int[2]_i_1_n_0\
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int[0]_i_6_n_0\,
      I2 => clk_cnt_rst,
      O => \q_int[3]_i_1_n_0\
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int[4]_i_2_n_0\,
      I2 => clk_cnt_rst,
      O => \q_int[4]_i_1_n_0\
    );
\q_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => \q_int_reg__0\(6),
      O => \q_int[4]_i_2_n_0\
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => clk_cnt_rst,
      O => \q_int[5]_i_1_n_0\
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => clk_cnt_rst,
      O => \q_int[6]_i_1_n_0\
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \q_int_reg__0\(7),
      I1 => \q_int_reg__0\(8),
      I2 => \q_int_reg__0\(9),
      I3 => clk_cnt_rst,
      O => \q_int[7]_i_1_n_0\
    );
\q_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(8),
      I1 => \q_int_reg__0\(9),
      I2 => clk_cnt_rst,
      O => \q_int[8]_i_1_n_0\
    );
\q_int[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => clk_cnt_rst,
      O => \q_int[9]_i_1_n_0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[0]_i_2_n_0\,
      Q => \^q_int_reg[0]_0\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[1]_i_1_n_0\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[2]_i_1_n_0\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[3]_i_1_n_0\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[4]_i_1_n_0\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[5]_i_1_n_0\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[6]_i_1_n_0\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[7]_i_1_n_0\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[8]_i_1_n_0\,
      Q => \q_int_reg__0\(8),
      R => SR(0)
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[9]_i_1_n_0\,
      Q => \q_int_reg__0\(9),
      R => SR(0)
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FCFC00080C0C"
    )
        port map (
      I0 => clk_cnt_en11_out,
      I1 => \FSM_sequential_scl_state_reg[1]_1\,
      I2 => \out\(3),
      I3 => sda_cout_reg_i_4_n_0,
      I4 => \out\(1),
      I5 => sda_cout_reg,
      O => sda_cout_reg_reg
    );
sda_cout_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFFFF"
    )
        port map (
      I0 => clk_cnt_en11_out,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => arb_lost_reg,
      I4 => stop_scl_reg,
      I5 => Q(0),
      O => sda_cout_reg_i_4_n_0
    );
sda_cout_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_tsusto_i_reg[8]\(6),
      I2 => \timing_param_tsusto_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_tsusto_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => sda_cout_reg_i_6_n_0
    );
sda_cout_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_tsusto_i_reg[8]\(3),
      I2 => \timing_param_tsusto_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_tsusto_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => sda_cout_reg_i_7_n_0
    );
sda_cout_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_tsusto_i_reg[8]\(0),
      I2 => \timing_param_tsusto_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_tsusto_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => sda_cout_reg_i_8_n_0
    );
sda_cout_reg_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt_en11_out,
      CO(2) => sda_cout_reg_reg_i_2_n_1,
      CO(1) => sda_cout_reg_reg_i_2_n_2,
      CO(0) => sda_cout_reg_reg_i_2_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_sda_cout_reg_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => \timing_param_tsusto_i_reg[9]\(0),
      S(2) => sda_cout_reg_i_6_n_0,
      S(1) => sda_cout_reg_i_7_n_0,
      S(0) => sda_cout_reg_i_8_n_0
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(3),
      I2 => \out\(2),
      I3 => sda_cout1,
      I4 => stop_scl,
      I5 => stop_scl_reg,
      O => stop_scl_reg_reg
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00555555100055FF"
    )
        port map (
      I0 => \out\(3),
      I1 => \cr_i_reg[2]_0\,
      I2 => clk_cnt_en11_out,
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => \out\(0),
      O => stop_scl
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_upcnt_n_2 is
  port (
    \q_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sda_setup_reg : out STD_LOGIC;
    \timing_param_tsudat_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sda_setup_reg_0 : in STD_LOGIC;
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_clean : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    tx_under_prev_i_reg : in STD_LOGIC;
    tx_under_prev_d1 : in STD_LOGIC;
    gen_stop_d1 : in STD_LOGIC;
    gen_stop_reg : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scl_clean : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_upcnt_n_2 : entity is "upcnt_n";
end MIPSfpga_system_axi_iic_0_0_upcnt_n_2;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_upcnt_n_2 is
  signal p_13_in : STD_LOGIC;
  signal \q_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_int_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 1 to 9 );
  signal sda_setup_i_4_n_0 : STD_LOGIC;
  signal sda_setup_i_5_n_0 : STD_LOGIC;
  signal sda_setup_i_6_n_0 : STD_LOGIC;
  signal sda_setup_reg_i_2_n_0 : STD_LOGIC;
  signal sda_setup_reg_i_2_n_1 : STD_LOGIC;
  signal sda_setup_reg_i_2_n_2 : STD_LOGIC;
  signal sda_setup_reg_i_2_n_3 : STD_LOGIC;
  signal NLW_sda_setup_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_int[4]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_int[6]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_int[7]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_int[8]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_int[9]_i_1__0\ : label is "soft_lutpair18";
begin
  \q_int_reg[0]_0\(0) <= \^q_int_reg[0]_0\(0);
\q_int[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_13_in,
      I1 => sda_setup_reg_0,
      O => \q_int[0]_i_1__0_n_0\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \^q_int_reg[0]_0\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \q_int_reg__0\(3),
      I3 => \q_int[0]_i_4_n_0\,
      I4 => \q_int_reg__0\(2),
      I5 => p_13_in,
      O => \q_int[0]_i_2__1_n_0\
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFBEBE"
    )
        port map (
      I0 => \q_int[0]_i_5_n_0\,
      I1 => sda_clean,
      I2 => sda_rin_d1,
      I3 => tx_under_prev_i_reg,
      I4 => tx_under_prev_d1,
      O => p_13_in
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => \q_int_reg__0\(5),
      O => \q_int[0]_i_4_n_0\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => gen_stop_d1,
      I1 => gen_stop_reg,
      I2 => rsta_d1,
      I3 => Q(1),
      O => \q_int[0]_i_5_n_0\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \q_int_reg__0\(1),
      I1 => \q_int_reg__0\(2),
      I2 => \q_int[0]_i_4_n_0\,
      I3 => \q_int_reg__0\(3),
      I4 => p_13_in,
      O => \q_int[1]_i_1__1_n_0\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(3),
      I2 => \q_int[0]_i_4_n_0\,
      I3 => p_13_in,
      O => \q_int[2]_i_1__1_n_0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \q_int[0]_i_4_n_0\,
      I2 => p_13_in,
      O => \q_int[3]_i_1__0_n_0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int[4]_i_2__0_n_0\,
      I2 => p_13_in,
      O => \q_int[4]_i_1__0_n_0\
    );
\q_int[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => \q_int_reg__0\(6),
      O => \q_int[4]_i_2__0_n_0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => p_13_in,
      O => \q_int[5]_i_1__0_n_0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => p_13_in,
      O => \q_int[6]_i_1__0_n_0\
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \q_int_reg__0\(7),
      I1 => \q_int_reg__0\(8),
      I2 => \q_int_reg__0\(9),
      I3 => p_13_in,
      O => \q_int[7]_i_1__0_n_0\
    );
\q_int[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg__0\(8),
      I1 => \q_int_reg__0\(9),
      I2 => p_13_in,
      O => \q_int[8]_i_1__0_n_0\
    );
\q_int[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => p_13_in,
      O => \q_int[9]_i_1__0_n_0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[0]_i_2__1_n_0\,
      Q => \^q_int_reg[0]_0\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[1]_i_1__1_n_0\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[2]_i_1__1_n_0\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[3]_i_1__0_n_0\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[4]_i_1__0_n_0\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[5]_i_1__0_n_0\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[6]_i_1__0_n_0\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[7]_i_1__0_n_0\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[8]_i_1__0_n_0\,
      Q => \q_int_reg__0\(8),
      R => SR(0)
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[9]_i_1__0_n_0\,
      Q => \q_int_reg__0\(9),
      R => SR(0)
    );
sda_setup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAA20000AAA0"
    )
        port map (
      I0 => Q(0),
      I1 => sda_setup_reg_i_2_n_0,
      I2 => tx_under_prev_i_reg,
      I3 => p_13_in,
      I4 => scl_clean,
      I5 => sda_setup_reg_0,
      O => sda_setup_reg
    );
sda_setup_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(3),
      I1 => \timing_param_tsudat_i_reg[8]\(6),
      I2 => \timing_param_tsudat_i_reg[8]\(8),
      I3 => \q_int_reg__0\(1),
      I4 => \timing_param_tsudat_i_reg[8]\(7),
      I5 => \q_int_reg__0\(2),
      O => sda_setup_i_4_n_0
    );
sda_setup_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(6),
      I1 => \timing_param_tsudat_i_reg[8]\(3),
      I2 => \timing_param_tsudat_i_reg[8]\(5),
      I3 => \q_int_reg__0\(4),
      I4 => \timing_param_tsudat_i_reg[8]\(4),
      I5 => \q_int_reg__0\(5),
      O => sda_setup_i_5_n_0
    );
sda_setup_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(9),
      I1 => \timing_param_tsudat_i_reg[8]\(0),
      I2 => \timing_param_tsudat_i_reg[8]\(2),
      I3 => \q_int_reg__0\(7),
      I4 => \timing_param_tsudat_i_reg[8]\(1),
      I5 => \q_int_reg__0\(8),
      O => sda_setup_i_6_n_0
    );
sda_setup_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sda_setup_reg_i_2_n_0,
      CO(2) => sda_setup_reg_i_2_n_1,
      CO(1) => sda_setup_reg_i_2_n_2,
      CO(0) => sda_setup_reg_i_2_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_sda_setup_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => \timing_param_tsudat_i_reg[9]\(0),
      S(2) => sda_setup_i_4_n_0,
      S(1) => sda_setup_i_5_n_0,
      S(0) => sda_setup_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EarlyAckDataState0 : out STD_LOGIC;
    dtc_i_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    detect_start : in STD_LOGIC;
    state1 : in STD_LOGIC;
    bit_cnt_en : in STD_LOGIC;
    scl_falling_edge : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dtc_i : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0\;

architecture STRUCTURE of \MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0\ is
  signal \FSM_onehot_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_7_n_0\ : STD_LOGIC;
  signal bit_cnt_ld : STD_LOGIC;
  signal dtc_i_i_2_n_0 : STD_LOGIC;
  signal \q_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_int_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__0\ : label is "soft_lutpair5";
begin
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAEAAAAAAA"
    )
        port map (
      I0 => \out\(4),
      I1 => \q_int_reg_n_0_[3]\,
      I2 => \q_int_reg_n_0_[2]\,
      I3 => \q_int_reg_n_0_[1]\,
      I4 => \out\(3),
      I5 => \q_int_reg_n_0_[0]\,
      O => EarlyAckDataState0
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => state1,
      I1 => \FSM_onehot_state[6]_i_5_n_0\,
      I2 => \out\(2),
      I3 => detect_start,
      I4 => \out\(0),
      O => E(0)
    );
\FSM_onehot_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFCFCFC"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(5),
      I2 => \out\(4),
      I3 => \FSM_onehot_state_reg[4]\,
      I4 => detect_start,
      I5 => \FSM_onehot_state[6]_i_7_n_0\,
      O => \FSM_onehot_state[6]_i_5_n_0\
    );
\FSM_onehot_state[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \q_int_reg_n_0_[3]\,
      I1 => \q_int_reg_n_0_[1]\,
      I2 => \q_int_reg_n_0_[0]\,
      I3 => \q_int_reg_n_0_[2]\,
      O => \FSM_onehot_state[6]_i_7_n_0\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
        port map (
      I0 => \q_int_reg_n_0_[0]\,
      I1 => \q_int_reg_n_0_[1]\,
      I2 => dtc_i_i_2_n_0,
      I3 => scl_falling_edge,
      I4 => Q(0),
      I5 => dtc_i,
      O => dtc_i_reg
    );
dtc_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q_int_reg_n_0_[2]\,
      I1 => \q_int_reg_n_0_[3]\,
      O => dtc_i_i_2_n_0
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \out\(5),
      I1 => \out\(2),
      I2 => \out\(4),
      I3 => detect_start,
      I4 => \out\(0),
      I5 => bit_cnt_en,
      O => \q_int[0]_i_1__1_n_0\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \q_int_reg_n_0_[0]\,
      I1 => \q_int_reg_n_0_[1]\,
      I2 => \q_int_reg_n_0_[3]\,
      I3 => \q_int_reg_n_0_[2]\,
      I4 => bit_cnt_ld,
      O => \q_int[0]_i_2__0_n_0\
    );
\q_int[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \out\(0),
      I1 => detect_start,
      I2 => \out\(4),
      I3 => \out\(2),
      I4 => \out\(5),
      O => bit_cnt_ld
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \q_int_reg_n_0_[1]\,
      I1 => \q_int_reg_n_0_[2]\,
      I2 => \q_int_reg_n_0_[3]\,
      I3 => bit_cnt_ld,
      O => \q_int[1]_i_1__0_n_0\
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q_int_reg_n_0_[2]\,
      I1 => \q_int_reg_n_0_[3]\,
      I2 => bit_cnt_ld,
      O => \q_int[2]_i_1__0_n_0\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \q_int_reg_n_0_[3]\,
      I1 => \out\(5),
      I2 => \out\(2),
      I3 => \out\(4),
      I4 => detect_start,
      I5 => \out\(0),
      O => \q_int[3]_i_1__1_n_0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[0]_i_2__0_n_0\,
      Q => \q_int_reg_n_0_[0]\,
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[1]_i_1__0_n_0\,
      Q => \q_int_reg_n_0_[1]\,
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[2]_i_1__0_n_0\,
      Q => \q_int_reg_n_0_[2]\,
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[3]_i_1__1_n_0\,
      Q => \q_int_reg_n_0_[3]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_debounce is
  port (
    scl_rising_edge_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_debounce : entity is "debounce";
end MIPSfpga_system_axi_iic_0_0_debounce;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_debounce is
begin
INPUT_DOUBLE_REGS: entity work.MIPSfpga_system_axi_iic_0_0_cdc_sync_4
     port map (
      \FSM_sequential_scl_state_reg[1]\ => \FSM_sequential_scl_state_reg[1]\,
      \FSM_sequential_scl_state_reg[2]\ => \FSM_sequential_scl_state_reg[2]\,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge_reg => scl_rising_edge_reg,
      scndry_out => scndry_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_debounce_3 is
  port (
    detect_stop_reg : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_debounce_3 : entity is "debounce";
end MIPSfpga_system_axi_iic_0_0_debounce_3;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.MIPSfpga_system_axi_iic_0_0_cdc_sync
     port map (
      Sda_clean => Sda_clean,
      detect_stop_reg => detect_stop_reg,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_iic_control is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    sda_rin_d1 : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    rsta_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    dtre_d1 : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    \sr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_lost : out STD_LOGIC;
    Aas : out STD_LOGIC;
    rsta_tx_under_prev_reg_0 : out STD_LOGIC;
    \q_int_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ : out STD_LOGIC;
    \cr_i_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    rdCntrFrmTxFifo0 : out STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    scl_clean : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[7]\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_rcv_dta_d1 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thddat_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsudat_i_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_3_in : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    txak : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_data_exists : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rd_reg\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tsusto_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tsusta_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_thdsta_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tlow_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Msms_set : in STD_LOGIC;
    callingReadAccess : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_iic_control : entity is "iic_control";
end MIPSfpga_system_axi_iic_0_0_iic_control;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal AckDataState0_out : STD_LOGIC;
  signal BITCNT_n_0 : STD_LOGIC;
  signal BITCNT_n_2 : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal CLKCNT_n_1 : STD_LOGIC;
  signal CLKCNT_n_2 : STD_LOGIC;
  signal CLKCNT_n_3 : STD_LOGIC;
  signal CLKCNT_n_4 : STD_LOGIC;
  signal CLKCNT_n_5 : STD_LOGIC;
  signal CLKCNT_n_6 : STD_LOGIC;
  signal CLKCNT_n_7 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_sequential_scl_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_4_n_0\ : STD_LOGIC;
  signal I2CDATA_REG_n_0 : STD_LOGIC;
  signal I2CDATA_REG_n_2 : STD_LOGIC;
  signal I2CDATA_REG_n_3 : STD_LOGIC;
  signal I2CDATA_REG_n_4 : STD_LOGIC;
  signal I2CDATA_REG_n_5 : STD_LOGIC;
  signal I2CDATA_REG_n_6 : STD_LOGIC;
  signal I2CDATA_REG_n_7 : STD_LOGIC;
  signal I2CDATA_REG_n_8 : STD_LOGIC;
  signal I2CHEADER_REG_n_0 : STD_LOGIC;
  signal I2CHEADER_REG_n_1 : STD_LOGIC;
  signal I2CHEADER_REG_n_2 : STD_LOGIC;
  signal I2CHEADER_REG_n_3 : STD_LOGIC;
  signal I2CHEADER_REG_n_4 : STD_LOGIC;
  signal I2CHEADER_REG_n_6 : STD_LOGIC;
  signal I2CHEADER_REG_n_7 : STD_LOGIC;
  signal I2CHEADER_REG_n_8 : STD_LOGIC;
  signal \LEVEL_1_GEN.master_sda_reg_n_0\ : STD_LOGIC;
  signal Msms_rst : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal Rsta_rst : STD_LOGIC;
  signal SETUP_CNT_n_1 : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal al_i0 : STD_LOGIC;
  signal al_i_i_1_n_0 : STD_LOGIC;
  signal al_prevent_i_1_n_0 : STD_LOGIC;
  signal al_prevent_reg_n_0 : STD_LOGIC;
  signal \^arb_lost\ : STD_LOGIC;
  signal arb_lost0 : STD_LOGIC;
  signal arb_lost_i_1_n_0 : STD_LOGIC;
  signal arb_lost_i_2_n_0 : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal bus_busy_i_1_n_0 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal detect_start_i_1_n_0 : STD_LOGIC;
  signal detect_stop_i_1_n_0 : STD_LOGIC;
  signal detect_stop_i_2_n_0 : STD_LOGIC;
  signal detect_stop_reg_n_0 : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal \^earlyackhdr\ : STD_LOGIC;
  signal gen_start_i_1_n_0 : STD_LOGIC;
  signal gen_start_reg_n_0 : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal gen_stop_i_1_n_0 : STD_LOGIC;
  signal gen_stop_reg_n_0 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal master_slave : STD_LOGIC;
  signal master_slave_i_1_n_0 : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d1_i_1_n_0 : STD_LOGIC;
  signal msms_d1_i_2_n_0 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal msms_rst_i_i_1_n_0 : STD_LOGIC;
  signal msms_rst_i_i_2_n_0 : STD_LOGIC;
  signal msms_rst_i_i_3_n_0 : STD_LOGIC;
  signal new_rcv_dta_i_i_1_n_0 : STD_LOGIC;
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal rdy_new_xmt_i_i_1_n_0 : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal \^rsta_d1\ : STD_LOGIC;
  signal \^rsta_tx_under_prev_reg_0\ : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_cout_reg_i_1_n_0 : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal scl_falling_edge : STD_LOGIC;
  signal scl_falling_edge_i_1_n_0 : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal scl_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of scl_state : signal is "yes";
  signal sda_cout1 : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal sda_cout_reg_i_3_n_0 : STD_LOGIC;
  signal \^sda_rin_d1\ : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal sda_sample_i_1_n_0 : STD_LOGIC;
  signal sda_setup_reg_n_0 : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal shift_reg_en_i_2_n_0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal slave_sda_reg_n_0 : STD_LOGIC;
  signal sm_stop : STD_LOGIC;
  signal sm_stop_i_1_n_0 : STD_LOGIC;
  signal sm_stop_reg_n_0 : STD_LOGIC;
  signal \^sr_i_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1 : STD_LOGIC;
  signal stop_scl_reg : STD_LOGIC;
  signal stop_scl_reg_i_4_n_0 : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal tx_under_prev_i_i_1_n_0 : STD_LOGIC;
  signal tx_under_prev_i_i_3_n_0 : STD_LOGIC;
  signal txer_edge_i_1_n_0 : STD_LOGIC;
  signal txer_i : STD_LOGIC;
  signal txer_i_i_1_n_0 : STD_LOGIC;
  signal txer_i_reg_n_0 : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of al_i_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of detect_stop_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of gen_start_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of msms_rst_i_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of sda_sample_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of stop_scl_reg_i_4 : label is "soft_lutpair21";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  New_rcv_dta <= \^new_rcv_dta\;
  Tx_under_prev <= \^tx_under_prev\;
  arb_lost <= \^arb_lost\;
  earlyAckHdr <= \^earlyackhdr\;
  \out\(1 downto 0) <= scl_state(2 downto 1);
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  rsta_d1 <= \^rsta_d1\;
  rsta_tx_under_prev_reg_0 <= \^rsta_tx_under_prev_reg_0\;
  scl_rin_d1 <= \^scl_rin_d1\;
  sda_rin_d1 <= \^sda_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
  \sr_i_reg[4]\(1 downto 0) <= \^sr_i_reg[4]\(1 downto 0);
AckDataState_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => Q(0),
      O => AckDataState0_out
    );
AckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AckDataState0_out,
      Q => ackDataState,
      R => '0'
    );
BITCNT: entity work.\MIPSfpga_system_axi_iic_0_0_upcnt_n__parameterized0\
     port map (
      E(0) => BITCNT_n_0,
      EarlyAckDataState0 => EarlyAckDataState0,
      \FSM_onehot_state_reg[4]\ => \FSM_onehot_state[6]_i_6_n_0\,
      Q(0) => Q(0),
      SR(0) => SR(0),
      bit_cnt_en => bit_cnt_en,
      detect_start => detect_start,
      dtc_i => dtc_i,
      dtc_i_reg => BITCNT_n_2,
      \out\(5) => \FSM_onehot_state_reg_n_0_[6]\,
      \out\(4) => \FSM_onehot_state_reg_n_0_[5]\,
      \out\(3) => \FSM_onehot_state_reg_n_0_[3]\,
      \out\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \out\(1) => \FSM_onehot_state_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      s_axi_aclk => s_axi_aclk,
      scl_falling_edge => scl_falling_edge,
      state1 => state1
    );
CLKCNT: entity work.MIPSfpga_system_axi_iic_0_0_upcnt_n
     port map (
      D(3) => CLKCNT_n_1,
      D(2) => CLKCNT_n_2,
      D(1) => CLKCNT_n_3,
      D(0) => CLKCNT_n_4,
      E(0) => CLKCNT_n_5,
      \FSM_sequential_scl_state_reg[1]\ => \FSM_sequential_scl_state[1]_i_4_n_0\,
      \FSM_sequential_scl_state_reg[1]_0\ => \FSM_sequential_scl_state[2]_i_4_n_0\,
      \FSM_sequential_scl_state_reg[1]_1\ => sda_cout_reg_i_3_n_0,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\,
      Q(0) => Q(3),
      S(0) => S(0),
      SR(0) => SR(0),
      arb_lost_reg => \^arb_lost\,
      bus_busy_reg => \^bb\,
      \cr_i_reg[2]\ => \cr_i_reg[2]_0\,
      \cr_i_reg[2]_0\ => stop_scl_reg_i_4_n_0,
      gen_start_reg => gen_start_reg_n_0,
      master_slave => master_slave,
      \out\(3 downto 0) => scl_state(3 downto 0),
      \q_int_reg[0]_0\(0) => \q_int_reg[0]\(0),
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_cout1 => sda_cout1,
      sda_cout_reg => sda_cout_reg,
      sda_cout_reg_reg => CLKCNT_n_7,
      stop_scl_reg => stop_scl_reg,
      stop_scl_reg_reg => CLKCNT_n_6,
      \timing_param_tbuf_i_reg[8]\(8 downto 0) => \timing_param_tbuf_i_reg[8]\(8 downto 0),
      \timing_param_tbuf_i_reg[9]\(0) => \timing_param_tbuf_i_reg[9]\(0),
      \timing_param_thddat_i_reg[8]\(8 downto 0) => \timing_param_thddat_i_reg[8]\(8 downto 0),
      \timing_param_thddat_i_reg[9]\(0) => \timing_param_thddat_i_reg[9]\(0),
      \timing_param_thdsta_i_reg[8]\(8 downto 0) => \timing_param_thdsta_i_reg[8]\(8 downto 0),
      \timing_param_thdsta_i_reg[9]\(0) => \timing_param_thdsta_i_reg[9]\(0),
      \timing_param_thigh_i_reg[8]\(8 downto 0) => \timing_param_thigh_i_reg[8]\(8 downto 0),
      \timing_param_tlow_i_reg[8]\(8 downto 0) => \timing_param_tlow_i_reg[8]\(8 downto 0),
      \timing_param_tlow_i_reg[9]\(0) => \timing_param_tlow_i_reg[9]\(0),
      \timing_param_tsusta_i_reg[8]\(8 downto 0) => \timing_param_tsusta_i_reg[8]\(8 downto 0),
      \timing_param_tsusta_i_reg[9]\(0) => \timing_param_tsusta_i_reg[9]\(0),
      \timing_param_tsusto_i_reg[8]\(8 downto 0) => \timing_param_tsusto_i_reg[8]\(8 downto 0),
      \timing_param_tsusto_i_reg[9]\(0) => \timing_param_tsusto_i_reg[9]\(0)
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => SR(0)
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => scl_f_edg_d3,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => \^earlyackhdr\,
      R => SR(0)
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sda_sample,
      I1 => \^arb_lost\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444474"
    )
        port map (
      I0 => detect_start,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => sda_sample,
      I5 => \^arb_lost\,
      O => \FSM_onehot_state[0]_i_4_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEEEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => detect_start,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Ro_prev,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => Ro_prev,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => Q(0),
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => detect_start,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[6]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => scl_f_edg_d2,
      I1 => Ro_prev,
      I2 => ro_prev_d1,
      O => state1
    );
\FSM_onehot_state[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[6]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_3,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_2,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_1,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_0,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[6]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_sequential_scl_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11515551"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => sda_clean,
      I3 => scl_state(2),
      I4 => scl_clean,
      I5 => scl_state(3),
      O => \FSM_sequential_scl_state[1]_i_4_n_0\
    );
\FSM_sequential_scl_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AA0000A8AA"
    )
        port map (
      I0 => scl_state(1),
      I1 => Q(3),
      I2 => \^arb_lost\,
      I3 => stop_scl_reg,
      I4 => scl_state(0),
      I5 => sda_clean,
      O => \FSM_sequential_scl_state[2]_i_4_n_0\
    );
\FSM_sequential_scl_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_5,
      D => CLKCNT_n_4,
      Q => scl_state(0),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_5,
      D => CLKCNT_n_3,
      Q => scl_state(1),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_5,
      D => CLKCNT_n_2,
      Q => scl_state(2),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => CLKCNT_n_5,
      D => CLKCNT_n_1,
      Q => scl_state(3),
      R => SR(0)
    );
I2CDATA_REG: entity work.MIPSfpga_system_axi_iic_0_0_shift8
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\(0) => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0),
      \LEVEL_1_GEN.master_sda_reg\ => I2CDATA_REG_n_0,
      Q(7) => shift_reg(7),
      Q(6) => I2CDATA_REG_n_2,
      Q(5) => I2CDATA_REG_n_3,
      Q(4) => I2CDATA_REG_n_4,
      Q(3) => I2CDATA_REG_n_5,
      Q(2) => I2CDATA_REG_n_6,
      Q(1) => I2CDATA_REG_n_7,
      Q(0) => I2CDATA_REG_n_8,
      SR(0) => SR(0),
      Tx_fifo_data(6 downto 0) => Tx_fifo_data(6 downto 0),
      \out\(2) => \FSM_onehot_state_reg_n_0_[5]\,
      \out\(1) => \FSM_onehot_state_reg_n_0_[4]\,
      \out\(0) => \FSM_onehot_state_reg_n_0_[1]\,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      shift_reg_ld_reg => \^shift_reg_ld\,
      tx_under_prev_i_reg => \^tx_under_prev\,
      txak => txak
    );
I2CHEADER_REG: entity work.MIPSfpga_system_axi_iic_0_0_shift8_1
     port map (
      D(3) => I2CHEADER_REG_n_0,
      D(2) => I2CHEADER_REG_n_1,
      D(1) => I2CHEADER_REG_n_2,
      D(0) => I2CHEADER_REG_n_3,
      E(0) => i2c_header_en,
      \FSM_onehot_state_reg[0]\ => \FSM_onehot_state[4]_i_2_n_0\,
      \FSM_onehot_state_reg[1]\ => \FSM_onehot_state[5]_i_2_n_0\,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state[0]_i_4_n_0\,
      \FSM_onehot_state_reg[4]\ => \FSM_onehot_state[5]_i_3_n_0\,
      Q(2) => Q(4),
      Q(1) => Q(2),
      Q(0) => Q(0),
      \RD_FIFO_CNTRL.ro_prev_i_reg\ => \FSM_onehot_state[3]_i_2_n_0\,
      SR(0) => SR(0),
      aas_i_reg => I2CHEADER_REG_n_7,
      aas_i_reg_0 => \^aas\,
      abgc_i_reg => I2CHEADER_REG_n_6,
      \adr_i_reg[0]\(6 downto 0) => \adr_i_reg[0]\(6 downto 0),
      arb_lost_reg => \^arb_lost\,
      \data_int_reg[7]_0\(0) => shift_reg(7),
      detect_start => detect_start,
      detect_start_reg => \FSM_onehot_state[0]_i_3_n_0\,
      detect_stop_reg => detect_stop_reg_n_0,
      master_slave => master_slave,
      \out\(6) => \FSM_onehot_state_reg_n_0_[6]\,
      \out\(5) => \FSM_onehot_state_reg_n_0_[5]\,
      \out\(4) => \FSM_onehot_state_reg_n_0_[4]\,
      \out\(3) => \FSM_onehot_state_reg_n_0_[3]\,
      \out\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \out\(1) => \FSM_onehot_state_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      s_axi_aclk => s_axi_aclk,
      sda_clean => sda_clean,
      sda_sample => sda_sample,
      sda_sample_reg => \FSM_onehot_state[0]_i_2_n_0\,
      shift_reg_ld0 => shift_reg_ld0,
      slave_sda_reg => I2CHEADER_REG_n_4,
      srw_i_reg => I2CHEADER_REG_n_8,
      srw_i_reg_0(1 downto 0) => \^sr_i_reg[4]\(1 downto 0),
      tx_under_prev_i_reg => \^tx_under_prev\,
      txak => txak
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_0,
      Q => \LEVEL_1_GEN.master_sda_reg_n_0\,
      S => SR(0)
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => \RD_FIFO_CNTRL.Rc_fifo_wr_reg\
    );
SETUP_CNT: entity work.MIPSfpga_system_axi_iic_0_0_upcnt_n_2
     port map (
      Q(1) => Q(3),
      Q(0) => Q(0),
      SR(0) => SR(0),
      gen_stop_d1 => gen_stop_d1,
      gen_stop_reg => gen_stop_reg_n_0,
      \q_int_reg[0]_0\(0) => \q_int_reg[0]_0\(0),
      rsta_d1 => \^rsta_d1\,
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_rin_d1 => \^sda_rin_d1\,
      sda_setup_reg => SETUP_CNT_n_1,
      sda_setup_reg_0 => sda_setup_reg_n_0,
      \timing_param_tsudat_i_reg[8]\(8 downto 0) => \timing_param_tsudat_i_reg[8]\(8 downto 0),
      \timing_param_tsudat_i_reg[9]\(0) => \timing_param_tsudat_i_reg[9]\(0),
      tx_under_prev_d1 => tx_under_prev_d1,
      tx_under_prev_i_reg => \^tx_under_prev\
    );
aas_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_7,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_6,
      Q => \^sr_i_reg[4]\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => al_i0,
      I1 => master_slave,
      I2 => Q(3),
      O => al_i_i_1_n_0
    );
al_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAEAAAEAAAE"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => detect_stop_reg_n_0,
      I2 => al_prevent_reg_n_0,
      I3 => sm_stop_reg_n_0,
      I4 => bus_busy_d1,
      I5 => gen_start_reg_n_0,
      O => al_i0
    );
al_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_i_1_n_0,
      Q => \^d\(3),
      R => SR(0)
    );
al_prevent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222220"
    )
        port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => gen_stop_reg_n_0,
      I3 => sm_stop_reg_n_0,
      I4 => al_prevent_reg_n_0,
      O => al_prevent_i_1_n_0
    );
al_prevent_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_prevent_i_1_n_0,
      Q => al_prevent_reg_n_0,
      R => '0'
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEA2A2A"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => arb_lost0,
      I2 => master_slave,
      I3 => sda_clean,
      I4 => sda_cout_reg,
      I5 => arb_lost_i_2_n_0,
      O => arb_lost_i_1_n_0
    );
arb_lost_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(0),
      I2 => scl_state(1),
      I3 => Q(0),
      O => arb_lost_i_2_n_0
    );
arb_lost_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arb_lost_i_1_n_0,
      Q => \^arb_lost\,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => scl_falling_edge,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => SR(0)
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => SR(0)
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => detect_stop_reg_n_0,
      O => bus_busy_i_1_n_0
    );
bus_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus_busy_i_1_n_0,
      Q => \^bb\,
      R => '0'
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA33333000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => Rsta_rst,
      I2 => p_3_in,
      I3 => firstDynStartSeen,
      I4 => Q(3),
      I5 => E(0),
      O => \cr_i_reg[2]\(1)
    );
\cr_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(2),
      I2 => Q(3),
      I3 => scl_state(3),
      I4 => scl_state(0),
      O => Rsta_rst
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA33330300"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => Msms_rst,
      I2 => \^bb\,
      I3 => p_4_in,
      I4 => Q(1),
      I5 => E(0),
      O => \cr_i_reg[2]\(0)
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => rxCntDone,
      I1 => dynamic_MSMS(0),
      I2 => Tx_data_exists,
      I3 => \FIFO_GEN_DTR.Tx_fifo_rd_reg\,
      I4 => msms_rst_i,
      I5 => sm_stop_reg_n_0,
      O => Msms_rst
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_8,
      Q => \s_axi_rdata_i_reg[7]\(0),
      R => SR(0)
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_7,
      Q => \s_axi_rdata_i_reg[7]\(1),
      R => SR(0)
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_6,
      Q => \s_axi_rdata_i_reg[7]\(2),
      R => SR(0)
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_5,
      Q => \s_axi_rdata_i_reg[7]\(3),
      R => SR(0)
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_4,
      Q => \s_axi_rdata_i_reg[7]\(4),
      R => SR(0)
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_3,
      Q => \s_axi_rdata_i_reg[7]\(5),
      R => SR(0)
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => I2CDATA_REG_n_2,
      Q => \s_axi_rdata_i_reg[7]\(6),
      R => SR(0)
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => new_rcv_dta_i_i_1_n_0,
      D => shift_reg(7),
      Q => \s_axi_rdata_i_reg[7]\(7),
      R => SR(0)
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => detect_start,
      I1 => sda_clean,
      I2 => \^sda_rin_d1\,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => detect_start_i_1_n_0
    );
detect_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_start_i_1_n_0,
      Q => detect_start,
      R => '0'
    );
detect_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2020000"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => detect_stop_i_2_n_0,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => detect_start,
      O => detect_stop_i_1_n_0
    );
detect_stop_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => msms_d1,
      I1 => msms_d2,
      O => detect_stop_i_2_n_0
    );
detect_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_i_1_n_0,
      Q => detect_stop_reg_n_0,
      R => '0'
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => SR(0)
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => SR(0)
    );
dtc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_2,
      Q => dtc_i,
      R => '0'
    );
dtre_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => SR(0)
    );
gen_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22A200A0"
    )
        port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => gen_start_reg_n_0,
      O => gen_start_i_1_n_0
    );
gen_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_start_i_1_n_0,
      Q => gen_start_reg_n_0,
      R => '0'
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop_reg_n_0,
      Q => gen_stop_d1,
      R => SR(0)
    );
gen_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222A2200000A00"
    )
        port map (
      I0 => Q(0),
      I1 => detect_stop_reg_n_0,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => \^arb_lost\,
      I5 => gen_stop_reg_n_0,
      O => gen_stop_i_1_n_0
    );
gen_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop_i_1_n_0,
      Q => gen_stop_reg_n_0,
      R => '0'
    );
i2c_header_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => scl_rising_edge,
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => SR(0)
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
        port map (
      I0 => msms_d1,
      I1 => master_slave,
      I2 => Q(0),
      I3 => \^arb_lost\,
      I4 => \^bb\,
      O => master_slave_i_1_n_0
    );
master_slave_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => master_slave_i_1_n_0,
      Q => master_slave,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => msms_d1_i_2_n_0,
      I1 => msms_rst_i,
      O => msms_d1_i_1_n_0
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFAA"
    )
        port map (
      I0 => Q(1),
      I1 => dtc_i_d2,
      I2 => dtc_i_d1,
      I3 => msms_d1,
      I4 => Msms_set,
      I5 => txer_i_reg_n_0,
      O => msms_d1_i_2_n_0
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1_i_1_n_0,
      Q => msms_d1,
      R => SR(0)
    );
msms_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => SR(0)
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A00000000"
    )
        port map (
      I0 => msms_rst_i,
      I1 => msms_rst_i_i_2_n_0,
      I2 => msms_rst_i_i_3_n_0,
      I3 => arb_lost0,
      I4 => master_slave,
      I5 => Q(0),
      O => msms_rst_i_i_1_n_0
    );
msms_rst_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sda_cout_reg,
      I1 => sda_clean,
      O => msms_rst_i_i_2_n_0
    );
msms_rst_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => scl_state(2),
      O => msms_rst_i_i_3_n_0
    );
msms_rst_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => scl_rising_edge,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => arb_lost0
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_rst_i_i_1_n_0,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => scl_falling_edge,
      I2 => Ro_prev,
      O => new_rcv_dta_i_i_1_n_0
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => new_rcv_dta_i_i_1_n_0,
      Q => \^new_rcv_dta\,
      R => SR(0)
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^earlyackhdr\,
      I1 => Tx_data_exists,
      I2 => callingReadAccess,
      O => rdCntrFrmTxFifo0
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F2F2F22202020"
    )
        port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => Q(1),
      I5 => \^rdy_new_xmt_i\,
      O => rdy_new_xmt_i_i_1_n_0
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i_i_1_n_0,
      Q => \^rdy_new_xmt_i\,
      R => SR(0)
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => SR(0)
    );
rsta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => \^rsta_d1\,
      R => SR(0)
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[7]\,
      Q => \^rsta_tx_under_prev_reg_0\,
      R => '0'
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005417"
    )
        port map (
      I0 => scl_state(3),
      I1 => scl_state(0),
      I2 => scl_state(1),
      I3 => scl_state(2),
      I4 => Ro_prev,
      O => scl_cout_reg_i_1_n_0
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_cout_reg_i_1_n_0,
      Q => scl_cout_reg,
      S => SR(0)
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge,
      Q => scl_f_edg_d1,
      R => SR(0)
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => SR(0)
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => SR(0)
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scl_rin_d1\,
      I1 => scl_clean,
      O => scl_falling_edge_i_1_n_0
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge_i_1_n_0,
      Q => scl_falling_edge,
      R => SR(0)
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_clean,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q => scl_rising_edge,
      R => SR(0)
    );
scl_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Ro_prev,
      I1 => sda_setup_reg_n_0,
      I2 => scl_cout_reg,
      I3 => \^rsta_tx_under_prev_reg_0\,
      O => scl_t
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBABFBABFBABAB"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => scl_state(2),
      I3 => sda_cout1,
      I4 => Q(3),
      I5 => \LEVEL_1_GEN.master_sda_reg_n_0\,
      O => sda_cout_reg_i_3_n_0
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => CLKCNT_n_7,
      Q => sda_cout_reg,
      S => SR(0)
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_clean,
      Q => \^sda_rin_d1\,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sda_clean,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => sda_sample_i_1_n_0
    );
sda_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_sample_i_1_n_0,
      Q => sda_sample,
      R => SR(0)
    );
sda_setup_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SETUP_CNT_n_1,
      Q => sda_setup_reg_n_0,
      R => '0'
    );
sda_t_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455040"
    )
        port map (
      I0 => stop_scl_reg,
      I1 => sda_cout_reg,
      I2 => master_slave,
      I3 => \^arb_lost\,
      I4 => slave_sda_reg_n_0,
      O => sda_t
    );
shift_reg_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => master_slave,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => scl_rising_edge,
      I3 => shift_reg_en_i_2_n_0,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => scl_rising_edge,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => scl_f_edg_d2,
      I4 => detect_start,
      O => shift_reg_en_i_2_n_0
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => SR(0)
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => SR(0)
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => SR(0)
    );
slave_sda_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_4,
      Q => slave_sda_reg_n_0,
      S => SR(0)
    );
sm_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA2A0000"
    )
        port map (
      I0 => sm_stop_reg_n_0,
      I1 => state1,
      I2 => sm_stop,
      I3 => master_slave,
      I4 => Q(0),
      I5 => detect_stop_reg_n_0,
      O => sm_stop_i_1_n_0
    );
sm_stop_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => master_slave,
      I2 => sda_sample,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => sm_stop
    );
sm_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sm_stop_i_1_n_0,
      Q => sm_stop_reg_n_0,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_8,
      Q => \^sr_i_reg[4]\(1),
      R => '0'
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => gen_stop_reg_n_0,
      I3 => sm_stop_reg_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      O => sda_cout1
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(3),
      I1 => stop_scl_reg,
      I2 => \^arb_lost\,
      O => stop_scl_reg_i_4_n_0
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => CLKCNT_n_6,
      Q => stop_scl_reg,
      R => SR(0)
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => SR(0)
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0020AAAA0000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => sr_i(0),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => tx_under_prev_i0,
      I5 => \^tx_under_prev\,
      O => tx_under_prev_i_i_1_n_0
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000000000000"
    )
        port map (
      I0 => gen_stop_reg_n_0,
      I1 => \^aas\,
      I2 => \^sr_i_reg[4]\(1),
      I3 => tx_under_prev_i_i_3_n_0,
      I4 => scl_falling_edge,
      I5 => sr_i(0),
      O => tx_under_prev_i0
    );
tx_under_prev_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      O => tx_under_prev_i_i_3_n_0
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_under_prev_i_i_1_n_0,
      Q => \^tx_under_prev\,
      R => '0'
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2000000E200"
    )
        port map (
      I0 => \^d\(2),
      I1 => txer_i,
      I2 => sda_sample,
      I3 => Q(0),
      I4 => scl_f_edg_d2,
      I5 => scl_falling_edge,
      O => txer_edge_i_1_n_0
    );
txer_edge_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => scl_falling_edge,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      O => txer_i
    );
txer_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_edge_i_1_n_0,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => sda_sample,
      I1 => scl_falling_edge,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => txer_i_reg_n_0,
      O => txer_i_i_1_n_0
    );
txer_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_i_i_1_n_0,
      Q => txer_i_reg_n_0,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_slave_attachment is
  port (
    p_18_in : out STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_trig_reg : out STD_LOGIC;
    sw_rst_cond_d1_reg : out STD_LOGIC;
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    \timing_param_thddat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thigh_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsudat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \timing_param_tsusto_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thigh_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[9]\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]_0\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ : in STD_LOGIC;
    \timing_param_thdsta_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \timing_param_tsudat_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_0\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_1\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_2\ : in STD_LOGIC;
    \sr_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[7]\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_slave_attachment : entity is "slave_attachment";
end MIPSfpga_system_axi_iic_0_0_slave_attachment;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal IIC2Bus_Data : STD_LOGIC_VECTOR ( 22 to 23 );
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal I_DECODER_n_38 : STD_LOGIC;
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[1]\ : STD_LOGIC;
  signal bus2ip_rnw_i0 : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset2Bus_Error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state1 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair45";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.MIPSfpga_system_axi_iic_0_0_address_decoder
     port map (
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_IP2Bus_WrAck2_reg,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      D(10) => Intr2Bus_DBus(0),
      D(9) => IIC2Bus_Data(22),
      D(8) => IIC2Bus_Data(23),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => \FIFO_GEN_DTR.Tx_fifo_wr_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      Q => start2,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0) => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0),
      \adr_i_reg[6]\(0) => \adr_i_reg[6]\(0),
      \bus2ip_addr_i_reg[2]\ => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_0\ => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_1\ => \s_axi_rdata_i_reg[6]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_2\ => \s_axi_rdata_i_reg[7]_i_3_n_0\,
      \bus2ip_addr_i_reg[3]\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \bus2ip_addr_i_reg[3]_0\ => \s_axi_rdata_i[1]_i_3_n_0\,
      \bus2ip_addr_i_reg[3]_1\ => \s_axi_rdata_i[2]_i_3_n_0\,
      \bus2ip_addr_i_reg[3]_2\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \bus2ip_addr_i_reg[5]\ => \s_axi_rdata_i[9]_i_2_n_0\,
      \bus2ip_addr_i_reg[8]\(8) => Bus2IIC_Addr(0),
      \bus2ip_addr_i_reg[8]\(7) => Bus2IIC_Addr(1),
      \bus2ip_addr_i_reg[8]\(6 downto 3) => \^q\(3 downto 0),
      \bus2ip_addr_i_reg[8]\(2) => Bus2IIC_Addr(6),
      \bus2ip_addr_i_reg[8]\(1) => \bus2ip_addr_i_reg_n_0_[1]\,
      \bus2ip_addr_i_reg[8]\(0) => \bus2ip_addr_i_reg_n_0_[0]\,
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[0]\ => \ip_irpt_enable_reg_reg[0]\,
      \ip_irpt_enable_reg_reg[0]_0\(0) => \ip_irpt_enable_reg_reg[0]_0\(0),
      \ip_irpt_enable_reg_reg[7]\(7 downto 0) => \ip_irpt_enable_reg_reg[7]\(7 downto 0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_wrack => irpt_wrack,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset2Bus_Error => reset2Bus_Error,
      reset_trig_reg => reset_trig_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      \s_axi_bresp_i_reg[1]\ => I_DECODER_n_38,
      \s_axi_rdata_i_reg[31]\ => \s_axi_rdata_i_reg[31]_0\,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wready => \^s_axi_wready\,
      \state_reg[1]\(1 downto 0) => state(1 downto 0),
      sw_rst_cond_d1 => sw_rst_cond_d1,
      sw_rst_cond_d1_reg => sw_rst_cond_d1_reg,
      \timing_param_tbuf_i_reg[0]\(0) => \timing_param_tbuf_i_reg[0]\(0),
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_tbuf_i_reg[9]\ => \timing_param_tbuf_i_reg[9]\,
      \timing_param_thddat_i_reg[0]\(0) => \timing_param_thddat_i_reg[0]\(0),
      \timing_param_thdsta_i_reg[0]\(0) => \timing_param_thdsta_i_reg[0]\(0),
      \timing_param_thigh_i_reg[0]\(0) => \timing_param_thigh_i_reg[0]\(0),
      \timing_param_thigh_i_reg[8]\ => \timing_param_thigh_i_reg[8]\,
      \timing_param_thigh_i_reg[9]\ => \timing_param_thigh_i_reg[9]\,
      \timing_param_tlow_i_reg[0]\(0) => \timing_param_tlow_i_reg[0]\(0),
      \timing_param_tsudat_i_reg[0]\(0) => \timing_param_tsudat_i_reg[0]\(0),
      \timing_param_tsusta_i_reg[0]\(0) => \timing_param_tsusta_i_reg[0]\(0),
      \timing_param_tsusto_i_reg[0]\(0) => \timing_param_tsusto_i_reg[0]\(0)
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_awaddr(7),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCACCCC"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_awaddr(8),
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[0]\,
      R => rst
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[1]\,
      R => rst
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => Bus2IIC_Addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => \^q\(3),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => Bus2IIC_Addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => Bus2IIC_Addr(0),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200FF00020002"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => state(0),
      I3 => rst,
      I4 => bus2ip_rnw_i0,
      I5 => bus2ip_rnw_i_reg_n_0,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => bus2ip_rnw_i0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i_reg_n_0,
      R => '0'
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFA000A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state1,
      I2 => state(0),
      I3 => state(1),
      I4 => is_read,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => is_write,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88800000000FFFF"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      I4 => state(0),
      I5 => state(1),
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_38,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080008"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(1),
      I2 => state(0),
      I3 => rst,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \s_axi_rdata_i[0]_i_5_n_0\,
      I3 => Bus2IIC_Addr(6),
      I4 => \s_axi_rdata_i[0]_i_6_n_0\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(7),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(0),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(0),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(0),
      I1 => \^q\(2),
      I2 => \timing_param_tsudat_i_reg[3]\(0),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \GPO_GEN.gpo_i_reg[31]_0\,
      O => \s_axi_rdata_i[0]_i_5_n_0\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \timing_param_tbuf_i_reg[0]_0\,
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \s_axi_rdata_i[0]_i_9_n_0\,
      I4 => \^q\(1),
      I5 => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\,
      O => \s_axi_rdata_i[0]_i_6_n_0\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \timing_param_thdsta_i_reg[0]_0\(0),
      O => \s_axi_rdata_i[0]_i_9_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \s_axi_rdata_i[1]_i_5_n_0\,
      I3 => Bus2IIC_Addr(6),
      I4 => \bus2ip_addr_i_reg[6]_0\,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(6),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(1),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(1),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(1),
      I1 => \^q\(2),
      I2 => \timing_param_tsudat_i_reg[3]\(1),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \IIC2Bus_IntrEvent_reg[5]\,
      O => \s_axi_rdata_i[1]_i_5_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \s_axi_rdata_i[2]_i_5_n_0\,
      I3 => Bus2IIC_Addr(6),
      I4 => \bus2ip_addr_i_reg[6]_1\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(5),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(2),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(2),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[2]_i_4_n_0\
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(2),
      I1 => \^q\(2),
      I2 => \timing_param_tsudat_i_reg[3]\(2),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \sr_i_reg[5]\,
      O => \s_axi_rdata_i[2]_i_5_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \s_axi_rdata_i[31]_i_1_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \s_axi_rdata_i[3]_i_5_n_0\,
      I3 => Bus2IIC_Addr(6),
      I4 => \bus2ip_addr_i_reg[6]_2\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(4),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(3),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(3),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[3]_i_4_n_0\
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(3),
      I1 => \^q\(2),
      I2 => \timing_param_tsudat_i_reg[3]\(3),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \sr_i_reg[4]\,
      O => \s_axi_rdata_i[3]_i_5_n_0\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Tx_fifo_data(0),
      I1 => \^q\(2),
      I2 => \timing_param_tsusta_i_reg[7]\(0),
      I3 => \^q\(1),
      I4 => \timing_param_tbuf_i_reg[7]\(0),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[4]_i_7_n_0\
    );
\s_axi_rdata_i[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(3),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(4),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(4),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[4]_i_9_n_0\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Tx_fifo_data(1),
      I1 => \^q\(2),
      I2 => \timing_param_tsusta_i_reg[7]\(1),
      I3 => \^q\(1),
      I4 => \timing_param_tbuf_i_reg[7]\(1),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[5]_i_7_n_0\
    );
\s_axi_rdata_i[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(2),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(5),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(5),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[5]_i_9_n_0\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Tx_fifo_data(2),
      I1 => \^q\(2),
      I2 => \timing_param_tsusta_i_reg[7]\(2),
      I3 => \^q\(1),
      I4 => \timing_param_tbuf_i_reg[7]\(2),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[6]_i_7_n_0\
    );
\s_axi_rdata_i[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(1),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(6),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(6),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[6]_i_9_n_0\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Tx_fifo_data(3),
      I1 => \^q\(2),
      I2 => \timing_param_tsusta_i_reg[7]\(3),
      I3 => \^q\(1),
      I4 => \timing_param_tbuf_i_reg[7]\(3),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[7]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Rc_fifo_data(0),
      I1 => \^q\(2),
      I2 => \timing_param_tsusto_i_reg[7]\(7),
      I3 => \^q\(1),
      I4 => \timing_param_thigh_i_reg[7]\(7),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[7]_i_9_n_0\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002224"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \bus2ip_addr_i_reg_n_0_[1]\,
      I5 => \bus2ip_addr_i_reg_n_0_[0]\,
      O => \s_axi_rdata_i[9]_i_2_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[4]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \adr_i_reg[3]\,
      I1 => \s_axi_rdata_i[4]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \timing_param_tsudat_i_reg[4]\,
      I1 => \s_axi_rdata_i[4]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_5_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[5]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \adr_i_reg[2]\,
      I1 => \s_axi_rdata_i[5]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \timing_param_tsudat_i_reg[5]\,
      I1 => \s_axi_rdata_i[5]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_5_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[6]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[6]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_3_n_0\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \adr_i_reg[1]\,
      I1 => \s_axi_rdata_i[6]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_4_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \timing_param_tsudat_i_reg[6]\,
      I1 => \s_axi_rdata_i[6]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_5_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[7]_i_4_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_5_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_3_n_0\,
      S => Bus2IIC_Addr(6)
    );
\s_axi_rdata_i_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \adr_i_reg[0]\,
      I1 => \s_axi_rdata_i[7]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_4_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \timing_param_tsudat_i_reg[7]\,
      I1 => \s_axi_rdata_i[7]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_5_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => IIC2Bus_Data(23),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => IIC2Bus_Data(22),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => reset2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080008"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => rst,
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => state1,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => \^s_axi_wready\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFC50FC"
    )
        port map (
      I0 => state1,
      I1 => \state[1]_i_3_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => \^s_axi_arready\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => state1
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_axi_lite_ipif is
  port (
    p_18_in : out STD_LOGIC;
    p_27_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_trig_reg : out STD_LOGIC;
    sw_rst_cond_d1_reg : out STD_LOGIC;
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    \timing_param_thddat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thigh_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsudat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ip_irpt_enable_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \timing_param_tsusto_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thigh_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[9]\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]_0\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ : in STD_LOGIC;
    \timing_param_thdsta_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \timing_param_tsudat_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_0\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_1\ : in STD_LOGIC;
    \sr_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[7]\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end MIPSfpga_system_axi_iic_0_0_axi_lite_ipif;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.MIPSfpga_system_axi_iic_0_0_slave_attachment
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_IP2Bus_WrAck2_reg,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      E(0) => E(0),
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => \FIFO_GEN_DTR.Tx_fifo_wr_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      \GPO_GEN.gpo_i_reg[31]_0\ => \GPO_GEN.gpo_i_reg[31]_0\,
      \IIC2Bus_IntrEvent_reg[5]\ => \IIC2Bus_IntrEvent_reg[5]\,
      Q(3 downto 0) => Q(3 downto 0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0) => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\,
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(3 downto 0) => Tx_fifo_data(3 downto 0),
      \adr_i_reg[0]\ => \adr_i_reg[0]\,
      \adr_i_reg[1]\ => \adr_i_reg[1]\,
      \adr_i_reg[2]\ => \adr_i_reg[2]\,
      \adr_i_reg[3]\ => \adr_i_reg[3]\,
      \adr_i_reg[6]\(0) => \adr_i_reg[6]\(0),
      \bus2ip_addr_i_reg[6]_0\ => \bus2ip_addr_i_reg[6]\,
      \bus2ip_addr_i_reg[6]_1\ => \bus2ip_addr_i_reg[6]_0\,
      \bus2ip_addr_i_reg[6]_2\ => \bus2ip_addr_i_reg[6]_1\,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[0]\ => \ip_irpt_enable_reg_reg[0]\,
      \ip_irpt_enable_reg_reg[0]_0\(0) => \ip_irpt_enable_reg_reg[0]_0\(0),
      \ip_irpt_enable_reg_reg[7]\(7 downto 0) => \ip_irpt_enable_reg_reg[7]\(7 downto 0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_wrack => irpt_wrack,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset_trig_reg => reset_trig_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      \s_axi_rdata_i_reg[31]_0\ => p_27_in,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[4]\ => \sr_i_reg[4]\,
      \sr_i_reg[5]\ => \sr_i_reg[5]\,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      sw_rst_cond_d1_reg => sw_rst_cond_d1_reg,
      \timing_param_tbuf_i_reg[0]\(0) => \timing_param_tbuf_i_reg[0]\(0),
      \timing_param_tbuf_i_reg[0]_0\ => \timing_param_tbuf_i_reg[0]_0\,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => \timing_param_tbuf_i_reg[7]\(3 downto 0),
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_tbuf_i_reg[9]\ => \timing_param_tbuf_i_reg[9]\,
      \timing_param_thddat_i_reg[0]\(0) => \timing_param_thddat_i_reg[0]\(0),
      \timing_param_thdsta_i_reg[0]\(0) => \timing_param_thdsta_i_reg[0]\(0),
      \timing_param_thdsta_i_reg[0]_0\(0) => \timing_param_thdsta_i_reg[0]_0\(0),
      \timing_param_thigh_i_reg[0]\(0) => \timing_param_thigh_i_reg[0]\(0),
      \timing_param_thigh_i_reg[7]\(7 downto 0) => \timing_param_thigh_i_reg[7]\(7 downto 0),
      \timing_param_thigh_i_reg[8]\ => \timing_param_thigh_i_reg[8]\,
      \timing_param_thigh_i_reg[9]\ => \timing_param_thigh_i_reg[9]\,
      \timing_param_tlow_i_reg[0]\(0) => \timing_param_tlow_i_reg[0]\(0),
      \timing_param_tsudat_i_reg[0]\(0) => \timing_param_tsudat_i_reg[0]\(0),
      \timing_param_tsudat_i_reg[3]\(3 downto 0) => \timing_param_tsudat_i_reg[3]\(3 downto 0),
      \timing_param_tsudat_i_reg[4]\ => \timing_param_tsudat_i_reg[4]\,
      \timing_param_tsudat_i_reg[5]\ => \timing_param_tsudat_i_reg[5]\,
      \timing_param_tsudat_i_reg[6]\ => \timing_param_tsudat_i_reg[6]\,
      \timing_param_tsudat_i_reg[7]\ => \timing_param_tsudat_i_reg[7]\,
      \timing_param_tsusta_i_reg[0]\(0) => \timing_param_tsusta_i_reg[0]\(0),
      \timing_param_tsusta_i_reg[7]\(3 downto 0) => \timing_param_tsusta_i_reg[7]\(3 downto 0),
      \timing_param_tsusto_i_reg[0]\(0) => \timing_param_tsusto_i_reg[0]\(0),
      \timing_param_tsusto_i_reg[7]\(7 downto 0) => \timing_param_tsusto_i_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_filter is
  port (
    detect_stop_reg : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    scl_rising_edge_reg : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_filter : entity is "filter";
end MIPSfpga_system_axi_iic_0_0_filter;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_filter is
begin
SCL_DEBOUNCE: entity work.MIPSfpga_system_axi_iic_0_0_debounce
     port map (
      \FSM_sequential_scl_state_reg[1]\ => \FSM_sequential_scl_state_reg[1]\,
      \FSM_sequential_scl_state_reg[2]\ => \FSM_sequential_scl_state_reg[2]\,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge_reg => scl_rising_edge_reg,
      scndry_out => Scl_clean
    );
SDA_DEBOUNCE: entity work.MIPSfpga_system_axi_iic_0_0_debounce_3
     port map (
      Sda_clean => Sda_clean,
      detect_stop_reg => detect_stop_reg,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1 is
  port (
    p_18_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_thddat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thigh_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tbuf_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsudat_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_thdsta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusto_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tsusta_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \timing_param_tsusto_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thigh_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[9]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[9]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]_0\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ : in STD_LOGIC;
    \timing_param_thdsta_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \timing_param_tsudat_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_0\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]_1\ : in STD_LOGIC;
    \sr_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[7]\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1 : entity is "axi_ipif_ssp1";
end MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_IP2Bus_RdAck1 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck2 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck20 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck1 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck2 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal X_INTERRUPT_CONTROL_n_0 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_13 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_15 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_16 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_7 : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in8_in : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  SR(0) <= \^sr\(0);
AXI_IP2Bus_RdAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck2,
      Q => AXI_IP2Bus_RdAck1,
      R => '0'
    );
AXI_IP2Bus_RdAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck20,
      Q => AXI_IP2Bus_RdAck2,
      R => '0'
    );
AXI_IP2Bus_WrAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck2,
      Q => AXI_IP2Bus_WrAck1,
      R => '0'
    );
AXI_IP2Bus_WrAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_LITE_IPIF_I_n_15,
      Q => AXI_IP2Bus_WrAck2,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.MIPSfpga_system_axi_iic_0_0_axi_lite_ipif
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_LITE_IPIF_I_n_15,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      E(0) => E(0),
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => \FIFO_GEN_DTR.Tx_fifo_wr_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => X_INTERRUPT_CONTROL_n_0,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => X_INTERRUPT_CONTROL_n_7,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      \GPO_GEN.gpo_i_reg[31]_0\ => \GPO_GEN.gpo_i_reg[31]_0\,
      \IIC2Bus_IntrEvent_reg[5]\ => \IIC2Bus_IntrEvent_reg[5]\,
      Q(3 downto 0) => Q(3 downto 0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0) => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\,
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(3 downto 0) => Tx_fifo_data(3 downto 0),
      \adr_i_reg[0]\ => \adr_i_reg[0]\,
      \adr_i_reg[1]\ => \adr_i_reg[1]\,
      \adr_i_reg[2]\ => \adr_i_reg[2]\,
      \adr_i_reg[3]\ => \adr_i_reg[3]\,
      \adr_i_reg[6]\(0) => \adr_i_reg[6]\(0),
      \bus2ip_addr_i_reg[6]\ => \bus2ip_addr_i_reg[6]\,
      \bus2ip_addr_i_reg[6]_0\ => \bus2ip_addr_i_reg[6]_0\,
      \bus2ip_addr_i_reg[6]_1\ => \bus2ip_addr_i_reg[6]_1\,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[0]\ => \^bus_rnw_reg\,
      \ip_irpt_enable_reg_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_28,
      \ip_irpt_enable_reg_reg[7]\(7) => p_0_in16_in,
      \ip_irpt_enable_reg_reg[7]\(6) => p_0_in13_in,
      \ip_irpt_enable_reg_reg[7]\(5) => p_0_in10_in,
      \ip_irpt_enable_reg_reg[7]\(4) => p_0_in7_in,
      \ip_irpt_enable_reg_reg[7]\(3) => X_INTERRUPT_CONTROL_n_13,
      \ip_irpt_enable_reg_reg[7]\(2) => p_0_in1_in,
      \ip_irpt_enable_reg_reg[7]\(1) => X_INTERRUPT_CONTROL_n_15,
      \ip_irpt_enable_reg_reg[7]\(0) => X_INTERRUPT_CONTROL_n_16,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => AXI_LITE_IPIF_I_n_32,
      irpt_wrack => irpt_wrack,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      reset_trig_reg => AXI_LITE_IPIF_I_n_13,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4) => s_axi_wdata(8),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[4]\ => \sr_i_reg[4]\,
      \sr_i_reg[5]\ => \sr_i_reg[5]\,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      sw_rst_cond_d1_reg => AXI_LITE_IPIF_I_n_14,
      \timing_param_tbuf_i_reg[0]\(0) => \timing_param_tbuf_i_reg[0]\(0),
      \timing_param_tbuf_i_reg[0]_0\ => \timing_param_tbuf_i_reg[0]_0\,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => \timing_param_tbuf_i_reg[7]\(3 downto 0),
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_tbuf_i_reg[9]\ => \timing_param_tbuf_i_reg[9]\,
      \timing_param_thddat_i_reg[0]\(0) => \timing_param_thddat_i_reg[0]\(0),
      \timing_param_thdsta_i_reg[0]\(0) => \timing_param_thdsta_i_reg[0]\(0),
      \timing_param_thdsta_i_reg[0]_0\(0) => \timing_param_thdsta_i_reg[0]_0\(0),
      \timing_param_thigh_i_reg[0]\(0) => \timing_param_thigh_i_reg[0]\(0),
      \timing_param_thigh_i_reg[7]\(7 downto 0) => \timing_param_thigh_i_reg[7]\(7 downto 0),
      \timing_param_thigh_i_reg[8]\ => \timing_param_thigh_i_reg[8]\,
      \timing_param_thigh_i_reg[9]\ => \timing_param_thigh_i_reg[9]\,
      \timing_param_tlow_i_reg[0]\(0) => \timing_param_tlow_i_reg[0]\(0),
      \timing_param_tsudat_i_reg[0]\(0) => \timing_param_tsudat_i_reg[0]\(0),
      \timing_param_tsudat_i_reg[3]\(3 downto 0) => \timing_param_tsudat_i_reg[3]\(3 downto 0),
      \timing_param_tsudat_i_reg[4]\ => \timing_param_tsudat_i_reg[4]\,
      \timing_param_tsudat_i_reg[5]\ => \timing_param_tsudat_i_reg[5]\,
      \timing_param_tsudat_i_reg[6]\ => \timing_param_tsudat_i_reg[6]\,
      \timing_param_tsudat_i_reg[7]\ => \timing_param_tsudat_i_reg[7]\,
      \timing_param_tsusta_i_reg[0]\(0) => \timing_param_tsusta_i_reg[0]\(0),
      \timing_param_tsusta_i_reg[7]\(3 downto 0) => \timing_param_tsusta_i_reg[7]\(3 downto 0),
      \timing_param_tsusto_i_reg[0]\(0) => \timing_param_tsusto_i_reg[0]\(0),
      \timing_param_tsusto_i_reg[7]\(7 downto 0) => \timing_param_tsusto_i_reg[7]\(7 downto 0)
    );
X_INTERRUPT_CONTROL: entity work.MIPSfpga_system_axi_iic_0_0_interrupt_control
     port map (
      Bus_RNW_reg_reg => \^bus_rnw_reg\,
      E(0) => AXI_LITE_IPIF_I_n_28,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => AXI_LITE_IPIF_I_n_32,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => X_INTERRUPT_CONTROL_n_0,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ => X_INTERRUPT_CONTROL_n_7,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Q(7) => p_0_in16_in,
      Q(6) => p_0_in13_in,
      Q(5) => p_0_in10_in,
      Q(4) => p_0_in7_in,
      Q(3) => X_INTERRUPT_CONTROL_n_13,
      Q(2) => p_0_in1_in,
      Q(1) => X_INTERRUPT_CONTROL_n_15,
      Q(0) => X_INTERRUPT_CONTROL_n_16,
      \RESET_FLOPS[3].RST_FLOPS\ => \^sr\(0),
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.MIPSfpga_system_axi_iic_0_0_soft_reset
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_14,
      SR(0) => \^sr\(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      sw_rst_cond_d1_reg_0 => AXI_LITE_IPIF_I_n_13
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_iic is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_iic : entity is "iic";
end MIPSfpga_system_axi_iic_0_0_iic;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_iic is
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\ : STD_LOGIC;
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 2 to 5 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \CLKCNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Cr : STD_LOGIC_VECTOR ( 1 to 7 );
  signal DYN_MASTER_I_n_4 : STD_LOGIC;
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal FILTER_I_n_0 : STD_LOGIC;
  signal FILTER_I_n_2 : STD_LOGIC;
  signal FILTER_I_n_4 : STD_LOGIC;
  signal FILTER_I_n_5 : STD_LOGIC;
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC_CONTROL_I_n_0 : STD_LOGIC;
  signal IIC_CONTROL_I_n_1 : STD_LOGIC;
  signal IIC_CONTROL_I_n_12 : STD_LOGIC;
  signal IIC_CONTROL_I_n_22 : STD_LOGIC;
  signal IIC_CONTROL_I_n_25 : STD_LOGIC;
  signal IIC_CONTROL_I_n_26 : STD_LOGIC;
  signal IIC_CONTROL_I_n_27 : STD_LOGIC;
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal REG_INTERFACE_I_n_106 : STD_LOGIC;
  signal REG_INTERFACE_I_n_116 : STD_LOGIC;
  signal REG_INTERFACE_I_n_117 : STD_LOGIC;
  signal REG_INTERFACE_I_n_118 : STD_LOGIC;
  signal REG_INTERFACE_I_n_119 : STD_LOGIC;
  signal REG_INTERFACE_I_n_120 : STD_LOGIC;
  signal REG_INTERFACE_I_n_121 : STD_LOGIC;
  signal REG_INTERFACE_I_n_123 : STD_LOGIC;
  signal REG_INTERFACE_I_n_125 : STD_LOGIC;
  signal REG_INTERFACE_I_n_126 : STD_LOGIC;
  signal REG_INTERFACE_I_n_127 : STD_LOGIC;
  signal REG_INTERFACE_I_n_128 : STD_LOGIC;
  signal REG_INTERFACE_I_n_129 : STD_LOGIC;
  signal REG_INTERFACE_I_n_130 : STD_LOGIC;
  signal REG_INTERFACE_I_n_131 : STD_LOGIC;
  signal REG_INTERFACE_I_n_132 : STD_LOGIC;
  signal REG_INTERFACE_I_n_133 : STD_LOGIC;
  signal REG_INTERFACE_I_n_134 : STD_LOGIC;
  signal REG_INTERFACE_I_n_135 : STD_LOGIC;
  signal REG_INTERFACE_I_n_136 : STD_LOGIC;
  signal REG_INTERFACE_I_n_137 : STD_LOGIC;
  signal REG_INTERFACE_I_n_138 : STD_LOGIC;
  signal REG_INTERFACE_I_n_139 : STD_LOGIC;
  signal REG_INTERFACE_I_n_140 : STD_LOGIC;
  signal REG_INTERFACE_I_n_141 : STD_LOGIC;
  signal REG_INTERFACE_I_n_142 : STD_LOGIC;
  signal REG_INTERFACE_I_n_143 : STD_LOGIC;
  signal REG_INTERFACE_I_n_144 : STD_LOGIC;
  signal REG_INTERFACE_I_n_145 : STD_LOGIC;
  signal REG_INTERFACE_I_n_146 : STD_LOGIC;
  signal REG_INTERFACE_I_n_24 : STD_LOGIC;
  signal REG_INTERFACE_I_n_25 : STD_LOGIC;
  signal REG_INTERFACE_I_n_42 : STD_LOGIC;
  signal REG_INTERFACE_I_n_52 : STD_LOGIC;
  signal REG_INTERFACE_I_n_53 : STD_LOGIC;
  signal REG_INTERFACE_I_n_63 : STD_LOGIC;
  signal REG_INTERFACE_I_n_73 : STD_LOGIC;
  signal REG_INTERFACE_I_n_83 : STD_LOGIC;
  signal REG_INTERFACE_I_n_93 : STD_LOGIC;
  signal REG_INTERFACE_I_n_94 : STD_LOGIC;
  signal REG_INTERFACE_I_n_95 : STD_LOGIC;
  signal REG_INTERFACE_I_n_96 : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal \SETUP_CNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Srw : STD_LOGIC;
  signal Tx_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Tx_data_exists : STD_LOGIC;
  signal Tx_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_0 : STD_LOGIC;
  signal WRITE_FIFO_I_n_14 : STD_LOGIC;
  signal WRITE_FIFO_I_n_15 : STD_LOGIC;
  signal WRITE_FIFO_I_n_18 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_13 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_14 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_15 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_16 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_17 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_18 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_19 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_2 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_20 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_21 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_22 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_23 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_24 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_27 : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal buffer_Empty : STD_LOGIC;
  signal buffer_Empty_0 : STD_LOGIC;
  signal buffer_Empty_1 : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal ctrl_fifo_wr_i : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal dtre_d1 : STD_LOGIC;
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 1 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal txFifoRd : STD_LOGIC;
  signal txak : STD_LOGIC;
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.MIPSfpga_system_axi_iic_0_0_dynamic_master
     port map (
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(0) => DYN_MASTER_I_n_4,
      Q(1) => Cr(3),
      Q(0) => Cr(4),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg_0 => REG_INTERFACE_I_n_146,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(3),
      txak => txak
    );
FILTER_I: entity work.MIPSfpga_system_axi_iic_0_0_filter
     port map (
      \FSM_sequential_scl_state_reg[1]\ => FILTER_I_n_5,
      \FSM_sequential_scl_state_reg[2]\ => FILTER_I_n_4,
      Scl_clean => scl_clean,
      Sda_clean => sda_clean,
      detect_stop_reg => FILTER_I_n_0,
      \out\(1) => IIC_CONTROL_I_n_0,
      \out\(0) => IIC_CONTROL_I_n_1,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge_reg => FILTER_I_n_2,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
IIC_CONTROL_I: entity work.MIPSfpga_system_axi_iic_0_0_iic_control
     port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => IIC_CONTROL_I_n_12,
      D(0) => p_0_out(0),
      E(0) => X_AXI_IPIF_SSP1_n_24,
      \FIFO_GEN_DTR.Tx_fifo_rd_reg\ => REG_INTERFACE_I_n_116,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => FILTER_I_n_2,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => FILTER_I_n_5,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_1\ => FILTER_I_n_4,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_2\ => FILTER_I_n_0,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_3\(0) => WRITE_FIFO_I_n_18,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ => IIC_CONTROL_I_n_25,
      Ro_prev => Ro_prev,
      S(0) => REG_INTERFACE_I_n_63,
      SR(0) => REG_INTERFACE_I_n_125,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(6) => Tx_fifo_data(0),
      Tx_fifo_data(5) => Tx_fifo_data(1),
      Tx_fifo_data(4) => Tx_fifo_data(2),
      Tx_fifo_data(3) => Tx_fifo_data(3),
      Tx_fifo_data(2) => Tx_fifo_data(4),
      Tx_fifo_data(1) => Tx_fifo_data(5),
      Tx_fifo_data(0) => Tx_fifo_data(6),
      Tx_under_prev => Tx_under_prev,
      ackDataState => ackDataState,
      \adr_i_reg[0]\(6 downto 0) => data4(7 downto 1),
      arb_lost => arb_lost,
      callingReadAccess => callingReadAccess,
      \cr_i_reg[2]\(1) => IIC_CONTROL_I_n_26,
      \cr_i_reg[2]\(0) => IIC_CONTROL_I_n_27,
      \cr_i_reg[2]_0\ => REG_INTERFACE_I_n_120,
      \cr_i_reg[7]\ => REG_INTERFACE_I_n_145,
      dtre_d1 => dtre_d1,
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      \out\(1) => IIC_CONTROL_I_n_0,
      \out\(0) => IIC_CONTROL_I_n_1,
      p_3_in => p_3_in,
      p_4_in => p_4_in,
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg__0\(0),
      \q_int_reg[0]_0\(0) => \SETUP_CNT/q_int_reg__0\(0),
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      rsta_tx_under_prev_reg_0 => IIC_CONTROL_I_n_22,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[7]\(7) => Data_i2c(0),
      \s_axi_rdata_i_reg[7]\(6) => Data_i2c(1),
      \s_axi_rdata_i_reg[7]\(5) => Data_i2c(2),
      \s_axi_rdata_i_reg[7]\(4) => Data_i2c(3),
      \s_axi_rdata_i_reg[7]\(3) => Data_i2c(4),
      \s_axi_rdata_i_reg[7]\(2) => Data_i2c(5),
      \s_axi_rdata_i_reg[7]\(1) => Data_i2c(6),
      \s_axi_rdata_i_reg[7]\(0) => Data_i2c(7),
      s_axi_wdata(1) => s_axi_wdata(5),
      s_axi_wdata(0) => s_axi_wdata(2),
      scl_clean => scl_clean,
      scl_rin_d1 => scl_rin_d1,
      scl_t => scl_t,
      sda_clean => sda_clean,
      sda_rin_d1 => sda_rin_d1,
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      sr_i(0) => sr_i(0),
      \sr_i_reg[4]\(1) => Srw,
      \sr_i_reg[4]\(0) => Abgc,
      \timing_param_tbuf_i_reg[8]\(8 downto 0) => timing_param_tbuf_i(8 downto 0),
      \timing_param_tbuf_i_reg[9]\(0) => REG_INTERFACE_I_n_96,
      \timing_param_thddat_i_reg[8]\(8 downto 0) => timing_param_thddat_i(8 downto 0),
      \timing_param_thddat_i_reg[9]\(0) => REG_INTERFACE_I_n_93,
      \timing_param_thdsta_i_reg[8]\(8 downto 0) => timing_param_thdsta_i(8 downto 0),
      \timing_param_thdsta_i_reg[9]\(0) => REG_INTERFACE_I_n_94,
      \timing_param_thigh_i_reg[8]\(8 downto 0) => timing_param_thigh_i(8 downto 0),
      \timing_param_tlow_i_reg[8]\(8 downto 0) => timing_param_tlow_i(8 downto 0),
      \timing_param_tlow_i_reg[9]\(0) => REG_INTERFACE_I_n_95,
      \timing_param_tsudat_i_reg[8]\(8 downto 0) => timing_param_tsudat_i(8 downto 0),
      \timing_param_tsudat_i_reg[9]\(0) => REG_INTERFACE_I_n_106,
      \timing_param_tsusta_i_reg[8]\(8 downto 0) => timing_param_tsusta_i(8 downto 0),
      \timing_param_tsusta_i_reg[9]\(0) => REG_INTERFACE_I_n_83,
      \timing_param_tsusto_i_reg[8]\(8 downto 0) => timing_param_tsusto_i(8 downto 0),
      \timing_param_tsusto_i_reg[9]\(0) => REG_INTERFACE_I_n_73,
      txak => txak
    );
READ_FIFO_I: entity work.MIPSfpga_system_axi_iic_0_0_SRL_FIFO
     port map (
      D(1) => p_1_out(6),
      D(0) => Rc_fifo_full,
      \RD_FIFO_CNTRL.Rc_fifo_rd_reg\ => REG_INTERFACE_I_n_119,
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ => REG_INTERFACE_I_n_126,
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\ => REG_INTERFACE_I_n_118,
      \RESET_FLOPS[3].RST_FLOPS\ => X_AXI_IPIF_SSP1_n_2,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      buffer_Empty => buffer_Empty,
      \data_i2c_i_reg[7]\(7) => Data_i2c(0),
      \data_i2c_i_reg[7]\(6) => Data_i2c(1),
      \data_i2c_i_reg[7]\(5) => Data_i2c(2),
      \data_i2c_i_reg[7]\(4) => Data_i2c(3),
      \data_i2c_i_reg[7]\(3) => Data_i2c(4),
      \data_i2c_i_reg[7]\(2) => Data_i2c(5),
      \data_i2c_i_reg[7]\(1) => Data_i2c(6),
      \data_i2c_i_reg[7]\(0) => Data_i2c(7),
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.MIPSfpga_system_axi_iic_0_0_reg_interface
     port map (
      Aas => Aas,
      \Addr_Counters[0].FDRE_I\ => REG_INTERFACE_I_n_118,
      \Addr_Counters[0].FDRE_I_0\ => REG_INTERFACE_I_n_119,
      \Addr_Counters[3].FDRE_I\ => WRITE_FIFO_I_n_15,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      D(0) => Ro_prev,
      Data_Exists_DFF => REG_INTERFACE_I_n_121,
      Data_Exists_DFF_0 => REG_INTERFACE_I_n_123,
      Data_Exists_DFF_1 => REG_INTERFACE_I_n_126,
      Data_Exists_DFF_2 => WRITE_FIFO_I_n_14,
      Data_Exists_DFF_3 => WRITE_FIFO_CTRL_I_n_0,
      Data_Exists_DFF_4(5) => p_1_out(6),
      Data_Exists_DFF_4(4) => Rc_fifo_full,
      Data_Exists_DFF_4(3) => Tx_fifo_full,
      Data_Exists_DFF_4(2) => Srw,
      Data_Exists_DFF_4(1) => Bb,
      Data_Exists_DFF_4(0) => Abgc,
      E(0) => X_AXI_IPIF_SSP1_n_24,
      \FSM_sequential_scl_state_reg[0]\(0) => REG_INTERFACE_I_n_83,
      \FSM_sequential_scl_state_reg[0]_0\(0) => REG_INTERFACE_I_n_94,
      \FSM_sequential_scl_state_reg[0]_1\(0) => REG_INTERFACE_I_n_95,
      \FSM_sequential_scl_state_reg[1]\ => REG_INTERFACE_I_n_120,
      \FSM_sequential_scl_state_reg[2]\(0) => REG_INTERFACE_I_n_93,
      \FSM_sequential_scl_state_reg[3]\(0) => REG_INTERFACE_I_n_96,
      \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\ => X_AXI_IPIF_SSP1_n_23,
      \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\(0) => X_AXI_IPIF_SSP1_n_22,
      \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\(0) => X_AXI_IPIF_SSP1_n_21,
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ => X_AXI_IPIF_SSP1_n_27,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\(0) => X_AXI_IPIF_SSP1_n_20,
      \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\(0) => X_AXI_IPIF_SSP1_n_19,
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\(0) => X_AXI_IPIF_SSP1_n_18,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0) => X_AXI_IPIF_SSP1_n_17,
      \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\(0) => X_AXI_IPIF_SSP1_n_16,
      \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\(0) => X_AXI_IPIF_SSP1_n_15,
      \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\(0) => X_AXI_IPIF_SSP1_n_14,
      \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\(0) => X_AXI_IPIF_SSP1_n_13,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(5) => Cr(1),
      Q(4) => Cr(2),
      Q(3) => Cr(3),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      \RESET_FLOPS[3].RST_FLOPS\ => X_AXI_IPIF_SSP1_n_2,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      S(0) => REG_INTERFACE_I_n_63,
      SR(0) => REG_INTERFACE_I_n_125,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(3) => Tx_fifo_data(4),
      Tx_fifo_data(2) => Tx_fifo_data(5),
      Tx_fifo_data(1) => Tx_fifo_data(6),
      Tx_fifo_data(0) => Tx_fifo_data(7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      al_i_reg(4) => Al,
      al_i_reg(3) => Txer,
      al_i_reg(2) => Tx_under_prev,
      al_i_reg(1) => IIC_CONTROL_I_n_12,
      al_i_reg(0) => p_0_out(0),
      arb_lost => arb_lost,
      buffer_Empty => buffer_Empty_0,
      buffer_Empty_0 => buffer_Empty_1,
      buffer_Empty_1 => buffer_Empty,
      \bus2ip_addr_i_reg[6]\(3) => Bus2IIC_Addr(2),
      \bus2ip_addr_i_reg[6]\(2) => Bus2IIC_Addr(3),
      \bus2ip_addr_i_reg[6]\(1) => Bus2IIC_Addr(4),
      \bus2ip_addr_i_reg[6]\(0) => Bus2IIC_Addr(5),
      callingReadAccess_reg => REG_INTERFACE_I_n_24,
      callingReadAccess_reg_0 => REG_INTERFACE_I_n_117,
      \cr_i_reg[5]_0\ => REG_INTERFACE_I_n_25,
      \cr_i_reg[5]_1\ => REG_INTERFACE_I_n_116,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      dtre_d1 => dtre_d1,
      dtre_d1_reg(0) => sr_i(0),
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg => REG_INTERFACE_I_n_146,
      firstDynStartSeen_reg_0(2) => IIC_CONTROL_I_n_26,
      firstDynStartSeen_reg_0(1) => DYN_MASTER_I_n_4,
      firstDynStartSeen_reg_0(0) => IIC_CONTROL_I_n_27,
      gpo(0) => \^gpo\(0),
      new_rcv_dta_d1 => new_rcv_dta_d1,
      new_rcv_dta_i_reg => IIC_CONTROL_I_n_25,
      p_3_in => p_3_in,
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg__0\(0),
      \q_int_reg[0]_0\(0) => \SETUP_CNT/q_int_reg__0\(0),
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      rsta_tx_under_prev_reg => REG_INTERFACE_I_n_145,
      rsta_tx_under_prev_reg_0 => IIC_CONTROL_I_n_22,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[0]\ => REG_INTERFACE_I_n_127,
      \s_axi_rdata_i_reg[0]_0\ => REG_INTERFACE_I_n_128,
      \s_axi_rdata_i_reg[0]_1\ => REG_INTERFACE_I_n_129,
      \s_axi_rdata_i_reg[1]\ => REG_INTERFACE_I_n_42,
      \s_axi_rdata_i_reg[1]_0\ => REG_INTERFACE_I_n_130,
      \s_axi_rdata_i_reg[2]\ => REG_INTERFACE_I_n_52,
      \s_axi_rdata_i_reg[2]_0\ => REG_INTERFACE_I_n_131,
      \s_axi_rdata_i_reg[3]\ => REG_INTERFACE_I_n_53,
      \s_axi_rdata_i_reg[3]_0\ => REG_INTERFACE_I_n_132,
      \s_axi_rdata_i_reg[4]\ => REG_INTERFACE_I_n_133,
      \s_axi_rdata_i_reg[4]_0\ => REG_INTERFACE_I_n_134,
      \s_axi_rdata_i_reg[5]\ => REG_INTERFACE_I_n_135,
      \s_axi_rdata_i_reg[5]_0\ => REG_INTERFACE_I_n_136,
      \s_axi_rdata_i_reg[6]\ => REG_INTERFACE_I_n_137,
      \s_axi_rdata_i_reg[6]_0\ => REG_INTERFACE_I_n_138,
      \s_axi_rdata_i_reg[7]\ => REG_INTERFACE_I_n_139,
      \s_axi_rdata_i_reg[7]_0\ => REG_INTERFACE_I_n_140,
      \s_axi_rdata_i_reg[8]\(8 downto 0) => timing_param_thdsta_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_0\(8 downto 0) => timing_param_thddat_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_1\(8 downto 0) => timing_param_tlow_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_2\(8 downto 0) => timing_param_thigh_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_3\(8 downto 0) => timing_param_tsusto_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_4\(8 downto 0) => timing_param_tsusta_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_5\(8 downto 0) => timing_param_tbuf_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_6\(8 downto 0) => timing_param_tsudat_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_7\ => REG_INTERFACE_I_n_141,
      \s_axi_rdata_i_reg[8]_8\ => REG_INTERFACE_I_n_142,
      \s_axi_rdata_i_reg[9]\ => REG_INTERFACE_I_n_143,
      \s_axi_rdata_i_reg[9]_0\ => REG_INTERFACE_I_n_144,
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      sda_cout_reg_reg(0) => REG_INTERFACE_I_n_73,
      sda_setup_reg(0) => REG_INTERFACE_I_n_106,
      slave_sda_reg(6 downto 0) => data4(7 downto 1),
      txFifoRd => txFifoRd
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => X_AXI_IPIF_SSP1_n_2
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => X_AXI_IPIF_SSP1_n_2
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => X_AXI_IPIF_SSP1_n_2
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => X_AXI_IPIF_SSP1_n_2
    );
WRITE_FIFO_CTRL_I: entity work.\MIPSfpga_system_axi_iic_0_0_SRL_FIFO__parameterized0\
     port map (
      \Addr_Counters[0].FDRE_I_0\ => WRITE_FIFO_CTRL_I_n_0,
      \FIFO_GEN_DTR.Tx_fifo_rst_reg\ => REG_INTERFACE_I_n_25,
      \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ => REG_INTERFACE_I_n_24,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      buffer_Empty => buffer_Empty_0,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      p_4_in => p_4_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo_reg => REG_INTERFACE_I_n_121,
      s_axi_aclk => s_axi_aclk,
      txFifoRd => txFifoRd
    );
WRITE_FIFO_I: entity work.MIPSfpga_system_axi_iic_0_0_SRL_FIFO_0
     port map (
      \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\ => WRITE_FIFO_I_n_15,
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => REG_INTERFACE_I_n_123,
      \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\ => REG_INTERFACE_I_n_117,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      buffer_Empty => buffer_Empty_1,
      \data_int_reg[0]\(0) => WRITE_FIFO_I_n_18,
      dynamic_MSMS(0) => dynamic_MSMS(1),
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      sda_clean => sda_clean,
      shift_reg_ld => shift_reg_ld,
      \sr_i_reg[0]\ => WRITE_FIFO_I_n_14,
      \sr_i_reg[3]\(0) => Tx_fifo_full,
      txFifoRd => txFifoRd
    );
X_AXI_IPIF_SSP1: entity work.MIPSfpga_system_axi_iic_0_0_axi_ipif_ssp1
     port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      E(0) => X_AXI_IPIF_SSP1_n_24,
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => X_AXI_IPIF_SSP1_n_23,
      \GPO_GEN.gpo_i_reg[31]\ => X_AXI_IPIF_SSP1_n_27,
      \GPO_GEN.gpo_i_reg[31]_0\ => REG_INTERFACE_I_n_129,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[5]\ => REG_INTERFACE_I_n_42,
      Q(3) => Bus2IIC_Addr(2),
      Q(2) => Bus2IIC_Addr(3),
      Q(1) => Bus2IIC_Addr(4),
      Q(0) => Bus2IIC_Addr(5),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\(0) => X_AXI_IPIF_SSP1_n_21,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]_0\ => REG_INTERFACE_I_n_127,
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      SR(0) => X_AXI_IPIF_SSP1_n_2,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(3) => Tx_fifo_data(0),
      Tx_fifo_data(2) => Tx_fifo_data(1),
      Tx_fifo_data(1) => Tx_fifo_data(2),
      Tx_fifo_data(0) => Tx_fifo_data(3),
      \adr_i_reg[0]\ => REG_INTERFACE_I_n_139,
      \adr_i_reg[1]\ => REG_INTERFACE_I_n_137,
      \adr_i_reg[2]\ => REG_INTERFACE_I_n_135,
      \adr_i_reg[3]\ => REG_INTERFACE_I_n_133,
      \adr_i_reg[6]\(0) => X_AXI_IPIF_SSP1_n_22,
      \bus2ip_addr_i_reg[6]\ => REG_INTERFACE_I_n_130,
      \bus2ip_addr_i_reg[6]_0\ => REG_INTERFACE_I_n_131,
      \bus2ip_addr_i_reg[6]_1\ => REG_INTERFACE_I_n_132,
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(8) => s_axi_wdata(10),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[4]\ => REG_INTERFACE_I_n_53,
      \sr_i_reg[5]\ => REG_INTERFACE_I_n_52,
      \timing_param_tbuf_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_16,
      \timing_param_tbuf_i_reg[0]_0\ => REG_INTERFACE_I_n_128,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => timing_param_tbuf_i(7 downto 4),
      \timing_param_tbuf_i_reg[8]\ => REG_INTERFACE_I_n_141,
      \timing_param_tbuf_i_reg[9]\ => REG_INTERFACE_I_n_143,
      \timing_param_thddat_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_13,
      \timing_param_thdsta_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_18,
      \timing_param_thdsta_i_reg[0]_0\(0) => timing_param_thdsta_i(0),
      \timing_param_thigh_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_15,
      \timing_param_thigh_i_reg[7]\(7 downto 0) => timing_param_thigh_i(7 downto 0),
      \timing_param_thigh_i_reg[8]\ => REG_INTERFACE_I_n_142,
      \timing_param_thigh_i_reg[9]\ => REG_INTERFACE_I_n_144,
      \timing_param_tlow_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_14,
      \timing_param_tsudat_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_17,
      \timing_param_tsudat_i_reg[3]\(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      \timing_param_tsudat_i_reg[4]\ => REG_INTERFACE_I_n_134,
      \timing_param_tsudat_i_reg[5]\ => REG_INTERFACE_I_n_136,
      \timing_param_tsudat_i_reg[6]\ => REG_INTERFACE_I_n_138,
      \timing_param_tsudat_i_reg[7]\ => REG_INTERFACE_I_n_140,
      \timing_param_tsusta_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_20,
      \timing_param_tsusta_i_reg[7]\(3 downto 0) => timing_param_tsusta_i(7 downto 4),
      \timing_param_tsusto_i_reg[0]\(0) => X_AXI_IPIF_SSP1_n_19,
      \timing_param_tsusto_i_reg[7]\(7 downto 0) => timing_param_tsusto_i(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0_axi_iic is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_axi_iic_0_0_axi_iic : entity is "axi_iic";
end MIPSfpga_system_axi_iic_0_0_axi_iic;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0_axi_iic is
begin
X_IIC: entity work.MIPSfpga_system_axi_iic_0_0_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MIPSfpga_system_axi_iic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPSfpga_system_axi_iic_0_0 : entity is "MIPSfpga_system_axi_iic_0_0,axi_iic,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of MIPSfpga_system_axi_iic_0_0 : entity is "MIPSfpga_system_axi_iic_0_0,axi_iic,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=100000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0,C_DEFAULT_VALUE=0x00}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MIPSfpga_system_axi_iic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of MIPSfpga_system_axi_iic_0_0 : entity is "axi_iic,Vivado 2015.2";
end MIPSfpga_system_axi_iic_0_0;

architecture STRUCTURE of MIPSfpga_system_axi_iic_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9 downto 0) <= \^s_axi_rdata\(9 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.MIPSfpga_system_axi_iic_0_0_axi_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10) => \^s_axi_rdata\(31),
      s_axi_rdata(9 downto 0) => \^s_axi_rdata\(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
