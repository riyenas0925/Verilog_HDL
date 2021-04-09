module quiz4;
reg temp[31:0];
integer i;

initial begin
	for(i = 0; i < 32; i=i+1) begin
		temp[i] = i % 2;
	end
end


endmodule