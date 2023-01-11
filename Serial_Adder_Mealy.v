`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2023 00:43:54
// Design Name: 
// Module Name: Serial_Adder_Mealy
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


module Serial_Adder_Mealy(x, y, rst, clk, sum, cout);
input x, y, rst, clk;
output reg sum, cout;
reg currentState, nextState;
parameter S0 = 1'd0, S1 = 1'd1;

always @(posedge clk)
begin
    if(rst)
        currentState = S0;
    else
        currentState = nextState;
end

always @(posedge clk)
begin
    case (currentState)
        S0:
        begin
            cout = 0;
            case ({x, y})
                00:
                begin
                    nextState = S0;
                    sum = 0;
                end
                01, 10:
                begin
                    nextState = S0;
                    sum = 1;
                end
                11:
                begin
                    nextState = S1;
                    sum = 0;
                end
            endcase
        end
        S1:
        begin
            cout = 1;
            case ({x, y})
                00:
                begin
                    nextState = S0;
                    sum = 1;
                end
                01, 10:
                begin
                    nextState = S1;
                    sum = 0;
                end
                11:
                begin
                    nextState = S1;
                    sum = 1;
                end
            endcase
        end
    endcase
end
endmodule
