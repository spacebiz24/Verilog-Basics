`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2022 01:22:00
// Design Name: 
// Module Name: GateDelayandTriState
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


module GateDelayandTriState(a, b, out, sel);
input a, b, sel;
output out;
bufif1 #(3,4,5) g1(out, a, ~sel); // rise, fall, turnoff
bufif1 #(2:3:4, 5:6:7, 8:9:10) g2(out, b, sel); // rise(min, typ, max), fall(..), turnoff(..)
endmodule

module stimulus;
reg a, b, sel;
wire out;
GateDelayandTriState uut(a, b, out, sel);
initial
begin
    a = 1'b0;
    b = 1'b1;   
    sel = 1'b0;
    #20 sel = 1'b1;
end
endmodule
