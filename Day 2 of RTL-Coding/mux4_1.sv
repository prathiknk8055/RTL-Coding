`timescale 1ns / 1ps

module mux4_1(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output y
    );
    assign y = (sel == 2'b00) ? a : //if sel is 00 it chooses a
              (sel == 2'b01) ? b :
              (sel == 2'b10) ? c :
              d;     
endmodule
