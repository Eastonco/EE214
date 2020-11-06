`timescale 1ns/1ps
module led_sw(
    output [0:7] ssd,
    output [0:3] disp,
    
    input [0:7] sw,
    input [0:3] btn
);

assign ssd[0] = ~sw[0];
assign ssd[1] = ~sw[1];
assign ssd[2] = ~sw[2];
assign ssd[3] = ~sw[3];
assign ssd[4] = ~sw[4];
assign ssd[5] = ~sw[5];
assign ssd[6] = ~sw[6];


assign disp[0] = ~btn[0];
assign disp[1] = ~btn[1];
assign disp[2] = ~btn[2];
assign disp[3] = ~btn[3];



endmodule