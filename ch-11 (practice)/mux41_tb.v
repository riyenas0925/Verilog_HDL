module mux41_tb;
reg [1:0] X0, X1, X2, X3, S;
wire [1:0] Y;

mux41 U0(X0, X1, X2, X3, S, Y);

initial begin
	X0 = 0; X1 = 1; X2 = 2; X3 = 3;
	#10 S = 2'b01;
	#10 S = 2'b10;
end

endmodule
