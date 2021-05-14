module enc_2to1_tb;
reg [1:0] A;
wire Y;

enc_2to1 U0(A, Y);

initial begin
	#10 A = 2'b01;
	#10 A = 2'b10;
end

endmodule