`timescale 1ns/1ps

module mux2_1_tb;

reg a, b, sel;
wire y;

mux2_1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux2_1_tb);

    a=0; b=1; sel=0; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=0; sel=1; #10;

    $finish;
end

endmodule