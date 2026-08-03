`timescale 1ns / 1ps

module half_sub_tb;

    reg A, B;
    wire Diff, BORROW;

    // Instantiate the half_sub module
    half_sub uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .BORROW(BORROW)
    );

    initial begin
        // Test case 1: A=0, B=0
        A = 0; B = 0;
        #10;
        $display("A=%b, B=%b, Diff=%b, BORROW=%b", A, B, Diff, BORROW);

        // Test case 2: A=0, B=1
        A = 0; B = 1;
        #10;
        $display("A=%b, B=%b, Diff=%b, BORROW=%b", A, B, Diff, BORROW);

        // Test case 3: A=1, B=0
        A = 1; B = 0;
        #10;
        $display("A=%b, B=%b, Diff=%b, BORROW=%b", A, B, Diff, BORROW);

        // Test case 4: A=1, B=1
        A = 1; B = 1;
        #10;
        $display("A=%b, B=%b, Diff=%b, BORROW=%b", A, B, Diff, BORROW);

        $finish;
    end

    initial begin
        $dumpfile("half_sub.vcd");
        $dumpvars(0, half_sub_tb);
    end

endmodule
