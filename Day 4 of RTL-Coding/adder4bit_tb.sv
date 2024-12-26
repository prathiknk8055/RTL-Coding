`timescale 1ns / 1ps
//testbench for full adder using half adder
`timescale 1ns / 1ps
module adder4bit_tb;
reg [3:0]A,B;
reg Cin;
wire [3:0]sum2;
wire carryout;
integer i,j;

adder4bit dut(.A(A),.B(B),.Cin(Cin),.Sum(sum2),.carryout(carryout));

initial begin
$display("   A  |  B  |  Cin  |  Sum  | Cout  ");
$display("--------------------------------------");
//test cases
for(i=0;i<16;i=i+1)begin
    for(j=0;j<16;j=j+1)begin
        A=i;
        B=j;
        Cin=0; //for Cin=0
        #10;
        $display("  %d  |  %d  |  %d  |  %d  |  %d  |",A,B,Cin,sum2,carryout);
        
        Cin=1; //for Cin=1 
        #10;
        $display("  %d  |  %d  |  %d  |  %d  |  %d  |",A,B,Cin,sum2,carryout);
    end
end
$finish;
end
endmodule

