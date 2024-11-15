//testbench for 2:1 mux

`timescale 1ns / 1ps

module mux2_1_tb();
reg [7:0]ai;
reg [7:0]bi;
reg si; //select line
wire [7:0]yi_o;

mux2_1 dut(.ai(ai),.bi(bi),.si(si),.yi_o(yi_o));

initial begin
    for(int i =0;i<5;i++)
    begin
        ai= $urandom_range(0,8'HFF);
        bi = $urandom_range(0,8'HFF);
        si = $random%2;
        #5;
        $display("ai=%d;bi=%d,si=%d,yi_o= %d",ai,bi,si,yi_o);
    end  
    $finish;
    end    
endmodule
