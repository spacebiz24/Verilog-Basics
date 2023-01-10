`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2023 18:45:12
// Design Name: 
// Module Name: Factorial_Task
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


module Factorial_Task(num, res);
input [3:0]num;
output reg [15:0]res;
task Fact;
    input reg[3:0]num;
    begin
        res = 1;
        while (num != 1)
        begin
            res = res * num;
            num = num - 1;
        end
    end
endtask
always @ (num)
begin
    Fact(num);
end
endmodule
