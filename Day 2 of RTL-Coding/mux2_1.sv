//Verilog code to execute 2:1mux 
`timescale 1ns / 1ps

module mux2_1(
    input [7:0] ai,
    input [7:0] bi,
    input si,
    output [7:0] yi_o
    );
    assign yi_o = si ? bi : ai;
endmodule
