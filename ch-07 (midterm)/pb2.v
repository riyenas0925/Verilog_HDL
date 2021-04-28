module pb2(A, B, Y);

input [7:0] A, B;
output reg [15:0] Y;

always @(*) begin
	if(A > B) begin
		Y <= A << 8;
	end
	else if(B > A) begin
		Y <= B << 8;
	end
	else if(A == B) begin
		Y <= A * B;
	end
end

endmodule
