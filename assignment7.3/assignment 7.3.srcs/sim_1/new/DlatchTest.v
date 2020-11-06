`timescale 1ns / 1ps
module dlatchtestbench;

reg D, G, rst;
wire Q;

dlatch latch(
    .D(D),
    .G(G),
    .Q(Q),
    .rst(rst)
);


initial begin
    // Initialize Inputs
    D = 0;
    G = 0;
    rst = 0;

    // Add stimulus here
    #100 G = 1;
    #100 G = 0;
    #100 D = 1;
    #100 D = 0;
    #100 D = 1;
    #100 G = 1;
    #100 G = 0;
    #100 D = 0;  
    #100 ;  
    #100 $finish;
    
end
endmodule