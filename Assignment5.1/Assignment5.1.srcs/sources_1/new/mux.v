module mux(
    input [7:0] sw,
    input [2:0] clk,
    output reg out
);

always @(clk)
begin
    case(clk)
        3'd0: out = sw[0];
        3'd1: out = sw[1];
        3'd2: out = sw[2];
        3'd3: out = sw[3];
        3'd4: out = sw[4];
        3'd5: out = sw[5];
        3'd6: out = sw[6];
        3'd7: out = sw[7];
    endcase
end

endmodule