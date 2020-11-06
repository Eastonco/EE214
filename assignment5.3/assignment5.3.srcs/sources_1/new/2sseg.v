
module segwrapper(
    input [7:0] sw,
    input btn,
    output [6:0] seg_cat,
    output [3:0] seg_an 
    );

wire [3:0] switch;

mux btnselect(
    .sw(sw),
    .btn(btn),
    .swout(switch)
);

assign seg_an[0] = btn;
assign seg_an[1] = ~btn;
    
bintoseg seg(
    .sw(switch),
    .seg_cat(seg_cat)
);
    
endmodule
