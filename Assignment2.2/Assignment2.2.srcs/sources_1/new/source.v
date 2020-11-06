module source(
    input [3:0] sw,
    output [0:1] yellow,
    output red
);

assign yellow[0] = (~sw[0] & sw[1] & ~sw[2] & ~sw[3]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[3]) | (sw[2] & ~sw[3]) | (sw[0] & sw[3]);
assign yellow[1] = (~sw[0] & sw[1] & ~sw[2] & ~sw[3]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[3]) | (sw[2] & ~sw[3]) | (sw[0] & sw[3]);
assign red = (sw[0] & sw[1]) | (sw[2] & sw[3]) | (sw[0] & sw[2]) | (sw[1] & sw[3] & sw[0] & ~sw[2]);

endmodule
