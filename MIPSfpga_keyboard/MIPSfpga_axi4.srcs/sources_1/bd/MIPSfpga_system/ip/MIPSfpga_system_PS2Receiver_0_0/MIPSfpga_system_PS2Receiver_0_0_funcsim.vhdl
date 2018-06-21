-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Jun 21 21:30:37 2018
-- Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Peripheral_Interface_lab6/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_PS2Receiver_0_0/MIPSfpga_system_PS2Receiver_0_0_funcsim.vhdl
-- Design      : MIPSfpga_system_PS2Receiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    lastkeycode : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI : entity is "PS2Receiver_v1_0_S00_AXI";
end MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI;

architecture STRUCTURE of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal interupt_i_10_n_0 : STD_LOGIC;
  signal interupt_i_11_n_0 : STD_LOGIC;
  signal interupt_i_12_n_0 : STD_LOGIC;
  signal interupt_i_13_n_0 : STD_LOGIC;
  signal interupt_i_14_n_0 : STD_LOGIC;
  signal interupt_i_15_n_0 : STD_LOGIC;
  signal interupt_i_5_n_0 : STD_LOGIC;
  signal interupt_i_6_n_0 : STD_LOGIC;
  signal interupt_i_8_n_0 : STD_LOGIC;
  signal interupt_i_9_n_0 : STD_LOGIC;
  signal interupt_reg_i_2_n_2 : STD_LOGIC;
  signal interupt_reg_i_2_n_3 : STD_LOGIC;
  signal interupt_reg_i_3_n_0 : STD_LOGIC;
  signal interupt_reg_i_3_n_1 : STD_LOGIC;
  signal interupt_reg_i_3_n_2 : STD_LOGIC;
  signal interupt_reg_i_3_n_3 : STD_LOGIC;
  signal interupt_reg_i_7_n_0 : STD_LOGIC;
  signal interupt_reg_i_7_n_1 : STD_LOGIC;
  signal interupt_reg_i_7_n_2 : STD_LOGIC;
  signal interupt_reg_i_7_n_3 : STD_LOGIC;
  signal \^lastkeycode\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal NLW_interupt_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_interupt_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_interupt_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_interupt_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
  lastkeycode(31 downto 0) <= \^lastkeycode\(31 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C44"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_aresetn,
      I2 => s00_axi_bready,
      I3 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => \^lastkeycode\(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => D(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => \^lastkeycode\(10),
      I2 => axi_araddr(2),
      I3 => slv_reg2(10),
      I4 => axi_araddr(3),
      I5 => Q(2),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => \^lastkeycode\(11),
      I2 => axi_araddr(2),
      I3 => slv_reg2(11),
      I4 => axi_araddr(3),
      I5 => Q(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => \^lastkeycode\(12),
      I2 => axi_araddr(2),
      I3 => slv_reg2(12),
      I4 => axi_araddr(3),
      I5 => Q(4),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => \^lastkeycode\(13),
      I2 => axi_araddr(2),
      I3 => slv_reg2(13),
      I4 => axi_araddr(3),
      I5 => Q(5),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => \^lastkeycode\(14),
      I2 => axi_araddr(2),
      I3 => slv_reg2(14),
      I4 => axi_araddr(3),
      I5 => Q(6),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => \^lastkeycode\(15),
      I2 => axi_araddr(2),
      I3 => slv_reg2(15),
      I4 => axi_araddr(3),
      I5 => Q(7),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => \^lastkeycode\(16),
      I2 => axi_araddr(2),
      I3 => slv_reg2(16),
      I4 => axi_araddr(3),
      I5 => Q(8),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => \^lastkeycode\(17),
      I2 => axi_araddr(2),
      I3 => slv_reg2(17),
      I4 => axi_araddr(3),
      I5 => Q(9),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => \^lastkeycode\(18),
      I2 => axi_araddr(2),
      I3 => slv_reg2(18),
      I4 => axi_araddr(3),
      I5 => Q(10),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => \^lastkeycode\(19),
      I2 => axi_araddr(2),
      I3 => slv_reg2(19),
      I4 => axi_araddr(3),
      I5 => Q(11),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => \^lastkeycode\(1),
      I2 => axi_araddr(2),
      I3 => slv_reg2(1),
      I4 => axi_araddr(3),
      I5 => D(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => \^lastkeycode\(20),
      I2 => axi_araddr(2),
      I3 => slv_reg2(20),
      I4 => axi_araddr(3),
      I5 => Q(12),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => \^lastkeycode\(21),
      I2 => axi_araddr(2),
      I3 => slv_reg2(21),
      I4 => axi_araddr(3),
      I5 => Q(13),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => \^lastkeycode\(22),
      I2 => axi_araddr(2),
      I3 => slv_reg2(22),
      I4 => axi_araddr(3),
      I5 => Q(14),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => \^lastkeycode\(23),
      I2 => axi_araddr(2),
      I3 => slv_reg2(23),
      I4 => axi_araddr(3),
      I5 => Q(15),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => \^lastkeycode\(24),
      I2 => axi_araddr(2),
      I3 => slv_reg2(24),
      I4 => axi_araddr(3),
      I5 => Q(16),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => \^lastkeycode\(25),
      I2 => axi_araddr(2),
      I3 => slv_reg2(25),
      I4 => axi_araddr(3),
      I5 => Q(17),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => \^lastkeycode\(26),
      I2 => axi_araddr(2),
      I3 => slv_reg2(26),
      I4 => axi_araddr(3),
      I5 => Q(18),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => \^lastkeycode\(27),
      I2 => axi_araddr(2),
      I3 => slv_reg2(27),
      I4 => axi_araddr(3),
      I5 => Q(19),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => \^lastkeycode\(28),
      I2 => axi_araddr(2),
      I3 => slv_reg2(28),
      I4 => axi_araddr(3),
      I5 => Q(20),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => \^lastkeycode\(29),
      I2 => axi_araddr(2),
      I3 => slv_reg2(29),
      I4 => axi_araddr(3),
      I5 => Q(21),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => \^lastkeycode\(2),
      I2 => axi_araddr(2),
      I3 => slv_reg2(2),
      I4 => axi_araddr(3),
      I5 => D(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => \^lastkeycode\(30),
      I2 => axi_araddr(2),
      I3 => slv_reg2(30),
      I4 => axi_araddr(3),
      I5 => Q(22),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => \^lastkeycode\(31),
      I2 => axi_araddr(2),
      I3 => slv_reg2(31),
      I4 => axi_araddr(3),
      I5 => Q(23),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => \^lastkeycode\(3),
      I2 => axi_araddr(2),
      I3 => slv_reg2(3),
      I4 => axi_araddr(3),
      I5 => D(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => \^lastkeycode\(4),
      I2 => axi_araddr(2),
      I3 => slv_reg2(4),
      I4 => axi_araddr(3),
      I5 => D(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => \^lastkeycode\(5),
      I2 => axi_araddr(2),
      I3 => slv_reg2(5),
      I4 => axi_araddr(3),
      I5 => D(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => \^lastkeycode\(6),
      I2 => axi_araddr(2),
      I3 => slv_reg2(6),
      I4 => axi_araddr(3),
      I5 => D(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => \^lastkeycode\(7),
      I2 => axi_araddr(2),
      I3 => slv_reg2(7),
      I4 => axi_araddr(3),
      I5 => D(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => \^lastkeycode\(8),
      I2 => axi_araddr(2),
      I3 => slv_reg2(8),
      I4 => axi_araddr(3),
      I5 => Q(0),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => \^lastkeycode\(9),
      I2 => axi_araddr(2),
      I3 => slv_reg2(9),
      I4 => axi_araddr(3),
      I5 => Q(1),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F08080"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => s00_axi_aresetn,
      I3 => s00_axi_rready,
      I4 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => '0'
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
interupt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
interupt_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(15),
      I1 => Q(7),
      I2 => \^lastkeycode\(16),
      I3 => Q(8),
      I4 => Q(9),
      I5 => \^lastkeycode\(17),
      O => interupt_i_10_n_0
    );
interupt_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(12),
      I1 => Q(4),
      I2 => \^lastkeycode\(13),
      I3 => Q(5),
      I4 => Q(6),
      I5 => \^lastkeycode\(14),
      O => interupt_i_11_n_0
    );
interupt_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(9),
      I1 => Q(1),
      I2 => \^lastkeycode\(10),
      I3 => Q(2),
      I4 => Q(3),
      I5 => \^lastkeycode\(11),
      O => interupt_i_12_n_0
    );
interupt_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(7),
      I1 => D(7),
      I2 => \^lastkeycode\(6),
      I3 => D(6),
      I4 => Q(0),
      I5 => \^lastkeycode\(8),
      O => interupt_i_13_n_0
    );
interupt_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(5),
      I1 => D(5),
      I2 => \^lastkeycode\(3),
      I3 => D(3),
      I4 => D(4),
      I5 => \^lastkeycode\(4),
      O => interupt_i_14_n_0
    );
interupt_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(2),
      I1 => D(2),
      I2 => \^lastkeycode\(0),
      I3 => D(0),
      I4 => D(1),
      I5 => \^lastkeycode\(1),
      O => interupt_i_15_n_0
    );
interupt_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(29),
      I1 => Q(21),
      I2 => \^lastkeycode\(27),
      I3 => Q(19),
      I4 => Q(20),
      I5 => \^lastkeycode\(28),
      O => interupt_i_5_n_0
    );
interupt_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(24),
      I1 => Q(16),
      I2 => \^lastkeycode\(25),
      I3 => Q(17),
      I4 => Q(18),
      I5 => \^lastkeycode\(26),
      O => interupt_i_6_n_0
    );
interupt_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(23),
      I1 => Q(15),
      I2 => \^lastkeycode\(21),
      I3 => Q(13),
      I4 => Q(14),
      I5 => \^lastkeycode\(22),
      O => interupt_i_8_n_0
    );
interupt_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^lastkeycode\(20),
      I1 => Q(12),
      I2 => \^lastkeycode\(18),
      I3 => Q(10),
      I4 => Q(11),
      I5 => \^lastkeycode\(19),
      O => interupt_i_9_n_0
    );
interupt_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => interupt_reg_i_3_n_0,
      CO(3) => NLW_interupt_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => CO(0),
      CO(1) => interupt_reg_i_2_n_2,
      CO(0) => interupt_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_interupt_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => S(0),
      S(1) => interupt_i_5_n_0,
      S(0) => interupt_i_6_n_0
    );
interupt_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => interupt_reg_i_7_n_0,
      CO(3) => interupt_reg_i_3_n_0,
      CO(2) => interupt_reg_i_3_n_1,
      CO(1) => interupt_reg_i_3_n_2,
      CO(0) => interupt_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_interupt_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => interupt_i_8_n_0,
      S(2) => interupt_i_9_n_0,
      S(1) => interupt_i_10_n_0,
      S(0) => interupt_i_11_n_0
    );
interupt_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => interupt_reg_i_7_n_0,
      CO(2) => interupt_reg_i_7_n_1,
      CO(1) => interupt_reg_i_7_n_2,
      CO(0) => interupt_reg_i_7_n_3,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => NLW_interupt_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => interupt_i_12_n_0,
      S(2) => interupt_i_13_n_0,
      S(1) => interupt_i_14_n_0,
      S(0) => interupt_i_15_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg1[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg1[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg1[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^lastkeycode\(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^lastkeycode\(10),
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^lastkeycode\(11),
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^lastkeycode\(12),
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^lastkeycode\(13),
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^lastkeycode\(14),
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^lastkeycode\(15),
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^lastkeycode\(16),
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^lastkeycode\(17),
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^lastkeycode\(18),
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^lastkeycode\(19),
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^lastkeycode\(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^lastkeycode\(20),
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^lastkeycode\(21),
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^lastkeycode\(22),
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^lastkeycode\(23),
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^lastkeycode\(24),
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^lastkeycode\(25),
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^lastkeycode\(26),
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^lastkeycode\(27),
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^lastkeycode\(28),
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^lastkeycode\(29),
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^lastkeycode\(2),
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^lastkeycode\(30),
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^lastkeycode\(31),
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^lastkeycode\(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^lastkeycode\(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^lastkeycode\(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^lastkeycode\(6),
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^lastkeycode\(7),
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^lastkeycode\(8),
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^lastkeycode\(9),
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_PS2Receiver_0_0_debouncer is
  port (
    kclkf : out STD_LOGIC;
    \datacur_reg[7]\ : out STD_LOGIC;
    \datacur_reg[6]\ : out STD_LOGIC;
    \datacur_reg[5]\ : out STD_LOGIC;
    \datacur_reg[4]\ : out STD_LOGIC;
    \datacur_reg[3]\ : out STD_LOGIC;
    \datacur_reg[2]\ : out STD_LOGIC;
    \datacur_reg[1]\ : out STD_LOGIC;
    \datacur_reg[0]\ : out STD_LOGIC;
    PS2_CLK : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    PS2_DATA : in STD_LOGIC;
    \cnt_reg__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    datacur : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_PS2Receiver_0_0_debouncer : entity is "debouncer";
end MIPSfpga_system_PS2Receiver_0_0_debouncer;

architecture STRUCTURE of MIPSfpga_system_PS2Receiver_0_0_debouncer is
  signal Iv0 : STD_LOGIC;
  signal Iv1 : STD_LOGIC;
  signal O0_i_1_n_0 : STD_LOGIC;
  signal O0_i_2_n_0 : STD_LOGIC;
  signal O1_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \cnt0[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_1_n_0\ : STD_LOGIC;
  signal cnt0_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^kclkf\ : STD_LOGIC;
  signal kdataf : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of O0_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt0[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt1[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt1[1]_i_3\ : label is "soft_lutpair4";
begin
  kclkf <= \^kclkf\;
Iv0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PS2_CLK,
      Q => Iv0,
      R => '0'
    );
Iv1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PS2_DATA,
      Q => Iv1,
      R => '0'
    );
O0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => O0_i_2_n_0,
      I1 => Iv0,
      I2 => PS2_CLK,
      I3 => \^kclkf\,
      O => O0_i_1_n_0
    );
O0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => cnt0_reg(0),
      I1 => cnt0_reg(1),
      I2 => cnt0_reg(3),
      I3 => cnt0_reg(4),
      I4 => cnt0_reg(2),
      O => O0_i_2_n_0
    );
O0_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O0_i_1_n_0,
      Q => \^kclkf\,
      R => '0'
    );
O1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF78000"
    )
        port map (
      I0 => \cnt1_reg__0\(1),
      I1 => \cnt1_reg__0\(0),
      I2 => Iv1,
      I3 => PS2_DATA,
      I4 => kdataf,
      O => O1_i_1_n_0
    );
O1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => O1_i_1_n_0,
      Q => kdataf,
      R => '0'
    );
\cnt0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111511111"
    )
        port map (
      I0 => clear,
      I1 => cnt0_reg(0),
      I2 => cnt0_reg(1),
      I3 => cnt0_reg(3),
      I4 => cnt0_reg(4),
      I5 => cnt0_reg(2),
      O => \cnt0[0]_i_1_n_0\
    );
\cnt0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004FFFF00"
    )
        port map (
      I0 => cnt0_reg(2),
      I1 => cnt0_reg(4),
      I2 => cnt0_reg(3),
      I3 => cnt0_reg(1),
      I4 => cnt0_reg(0),
      I5 => clear,
      O => \cnt0[1]_i_1_n_0\
    );
\cnt0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101444444444444"
    )
        port map (
      I0 => clear,
      I1 => cnt0_reg(2),
      I2 => cnt0_reg(4),
      I3 => cnt0_reg(3),
      I4 => cnt0_reg(1),
      I5 => cnt0_reg(0),
      O => \cnt0[2]_i_1_n_0\
    );
\cnt0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0999999990000000"
    )
        port map (
      I0 => Iv0,
      I1 => PS2_CLK,
      I2 => cnt0_reg(2),
      I3 => cnt0_reg(0),
      I4 => cnt0_reg(1),
      I5 => cnt0_reg(3),
      O => \cnt0[3]_i_1_n_0\
    );
\cnt0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => clear,
      I1 => cnt0_reg(1),
      I2 => cnt0_reg(0),
      I3 => cnt0_reg(2),
      I4 => cnt0_reg(3),
      I5 => cnt0_reg(4),
      O => \cnt0[4]_i_1_n_0\
    );
\cnt0[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PS2_CLK,
      I1 => Iv0,
      O => clear
    );
\cnt0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt0[0]_i_1_n_0\,
      Q => cnt0_reg(0),
      R => '0'
    );
\cnt0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt0[1]_i_1_n_0\,
      Q => cnt0_reg(1),
      R => '0'
    );
\cnt0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt0[2]_i_1_n_0\,
      Q => cnt0_reg(2),
      R => '0'
    );
\cnt0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt0[3]_i_1_n_0\,
      Q => cnt0_reg(3),
      R => '0'
    );
\cnt0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt0[4]_i_1_n_0\,
      Q => cnt0_reg(4),
      R => '0'
    );
\cnt1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt1_reg__0\(0),
      O => p_0_in(0)
    );
\cnt1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PS2_DATA,
      I1 => Iv1,
      O => \cnt1[1]_i_1_n_0\
    );
\cnt1[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt1_reg__0\(0),
      I1 => \cnt1_reg__0\(1),
      O => \cnt1[1]_i_2_n_0\
    );
\cnt1[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt1_reg__0\(0),
      I1 => \cnt1_reg__0\(1),
      O => p_0_in(1)
    );
\cnt1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt1[1]_i_2_n_0\,
      D => p_0_in(0),
      Q => \cnt1_reg__0\(0),
      R => \cnt1[1]_i_1_n_0\
    );
\cnt1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cnt1[1]_i_2_n_0\,
      D => p_0_in(1),
      Q => \cnt1_reg__0\(1),
      R => \cnt1[1]_i_1_n_0\
    );
\datacur[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(3),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(1),
      I5 => datacur(0),
      O => \datacur_reg[0]\
    );
\datacur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(3),
      I3 => \cnt_reg__0\(1),
      I4 => \cnt_reg__0\(0),
      I5 => datacur(1),
      O => \datacur_reg[1]\
    );
\datacur[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(3),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(1),
      I5 => datacur(2),
      O => \datacur_reg[2]\
    );
\datacur[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(0),
      I5 => datacur(3),
      O => \datacur_reg[3]\
    );
\datacur[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(0),
      I5 => datacur(4),
      O => \datacur_reg[4]\
    );
\datacur[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(1),
      I5 => datacur(5),
      O => \datacur_reg[5]\
    );
\datacur[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(1),
      I5 => datacur(6),
      O => \datacur_reg[6]\
    );
\datacur[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => kdataf,
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(0),
      I5 => datacur(7),
      O => \datacur_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_PS2Receiver_0_0_PS2Receiver is
  port (
    irq : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    keycodeout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    PS2_CLK : in STD_LOGIC;
    PS2_DATA : in STD_LOGIC;
    lastkeycode : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver : entity is "PS2Receiver";
end MIPSfpga_system_PS2Receiver_0_0_PS2Receiver;

architecture STRUCTURE of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver is
  signal \^clk\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal datacur : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal debounce_n_1 : STD_LOGIC;
  signal debounce_n_2 : STD_LOGIC;
  signal debounce_n_3 : STD_LOGIC;
  signal debounce_n_4 : STD_LOGIC;
  signal debounce_n_5 : STD_LOGIC;
  signal debounce_n_6 : STD_LOGIC;
  signal debounce_n_7 : STD_LOGIC;
  signal debounce_n_8 : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal kclkf : STD_LOGIC;
  signal \keycode[31]_i_1_n_0\ : STD_LOGIC;
  signal \keycode[31]_i_2_n_0\ : STD_LOGIC;
  signal \keycode[31]_i_3_n_0\ : STD_LOGIC;
  signal \^keycodeout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_3\ : label is "soft_lutpair5";
begin
  CLK <= \^clk\;
  D(23 downto 0) <= \^d\(23 downto 0);
  keycodeout(7 downto 0) <= \^keycodeout\(7 downto 0);
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => cnt0(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(2),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"575F"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(0),
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => cnt0(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg__0\(1),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => \cnt[3]_i_2_n_0\,
      D => cnt0(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => \cnt[3]_i_2_n_0\,
      D => cnt0(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[3]_i_1_n_0\
    );
\datacur_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_8,
      Q => datacur(0),
      R => '0'
    );
\datacur_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_7,
      Q => datacur(1),
      R => '0'
    );
\datacur_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_6,
      Q => datacur(2),
      R => '0'
    );
\datacur_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_5,
      Q => datacur(3),
      R => '0'
    );
\datacur_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_4,
      Q => datacur(4),
      R => '0'
    );
\datacur_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_3,
      Q => datacur(5),
      R => '0'
    );
\datacur_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_2,
      Q => datacur(6),
      R => '0'
    );
\datacur_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => debounce_n_1,
      Q => datacur(7),
      R => '0'
    );
debounce: entity work.MIPSfpga_system_PS2Receiver_0_0_debouncer
     port map (
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      \cnt_reg__0\(3 downto 0) => \cnt_reg__0\(3 downto 0),
      datacur(7 downto 0) => datacur(7 downto 0),
      \datacur_reg[0]\ => debounce_n_8,
      \datacur_reg[1]\ => debounce_n_7,
      \datacur_reg[2]\ => debounce_n_6,
      \datacur_reg[3]\ => debounce_n_5,
      \datacur_reg[4]\ => debounce_n_4,
      \datacur_reg[5]\ => debounce_n_3,
      \datacur_reg[6]\ => debounce_n_2,
      \datacur_reg[7]\ => debounce_n_1,
      kclkf => kclkf,
      s00_axi_aclk => s00_axi_aclk
    );
flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0400"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \^clk\,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => kclkf,
      CE => '1',
      D => flag_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
interupt_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^keycodeout\(7),
      I1 => lastkeycode(1),
      I2 => \^keycodeout\(6),
      I3 => lastkeycode(0),
      O => S(0)
    );
interupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => CO(0),
      Q => irq,
      R => SR(0)
    );
\keycode[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \^d\(6),
      I1 => datacur(6),
      I2 => \^d\(7),
      I3 => datacur(7),
      I4 => \keycode[31]_i_2_n_0\,
      I5 => \keycode[31]_i_3_n_0\,
      O => \keycode[31]_i_1_n_0\
    );
\keycode[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => datacur(0),
      I1 => \^d\(0),
      I2 => \^d\(1),
      I3 => datacur(1),
      I4 => \^d\(2),
      I5 => datacur(2),
      O => \keycode[31]_i_2_n_0\
    );
\keycode[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => datacur(3),
      I1 => \^d\(3),
      I2 => \^d\(5),
      I3 => datacur(5),
      I4 => \^d\(4),
      I5 => datacur(4),
      O => \keycode[31]_i_3_n_0\
    );
\keycode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(0),
      Q => \^d\(0),
      R => '0'
    );
\keycode_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(2),
      Q => \^d\(10),
      R => '0'
    );
\keycode_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(3),
      Q => \^d\(11),
      R => '0'
    );
\keycode_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(4),
      Q => \^d\(12),
      R => '0'
    );
\keycode_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(5),
      Q => \^d\(13),
      R => '0'
    );
\keycode_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(6),
      Q => \^d\(14),
      R => '0'
    );
\keycode_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(7),
      Q => \^d\(15),
      R => '0'
    );
\keycode_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(8),
      Q => \^d\(16),
      R => '0'
    );
\keycode_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(9),
      Q => \^d\(17),
      R => '0'
    );
\keycode_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(10),
      Q => \^d\(18),
      R => '0'
    );
\keycode_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(11),
      Q => \^d\(19),
      R => '0'
    );
\keycode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(1),
      Q => \^d\(1),
      R => '0'
    );
\keycode_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(12),
      Q => \^d\(20),
      R => '0'
    );
\keycode_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(13),
      Q => \^d\(21),
      R => '0'
    );
\keycode_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(14),
      Q => \^d\(22),
      R => '0'
    );
\keycode_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(15),
      Q => \^d\(23),
      R => '0'
    );
\keycode_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(16),
      Q => \^keycodeout\(0),
      R => '0'
    );
\keycode_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(17),
      Q => \^keycodeout\(1),
      R => '0'
    );
\keycode_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(18),
      Q => \^keycodeout\(2),
      R => '0'
    );
\keycode_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(19),
      Q => \^keycodeout\(3),
      R => '0'
    );
\keycode_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(20),
      Q => \^keycodeout\(4),
      R => '0'
    );
\keycode_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(21),
      Q => \^keycodeout\(5),
      R => '0'
    );
\keycode_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(2),
      Q => \^d\(2),
      R => '0'
    );
\keycode_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(22),
      Q => \^keycodeout\(6),
      R => '0'
    );
\keycode_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(23),
      Q => \^keycodeout\(7),
      R => '0'
    );
\keycode_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(3),
      Q => \^d\(3),
      R => '0'
    );
\keycode_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(4),
      Q => \^d\(4),
      R => '0'
    );
\keycode_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(5),
      Q => \^d\(5),
      R => '0'
    );
\keycode_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(6),
      Q => \^d\(6),
      R => '0'
    );
\keycode_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => datacur(7),
      Q => \^d\(7),
      R => '0'
    );
\keycode_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(0),
      Q => \^d\(8),
      R => '0'
    );
\keycode_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \keycode[31]_i_1_n_0\,
      D => \^d\(1),
      Q => \^d\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0 is
  port (
    \keycodeout_6__s_port_]\ : out STD_LOGIC;
    \keycodeout_7__s_port_]\ : out STD_LOGIC;
    \keycodeout_0__s_port_]\ : out STD_LOGIC;
    \keycodeout_1__s_port_]\ : out STD_LOGIC;
    \keycodeout_2__s_port_]\ : out STD_LOGIC;
    \keycodeout_3__s_port_]\ : out STD_LOGIC;
    \keycodeout_5__s_port_]\ : out STD_LOGIC;
    \keycodeout_4__s_port_]\ : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    lastkeycode : out STD_LOGIC_VECTOR ( 31 downto 0 );
    keycodeout : out STD_LOGIC_VECTOR ( 23 downto 0 );
    flag : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    PS2_CLK : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PS2_DATA : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0 : entity is "PS2Receiver_v1_0";
end MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0;

architecture STRUCTURE of MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0 is
  signal PS2Receiver_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal PS2Receiver_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal keyboard_n_26 : STD_LOGIC;
  signal \^keycodeout\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \keycodeout_0__s_net_1\ : STD_LOGIC;
  signal \keycodeout_1__s_net_1\ : STD_LOGIC;
  signal \keycodeout_2__s_net_1\ : STD_LOGIC;
  signal \keycodeout_3__s_net_1\ : STD_LOGIC;
  signal \keycodeout_4__s_net_1\ : STD_LOGIC;
  signal \keycodeout_5__s_net_1\ : STD_LOGIC;
  signal \keycodeout_6__s_net_1\ : STD_LOGIC;
  signal \keycodeout_7__s_net_1\ : STD_LOGIC;
  signal \^lastkeycode\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  keycodeout(23 downto 0) <= \^keycodeout\(23 downto 0);
  \keycodeout_0__s_port_]\ <= \keycodeout_0__s_net_1\;
  \keycodeout_1__s_port_]\ <= \keycodeout_1__s_net_1\;
  \keycodeout_2__s_port_]\ <= \keycodeout_2__s_net_1\;
  \keycodeout_3__s_port_]\ <= \keycodeout_3__s_net_1\;
  \keycodeout_4__s_port_]\ <= \keycodeout_4__s_net_1\;
  \keycodeout_5__s_port_]\ <= \keycodeout_5__s_net_1\;
  \keycodeout_6__s_port_]\ <= \keycodeout_6__s_net_1\;
  \keycodeout_7__s_port_]\ <= \keycodeout_7__s_net_1\;
  lastkeycode(31 downto 0) <= \^lastkeycode\(31 downto 0);
PS2Receiver_v1_0_S00_AXI_inst: entity work.MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0_S00_AXI
     port map (
      CO(0) => PS2Receiver_v1_0_S00_AXI_inst_n_6,
      D(7) => \keycodeout_7__s_net_1\,
      D(6) => \keycodeout_6__s_net_1\,
      D(5) => \keycodeout_5__s_net_1\,
      D(4) => \keycodeout_4__s_net_1\,
      D(3) => \keycodeout_3__s_net_1\,
      D(2) => \keycodeout_2__s_net_1\,
      D(1) => \keycodeout_1__s_net_1\,
      D(0) => \keycodeout_0__s_net_1\,
      Q(23 downto 0) => \^keycodeout\(23 downto 0),
      S(0) => keyboard_n_26,
      SR(0) => PS2Receiver_v1_0_S00_AXI_inst_n_1,
      lastkeycode(31 downto 0) => \^lastkeycode\(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
keyboard: entity work.MIPSfpga_system_PS2Receiver_0_0_PS2Receiver
     port map (
      CLK => flag,
      CO(0) => PS2Receiver_v1_0_S00_AXI_inst_n_6,
      D(23 downto 8) => \^keycodeout\(15 downto 0),
      D(7) => \keycodeout_7__s_net_1\,
      D(6) => \keycodeout_6__s_net_1\,
      D(5) => \keycodeout_5__s_net_1\,
      D(4) => \keycodeout_4__s_net_1\,
      D(3) => \keycodeout_3__s_net_1\,
      D(2) => \keycodeout_2__s_net_1\,
      D(1) => \keycodeout_1__s_net_1\,
      D(0) => \keycodeout_0__s_net_1\,
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      S(0) => keyboard_n_26,
      SR(0) => PS2Receiver_v1_0_S00_AXI_inst_n_1,
      irq => irq,
      keycodeout(7 downto 0) => \^keycodeout\(23 downto 16),
      lastkeycode(1 downto 0) => \^lastkeycode\(31 downto 30),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPSfpga_system_PS2Receiver_0_0 is
  port (
    PS2_CLK : in STD_LOGIC;
    PS2_DATA : in STD_LOGIC;
    irq : out STD_LOGIC;
    flag : out STD_LOGIC;
    keycodeout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lastkeycode : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MIPSfpga_system_PS2Receiver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MIPSfpga_system_PS2Receiver_0_0 : entity is "MIPSfpga_system_PS2Receiver_0_0,PS2Receiver_v1_0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of MIPSfpga_system_PS2Receiver_0_0 : entity is "MIPSfpga_system_PS2Receiver_0_0,PS2Receiver_v1_0,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=PS2Receiver,x_ipVersion=1.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=4}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MIPSfpga_system_PS2Receiver_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MIPSfpga_system_PS2Receiver_0_0 : entity is "PS2Receiver_v1_0,Vivado 2015.2";
end MIPSfpga_system_PS2Receiver_0_0;

architecture STRUCTURE of MIPSfpga_system_PS2Receiver_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.MIPSfpga_system_PS2Receiver_0_0_PS2Receiver_v1_0
     port map (
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      flag => flag,
      irq => irq,
      keycodeout(23 downto 0) => keycodeout(31 downto 8),
      \keycodeout_0__s_port_]\ => keycodeout(0),
      \keycodeout_1__s_port_]\ => keycodeout(1),
      \keycodeout_2__s_port_]\ => keycodeout(2),
      \keycodeout_3__s_port_]\ => keycodeout(3),
      \keycodeout_4__s_port_]\ => keycodeout(4),
      \keycodeout_5__s_port_]\ => keycodeout(5),
      \keycodeout_6__s_port_]\ => keycodeout(6),
      \keycodeout_7__s_port_]\ => keycodeout(7),
      lastkeycode(31 downto 0) => lastkeycode(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
