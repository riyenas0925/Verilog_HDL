module comp(A, Y);
input [2:0] A;
output reg [1:0] Y;

always @(A) begin
	if(A[0] == 1)
		Y = 2'b10;
	else
		Y = 2'b01;
end
endmodule