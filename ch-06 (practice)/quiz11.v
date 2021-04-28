module quiz11(A,clk,Y);
input A, clk;
output Y;
reg Y;

reg [3:0] cnt;
reg flag;

initial begin
	cnt<=0;
end

always @(posedge clk) begin
   if(A) begin
      cnt <= cnt+1;
   end
   else begin
      cnt<=0;
   end
end

always @(posedge clk) begin
   if(cnt>=4'd9) begin
      flag<=1;
   end
end

always @(posedge clk) begin
   if(flag==1 && A == 0) begin
      Y<=1;
      flag<=0;
   end
   else Y<=0;
end
endmodule
