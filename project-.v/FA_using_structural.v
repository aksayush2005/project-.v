`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2026 22:17:39
// Design Name: 
// Module Name: FA_using_structural
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

module FA_using_structural (
    input a, b, cin,
    output sum, cout
);
    wire s1, c1, c2;

    xor (s1, a, b);
    xor (sum, s1, cin);

    and (c1, a, b);
    and (c2, s1, cin);

    or  (cout, c1, c2);
endmodule
