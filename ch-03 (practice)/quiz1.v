`timescale 1ns/1ns

module quiz1;
reg a,b;

initial begin
	a = 0; b = 0;
	#10 a = 1;
	#10 a = 0; b = 1;
	#10 a = 1;
	#10 a = 0; b = 0;
end

endmodule