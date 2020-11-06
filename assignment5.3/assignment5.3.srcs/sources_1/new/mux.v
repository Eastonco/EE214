
module mux(
    input [7:0] sw,
    input btn,
    output reg [3:0] swout
    );

always @(btn)
begin
    case(btn)
        1'b0: swout = sw[3:0];
        1'b1: swout = sw[7:4];
    endcase
end
endmodule
