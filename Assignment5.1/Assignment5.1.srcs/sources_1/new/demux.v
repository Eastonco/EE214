module demux(
    input data,
    input [2:0] clk,
    output reg [7:0] led
);

always @(clk)
begin
    led = 8'b00000000;
    case(clk)
        3'd0: led[0] = data;
        3'd1: led[1] = data;
        3'd2: led[2] = data;
        3'd3: led[3] = data;
        3'd4: led[4] = data;
        3'd5: led[5] = data;
        3'd6: led[6] = data;
        3'd7: led[7] = data;
    endcase
end

endmodule
