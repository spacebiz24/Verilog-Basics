`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2022 11:50:39
// Design Name: 
// Module Name: FullAdder_DataFlow
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


module FullAdder_DataFlow(a, b, cin, s, cout);
input a, b, cin;
output s, cout;
assign s = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

module testbench;
reg a, b, cin;
wire s, cout;
FullAdder_DataFlow uut(a, b, cin, s, cout);
initial
begin
    a = 0;
    b = 1;
    cin = 0;
    #10
    a = 1;
    b = 1;
    cin = 1;
    #10
    a = 0;
    b = 0;
    cin = 0;
    #10
    a = 1;
    b = 1;
    cin = 0;
end
endmodule
