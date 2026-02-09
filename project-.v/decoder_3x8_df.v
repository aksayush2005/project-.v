`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 19:43:21
// Design Name: 
// Module Name: decoder_3x8_df
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


module decoder3x8_df (
    input  a, b, c, en,
    output [7:0] y
);

assign y[0] = en & ~a & ~b & ~c;
assign y[1] = en & ~a & ~b &  c;
assign y[2] = en & ~a &  b & ~c;
assign y[3] = en & ~a &  b &  c;
assign y[4] = en &  a & ~b & ~c;
assign y[5] = en &  a & ~b &  c;
assign y[6] = en &  a &  b & ~c;
assign y[7] = en &  a &  b &  c;

endmodule

