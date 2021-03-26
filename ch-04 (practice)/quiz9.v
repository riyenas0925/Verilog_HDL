`timescale 1ns/1ns

module quiz9;

parameter size = 4;
reg [size -1 : 0] x, y;
reg [size -1 : 0] result [4:0];

initial begin
	x = 4'b0101; y = 4'b0001;
	result[0] = x+y;
	result[1] = x-y;
	result[2] = x*y;
	result[3] = x/y;
	result[4] = x%y;
end

endmodule