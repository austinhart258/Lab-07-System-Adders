module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
);

wire[3:0] AplusB;
wire c0, c1, c2, around;

full_adder adder0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Y(AplusB[0]), .Cout(c0));
full_adder adder1(.A(A[1]), .B(B[1]), .Cin(c0), .Y(AplusB[1]), .Cout(c1));
full_adder adder2(.A(A[2]), .B(B[2]), .Cin(c1), .Y(AplusB[2]), .Cout(c2));
full_adder adder3(.A(A[3]), .B(B[3]), .Cin(c2), .Y(AplusB[3]), .Cout(around));

wire d0, d1, d2, unused;
full_adder carry0(.A(AplusB[0]), .B(1'b0), .Cin(around), .Y(Y[0]), .Cout(d0));
full_adder carry1(.A(AplusB[1]), .B(1'b0), .Cin(d0), .Y(Y[1]), .Cout(d1));
full_adder carry2(.A(AplusB[2]), .B(1'b0), .Cin(d1), .Y(Y[2]), .Cout(d2));
full_adder carry3(.A(AplusB[3]), .B(1'b0), .Cin(d2), .Y(Y[3]), .Cout(unused));

endmodule