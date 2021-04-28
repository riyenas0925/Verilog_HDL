module FIND_MAX_TB;

reg [7:0] Din0, Din1, Din2;
wire [7:0] MAXo;

FIND_MAX U0(Din0, Din1, Din2, MAXo);

initial begin
	Din0 = 1; Din1 = 2; Din2 = 3;
	#10 Din0 = 4; Din1 = 5; Din2 = 2;
	#20 Din0 = 2; Din1 = 3; Din2 = 4;
end

endmodule