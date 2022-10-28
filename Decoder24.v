`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2021 12:23:45
// Design Name: 
// Module Name: Decoder24
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


module Decoder24(d,a,b,en);
output [3:0]d;
input a,b,en;
wire abar,bbar,enbar;
not n1(abar,a), n2(bbar,b), n3(enbar,en);
and a1(d[0],abar,bbar,enbar), a2(d[1],abar,b,enbar), a3(d[2],a,bbar,enbar), a4(d[3],a,b,enbar);
endmodule

module stimulus;
reg a,b,en;
wire [3:0]d;
Decoder24 uut(d,a,b,en);
initial
begin
a=0;b=0;en=0;
#10 a=0;b=1;en=0;
#10 a=1;b=0;en=0;
#10 a=1;b=1;en=0;
#10 a=0;b=0;en=1;
#10 a=0;b=1;en=1;
#10 a=1;b=0;en=1;
#10 a=1;b=1;en=1;
end
endmodule
