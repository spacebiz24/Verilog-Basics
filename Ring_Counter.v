`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2022 23:54:22
// Design Name: 
// Module Name: Ring_Counter
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


module Ring_Counter(clk, out, rst);
    parameter WIDTH = 4;
    input clk, rst;
    output reg [WIDTH - 1:0] out;
    integer i;
    always @ (posedge clk)
    begin
        if(!rst)
            out <= 1;
        else
        begin
            out[WIDTH - 1] <= out[0];
            for (i = 0; i < WIDTH - 1; i = i + 1)
            begin
                out[i] <= out[i + 1];
            end
        end
    end
endmodule
