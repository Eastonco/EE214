`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 04:25:24 PM
// Design Name: 
// Module Name: BCD
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


module BCD(
    input [3:0] num,
    output reg [3:0] ones,
    output reg [3:0] tens
    );
    
integer i;

always @(num)
begin
    ones = 4'd0;
    tens = 4'd0;
    for(i = 3; i >= 0; i = i -1)
    begin
    
        if(tens >= 5) tens = tens + 3;
        if(ones >= 5) ones = ones + 3;
        tens = tens << 1;
        tens[0] = ones[3];
        ones = ones << 1;
        ones[0] = num[i];
    
    end

end

endmodule
