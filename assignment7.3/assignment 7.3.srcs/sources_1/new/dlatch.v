module dlatch (
    input D,
    input G,
    input rst,
    output reg Q
);


always @ (D, G, rst)
begin
   if (rst == 1)
       Q <= 1'b0;	// Q is reset to 0
   else if (G == 1)
       Q <= D;
end
endmodule