module bool_modeling(a, b,c, d, e, y);

input a, b, c, d, e;
output y;

assign y = (a|b)&(c|d)&e;

endmodule