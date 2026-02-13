`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 18:49:49
// Design Name: 
// Module Name: testbench_fa
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


module testbench_fa(

    );
    reg a,b,cin;
    wire sum,cout;
    FA_using_structural UUT(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial
        begin
            a=0;
            b=0;
            cin=0;
            #10 a=1;
            #10 b=1;
            #10 cin=0;
            #10 a=0;
            #10 b=1;
            #10 cin=1;
            #50 $finish;
            end
            initial
                $monitor("time=%t:",$time,"A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b",a,b,cin,sum,cout);
                
endmodule
