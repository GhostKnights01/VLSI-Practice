// Half Subtractor
// Inputs: A, B
// Outputs: Diff = A xor B (difference), BORROW = ~A & B

module half_sub(
	input  wire A,
	input  wire B,
	output wire Diff,
	output wire BORROW
);

	assign Diff = A ^ B;
	assign BORROW = (~A) & B;

endmodule