module quiz5_tb;
reg [1:0] sel;
reg [3:0] a, b, c, d;
wire [3:0] y;

quiz3 U0(sel, a, b, c, d, y);

initial begin
	$monitor($time, "output = %d", y);
	a = 10; b = 8; c = 4; d = 2;
	#10 sel = 2'b01;
	#30 sel = 2'b11;
	#20 sel = 2'b10;
	#5 sel = 2'b00;
end

endmodule