`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2020 09:33:39 PM
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
    output [3:0] led
);

    assign led[0] = (btn[0] & (~sw[0] & ~sw[1]));
    assign led[1] = (btn[1] & (sw[0] & ~sw[1]));
    assign led[2] = (btn[2] & (~sw[0] & sw[1])); 
    assign led[3] = (btn[3] & (sw[0] & sw[1]));
    
endmodule
