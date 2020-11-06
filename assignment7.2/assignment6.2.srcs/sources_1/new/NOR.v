`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 06:25:46 PM
// Design Name: 
// Module Name: NOR
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

module NOR(
    input S,
    input R,
    output Q,
    output Qn
    );

wire Q_int, Qn_int;

assign #1 Qn_int = (~S & ~Q_int);
assign #1 Q_int = (~R & ~Qn_int);
assign Q = Qn_int;
assign Qn = Q_int;

endmodule