module counter(
    input clk, rst, enabeled,
    output reg out
    );

reg [16:0] counterout;

always @(posedge clk)
begin
    if(enabeled)
    begin
        if (clk) counterout <= counterout + 1;
    end
    out = counterout[16];
end


endmodule