`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 04:13:17 PM
// Design Name: 
// Module Name: source
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


module source(
input [3:0] bus,
input ein,
output reg [1:0] out,
output reg eout,
output reg GS
    );

always @(bus)
begin
if(ein)
    begin
        if (bus[3])
            begin 
                GS = 1;
                eout = 0;
                out <= 2'b11;
            end
        else if(bus[2])
            begin
                GS = 1;
                eout = 0;
                out <= 2'b10;
            end
        else if (bus[1])
            begin
                GS = 1;
                eout = 0;
                out <= 2'b01;
            end
        else if(bus[0])
            begin
            GS = 1;
            eout = 0;
            out <= 0;
            end
        else
            GS= 0 ;
            eout = 1;
            out <= 0;
    end
else
    begin
        out <= 0;
        eout = 0;
        GS = 0;
    end
    
end
endmodule
