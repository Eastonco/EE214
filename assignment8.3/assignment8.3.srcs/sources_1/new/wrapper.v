module wrapper(
    input clk, btn,
    output led
    );

wire [15:0] out;

counter1 count (.clk(clk), .rst(btn), .out(out));
clk_divider dvd(.clk(out[15]), .rst(btn), .led(led));

endmodule
