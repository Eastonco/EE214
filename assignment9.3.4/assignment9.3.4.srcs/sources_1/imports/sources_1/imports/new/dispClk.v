module dispClk(
    input clk,
    output reg [1:0] out
);

reg [16:0] counterout;
always @(posedge(clk))
begin
     if (clk) counterout <= counterout + 1;
end

always @ (posedge(counterout[16]))
begin
     out <= out + 1;
end

endmodule
