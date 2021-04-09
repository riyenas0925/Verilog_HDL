module A(A, B, C, OUT);
input A, B, C;
output OUT;

xor #(2,3) (OUT, A, B);

endmodule
