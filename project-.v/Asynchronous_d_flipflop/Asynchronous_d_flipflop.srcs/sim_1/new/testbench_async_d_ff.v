`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 12:57:04
// Design Name: 
// Module Name: testbench_async_d_ff
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


module tb_async_d_ff;
reg clk;
reg rst;
reg d;
wire q;

async_d_ff uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);


always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    d   = 0;

    #12 rst = 0;   

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #7  rst = 1;   
    #10 rst = 0;
    #20 $finish;
end

endmodule
