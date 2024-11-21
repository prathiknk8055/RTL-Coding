//implementing full adder
`timescale 1ns / 1ps

module fulladder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    assign sum = a^b^c;
    assign carry = ((a&b)| ((a^b)&c));
    
endmodule
