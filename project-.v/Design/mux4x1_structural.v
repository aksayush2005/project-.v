`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2026 22:55:23
// Design Name: 
// Module Name: mux4x1_structural
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


module mux2x1 (
    input a, b, sel,
    output y
);
    assign y = sel ? b : a;
endmodule

module mux4x1_structural (
    input i0,i1,i2,i3,
    input s1,s0,
    output y
);
    wire w1, w2;

    mux2x1 m1 (i0, i1, s0, w1);
    mux2x1 m2 (i2, i3, s0, w2);
    mux2x1 m3 (w1, w2, s1, y);
endmodule

