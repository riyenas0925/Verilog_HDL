module A(A, B, OUT);
input A, B;
output OUT;

and #(2,3) (OUT, A, B);

endmodule