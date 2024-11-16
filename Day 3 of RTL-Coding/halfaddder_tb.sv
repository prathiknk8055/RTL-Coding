`timescale 1ns / 1ps

module halfadder_tb;
    reg a, b;           // Declare input signals
    wire sum, carry;    // Declare output signals

    // Instantiate the halfadder module (DUT)
    halfadder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    integer i;          // Declare `i` as an integer for the loop

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;  // Assign binary values to a and b
            #10;         // Wait for 10 time units
            $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
        end
        $finish;         // End the simulation
    end
endmodule
