`timescale 1ns/1ns

module quiz5;


reg signed [4:0] A, B;

initial begin
	A = -5'd16 / 4;
	B = -5'sd16 / 4;
end

endmodule