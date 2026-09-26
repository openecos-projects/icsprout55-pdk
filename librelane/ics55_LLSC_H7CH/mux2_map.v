module \$_MUX_ (
    output Y,
    input A,
    input B,
    input S
    );
  MUX2X1H7H _TECHMAP_MUX (
      .Y(Y),
      .A(A),
      .B(B),
      .S0(S)
  );
endmodule
