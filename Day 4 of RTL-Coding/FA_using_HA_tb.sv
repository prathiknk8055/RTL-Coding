//testbench for full adder using half adder
`timescale 1ns / 1ps
module FA_using_HA_tb;
reg A,B,Cin;
wire sum2,carryout;
integer i;

FA_using_HA_str dut(.A(A),.B(B),.Cin(Cin),.sum2(sum2),.carryout(carryout));

initial begin
for(i=0;i<8;i=i+1)begin
{A,B,Cin}=i;
#10;
$display("A=%d,B=%d,Cin=%d,Sum=%d,Carry=%d",A,B,Cin,sum2,carryout);
end
$finish;
end
endmodule
