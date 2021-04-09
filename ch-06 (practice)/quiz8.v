`timescale 1ns/1ns

module quiz8;
reg x0, x1, x2, x3;
reg [1:0] S;
wire Y;

mux U0(x0, x1, x2, x3, S, Y);

initial begin
	x0 = 0; x1 = 0; x2 = 1; x3 = 0;
	#10 S[1] = 1; S[0] = 0;
end

endmodule