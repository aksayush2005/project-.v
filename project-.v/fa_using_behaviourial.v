`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 20:09:20
// Design Name: 
// Module Name: fa_using_behaviourial
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
module FA_using_behavioural (
    input  a, b, cin,
    output reg sum, cout
);
    always @(*) begin
        sum  = a ^ b ^ cin;
        cout = (a & b) | (b & cin) | (a & cin);
    end
endmodule

