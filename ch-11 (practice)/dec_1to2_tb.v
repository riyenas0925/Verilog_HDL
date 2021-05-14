module dec_1to2_tb;
reg A;
wire [1:0] Y;

dec_1to2 U0(A, Y);

initial begin
	#10 A = 0;
	#10 A = 1;
end

endmodule
