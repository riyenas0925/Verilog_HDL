module tb4;

reg [3:0] A;
reg [2:0] B;
wire [6:0] Y;

pb4 U0(A, B, Y);

initial begin
	A = 4; B = 6;
	#10 A = 2; B = 5;
end

endmodule
