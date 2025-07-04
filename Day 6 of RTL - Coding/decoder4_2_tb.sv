`timescale 1ns/1ps

module decoder2_4_TB;
logic [1:0] in;
logic [3:0] out;

// Instantiate DUT 
decoder2_4 dut (
.in(in),
.out(out)
);

initial begin
	$dumpfile("decoder_wave.vcd");
	$dumpvars(0, tb_decoder2_4);

        $display("Time\tin\tout");
        $monitor("%0t\t%b\t%b", $time, in, out);

        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        in = 2'bxx; #10;

        $finish;
    end

endmodule
