`timescale 1ns/1ns

module quiz11;

reg [5:0] x;
reg signed [5:0] y;

initial begin
	x = 4; y = -4;
	#10 x = x >> 1; y = y >> 1;
	#10 x = x >> 1; y = y >> 1;
end

endmodule