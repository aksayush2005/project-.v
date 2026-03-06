`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 16:55:23
// Design Name: 
// Module Name: top
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
module top(
    input  sw0,
    input  sw1,
    input  sw2,
    input  sw3,
    output [7:0] led
);

decoder3x8_behav uut (
    .a  (sw0),
    .b  (sw1),
    .c  (sw2),
    .en (sw3),
    .y  (led)
);

endmodule