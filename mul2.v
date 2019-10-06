`timescale 1ns / 1ps
module mul2(a,b,ab,clk,rst);

input [31:0] a,b;
input clk,rst;
output reg [31:0] ab;
parameter ADD  = 1'b1, SFT = 1'b0 ;
reg state;
reg [31:0] atemp, btemp;
reg [63:0] abtemp;
always@(posedge clk or a or b)
begin
atemp=a;
btemp=b;
abtemp = 64'h0000000000000000;
repeat (32) begin
	if (btemp[0]==1) 
	begin
	state = ADD;
	end else
		begin
		state = SFT;
		end
	if (state == 1'b1)
	begin
	abtemp = abtemp+atemp;
	atemp = atemp << 1;
	btemp = btemp >> 1;
	end
	if (state == 1'b0)
	begin
	btemp = btemp >> 1;
	end

end
if (rst == 1'b0) begin
	ab = abtemp[47:16];
	end else begin
	ab = 32'h00000000;
	end

end
endmodule

