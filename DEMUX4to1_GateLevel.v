`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 01:06:01
// Design Name: 
// Module Name: DEMUX4to1_GateLevel
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


module DEMUX4to1_GateLevel(s, i, y);
input i;
input [1:0]s;
output [3:0]y;
wire [1:0]sb;
not n1(sb[0], s[0]);
not n2(sb[1], s[1]);
and g1(y[0], i, sb[0], sb[1]);
and g2(y[1], i, s[0], sb[1]);
and g3(y[2], i, sb[0], s[1]);
and g4(y[3], i, s[0], s[1]);
endmodule
