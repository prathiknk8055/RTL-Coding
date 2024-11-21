`timescale 1ns / 1ps

module tb_fullsubtractor;
    
    reg a, b, cin;
    wire diff, bout;

    // Instantiate the Unit Under Test (UUT)
    fullsubtractor uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .diff(diff), 
        .bout(bout)
    );

    // Test procedure
    initial begin
        integer i; 

       
        $display("Time | a b cin | diff bout");
        $display("----------------------------");

        
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i; 
            #10; 
            $display("%4t | %b %b  %b   |  %b    %b", $time, a, b, cin, diff, bout);
        end

     
        $finish;
    end
endmodule
