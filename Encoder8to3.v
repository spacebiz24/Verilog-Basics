`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2021 12:18:09
// Design Name: 
// Module Name: Encoder8to3
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

module Encoder8to3(en, a, y);
input en;
input [7:0]a;
output reg [2:0]y;
always @(a,en)
    begin
    if(en==1)
    y=3'bzzz;
    else
    case(a)
    8'b00000001:y=3'b000;
    8'b00000010:y=3'b001;
    8'b00000100:y=3'b010;
    8'b00001000:y=3'b011;
    8'b00010000:y=3'b100;
    8'b00100000:y=3'b101;
    8'b01000000:y=3'b110;
    8'b10000000:y=3'b111;
    default:y=3'bxxx;
    endcase
    end
endmodule

module stimulus;
reg en;
reg [7:0]a;
wire [2:0]y;
Encoder8to3 uut(en,a,y);
initial
begin
    en = 0;
    a = 8'b00000001;
    #10 a = 8'b00000010;
    #10 a = 8'b00000100;
    #10 a = 8'b00001000;
    #10 a = 8'b00010000;
    #10 a = 8'b00100000;
    #10 a = 8'b01000000;
    #10 a = 8'b10000000;
end
endmodule
