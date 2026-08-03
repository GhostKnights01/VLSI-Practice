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

half_adder HA1 (
    .A(A),
    .B(B),
    .Sum(w1),
    .Carry(w2)
);

half_adder HA2 (
    .A(w1),
    .B(C),
    .Sum(Sum),
    .Carry(w3)
);

assign Cout = w2 | w3;

endmodule