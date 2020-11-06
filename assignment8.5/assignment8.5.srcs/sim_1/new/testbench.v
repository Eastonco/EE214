`timescale 1ns / 1ps
module testbench();

reg clock;
reg rst;
wire [3:0] ones;
wire [3:0] tens;
wire [3:0] hunnids;
wire [3:0] thousands;
wire oneout, tenout, hunnindout;

counterController test(
    .tick(clock),
    .rst(rst),
    .ones(ones),
    .tens(tens),
    .hunnids(hunnids),
    .thousands(thousands)
);

integer k = 0;

initial
begin
    rst = 1;
    clock = 0;
    #100 ;
    rst = 0;

    
    for(k = 0; k < 1000; k = k+1)
    begin
        #1 clock = clock + 1;
    end
    #1 $finish;
end
endmodule
