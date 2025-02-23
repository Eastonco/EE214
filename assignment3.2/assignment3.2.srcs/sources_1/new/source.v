module source(
    input [4:0] sw,
    output led
    );
    
assign led = (sw[0] & sw[1] & sw[2]) | //ABC
             (sw[0] & sw[1] & sw[3]) | //ABD
             (sw[0] & sw[2] & sw[3]) | //ACD
             (sw[1] & sw[2] & sw[3]) | //BCD
             (sw[0] & sw[1] & sw[4]) | //ABE
             (sw[0] & sw[3] & sw[4]) | //ADE
             (sw[0] & sw[2] & sw[4]) | //ACE
             (sw[1] & sw[2] & sw[4]) | //BCE
             (sw[2] & sw[3] & sw[4]) | //CDE
             (sw[1] & sw[3] & sw[4]);  //BDE    
    
endmodule
