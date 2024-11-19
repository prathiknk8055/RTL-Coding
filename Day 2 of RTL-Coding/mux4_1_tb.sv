`timescale 1ns / 1ps

module mux4_1_tb();
    reg a;
    reg b;
    reg c;
    reg d;
    reg [1:0] sel;  // select line (2-bit)
    wire y;

    mux4_1 dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Run for 5 test cases with random values
        for (int i = 0; i < 5; i = i + 1) begin
            {a, b, c, d} = $urandom_range(0, 8'hFFFF);  // Random values for a, b, c, d
            sel = $random % 4;  // Random select line (between 0 and 3)
            #5;
            $display("a=%d; b=%d; c=%d; d=%d; sel=%d; y=%d", a, b, c, d, sel, y);
        end  
        $finish;
    end    
endmodule
