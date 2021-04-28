module pb4(A, B, Y);

parameter len_a = 4, len_b = 3;

input [len_a - 1 : 0] A;
input [len_b - 1 : 0] B;
output reg [len_a + len_b - 1 : 0]  Y;

always @(*) begin
	Y = A * B;
end

endmodule
