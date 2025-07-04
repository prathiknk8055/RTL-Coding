`timescale 1ns/1ps
module tflipflop(
input logic clk,rst,t,
output logic q,qn
);

always_ff @ (posedge clk) begin
	if(rst) begin
		q<= 0;
		qn <= 1;
	end
	else if (t) begin
		q <= ~q;
		qn <= q;
	end
	else begin
		q<= q;
		qn <= qn;
	end
end
endmodule
