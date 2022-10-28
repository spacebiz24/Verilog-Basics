`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 01:14:28
// Design Name: 
// Module Name: DEMUX1to4
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


module DEMUX1to4(i, s, y);
input i;
input [1:0]s;
output [3:0]y;
assign y[0] = i & (!s[0]) & (!s[1]);
assign y[1] = i & (!s[1]) & s[0];
assign y[2] = i & (!s[0]) & s[1];
assign y[3] = i & s[1] & s[0];
endmodule
