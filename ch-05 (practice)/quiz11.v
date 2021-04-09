module mux(x0, x1, x2, x3, S, Y);
input x0, x1, x2, x3, S[0:1];
output Y;
wire w0, w1;
wire o0, o1, o2, o3;

not (w1, S[0]);
not (w2, S[1]);

and (o1, x0, w0, w1);
and (o2, x1, S[0], w1);
and (o3, x2, S[1], w0);
and (o4, x3, S0, S1);

or(Y, o1, o2, o3, o4);

endmodule