-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Jun 21 17:14:02 2018
-- Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Peripheral_Interface_lab6/MIPSfpga_keyboard/MIPSfpga_axi4.srcs/sources_1/bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_1_0/MIPSfpga_system_xlconstant_1_0_stub.vhdl
-- Design      : MIPSfpga_system_xlconstant_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPSfpga_system_xlconstant_1_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end MIPSfpga_system_xlconstant_1_0;

architecture stub of MIPSfpga_system_xlconstant_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
begin
end;
