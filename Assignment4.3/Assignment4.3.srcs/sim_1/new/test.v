`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 04:42:48 PM
// Design Name: 
// Module Name: test
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


module test();

reg [3:0] bus;
reg ein;
wire [1:0] out;
wire eout;
wire GS;

source cut (
    .bus(bus),
    .ein(ein),
    .out(out),
    .eout(eout),
    .GS(GS)
);

integer k, i;

initial
begin
    k = 0;
    i = 0;
    for(k = 0; i < 2; k= k+1)
    begin
        ein = k;
        for(i = 0; i < 4; i = i +1)
            #1 bus = i;
    end
    #1 $finish;
end
endmodule
