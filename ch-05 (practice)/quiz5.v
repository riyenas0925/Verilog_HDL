module A(A, B, C, OUT);
input A, B, C;
output OUT;
wire s1;

and	(s1,A,B,C);
not	(OUT, s1);

endmodule