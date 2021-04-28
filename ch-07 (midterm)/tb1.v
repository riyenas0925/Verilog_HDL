module tb1;

reg A, B, Ci;
wire S, Co;

pb1 U0(A,B,Ci,S,Co);

initial begin
	A = 1; B = 0; Ci = 1;
end
endmodule