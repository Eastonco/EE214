module counter(
    input clk, rst,
    output reg [26:0] counterout
    );
    
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) counterout <= 0;
     else if (clk) counterout <= counterout + 1;
end
endmodule