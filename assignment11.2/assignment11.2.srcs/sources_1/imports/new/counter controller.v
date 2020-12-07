module counterController(
    input tick, 
    input inc,
    input rst,
    output reg [3:0] ones,
    output reg [3:0] tens,
    output reg [3:0] hunnids,
    output reg [3:0] thousands
    );


always @ (posedge(tick), posedge(rst), posedge(inc))
begin
    if (rst) ones = 0;
    else if (inc) ones <= ones + 1;
    else if ( ones == 4'b1001) ones <= 0;
    else ones <= ones + 1;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) tens = 0;
    else if (tens == 4'b1001) tens <= 0;
    else if (ones == 4'b1001) tens <= tens + 1;
    else tens <= tens;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) hunnids = 0;
    else if (hunnids == 4'b1001) hunnids <= 0;
    else if (tens == 4'b1001) hunnids <= hunnids + 1;
    else hunnids <= hunnids;
end

always @ (posedge(tick), posedge(rst))
begin
    if (rst) thousands = 0;
    else if (thousands == 4'b1001) thousands <= 0;
    else if (hunnids == 4'b1001) thousands <= thousands + 1;
    else thousands <= thousands;
end

endmodule
