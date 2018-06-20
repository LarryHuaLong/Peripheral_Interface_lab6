`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 16:11:10
// Design Name: 
// Module Name: Video_Out_to_VGA
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


module Video_Out_to_VGA#(
    parameter integer component_width = 8
)(
    input vid_active_video,
    input [component_width*3-1:0] vid_data,
    input vid_field_id,
    input vid_hblank,
    input vid_hsync,
    input vid_vblank,
    input vid_vsync,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS
    );
    assign VGA_R = vid_active_video ? vid_data[component_width*3-1:component_width*3-4] : 0;
    assign VGA_G = vid_active_video ? vid_data[component_width*2-1:component_width*2-4] : 0;
    assign VGA_B = vid_active_video ? vid_data[component_width-1:component_width-4] : 0;
    assign VGA_HS = vid_hsync ;
    assign VGA_VS = vid_vsync ;
endmodule
