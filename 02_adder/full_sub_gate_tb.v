`timescale 1ps/1ps

module full_sub_gate_tb;
    // inputs
    reg A;
    reg B;
    reg C;

    // outputs
    wire Diff;
    wire Bout;

    // Instantiate full subtractor
    full_sub uut (
        .A(A),
        .B(B),
        .C(C),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin
        $dumpfile("full_sub_gate.vcd");
        $dumpvars(0, full_sub_gate_tb);

        $display("A B C | Diff Bout");
        $display("--------------");
        $monitor("%b %b %b |  %b    %b", A, B, C, Diff, Bout);

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
