module example;

reg signed [5:0] a;
reg signed [5:0] b;
reg signed [5:0] result;

initial begin
        a = 6'sb000101; b = 6'sb001000;

        #10 result = a & b;
        $display("a: %b, b: %b,a&b=%b", a, b, result);

        #10 result = a | b;
        $display("a: %b, b: %b,a|b=%b", a, b, result);

end

endmodule