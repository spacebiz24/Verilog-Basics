`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2022 10:27:21
// Design Name: 
// Module Name: Gray_Counter
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


module Gray_Counter(clk, out, rst);
input clk, rst;
reg [3:0] outb;
output reg [3:0] out;
integer i;
always @ (posedge clk)
begin
    if(!rst)
        outb <= 0;
    else
        outb <= outb+1;
    for (i = 0; i < 3; i = i + 1)
        out[i] = outb[i] ^ outb[i+1];
    out[3] = outb[3];
end
endmodule
