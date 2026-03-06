`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 13:07:43
// Design Name: 
// Module Name: jk_ff
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

module jk_ff (
    input  wire clk,
    input  wire rst,
    input  wire j,
    input  wire k,
    output reg  q
);
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else begin
        case ({j, k})
            2'b00: q <= q;        
            2'b01: q <= 1'b0;    
            2'b10: q <= 1'b1;     
            2'b11: q <= ~q;      
        endcase
    end
end

endmodule
