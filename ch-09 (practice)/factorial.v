module factorial(A, OUT);
input [3:0] A;
output reg [31:0] OUT;

always @(A)
	fac(A, OUT);

task fac;
	input [3:0] A;
	output [31:0] OUT;
	integer n;	
begin
	OUT = 1;

	for(n = 1; n <= A; n=n+1) begin
		OUT = OUT * n;
	end
end
endtask

endmodule