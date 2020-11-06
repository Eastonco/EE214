module wrapper(
    input clk,
    input [7:0] sw,
    output [7:0] led,
    output Red
);

wire [2:0] timer;
wire transport;

counter clock(
    .clk(clk),
    .Y(timer)
    );
    
mux multiplexor(
    .sw(sw),
    .clk(timer),
    .out(transport)
);

demux display(
    .data(transport),
    .clk(timer),
    .led(led)
);

assign Red = transport;

endmodule