//Verilog program to execute basic logic gates (and,or,xor,xnor,xnand)

`timescale 1ns / 1ps
module logic_gates(
input a,b,
output yand,yor,yxnor,ynor,ynand,yxor
);
assign yand = (a&b);
assign yor = (a|b);
assign ynor = ~(a|b);
assign ynand = ~(a&b);
assign yxor = a^b;
assign yxnor = ~(a^b);
endmodule
