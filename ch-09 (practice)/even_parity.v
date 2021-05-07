module even_parity(A, OUT);
input [15:0] A;
output reg OUT;

always @(A)
	even_parity_check(A, OUT);

task even_parity_check;
	input [15:0] A;
	output OUT;
	reg [15:0] cnt, temp_A;
begin
	cnt=0;
	temp_A=A;
	
	while (temp_A) begin
		if (temp_A[0])
			cnt=cnt+ 1;
		temp_A = temp_A >> 1;
	end

	if(cnt % 2 == 0)
		OUT = 0;
	else 
		OUT = 1;
end
endtask
endmodule
