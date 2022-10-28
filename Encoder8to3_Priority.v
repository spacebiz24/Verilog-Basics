`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2021 13:06:32
// Design Name: 
// Module Name: Encoder8to3_Priority
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

module Encoder8to3_Priority(en, a, y);
input en;
input [7:0]a;
output reg [2:0]y;
always @(a, en)
begin
    if(en == 1)
    y = 3'bzzz;
    else
    casex (a)
        8'b00000001:y=3'b000;
        8'b0000001x:y=3'b001;
        8'b000001xx:y=3'b010;
        8'b00001xxx:y=3'b011;
        8'b0001xxxx:y=3'b100;
        8'b001xxxxx:y=3'b101;
        8'b01xxxxxx:y=3'b110;
        8'b1xxxxxxx:y=3'b111;
    endcase
end
endmodule

module stimulus;
reg en;
reg [7:0]a;
wire [2:0]y;
Encoder8to3_Priority uut(en, a, y);
initial
begin
    en = 0;
    a = 8'b00010010;
    #10 a = 8'b10100000;
    #10 a = 8'b00000001;
    #10 a = 8'b00001001;
end
endmodule
