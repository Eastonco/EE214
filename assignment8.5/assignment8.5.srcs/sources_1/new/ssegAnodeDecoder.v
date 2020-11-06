`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 05:15:18 PM
// Design Name: 
// Module Name: ssegAnodeDecoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ssegAnodeDecoder(
    input [1:0] select,
    output reg [3:0] anode
);
always @(select)
begin
    case (select)
        2'b11: anode <= 4'b0111;
        2'b10: anode <= 4'b1011;
        2'b01: anode <= 4'b1101;
        2'b00: anode <= 4'b1110;
    endcase
end
endmodule
