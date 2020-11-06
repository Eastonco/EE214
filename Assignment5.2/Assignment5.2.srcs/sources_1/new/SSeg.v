module SSeg(
    input [3:0] sw,
    output reg [6:0] seg_cat,
    output [3:0] seg_an
    );
    
assign seg_an[0] = 0;
    
always @(sw)
begin
    case(sw)
        4'h0: seg_cat <= 7'b1000000;
        4'h1: seg_cat <= 7'b1111001;
        4'h2: seg_cat <= 7'b0100100;
        4'h3: seg_cat <= 7'b0110000;
        4'h4: seg_cat <= 7'b0011001;
        4'h5: seg_cat <= 7'b0010010;
        4'h6: seg_cat <= 7'b0000010;
        4'h7: seg_cat <= 7'b1111000;
        4'h8: seg_cat <= 7'b0000000;
        4'h9: seg_cat <= 7'b0010000;
        4'ha: seg_cat <= 7'b0001000;
        4'hb: seg_cat <= 7'b0000011;
        4'hc: seg_cat <= 7'b0100111;
        4'hd: seg_cat <= 7'b0100001;
        4'he: seg_cat <= 7'b0000110;
        4'hf: seg_cat <= 7'b0001110;
        
    endcase
end
endmodule
