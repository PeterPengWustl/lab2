`timescale 1ns / 1ps
module mul_tb;
reg [31:0]a;
reg [31:0]b;
reg clk;
reg rst;
wire [31:0]ab;
mul dut (
	.a(a), 
	.b(b), 
	.ab(ab),
	.clk(clk), 
	.rst(rst)
	);
	
	always #2 clk = ~clk; 
	initial begin
$dumpfile("mul.vcd");
$dumpvars(0, mul_tb);
	clk = 0;
	rst = 1'b0;
	a = 32'h00020305;
	b = 32'h00303040;
	#10;
	rst = 1'b0;
	a = 32'h00150305;
	b = 32'h00043040;
	#2;
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

