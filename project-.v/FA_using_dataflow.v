`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 18:23:58
// Design Name: 
// Module Name: FA_using_dataflow
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


module FA_using_dataflow(
    input a,b,cin,
    output sum,cout
    );
    
 
    assign#2 sum= a^b^cin;
    assign#5 cout=a&b|b&cin|cin&a;
endmodule
