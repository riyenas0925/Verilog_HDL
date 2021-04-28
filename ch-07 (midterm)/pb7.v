module pb7(A, Y100, Y10, Y1);

input [7:0] A;
output reg [3:0] Y100, Y10, Y1;

always @(*) begin
	Y100 <= A / 100;
	Y10 <= (A / 10) % 10;
	Y1 <= A % 10;
end

endmodule
