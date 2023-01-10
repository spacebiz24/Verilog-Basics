`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2023 23:26:33
// Design Name: 
// Module Name: Multiply_Function
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


module Multiply_Function(a, b, res);
input [4:0]a, b;
output reg [7:0]res;

function [7:0]product;
    input [4:0]a, b;
    begin
        product = a * b;
    end
endfunction

always @ (a or b)
begin
    res = product(a, b);
end
endmodule
