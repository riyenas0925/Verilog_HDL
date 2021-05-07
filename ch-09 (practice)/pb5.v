module pb5;
reg [3:0] A, B;
reg [3:0] AB_AND, AB_OR, AB_XOR;


initial begin
	A = 4'b1010; B = 4'b0011;
end

always @(A or B) begin
	bitwise_oper(AB_AND, AB_OR, AB_XOR, A, B);
end

task bitwise_oper;
	output [3:0] AB_AND, AB_OR, AB_XOR;
	input [3:0] A, B;
begin
	AB_AND = A & B;
	AB_OR = A | B;
	AB_XOR = A ^ B;
end
endtask

endmodule