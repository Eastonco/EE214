`timescale 1ns / 1ps


module testbench;

reg R, S;
wire Q, Qn;

sr_latch latch(
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
);


initial begin
    // Initialize Inputs
    S = 1;
    R = 1;

    // Add stimulus here
    #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;  
    #100 ;  
    #100 $finish;
    
end
endmodule