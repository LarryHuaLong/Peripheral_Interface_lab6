`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/12 00:24:17
// Design Name: 
// Module Name: Adapt_tb
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


module Adapt_tb;
    reg vid_active_video,
    reg [component_width*3-1:0] vid_data,
    reg vid_field_id,
    reg vid_hblank,
    reg vid_hsync,
    reg vid_vblank,
    reg vid_vsync,
    wire [3:0] VGA_R,
    wire [3:0] VGA_G,
    wire [3:0] VGA_B,
    wire VGA_HS,
    wire VGA_VS
    Video_Out_to_VGA#(
        parameter integer component_width = 8
    )test (
        vid_active_video,
        vid_data,
        vid_field_id,
        vid_hblank,
        vid_hsync,
        vid_vblank,
        vid_vsync,
        VGA_R,
        VGA_G,
        VGA_B,
        VGA_HS,
        VGA_VS
        );
        
endmodule
