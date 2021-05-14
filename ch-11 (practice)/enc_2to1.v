module enc_2to1(A, Y);
input [1:0] A;
output reg Y;

always @(A) begin
	casex(A)
		2'b01 : Y = 0;
		2'b10 : Y = 1;
		default : Y = 2'bx;
	endcase
end
endmodule