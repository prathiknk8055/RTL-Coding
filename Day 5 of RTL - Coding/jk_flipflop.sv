`timescale 1ns/1ps
module jkflipflop(
input logic clk,rst,j,k,
output logic q,qn
);

always_ff @(posedge clk) begin
	if(rst)
		q<=0;
	else begin
		case({j,k})
			2'b00: q<=q; //hold
			2'b01: q<= 0; //reset
			2'b10: q<= 1; //set
			2'b11: q<= ~q; //toggle
		endcase
	end
end
assign qn = ~q;
endmodule
