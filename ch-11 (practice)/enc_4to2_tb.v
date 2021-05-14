module enc_4to2_tb;

reg [3:0] A;
reg en;
wire [1:0] Y;

enc_4to2 U0(A, en, Y);

initial begin
	#10 en = 0; A = 4'bxxxx;
	#10 en = 1; A = 4'b0001;
	#10 en = 1; A = 4'b0010;
	#10 en = 1; A = 4'b0100;
	#10 en = 1; A = 4'b1000;
end
endmodule