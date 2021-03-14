`timescale 1ns/1ns

module tb_adder;
reg [3:0] a,b;
wire [3:0] out;
wire ov;

adder U0(a,b,ov,out);

initial begin
	a = 4'b0000; b = 4'b0000;
	#10 a = 4'b0111; b = 4'b0001;
	#10 a = 4'b0101; b = 4'b0101;
	#10 a = 4'b1010; b = 4'b0101;
	#10 a = 4'b1111; b = 4'b0001;
	#10 a = 4'b1111; b = 4'b1111;
end

endmodule