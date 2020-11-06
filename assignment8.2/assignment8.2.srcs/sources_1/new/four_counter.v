module fcounter(
    input rst, clk,
    output reg [3:0] out
    );

always @(posedge(clk), posedge(rst))
begin
    if (rst) out <= 0;
    else if (clk) out <= out + 1;
end
endmodule
