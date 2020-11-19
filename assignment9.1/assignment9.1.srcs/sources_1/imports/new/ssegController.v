`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 04:57:25 PM
// Design Name: 
// Module Name: ssegController
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


module ssegController(
    input [3:0] one,
    input [3:0] ten,
    input [3:0] hunnid,
    input [3:0] thousand,
    input clk,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [1:0] select;
dispClk dispClk(.clk(clk), .out(select));

wire [3:0] ssegout;

mux inputselect(.select(select), .one(one), .ten(ten), .hunnid(hunnid), .thousand(thousand), .out(ssegout));

ssegDecoder cathods(.ssegin(ssegout), .sseg(seg_cat));

ssegAnodeDecoder anodes(.select(select), .anode(seg_an));

endmodule
