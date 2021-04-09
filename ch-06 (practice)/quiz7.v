`timescale 1ns/1ns

module quiz7;
reg [3:0] a, b;
reg [1:0] select;
wire [4:0] out;

ALU U0(a, b, select, out);

initial begin
	a = 2'b01; b = 2'b10;
	#10 select = 2'b00;
	#10 select = 2'b01;
	#10 select = 2'b10;
	#10 select = 2'b11;
end

endmodule