`timescale 1ns / 1ps
module mul2_tb;
reg [31:0]a;
reg [31:0]b;
reg clk;
reg rst;
wire [31:0]ab;
mul2 dut (
	.a(a), 
	.b(b), 
	.ab(ab),
	.clk(clk), 
	.rst(rst)
	);
	
	always #1 clk = ~clk; 
	initial begin
$dumpfile("mul2.vcd");
$dumpvars(0, mul2_tb);
	clk = 0;
	rst = 1'b0;
	a = 32'h00010305;
	b = 32'h00323040;
	#10;
	rst = 1'b0;
	a = 32'h00030305;
	b = 32'h00543040;
	#3;
	a = 32'h00250305;
	b = 32'h00343040;
	#10;
	rst = 1'b1;
	a = 32'h00050505;
	b = 32'h00004040;
	#10
	$finish;
	end
endmodule
