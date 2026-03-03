module twos_compliment(
input [7:0] A,
output [7:0] Y
);

wire[7:0] A_inv;
assign A_inv = ~A;

wire d0, d1, d2, d3, d4, d5, d6, unused;

full_adder adder0(.A(A_inv[0]), .B(1'b0), .Cin(1'b1), .Y(Y[0]), .Cout(d0));
full_adder adder1(.A(A_inv[1]), .B(1'b0), .Cin(d0), .Y(Y[1]), .Cout(d1));
full_adder adder2(.A(A_inv[2]), .B(1'b0), .Cin(d1), .Y(Y[2]), .Cout(d2));
full_adder adder3(.A(A_inv[3]), .B(1'b0), .Cin(d2), .Y(Y[3]), .Cout(d3));
full_adder adder4(.A(A_inv[4]), .B(1'b0), .Cin(d3), .Y(Y[4]), .Cout(d4));
full_adder adder5(.A(A_inv[5]), .B(1'b0), .Cin(d4), .Y(Y[5]), .Cout(d5));
full_adder adder6(.A(A_inv[6]), .B(1'b0), .Cin(d5), .Y(Y[6]), .Cout(d6));
full_adder adder7(.A(A_inv[7]), .B(1'b0), .Cin(d6), .Y(Y[7]), .Cout(unused));

endmodule