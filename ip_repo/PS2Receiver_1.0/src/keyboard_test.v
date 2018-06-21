module test(
    input CLK100MHZ,
    input CPU_RESETN,
    input PS2_CLK,
    input PS2_DATA,
    output [6:0]SEG,
    output [7:0]AN,
    output DP,
    output UART_TXD,
    output LED16_G
    );
    
reg CLK50MHZ=0;    
wire [31:0]keycode;

always @(posedge(CLK100MHZ))begin
    CLK50MHZ<=~CLK50MHZ;
end

PS2Receiver keyboard (
.clk(CLK50MHZ),
.reset(CPU_RESETN),
.kclk(PS2_CLK),
.kdata(PS2_DATA),
.irq(UART_TXD),
.flag(LED16_G),
.keycodeout(keycode[31:0])
);

seg7decimal sevenSeg (
.x(keycode[31:0]),
.clk(CLK100MHZ),
.seg(SEG[6:0]),
.an(AN[7:0]),
.dp(DP) 
);
endmodule