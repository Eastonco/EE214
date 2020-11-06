`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 08:01:25 PM
// Design Name: 
// Module Name: cell
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


module dcell(
    input rst,
    input clk,
    input SPselect,
    input D,
    input S,
    output Sout,
    output Dout
    );
    
wire muxout, rst;

mux2 select(
    .s(SPselect),
    .serial(S),
    .parr(D),
    .out(muxout)
);

dflip latch (
    .D(muxout),
    .clk(clk),
    .rst(rst),
    .sout(Sout),
    .dout(Dout)
);


endmodule
