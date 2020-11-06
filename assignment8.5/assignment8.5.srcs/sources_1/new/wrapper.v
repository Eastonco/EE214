`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 04:53:08 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk,
    input btn,
    output [3:0] seg_an,
    output [6:0] seg_cat
    );

wire clkout;
wire [3:0] ones;
wire [3:0] tens;
wire [3:0] hunnid;
wire [3:0] thousand;

counter newclk(.clk(clk), .rst(btn), .out(clkout));

counterController count(.tick(clkout), .rst(btn), .ones(ones), .tens(tens), .hunnids(hunnid), .thousands(thousand));

ssegController sseg(.one(ones), .ten(tens), .hunnid(hunnid), .thousand(thousand), .clk(clkout), .seg_an(seg_an), .seg_cat(seg_cat));


endmodule
