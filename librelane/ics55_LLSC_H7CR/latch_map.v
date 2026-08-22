module \$_DLATCH_P_ (input E, input D, output Q);
  LATHX1H7R _TECHMAP_DLATCH_P (
    .D(D),
    .Q(Q),
    .G(E),
    .QN()
  );
endmodule

module \$_DLATCH_N_ (input E, input D, output Q);
  LATLX1H7R _TECHMAP_DLATCH_N (
    .D(D),
    .Q(Q),
    .GN(E),
    .QN()
  );
endmodule

module \$_DLATCH_NN0_ (input E, input R, input D, output Q);
  LATLRX1H7R _TECHMAP_DLATCH_NN0 (
    .D(D),
    .Q(Q),
    .GN(E),
    .RN(R),
    .QN()
  );
endmodule

module \$_DLATCH_PN0_ (input E, input R, input D, output Q);
  LATHRX1H7R _TECHMAP_DLATCH_PN0 (
    .D(D),
    .Q(Q),
    .G(E),
    .RN(R),
    .QN()
  );
endmodule

module \$_DLATCHSR_NNN_ (input E, input S, input R, input D, output Q);
  LATLSRX1H7R _TECHMAP_DLATCHSR_NNN (
    .D(D),
    .Q(Q),
    .GN(E),
    .SN(S),
    .RN(R),
    .QN()
  );
endmodule

module \$_DLATCHSR_PNN_ (input E, input S, input R, input D, output Q);
  LATHSRX1H7R _TECHMAP_DLATCHSR_PNN (
    .D(D),
    .Q(Q),
    .G(E),
    .SN(S),
    .RN(R),
    .QN()
  );
endmodule
