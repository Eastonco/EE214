`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 08:35:35 PM
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input [7:0] sw,
    input clk,
    input muxSelect,
    output [7:0] led
    );
    
wire [7:0]dlatchout;
wire rst;

dflip l1(
    .D(sw[0]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[0])
);

dflip l2(
    .D(sw[1]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[1])
);

dflip l3(
    .D(sw[2]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[2])
);

dflip l4(
    .D(sw[3]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[3])
);

dflip l5(
    .D(sw[4]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[4])
);

dflip l6(
    .D(sw[5]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[5])
);

dflip l7(
    .D(sw[6]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[6])
);

dflip l8(
    .D(sw[7]),
    .G(clk),
    .rst(rst),
    .Q(dlatchout[7])
);

mux out(
    .s(muxSelect),
    .sw(sw),
    .latch(dlatchout),
    .led(led)
);



endmodule
