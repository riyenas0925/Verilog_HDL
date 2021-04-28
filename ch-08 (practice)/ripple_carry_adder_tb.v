module ripple_carry_adder_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder U0(A, B, Cin, Sum, Cout);

initial begin
	#10 A = 4'b1011; B = 4'b1001; Cin = 0;
	#10 A = 4'b1011; B = 4'b1001; Cin = 1;
end

endmodule