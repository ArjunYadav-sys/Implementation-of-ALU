// Verilog Testbench for ALU

`timescale 1ns / 1ps

module alu_tb;
    reg [3:0] a, b;
    reg [2:0] opcode;
    wire [3:0] result;
    wire zero;

    // ALU Instance
    ALU uut (
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .zero(zero)
    );

    // Test Procedure
    initial begin
        // Display format
        $display("Time	Opcode	A	B	Result	Zero");
        $monitor($time, "\t%3b\t%h\t%h\t%h\t%b", opcode, a, b, result, zero);

        // Initialize Inputs
        a = 0; b = 0; opcode = 3'b000; // NOP
        #10;

        // AND Operation
        opcode = 3'b001; a = 4'b1100; b = 4'b1010;  // 12 AND 10 = 8
        #10;

        // OR Operation
        opcode = 3'b010; a = 4'b1100; b = 4'b1010;  // 12 OR 10 = 14
        #10;

        // NOT Operation (assuming a single input)
        opcode = 3'b011; a = 4'b1100;  // NOT 12 = 3
        #10;

        // XOR Operation
        opcode = 3'b100; a = 4'b1100; b = 4'b1010;  // 12 XOR 10 = 2
        #10;

        // ADD Operation
        opcode = 3'b101; a = 4'b0011; b = 4'b0001;  // 3 + 1 = 4
        #10;

        // SUB Operation
        opcode = 3'b110; a = 4'b0100; b = 4'b0001;  // 4 - 1 = 3
        #10;

        // SLT Operation
        opcode = 3'b111; a = 4'b0001; b = 4'b0010;  // 1 < 2 -> 1
        #10;

        // Final NOP
        opcode = 3'b000;
        #10;

        $finish;
    end
endmodule
