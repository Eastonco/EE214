module testFixture;

reg A;
reg B;
reg C;
wire X;

CombCirc test (
    .A(A),
    .B(B),
    .C(C),
    .X(X) 
);

integer k = 0;

initial
begin
    // Initialize Inputs
    A = 0;
    B = 0;
    C = 0;

    // Wait 100 ns for global reset to finish
    // Add stimulus here
    
    // with 1 ns delay and 5ns simulation delay: glitch happens
    // with 2 ns delay and 5ns simulation delay: glitch does not happen
    // with 5 ns delay and 5ns simulaiton delay: gitch very much happens as there isn't
    //      enough time to run the circut between input chnages
    // with 5 ns delay and 30ns simulation delay: gitch looks the same as sim 1 but on a larger scale

    for(k = 0; k < 4; k=k+1)
    begin
        {A,C} = k;
        #30 B = 1;
        #30 B = 0;
        #30 ;
    end
    #5 $finish;
end
endmodule