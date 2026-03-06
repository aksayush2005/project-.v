`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 13:15:34
// Design Name: 
// Module Name: four_bit_testbench
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

module tb_up_down_counter;

reg clk;
reg rst;
reg up_down;
wire [3:0] count;

up_down_counter uut (
    .clk(clk),
    .rst(rst),
    .up_down(up_down),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    up_down = 1;   

    #10 rst = 0;
    #80;

    up_down = 0;
    #80;
    rst = 1;
    #10 rst = 0;

    #40 $finish;
end

endmodule
