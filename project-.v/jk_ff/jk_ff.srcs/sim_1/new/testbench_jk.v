`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 13:10:11
// Design Name: 
// Module Name: testbench_jk
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
module tb_jk_ff;

reg clk;
reg rst;
reg j;
reg k;
wire q;

jk_ff uut (
    .clk(clk),
    .rst(rst),
    .j(j),
    .k(k),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    j = 0;
    k = 0;

    #10 rst = 0;

    #10 j=0; k=0;   
    #10 j=0; k=1;   
    #10 j=1; k=0;   
    #10 j=1; k=1;  
    #10 j=1; k=1;   

    #20 $finish;
end

endmodule