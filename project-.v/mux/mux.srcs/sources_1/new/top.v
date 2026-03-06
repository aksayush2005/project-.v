`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 16:13:01
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
    input  [5:0] sw,  
    output led0        
);

mux4x1_behav uut (
    .i0(sw[0]),
    .i1(sw[1]),
    .i2(sw[2]),
    .i3(sw[3]),
    .s0(sw[4]),
    .s1(sw[5]),
    .y(led0)
);

endmodule