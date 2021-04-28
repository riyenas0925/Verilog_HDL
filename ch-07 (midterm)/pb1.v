module pb1(A,B,Ci,S,Co);

input A, B, Ci;
output S, Co;

wire w1, w2, w3;

xor U0(w1, A, B);
xor U2(S, w1, Ci);
and U3(w2, A, B);
and U4(w3, w1, Ci);
or U5(Co, w3, w2);

endmodule