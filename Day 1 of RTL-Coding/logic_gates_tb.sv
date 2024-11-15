`timescale 1ns / 1ps

module basic_gates_tb;
reg a,b;
wire yor,yand,ynor,ynand,yxor,yxnor;

logic_gates dut(.a(a),.b(b),.yor(yor),.yand(yand),.ynand(ynand),.ynor(ynor),.yxor(yxor),.yxnor(yxnor));

initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
