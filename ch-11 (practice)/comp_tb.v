module comp_tb;
reg [2:0] A;
wire [1:0] Y;

comp U0(A, Y);

initial begin
	#10 A = 1;
	#10 A = 2;
	#10 A = 3;
	#10 A = 4;
	#10 A = 5;
	#10 A = 6;
	#10 A = 7;
end
endmodule