`timescale 1ns/1ps
module dflipflop(
input logic clk,rst,d,
output logic q,qn
);
always_ff@(posedge clk)begin
	if(rst)
		q<= 0;
		qn <=1;
	else
		q<=d;
		qn <= ~d;
	end
endmodule