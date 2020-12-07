`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 07:27:49 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk, [7:0] sw, [2:0] mode, [1:0] btn,
    output [6:0] seg_cat, [3:0] seg_an
    );
    
reg [7:0] num1, num2;
reg [15:0] result;

always @ (posedge(clk)) begin
    if (btn[0]) num1 <= sw;
    if (btn[1]) num2 <= sw;
end

always @(*)
begin
    case(mode)
        3'b000: result = num1 + num2;
        3'b001: result = num1 + 1;
        3'b010: result = num1 - num2;
        3'b011: result = num1 ^ num2;
        3'b100: result = num1 | num2;
        3'b101: result = num1 & num2;
     endcase
end

wire [15:0] bcd;

bin2bcd bin2bcd(.bin(result), .bcd(bcd));

ssegController sseg(.one(bcd[3:0]), .ten(bcd[7:4]), .hunnid(bcd[11:8]), .thousand(bcd[15:12]), .clk(clk), .seg_an(seg_an), .seg_cat(seg_cat));

endmodule
