

module full_sub(
    input  wire A,
    input  wire B,
    input  wire C,
    output wire Diff,
    output wire Bout
);

wire w1;
wire w2;
wire w3;
wire w4;

assign w1 = A ^ B;
assign w2 = ~w1 & C;
assign w3 = ~A & B;
assign w4 = w2 | w3;
assign Diff = w1 ^ C;
assign Bout = w4;

endmodule