module som_comp_8bit (
  input wire [7:0] x,
  input wire [7:0] y,
  input wire Cin,
  output wire [7:0] A,
  output wire Cout
);

  wire [6:0] Cout_int;

  // Somador de 1 bit para cada bit da soma
  som_comp_1bit U0 (.x(x[0]), .y(y[0]), .Cin(Cin), .A(A[0]), .Cout(Cout_int[0]));
  som_comp_1bit U1 (.x(x[1]), .y(y[1]), .Cin(Cout_int[0]), .A(A[1]), .Cout(Cout_int[1]));
  som_comp_1bit U2 (.x(x[2]), .y(y[2]), .Cin(Cout_int[1]), .A(A[2]), .Cout(Cout_int[2]));
  som_comp_1bit U3 (.x(x[3]), .y(y[3]), .Cin(Cout_int[2]), .A(A[3]), .Cout(Cout_int[3]));
  som_comp_1bit U4 (.x(x[4]), .y(y[4]), .Cin(Cout_int[3]), .A(A[4]), .Cout(Cout_int[4]));
  som_comp_1bit U5 (.x(x[5]), .y(y[5]), .Cin(Cout_int[4]), .A(A[5]), .Cout(Cout_int[5]));
  som_comp_1bit U6 (.x(x[6]), .y(y[6]), .Cin(Cout_int[5]), .A(A[6]), .Cout(Cout_int[6]));
  som_comp_1bit U7 (.x(x[7]), .y(y[7]), .Cin(Cout_int[6]), .A(A[7]), .Cout(Cout));

endmodule

module som_comp_1bit (
    input x, y, Cin,
    output A, Cout
);
    wire p, r, s;

    xor(p, x, y);
    xor(A, p, Cin);

    and(r, p, Cin);
    and(s, x, y);

    or(Cout, r, s);

endmodule
