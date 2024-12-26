//full adder using half adder in structural manner
`timescale 1ns / 1ps
module FA_using_HA_str(
input A,B,Cin,
output sum2,carryout
);
wire sum1,carry1,carry2;
halfadder h1(.a(A),.b(B),.sum(sum1),.carry(carry1));
halfadder h2(.a(sum1),.b(Cin),.sum(sum2),.carry(carry2));
assign carryout= carry1|carry2;
endmodule
