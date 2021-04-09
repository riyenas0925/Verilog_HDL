`timescale 1ns/1ns

module quiz5;

reg a, b, c, d;

initial begin
	a = 1'b0;
	b = #10 1'b1;
	c = #5 1'b0;
	d = #20 a & b & c;
end
endmodule