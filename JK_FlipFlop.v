`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2021 23:49:38
// Design Name: 
// Module Name: JK_FlipFlop
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


module JK_FlipFlop(j, k, clk, rst, q);
input j, k, clk, rst;
output reg q = 1'b0;
always @(posedge(clk) or posedge(rst))
begin
    if(rst)
    q <= 1'b0;
    else
    case({j,k})
        0:q <= q;
        1:q <= 1'b0;
        2:q <= 1'b1;
        3:q <= ~q;
    endcase    
end
endmodule
