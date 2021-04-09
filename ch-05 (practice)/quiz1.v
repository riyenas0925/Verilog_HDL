module A(A,OUT);

input A;
output OUT;

not #(2,3) (out, in);

endmodule