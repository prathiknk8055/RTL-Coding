//implement 4 bit adder
`timescale 1ns / 1ps

/*module full_adder(input A, input B, input Cin, output Sum, output Cout);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));
endmodule*/

module adder4bit(
input [3:0] A, 
input [3:0] B, 
input Cin, 
output [3:0] Sum, 
output carryout);
wire C1, C2, C3;

FA_using_HA_str FA0(A[0], B[0], Cin, Sum[0], C1);
FA_using_HA_str FA1(A[1], B[1], C1, Sum[1], C2);
FA_using_HA_str FA2(A[2], B[2], C2, Sum[2], C3);
FA_using_HA_str FA3(A[3], B[3], C3, Sum[3], carryout);
endmodule
