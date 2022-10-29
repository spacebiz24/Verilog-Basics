`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 07:40:29
// Design Name: 
// Module Name: GraytoBinary
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


module GraytoBinary(en, data_in, data_out);
input en;
input [3:0]data_in;
output [3:0]data_out;
assign data_out[3] = data_in[3] && en;
assign data_out[2] = (data_out[3] ^ data_in[2]) && en;
assign data_out[1] = (data_out[2] ^ data_in[1]) && en;
assign data_out[0] = (data_out[1] ^ data_in[0]) && en;
endmodule
