`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2020 11:30:15 PM
// Design Name: 
// Module Name: shifter
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


module shifter(
    input [7:0] ledin,
    input tick,
    output wire [7:0] led
    );

reg [7:0] out;


always @(tick)
begin
out = ledin;
out = {out[6:0], 0};

end
assign led = out;
endmodule
