`timescale 1ns/1ns

module quiz3;
reg [3:0] encode;
wire [1:0] enc;

pri_enc_casex U0(encode, enc);

initial begin
	encode=4'b0100;
	#20 encode=4'b0011;
	#40 encode=4'b1001;
end

endmodule
