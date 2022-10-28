`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2021 09:36:13
// Design Name: 
// Module Name: MUX4to1
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


module MUX4to1(i,s,f);
input [3:0]i;
input [1:0]s;
output f;
assign f = s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
endmodule

module stimulus;
reg [1:0]s;
reg [3:0]i;
wire f;
MUX4to1 uut(i,s,f);
initial
begin
    i = 4'b1010;
    s = 2'd0;
    #10 s = 2'd1;
    #10 s = 2'd2;
    #10 s = 2'd3;
end
endmodule
