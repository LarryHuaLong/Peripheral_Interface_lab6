`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/12 00:33:38
// Design Name: 
// Module Name: system_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module system_tb;
    reg CLK100MHZ;
    reg CPU_RESETN;
    wire [3:0]VGA_B;
    wire [3:0]VGA_G;
    wire VGA_HS;
    wire [3:0]VGA_R;
    wire VGA_VS;
  initial 
    begin
        CLK100MHZ = 0;
        CPU_RESETN = 0;
       #20 CPU_RESETN = 0;
       #100000 $finish;
    end
    always #1 CLK100MHZ = ~CLK100MHZ;
   MIPSfpga_system_wrapper
   init(.CLK100MHZ(CLK100MHZ),
     .CPU_RESETN(CPU_RESETN),
     .VGA_B(VGA_B),
     .VGA_G(VGA_G),
     .VGA_HS(VGA_HS),
     .VGA_R(VGA_R),
     .VGA_VS(VGA_VS));
endmodule
