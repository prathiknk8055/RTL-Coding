`timescale 1ns / 1ps

module halfsubtractor_tb;
    reg a, b;           // Declare input signals
    wire difference,borrow;    // Declare output signals

    // Instantiate the halfadder module (DUT)
    halfsubtractor uut (
        .a(a),
        .b(b),
        .difference(difference),
        .borrow(borrow)
    );

    integer i;          // Declare `i` as an integer for the loop

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;  // Assign binary values to a and b
            #10;         // Wait for 10 time units
            $display("a=%b, b=%b, difference=%b, borrow=%b", a, b, difference, borrow);
        end
        $finish;         // End the simulation
    end
endmodule
