module bit_comp(a, b, o1, o2, o3);
input [3:0] a, b;
output o1, o2, o3;

assign o1 = (a > b);
assign o2 = (a < b);
assign o3 = (a == b);

endmodule