`timescale 1ns/1ns

module tb_counter;
reg rst, clk, en;
wire [2:0] count;

counter U0(en, rst, clk, count);

initial begin
clk = 0;
forever #10 clk = ~clk;
end

initial begin
#10 rst = 0; en = 0;
#10 rst = 1; en = 1;
#400 rst = 1; en = 0;
#200 rst = 1; en = 1;
end

endmodule