module quiz7_tb;
reg CLK, nRST;
wire [3:0] CNT;
integer out;

quiz6 U0(CLK, nRST, CNT);

always #5 CLK = ~CLK;

initial begin
	out = $fopen("counter.txt", "w");
	CLK = 0; nRST = 0;
	#10 nRST = 1; $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	#10 $fwrite(out,"%d\n", CNT);
	$fclose(out);	
end

endmodule