//Somador Completo 1-bit
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
