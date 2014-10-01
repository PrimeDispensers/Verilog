module assess1(A,B,C,D,F,G);	// initialise module and all nodes

input A,B,C,D;					// assign inputs nodes
output F,G;						// and outputs

reg F,G;						// reserve memory for outputs. No need to remember inputs.

always @(A,B,C,D)				// act whenever input changes
	begin						// on any input, do the following calculations

		F <= A & B & (C | D);	// F is 1 when A and B and (C or D) are selected
		G <=(A | B) & C & D ;	// G is 1 when (A or B) and C and D are selected

	end							// and display results. Repeat.
endmodule
