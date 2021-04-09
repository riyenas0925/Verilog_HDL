`timescale 1ns/1ns

module quiz2;
reg [1:0] a, b;
reg sel;
wire [1:0] out;

mux21_if U0(a, b, sel, out);

initial begin
	a=2'b10; b=2'b01;
	#30 sel = 1;
	#30 sel = 0;
end

endmodule