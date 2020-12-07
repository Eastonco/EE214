`timescale 1ns / 1ps
module sim(

    );
    
reg A, B, clk, rst;
wire F, cout;

wrapper wrapper(
    .A(A),
    .B(B),
    .F(F),
    .rst(rst),
    .clk(clk),  
    .Cout(cout)
);

always
begin
#10 clk = 1'b0;
#10 clk = 1'b1;
end

integer k;

initial 
begin
    rst = 1;
    #10 rst = 0;
    for(k = 0; k <4; k = k +1)
    begin
    #10{A,B} = k;
    end
    
    #10 $finish;
    
end
endmodule
