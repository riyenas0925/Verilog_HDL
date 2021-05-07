module quiz8_tb;
reg CLK, nRST;
wire [3:0] CNT;
reg [8:0] mem[0:9];
integer i;

quiz6 U0(CLK, nRST, CNT);

always #5 CLK = ~CLK;

initial $readmemh("counter.txt", mem);

initial begin
	CLK = 0; nRST = 0;

	for(i = 0; i < 10; i=i+1) begin
		#10 nRST =1; if(mem[i] != CNT) $display("data is wrong cnt = %d , read_data = %1h", CNT, mem[i]);
	end
end

endmodule