`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2026 13:14:01
// Design Name: 
// Module Name: fourbit_ctr
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

module up_down_counter (
    input  wire clk,
    input  wire rst,
    input  wire up_down,     
    output reg  [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else begin
        if (up_down)
            count <= count + 1'b1;  
        else
            count <= count - 1'b1;   
    end
end

endmodule
