//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Thu Jun 21 21:23:59 2018
//Host        : DESKTOP-LARRY running 64-bit major release  (build 9200)
//Command     : generate_target MIPSfpga_system_wrapper.bd
//Design      : MIPSfpga_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPSfpga_system_wrapper
   (AN,
    CLK100MHZ,
    CPU_RESETN,
    DP,
    JB1,
    JB2,
    JB3,
    JB4,
    JB7,
    JB8,
    LED,
    LED16_G,
    PS2_CLK,
    PS2_DATA,
    PWMs,
    SEG,
    UART_RXD_OUT,
    UART_TXD_IN);
  output [7:0]AN;
  input CLK100MHZ;
  input CPU_RESETN;
  output DP;
  input JB1;
  input JB2;
  output JB3;
  input JB4;
  input JB7;
  input JB8;
  output [15:0]LED;
  output LED16_G;
  input PS2_CLK;
  input PS2_DATA;
  output [1:0]PWMs;
  output [6:0]SEG;
  output [0:0]UART_RXD_OUT;
  input UART_TXD_IN;

  wire [7:0]AN;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire DP;
  wire JB1;
  wire JB2;
  wire JB3;
  wire JB4;
  wire JB7;
  wire JB8;
  wire [15:0]LED;
  wire LED16_G;
  wire PS2_CLK;
  wire PS2_DATA;
  wire [1:0]PWMs;
  wire [6:0]SEG;
  wire [0:0]UART_RXD_OUT;
  wire UART_TXD_IN;

  MIPSfpga_system MIPSfpga_system_i
       (.AN(AN),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .DP(DP),
        .JB1(JB1),
        .JB2(JB2),
        .JB3(JB3),
        .JB4(JB4),
        .JB7(JB7),
        .JB8(JB8),
        .LED(LED),
        .LED16_G(LED16_G),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .PWMs(PWMs),
        .SEG(SEG),
        .UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN));
endmodule
