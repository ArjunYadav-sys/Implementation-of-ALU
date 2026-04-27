module adder (
    input [7:0] A,
    input [7:0] B,
    input carry_in,
    output [7:0] sum,
    output carry_out
);

    wire [8:0] total;

    assign total = A + B + carry_in;
    assign sum = total[7:0];
    assign carry_out = total[8];

endmodule