`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 04:18:29 PM
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
    input clk, btn,
    output [6:0] seg_cat
    );

wire [26:0] cout;
wire [3:0] ssegout;

counter count (.clk(clk), .rst(btn), .counterout(cout));

bcdcounter bcd (.clk(cout[26]), .rst(btn), .bcd_digit(ssegout));

sseg sseg(.in(ssegout), .sseg(seg_cat));

endmodule
