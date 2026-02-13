`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2026 22:49:02
// Design Name: 
// Module Name: mux4x1_df
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


module mux4x1_df (
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);
    assign y = (~s1 & ~s0 & i0) |
               (~s1 &  s0 & i1) |
               ( s1 & ~s0 & i2) |
               ( s1 &  s0 & i3);
endmodule

