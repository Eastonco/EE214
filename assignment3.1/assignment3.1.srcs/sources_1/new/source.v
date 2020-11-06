module source(
    input [4:0] sw,
    output ld
);

assign ld = (sw[0] & sw[1] & sw[2] & sw[3] & sw[4]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[3] & ~sw[4]) | (sw[0] & sw[1] & sw[2] & ~sw[3] & ~sw[4]) | (sw[0] & sw[1] & ~sw[2] & sw[3] & ~sw[4]) | (sw[0] & sw[1] & ~sw[2] & ~sw[3] & sw[4]) | (sw[0] & ~sw[1] & sw[2] & sw[3] & ~sw[4]) | (sw[0] & ~sw[1] & sw[2] & ~sw[3] & sw[4]) | (sw[0] & ~sw[1] & ~sw[2] & sw[3] & sw[4]) | (sw[0] & ~sw[1] & ~sw[2] & ~sw[3] & ~sw[4]) | (~sw[0] & sw[1] & sw[2] & sw[3] & ~sw[4]) | (~sw[0] & sw[1] & sw[2] & ~sw[3] & sw[4]) | (~sw[0] & sw[1] & ~sw[2] & sw[3] & sw[4]) | (~sw[0] & sw[1] & ~sw[2] & ~sw[3] & ~sw[4]) | (~sw[0] & ~sw[1] & sw[2] & sw[3] & sw[4]) | (~sw[0] & ~sw[1] & sw[2] & ~sw[3] & ~sw[4]) | (~sw[0] & ~sw[1] & ~sw[2] & ~sw[3] & sw[4]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[4] & ~sw[3]);

endmodule
