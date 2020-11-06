module testFixture;

reg [1:0] sw;
reg [3:0] btn;
wire led;

source cut (
    .sw(sw),
    .led(led),
    .btn(btn)
);

integer k, i;

initial 
begin
    sw = 0;
    btn = 0;
    
    for(k=0; k < 4; k=k+1)
        begin
        sw = k;
        for(i = 0; i < 16; i = i +1)
           #10 btn = i;
        end
    #10 $finish;
end
endmodule 