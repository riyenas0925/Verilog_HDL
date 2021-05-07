module quiz3_tb;
reg [1:0] sel;
reg [3:0] a, b, c, d;
wire [3:0] y;

quiz3 U0(sel, a, b, c, d, y);

initial begin
	a = 1; b = 2; c = 3; d = 4;
	sel = 2'b00;
	#10 sel = 2'b01;
	#10 sel = 2'b10;
	#10 sel = 2'b11;
end

endmodule