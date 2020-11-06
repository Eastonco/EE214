`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 07:08:51 PM
// Design Name: 
// Module Name: 2-1mux
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


module mux2(
    input s,
    input serial,
    input parr,
    output reg out
    );
    
always @(*)
begin
    case(s)
        1'd0: out <= serial;
        1'd1: out <= parr;
    endcase
end
endmodule
