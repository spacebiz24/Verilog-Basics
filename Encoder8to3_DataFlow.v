`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 00:37:15
// Design Name: 
// Module Name: Encoder8to3_DataFlow
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


module Encoder8to3_DataFlow(a, y);
input [7:0]a;
output [2:0]y;
assign y[0] = a[4] | a[5] | a[6] | a[7];
assign y[1] = a[2] | a[3] | a[6] | a[7];
assign y[2] = a[1] | a[3] | a[5] | a[7];
endmodule

module stimulus;
reg [7:0]a;
wire [2:0]y;
Encoder8to3_DataFlow uut(a,y);
initial
begin
    a = 8'b00000000;
    #10 a = 8'b10000000;
    #10 a = 8'b00100000;
    #10 a = 8'b00000100;
end
endmodule
