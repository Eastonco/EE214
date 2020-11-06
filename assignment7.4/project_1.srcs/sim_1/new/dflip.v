`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 09:46:54 PM
// Design Name: 
// Module Name: dflip
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


module dflip(
    input D,
    input G,
    input rst,
    output reg Q
    );

always @(posedge(G), posedge(rst))
begin
   if (rst == 1)
       Q <= 1'b0;	// Q is reset to 0
   else
       Q <= D;
end
endmodule
