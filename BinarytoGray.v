`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2021 14:20:09
// Design Name: 
// Module Name: BinarytoGray
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


module BinarytoGray(en, data_in, data_out);
input en;
input [3:0]data_in;
output [3:0]data_out;
assign data_out[0] = (data_in[0] ^ data_in[1]) && en;
assign data_out[1] = (data_in[1] ^ data_in[2]) && en;
assign data_out[2] = (data_in[2] ^ data_in[3]) && en;
assign data_out[3] = data_in[3] && en;
endmodule

module stimulus;
reg en;
reg [3:0]data_in;
wire [3:0]data_out;
BinarytoGray uut(en, data_in, data_out);
initial
begin
    en = 1;
    data_in = 4'd0;
    #10 data_in = 4'd1;
    #10 data_in = 4'd2;
    #10 data_in = 4'd3;
    #10 data_in = 4'd4;
    #10 data_in = 4'd5;
    #10 data_in = 4'd6;
    #10 data_in = 4'd7;
    #10 data_in = 4'd8;
    #10 data_in = 4'd9;
    #10 data_in = 4'd10;
    #10 data_in = 4'd11;
    #10 data_in = 4'd12;
    #10 data_in = 4'd13;
    #10 data_in = 4'd14;
    #10 data_in = 4'd15;
end
endmodule
