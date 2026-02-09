`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 20:10:31
// Design Name: 
// Module Name: gray2bin_df
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


module gray2bin_df(
    input  [3:0] g,
    output [3:0] b
);
    assign b[3] = g[3];
    assign b[2] = b[3] ^ g[2];
    assign b[1] = b[2] ^ g[1];
    assign b[0] = b[1] ^ g[0];
endmodule

