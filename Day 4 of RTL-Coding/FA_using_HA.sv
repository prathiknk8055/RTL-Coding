//Full Adder using 2 Half Adder in dataflow manner
`timescale 1ns / 1ps
module FA_using_HA(
input a,b,cin,
output sum2,carryout,
wire sum1,carry1,carry2
);
assign sum1=a^b;
assign carry1=a&b;
assign sum2= sum1^cin;
assign carry2= sum1&cin;
assign carryout= carry1|carry2;
endmodule
