`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 01:34:11
// Design Name: 
// Module Name: Encoder42
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


module Encoder42(a, y);
input [3:0]a;
output [1:0]y;
or g1 (y[0], a[1], a[3]);
or g2 (y[1], a[2], a[3]);
endmodule
