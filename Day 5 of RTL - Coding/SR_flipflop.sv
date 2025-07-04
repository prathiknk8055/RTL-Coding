`timescale 1ns/1ps

module srflipflop(
input logic clk,rst,s,r,
output logic q,qn
);

always_ff @ (posedge clk)begin
	if (rst)
		q<=0 ;
	else begin
		case({s,r})
			2'b00: q<=q; //hold
			2'b01: q<=0; // reset
			2'b10: q<= 1; // set
			2'b11: q<= 1'bx; //invalid
		endcase
	end
end
assign qn = ~q;
endmodule