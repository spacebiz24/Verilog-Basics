`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 11:49:10
// Design Name: 
// Module Name: RippleCarryAdder_GateLevel
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

module FullAdder(a, b, cin, cout, s);
input a, b, cin;
output s, cout;
wire [2:0]w;
xor g1(w[0], a, b);
and g2(w[1], a, b);
xor g3(s, w[0], cin);
and g4(w[2], w[0], cin);
or g5(cout, w[1], w[2]);
endmodule

module RippleCarryAdder_GateLevel(s, cin, fcout, a, b);
input [3:0]a, b;
input cin;
output [3:0]s;
wire [2:0]cout;
output fcout;
FullAdder F1(a[0], b[0], cin, cout[0], s[0]);
FullAdder F2(a[1], b[1], cout[0], cout[1], s[1]);
FullAdder F3(a[2], b[2], cout[1], cout[2], s[2]);
FullAdder F4(a[3], b[3], cout[2], fcout, s[3]);
endmodule

module testbench;
reg [3:0]a, b;
reg cin;
wire [3:0]s;
wire [2:0]cout;
wire fcout;
RippleCarryAdder_GateLevel uut(s, cin, fcout, a, b);
initial
begin
    a = 4'd10;
    b = 4'd9;
    cin = 1'b0;
    $monitor ("a = %d, b = %d, cin = %d, s = %d, fcout = %d", a, b, cin, s, fcout);
    #10 a = 4'd15;
    b = 4'd0;
    cin = 1'b1;
    #10 a = 4'd1;
    b = 4'd2;
    cin = 1'b0;
    #10 a = 4'd2;
    b = 4'd15;
    cin = 1'b1;
end
endmodule
