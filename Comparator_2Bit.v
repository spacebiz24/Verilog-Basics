`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 07:48:31
// Design Name: 
// Module Name: Comparator_2Bit
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

module Comparator_1Bit(a, b, aeb, agb, alb);
input a, b;
output aeb, agb, alb;
wire na, nb;
not n1(na, a);
not n2(nb, b);
and g1(alb, na, b);
and g2(agb, a, nb);
xnor g3(aeb, agb, alb);
endmodule

module Comparator_2Bit(a, b, aeb, agb, alb);
input [1:0]a, b;
output aeb, agb, alb;
wire aeb1, aeb2, agb1, agb2, alb1, alb2;
wire w1, w2;
Comparator_1Bit c1 (a[0], b[0], aeb1, agb1, alb1);
Comparator_1Bit c2 (a[1], b[1], aeb2, agb2, alb2);
and g1(aeb, aeb2, aeb1);
and g2(w1, aeb2, alb1);
and g3(w2, aeb2, agb1);
or g4(alb, w1, alb2);
or g5(agb, agb2, w2);
endmodule
