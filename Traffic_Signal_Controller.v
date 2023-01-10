`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2023 00:08:36
// Design Name: 
// Module Name: Traffic_Signal_Controller
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
`define R2Y 6
`define R2G 4

`define RED 2'd0
`define YELLOW 2'd1
`define GREEN 2'd2

module Traffic_Signal_Controller(X, rst, clk, CNTRY, HGWY);
    input rst, clk, X;
    output reg [2:0]CNTRY, HGWY;
    parameter S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4;
    reg [2:0]currentState, nextState;
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
                CNTRY = `RED;
                HGWY = `GREEN;
                if(X)
                    nextState = S1;
                else
                    nextState = S0;
            end
            S1:
            begin
                CNTRY = `RED;
                HGWY = `YELLOW;
                repeat (`R2Y) @(posedge clk);
                nextState = S2;
            end
            S2:
            begin
                CNTRY = `RED;
                HGWY = `RED;
                repeat (`R2G) @(posedge clk);
                nextState = S3;
            end
            S3:
            begin
                CNTRY = `GREEN;
                HGWY = `RED;
                if(X)
                    nextState = S3;
                else
                    nextState = S4;
            end
            S4:
            begin
                CNTRY = `YELLOW;
                HGWY = `RED;
                repeat (`R2Y) @(posedge clk);
                nextState = S0;
            end
        endcase
    end
endmodule
