
`timescale 1 ns / 1 ps

	module VGA_Controllor_v1_0 #
	(
		// Users to add parameters here
//--***640x480@60Hz***--  
parameter DISPLAY_WIDTH = 640, //H Display time (pixels)
parameter H_PW = 96, //H sync pulse width (pixels)
parameter H_FP = 16, //H front porch width (pixels)
parameter H_BP = 48, //H back proch width (pixels)
parameter H_SP = 800, //H total sync pulse (pixels)
parameter H_POL = 0,
parameter DISPLAY_HEIGHT = 480, //V Display time (pixels)
parameter V_PW = 2, //V sync pulse width (lines)
parameter V_FP = 10, //V front porch width (lines)
parameter V_BP = 33, //H back proch width (pixels)
parameter V_SP = 525, //V total period (lines)
parameter V_POL = 0,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
input VGA_CLK,
output VGA_HS,
output VGA_VS,
output [31:0]VGA_RGB_DATA,//¿ÉÒþ²Ø
output [31:0]VGA_DATA_BASE,//¿ÉÒþ²Ø
output [31:0]VGA_DATA_ADDR,//¿ÉÒþ²Ø
output [3:0] VGA_R,
output [3:0] VGA_G,
output [3:0] VGA_B,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	VGA_Controllor_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) VGA_Controllor_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.slv_reg0(VGA_DATA_BASE),
		.slv_reg1(VGA_RGB_DATA),
		.slv_reg2(VGA_DATA_ADDR)
		//.slv_reg3()
	);

	// Add user logic here
 VGA_Controllor#(
    .DISPLAY_WIDTH(DISPLAY_WIDTH), //H Display time (pixels)
    .H_PW(H_PW), //H sync pulse width (pixels)
    .H_FP(H_FP), //H front porch width (pixels)
    .H_BP(H_BP), //H back proch width (pixels)
    .H_SP(H_SP),//H total sync pulse (pixels)
    .H_POL(H_POL),
    .DISPLAY_HEIGHT(DISPLAY_HEIGHT), //V Display time (pixels)
    .V_PW(V_PW), //V sync pulse width (lines)
    .V_FP(V_FP), //V front porch width (lines)
    .V_BP(V_BP), //H back proch width (pixels)
    .V_SP(V_SP), //V total period (lines)
    .V_POL(V_POL)
    ) Controller(
      .VGA_CLK(VGA_CLK),
      .VGA_RST(s00_axi_aresetn),
      .VGA_RGB_DATA(VGA_RGB_DATA),
      .VGA_DATA_BASE(VGA_DATA_BASE),
      .VGA_DATA_ADDR(VGA_DATA_ADDR),
      .VGA_HS_O(VGA_HS),
      .VGA_VS_O(VGA_VS),
      .VGA_RED_O(VGA_R),
      .VGA_GREEN_O(VGA_G),
      .VGA_BLUE_O(VGA_B)
      );
	// User logic ends

	endmodule
