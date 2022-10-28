`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 11:13:27
// Design Name: 
// Module Name: MUX4to1_GateLevel
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


module MUX4to1_GateLevel(y, s, i);
output y;
input [1:0]s;
wire [1:0]sb;
input [3:0]i;
wire [3:0]w;
not n1(sb[0],s[0]);
not n2(sb[1], s[1]);
and a1(w[0], sb[0], sb[1], i[0]);
and a2(w[1], s[0], sb[1], i[1]);
and a3(w[2], sb[0], s[1], i[2]);
and a4(w[3], s[0], s[1], i[3]);
or o1(y, w[0], w[1], w[2], w[3]);
endmodule

module test_bnch;
reg [3:0]i;
reg [1:0]s;
wire y;
MUX4to1_GateLevel uut(y, s, i);
initial
begin
    i = 4'b1010;
    s = 2'd0;
    $display("y = %d & s = %d", y, s);
    #10 s = 2'd1;
    $display("y = %d & s = %d", y, s);
    #10 s = 2'd2;
    $display("y = %d & s = %d", y, s);
    #10 s = 2'd3;
    $display("y = %d & s = %d", y, s);
    #50 $finish;
end
endmodule
