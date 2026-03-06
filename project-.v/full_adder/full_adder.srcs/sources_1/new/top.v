`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 13:50:51
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

module top (
    input sw0,
    input sw1,
    input sw2,
    output led0,
    output led1
);

FA_using_behavioural FA (
    .a(sw0),
    .b(sw1),
    .cin(sw2),
    .sum(led0),
    .cout(led1)
);

endmodule
