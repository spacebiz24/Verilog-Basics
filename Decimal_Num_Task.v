`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2022 06:03:32
// Design Name: 
// Module Name: Decimal_Num_Task
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


module Decimal_Num_Task(dec);
output reg [3:0]dec;
integer i = 0;
task B2D;
    input [3:0]bin_num;
    begin
        dec = 0;
        while (i < 4)
        begin
            dec = dec + (bin_num[i] * (2'd2 ** i));
            i = i + 1;
        end
        $display("Decimal Equivalent is: %d", dec);
    end
endtask
initial
begin
    B2D(4'b1011);
end
endmodule
