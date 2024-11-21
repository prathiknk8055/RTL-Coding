`timescale 1ns / 1ps

module tb_fullsubtractor;

    // Inputs
    reg a, b, cin;

    // Outputs
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
        integer i; // Loop variable

        // Display header for results
        $display("Time | a b cin | diff bout");
        $display("----------------------------");

        // Loop through all possible input combinations (3 inputs = 2^3 = 8 combinations)
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i; // Assign values based on loop index
            #10; // Wait for 10 time units
            $display("%4t | %b %b  %b   |  %b    %b", $time, a, b, cin, diff, bout);
        end

        // End simulation
        $finish;
    end
endmodule
