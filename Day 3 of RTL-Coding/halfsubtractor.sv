`timescale 1ns / 1ps

module halfsubtractor(
input a,b,
output difference,borrow
);

assign difference = a^b;
assign borrow = (~a)&b;

endmodule
