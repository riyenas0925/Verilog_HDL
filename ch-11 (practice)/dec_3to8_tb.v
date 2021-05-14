module dec_3to8_tb;
reg [2:0] A;
reg en;
wire [5:0] Y;

dec_3to8 U0(A, en, Y);

initial begin
	#10 en = 0; A = 3'b001;
	#10 en = 1; A = 3'b001;
	#10 en = 1; A = 3'b010;
	#10 en = 1; A = 3'b111;
	#10 en = 1; A = 3'b000;
end
endmodule
