module tb2;

reg [7:0] A, B;
wire [15:0] Y;

pb2 U0(A, B, Y);

initial begin
	A = 8'b11111110; B = 8'b11111111;
	#10 A = 13; B = 4;
	#10 A= 5; B = 5;
end
endmodule