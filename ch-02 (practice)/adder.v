`timescale 1ns/1ns

module adder(a,b,ov,out);
input [3:0] a,b;
output reg [3:0] out;
output reg ov;

always @(*) begin
	out = a + b;
	if(a + b > 15) ov = 1;
	else ov = 0;
end

endmodule