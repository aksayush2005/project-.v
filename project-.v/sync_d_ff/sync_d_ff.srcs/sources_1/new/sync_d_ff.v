`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 12:59:06
// Design Name: 
// Module Name: sync_d_ff
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

module sync_d_ff (
    input  wire clk,
    input  wire rst,     
    input  wire d,
    output reg  q
);
always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
endmodule
