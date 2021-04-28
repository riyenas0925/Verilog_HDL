module pb3(A,B,C,clk,Y);
input A, B, C, clk;
output reg Y;
reg T1, T2, T3;

always @(*) begin
	T1 <= A;
	T2 = T1 & B;
	T3 = T2 ^ C;
	Y <= T3;
end

endmodule
