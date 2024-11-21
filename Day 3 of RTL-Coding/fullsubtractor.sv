//implementing full subtractor
`timescale 1ns / 1ps

module fullsubtractor( input a,b,cin,
output diff, bout );//bout is borrw and diff is difference

assign diff = a ^ b ^ cin;     // Difference calculation
assign bout = (~a & b) | ((~(a ^ b)) & cin);

endmodule
