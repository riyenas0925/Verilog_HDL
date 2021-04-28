module pb6;

reg clock;

initial begin
	clock = 1;
	#100 
	repeat(20) begin
		#5 clock = 0;
		#5 clock = 1;
	end
	forever begin
		#10 clock = ~clock;
	end
end

endmodule
