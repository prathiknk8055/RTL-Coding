`timescale 1ns / 1ps

module fulladder_tb;
    reg a, b, c;         // Declare input signals
    wire sum, carry;     // Declare output signals

    // Instantiate the fulladder module (DUT)
    fulladder uut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

    integer i;           // Declare `i` as an integer for the loop

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i;  // Assign binary values to a, b, and c
            #10;            // Wait for 10 time units
            $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);
        end
        $finish;  // End the simulation
    end
endmodule
