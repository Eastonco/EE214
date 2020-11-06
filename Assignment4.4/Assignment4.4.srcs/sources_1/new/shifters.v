`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 05:14:16 PM
// Design Name: 
// Module Name: shifters
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


module shifters(
input [7:0] sw,
input [1:0] shift,
input rotate,
input fill,
input direction,
output wire [7:0] led
    );

reg [7:0] out;
integer i;
    
always @(*)
begin
out = sw;

for(i = 0; i < shift; i = i +1)
    begin
    if(rotate)
        begin
        if(direction)
            out = {out[6:0], out[7]};
        else
            out = {out[0], out[7:1]};
        end
    else
        begin
        if(direction)
            out = {out[6:0], fill};
        else
            out = {fill, out[7:1]};
        end
    end
end
assign led = out; 

endmodule
