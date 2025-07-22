`timescale 1ns / 1ps

module universal_shift_register(
    input logic CLK, Clear_b,
    input logic [1:0] sel_line,
    input logic [3:0] in,
    input logic msb_in , lsb_in,
    output logic [3:0] out
);

    always_ff @(posedge CLK) begin
        if (Clear_b == 0)
            out <= 4'b0000;
        else begin
            case (sel_line)
                2'b00: out <= out; // No change (hold)
                2'b01: out <= {msb_in, out[3:1]}; // Shift right
                2'b10: out <= {out[2:0], lsb_in}; // Shift left
                2'b11: out <= in; // Parallel load
                default: out <= out;
            endcase
        end
    end

endmodule
