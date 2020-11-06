`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2020 07:21:41 PM
// Design Name: 
// Module Name: source
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


module source(
    input [1:0] sw,
    input [3:0] btn,
    output reg led
);

always @(*)
begin
    case(sw)
        2'd0: led = btn[0];
        2'd1: led = btn[1];
        2'd2: led = btn[2];
        2'd3: led = btn[3];
        default: led = 0;
    endcase
end
    
endmodule
