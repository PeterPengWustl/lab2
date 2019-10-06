
`timescale 1ns / 1ps
module mul(a,b,ab,clk,rst);

input [31:0] a,b;
input clk,rst;
output reg [31:0] ab;

reg [31:0] t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32;

reg [63:0] abtemp;
always@(posedge clk)
begin
assign t1 = (b[0]==1) ? a : 32'h00000000;
assign t2 = (b[1]==1) ? a : 32'h00000000;
assign t3 = (b[2]==1) ? a : 32'h00000000;
assign t4 = (b[3]==1) ? a : 32'h00000000;
assign t5 = (b[4]==1) ? a : 32'h00000000;
assign t6 = (b[5]==1) ? a : 32'h00000000;
assign t7 = (b[6]==1) ? a : 32'h00000000;
assign t8 = (b[7]==1) ? a : 32'h00000000;
assign t9 = (b[8]==1) ? a : 32'h00000000;
assign t10 = (b[9]==1) ? a : 32'h00000000;
assign t11 = (b[10]==1) ? a : 32'h00000000;
assign t12 = (b[11]==1) ? a : 32'h00000000;
assign t13 = (b[12]==1) ? a : 32'h00000000;
assign t14 = (b[13]==1) ? a : 32'h00000000;
assign t15 = (b[14]==1) ? a : 32'h00000000;
assign t16 = (b[15]==1) ? a : 32'h00000000;
assign t17 = (b[16]==1) ? a : 32'h00000000;
assign t18 = (b[17]==1) ? a : 32'h00000000;
assign t19 = (b[18]==1) ? a : 32'h00000000;
assign t20 = (b[19]==1) ? a : 32'h00000000;
assign t21 = (b[20]==1) ? a : 32'h00000000;
assign t22 = (b[21]==1) ? a : 32'h00000000;
assign t23 = (b[22]==1) ? a : 32'h00000000;
assign t24 = (b[23]==1) ? a : 32'h00000000;
assign t25 = (b[24]==1) ? a : 32'h00000000;
assign t26 = (b[25]==1) ? a : 32'h00000000;
assign t27 = (b[26]==1) ? a : 32'h00000000;
assign t28 = (b[27]==1) ? a : 32'h00000000;
assign t29 = (b[28]==1) ? a : 32'h00000000;
assign t30 = (b[29]==1) ? a : 32'h00000000;
assign t31 = (b[30]==1) ? a : 32'h00000000;
assign t32 = (b[31]==1) ? a : 32'h00000000;
 abtemp = t1 + (t2 << 1) + (t3<<2)+(t4<<3)+(t5<<4)+(t6<<5)+(t7<<6)+(t8<<7)+(t9<<8)+(t10<<9)+(t11<<10)+(t12<<11)+(t13<<12)+(t14<<13)+(t15<<14)+(t16<<15)+(t17<<16)+(t18<<17)+(t19<<18)+(t20<<19)+(t21<<20)+(t22<<21)+(t23<<22)+(t24<<23)+(t25<<24)+(t26<<25)+(t27<<26)+(t28<<27)+(t29<<28)+(t30<<29)+(t31<<30)+(t32<<31);


	if (rst == 1'b0) 
	begin
	ab = abtemp[47:16];
	end
	else begin
	ab = 32'h00000000;
	end
end
endmodule



















