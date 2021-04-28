module pb5(S);

input S;
reg [7:0] array [255:0];
integer i;

always @(*) begin
	if(S == 0) begin
		for(i = 0; i < 256; i=i+1) begin
			array[i] <= 0;
		end
	end
	else begin
		for(i = 0; i < 256; i=i+1) begin
			array[i] <= i;
		end
	end
end
endmodule