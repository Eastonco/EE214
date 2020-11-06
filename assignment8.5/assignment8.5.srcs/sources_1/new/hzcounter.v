module counter(
    input clk, rst,
    output reg out
    );

reg [16:0] counterout;
always @(posedge(clk))
begin
     if (clk) counterout <= counterout + 1;
     out = counterout[16];
end
endmodule