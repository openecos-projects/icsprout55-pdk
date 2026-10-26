module \$_MUX4_ (
    output Y,
    input A,
    input B,
    input C,
    input D,
    input S,
    input T
    );
  MUX4X1H7L _TECHMAP_MUX4 (
      .Y(Y),
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .S0(S),
      .S1(T)
  );
endmodule
