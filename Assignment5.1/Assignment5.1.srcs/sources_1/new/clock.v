module counter (
	input clk,
	output [2:0] Y
);

reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
end

assign Y[2] = counter[27];
assign Y[1] = counter[26];
assign Y[0] = counter[25];


endmodule