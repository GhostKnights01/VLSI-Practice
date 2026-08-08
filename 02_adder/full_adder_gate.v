`timescale 1ps/1ps

module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);

assign Sum = A ^ B;
assign Carry = A & B;

endmodule

module full_adder (
    input A,
    input B,
    input C,
    output Sum,
    output Cout
);

wire w1;
wire w2;
wire w3;

assign w1 = A ^ B;
assign w2 = A & B;
assign Sum = w1 ^ C;
assign w3 = w1 & C;
assign Cout = w2 | w3;

endmodule