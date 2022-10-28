`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2021 00:06:59
// Design Name: 
// Module Name: D_FlipFlop
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


module D_FlipFlop(d, rst, clk, q, qb);
input d, rst, clk;
output reg q, qb;
always @(posedge(clk) or negedge(rst))
begin
    if(!rst)
    begin
        q = 0;
        qb = 1;
    end
    else
    begin
        q = d;
        qb = ~d;
    end
end
endmodule
