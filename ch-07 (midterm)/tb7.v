module tb7;

reg [7:0] A;
wire [3:0] Y100, Y10, Y1;

pb7 U0(A, Y100, Y10, Y1);

initial begin
	A = 123;
	#10 A = 345;
end	

endmodule