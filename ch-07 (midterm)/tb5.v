module tb5;

reg S;

pb5 U0(S);

initial begin
	S = 0;
	#10 S = 1;
	#10 S = 0;
end
endmodule