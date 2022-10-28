`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 01:20:43
// Design Name: 
// Module Name: FullSubtractor_DataFlow
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


module FullSubtractor_DataFlow(a, b, bin, d, bout);
input a, b, bin;
output d, bout;
assign d = a ^ b ^ bin;
assign bout = (!a) & (b ^ bin) | (b & bin);
endmodule
