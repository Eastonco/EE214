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
    input rst,
    input start,
    input stop,
    input inc,
    output [3:0] seg_an,
    output [6:0] seg_cat
    );

wire clkout, segclk;
wire [3:0] ones;
wire [3:0] tens;
wire [3:0] hunnid;
wire [3:0] thousand;


reg enabeled;

always @(start, stop)
begin
if(start)
    enabeled = 1'b1;
if(stop)
    enabeled = 1'b0;
end

counter newclk(.clk(clk), .rst(rst), .out(clkout), .enabeled(enabeled));

counterController count(.tick(clkout), .rst(rst), .ones(ones), .tens(tens), .hunnids(hunnid), .thousands(thousand), .inc(inc));

ssegController sseg(.one(ones), .ten(tens), .hunnid(hunnid), .thousand(thousand), .clk(clk), .seg_an(seg_an), .seg_cat(seg_cat));


endmodule
