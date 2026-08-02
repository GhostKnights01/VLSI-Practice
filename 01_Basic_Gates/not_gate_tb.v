`timescale 1ns/1ps

module not_gate_tb;

reg a;
wire y;

// Instantiate the NOT gate
not_gate uut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

    $display("Time\t a\t y");
    $monitor("%0t\t %b\t %b", $time, a, y);

    a = 0; #10;
    a = 1; #10;

    $finish;
end

endmodule