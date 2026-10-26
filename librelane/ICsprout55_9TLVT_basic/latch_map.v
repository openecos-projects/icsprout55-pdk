// The latches of this library have an active-high gate pin CK (CKN for the
// active-low ones) and only a Q output.
module \$_DLATCH_P_ (input E, input D, output Q);
  LATQX1_9TLVT _TECHMAP_DLATCH_P (
    .D(D),
    .Q(Q),
    .CK(E)
  );
endmodule

module \$_DLATCH_N_ (input E, input D, output Q);
  LATNQX1_9TLVT _TECHMAP_DLATCH_N (
    .D(D),
    .Q(Q),
    .CKN(E)
  );
endmodule

module \$_DLATCH_NN0_ (input E, input R, input D, output Q);
  LATNRNQX1_9TLVT _TECHMAP_DLATCH_NN0 (
    .D(D),
    .Q(Q),
    .CKN(E),
    .RN(R)
  );
endmodule

module \$_DLATCH_PN0_ (input E, input R, input D, output Q);
  LATRNQX1_9TLVT _TECHMAP_DLATCH_PN0 (
    .D(D),
    .Q(Q),
    .CK(E),
    .RN(R)
  );
endmodule

module \$_DLATCHSR_NNN_ (input E, input S, input R, input D, output Q);
  LATNRSNQX1_9TLVT _TECHMAP_DLATCHSR_NNN (
    .D(D),
    .Q(Q),
    .CKN(E),
    .SN(S),
    .RN(R)
  );
endmodule

module \$_DLATCHSR_PNN_ (input E, input S, input R, input D, output Q);
  LATRSNQX1_9TLVT _TECHMAP_DLATCHSR_PNN (
    .D(D),
    .Q(Q),
    .CK(E),
    .SN(S),
    .RN(R)
  );
endmodule
