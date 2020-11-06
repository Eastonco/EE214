`timescale 1ns / 1ps
module wrapper(
    input clk, btn,
    output [3:0] led
);

wire [27:0] counterout;

counter count_main(.clk(clk), .rst(btn), .counterout(counterout));

fcounter count_four(.clk(counterout[27]), .rst(btn), .out(led));

endmodule
