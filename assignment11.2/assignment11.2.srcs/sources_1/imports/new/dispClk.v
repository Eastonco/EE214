module dispClk(
    input clk,
    output reg [1:0] out
);

reg [16:0] cout = 0;

always @ (posedge(clk))
begin
     cout <= cout + 1;
end

always @(posedge cout[16])
out <= out +1;

endmodule
