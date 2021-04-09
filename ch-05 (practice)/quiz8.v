module test(A,B,D,Br);
input A, B;
output D, Br;

assign D = A ^ B;
assign Br = ~A & B;

endmodule