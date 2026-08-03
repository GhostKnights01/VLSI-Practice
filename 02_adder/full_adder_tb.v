`timescale 1ps/1ps

module full_adder_tb;
//inputs
reg A;
reg B;
reg C;

// output
wire Sum;
wire Cout;

wire [2:0] ABC;
assign ABC = {A, B, C};

// Instantiate Full adder
full_adder uut (
    .A(A),
    .B(B),
    .C(C),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $display("ABC | Sum Cout");
    $display("-------------------");

    $monitor("%b | %b %b", ABC, Sum, Cout);

    // test cases
    A = 0; B = 0; C = 0; #10;
    A = 0; B = 0; C = 1; #10;
    A = 0; B = 1; C = 0; #10;
    A = 0; B = 1; C = 1; #10;
    A = 1; B = 0; C = 0; #10;
    A = 1; B = 0; C = 1; #10;
    A = 1; B = 1; C = 0; #10;
    A = 1; B = 1; C = 1; #10;

    $finish;
end
endmodule