module bcd (
    input clk, rst, cin,
    output reg [3:0] bcd_digit,
    output reg cout
    );

always @ (posedge(clk), posedge(rst))
begin
    if (rst)
    begin
        bcd_digit <= 0;
        cout = 0;
    end
    
    else if (cin)
    begin
        if (bcd_digit == 4'b1001)
        begin
            bcd_digit <= 0;
            cout = 1;
        end
        else 
        begin
            bcd_digit <= bcd_digit + 1;
            cout = 0;
        end
    end
end
endmodule