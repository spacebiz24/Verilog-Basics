`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2023 05:41:38
// Design Name: 
// Module Name: Serial_Adder_Moore
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


module Serial_Adder_Moore(x, y, rst, clk, sum, cout);
input x, y, rst, clk;
output reg sum, cout;
reg currentState, nextState;
parameter S0 = 2'd0, S1 = 2'd1, S2 = 2'd2, S3 = 2'd3;

always @(posedge clk)
begin
    if(rst)
        currentState = S0;
    else
        currentState = nextState;
end

always @(posedge clk)
begin
    case(currentState)
        S0:
        begin
            sum = 0;
            cout = 0;
            case({x, y})
                00:
                nextState = S0;
                01, 10:
                nextState = S1;
                11:
                nextState = S2;
            endcase
        end
        S1:
        begin
            sum = 1;
            cout = 0;
            case({x, y})
                00:
                nextState = S0;
                01, 10:
                nextState = S1;
                11:
                nextState = S2;
            endcase
        end
        S2:
        begin
            sum = 0;
            cout = 1;
            case({x, y})
                00:
                nextState = S1;
                01, 10:
                nextState = S2;
                11:
                nextState = S3;
            endcase
        end
        S3:
        begin
            sum = 1;
            cout = 1;
            case({x, y})
                00:
                nextState = S1;
                01, 10:
                nextState = S2;
                11:
                nextState = S3;
            endcase
        end
    endcase
end
endmodule
