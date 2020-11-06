`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 10:51:25 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    input sw,
    input clk,
    input rst,
    output reg [7:0] led
    );

wire [7:0] out;

dflip latch0 (
    .D(sw),
    .clk(clk),
    .rst(rst),
    .dout(out[0])
);

dflip latch1 (
    .D(out[0]),
    .clk(clk),
    .rst(rst),
    .dout(out[1])
);

dflip latch2 (
    .D(out[1]),
    .clk(clk),
    .rst(rst),
    .dout(out[2])
);

dflip latch3 (
    .D(out[2]),
    .clk(clk),
    .rst(rst),
    .dout(out[3])
);

dflip latch4 (
    .D(out[3]),
    .clk(clk),
    .rst(rst),
    .dout(out[4])
);

dflip latch5 (
    .D(out[4]),
    .clk(clk),
    .rst(rst),
    .dout(out[5])
);

dflip latch6 (
    .D(out[5]),
    .clk(clk),
    .rst(rst),
    .dout(out[6])
);

dflip latch7 (
    .D(out[6]),
    .clk(clk),
    .rst(rst),
    .dout(out[7])
);

always @(clk)
begin
led = out;
end

endmodule
