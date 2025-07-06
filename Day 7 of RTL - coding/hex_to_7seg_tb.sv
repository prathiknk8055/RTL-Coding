`timescale 1ns/1ps

module hex_to_7seg_tb;

logic [3:0] hex;
logic [6:0] seg;
integer i;

hex_to_7seg dut(hex,seg);

initial begin
	for(i=0;i<16;i++)begin
		hex = i;
		#5;
		$display("Hex = %b \t7-Segment = %b",hex,seg);
		
	end
	$finish;
end
endmodule
	