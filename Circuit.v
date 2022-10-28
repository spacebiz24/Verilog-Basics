`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2021 11:49:14
// Design Name: 
// Module Name: Circuit
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


module Circuit(A,B,C,D,E);
output D,E;
input A,B,C;
wire W1;
and G1(W1,A,B);
not G2(E,C);
or G3(D,W1,E);
endmodule

module stimulus;
reg A,B,C;
wire D,E,W1;
Circuit uut(A,B,C,D,E);
initial
begin
A=0;B=0;C=0;
#10 A=0;B=0;C=1;
#10 A=0;B=1;C=0;
#10 A=0;B=1;C=1;
#10 A=1;B=0;C=0;
#10 A=1;B=0;C=1;
#10 A=1;B=1;C=0;
#10 A=1;B=1;C=1;
end
endmodule
