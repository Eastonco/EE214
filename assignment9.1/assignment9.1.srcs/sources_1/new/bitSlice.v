module bitSlice(
    input A,
    input B,
    input Cin,
    output G,
    output P,
    output S
);

assign G = A && B;
assign P = A ^ B;
assign S = P ^ Cin;

endmodule
