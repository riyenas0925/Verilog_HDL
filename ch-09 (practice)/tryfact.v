module tryfact;

function automatic integer factorial;
input [31:0] operand;
integer i;

if(operand >= 2)
	factorial = factorial(operand - 1) * operand;
else
	factorial = 1;
endfunction

integer result;
integer n;

initial begin
	for(n = 0; n <= 7; n = n+1) begin
		result = factorial (n);
		$display("%0d factorial = %0d", n, result);
	end
end
endmodule