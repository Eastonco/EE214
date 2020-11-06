`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 08:38:36 PM
// Design Name: 
// Module Name: mux
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


module mux(
    input s,
    input [7:0] sw,
    input [7:0] latch,
    output reg [7:0] led
    );

always @(*)
begin
    case(s)
        1'd0: led <= sw;
        1'd1: led <= latch;
    endcase
end
endmodule
