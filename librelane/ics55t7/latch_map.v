// Latch mapping of ics55t7 for yosys / LibreLane (SYNTH_LATCH_MAP), made by
// stdcell-gen layout_emit/latch_map.py from the characterized latch cells.

module \$_DLATCH_P_ (input E, input D, output Q);
  LHQD1 _TECHMAP_DLATCH_P (.d(D), .e(E), .q(Q));
endmodule

module \$_DLATCH_PP0_ (input E, input R, input D, output Q);
  LHCND2 _TECHMAP_DLATCH_PP0 (.d(D), .e(E), .q(Q), .cdn(~R), .qn());
endmodule

module \$_DLATCH_PN0_ (input E, input R, input D, output Q);
  LHCND2 _TECHMAP_DLATCH_PN0 (.d(D), .e(E), .q(Q), .cdn(R), .qn());
endmodule

module \$_DLATCH_PP1_ (input E, input R, input D, output Q);
  LHSNQD1 _TECHMAP_DLATCH_PP1 (.d(D), .e(E), .q(Q), .sdn(~R));
endmodule

module \$_DLATCH_PN1_ (input E, input R, input D, output Q);
  LHSNQD1 _TECHMAP_DLATCH_PN1 (.d(D), .e(E), .q(Q), .sdn(R));
endmodule

module \$_DLATCHSR_PPP_ (input E, input S, input R, input D, output Q);
  LHCSNQD2 _TECHMAP_DLATCHSR_PPP (.d(D), .e(E), .q(Q), .cdn(~(R)), .sdn(~((S) & ~(R))));
endmodule

module \$_DLATCHSR_PPN_ (input E, input S, input R, input D, output Q);
  LHCSNQD2 _TECHMAP_DLATCHSR_PPN (.d(D), .e(E), .q(Q), .cdn(~(~R)), .sdn(~((S) & ~(~R))));
endmodule

module \$_DLATCHSR_PNP_ (input E, input S, input R, input D, output Q);
  LHCSNQD2 _TECHMAP_DLATCHSR_PNP (.d(D), .e(E), .q(Q), .cdn(~(R)), .sdn(~((~S) & ~(R))));
endmodule

module \$_DLATCHSR_PNN_ (input E, input S, input R, input D, output Q);
  LHCSNQD2 _TECHMAP_DLATCHSR_PNN (.d(D), .e(E), .q(Q), .cdn(~(~R)), .sdn(~((~S) & ~(~R))));
endmodule

module \$_DLATCH_N_ (input E, input D, output Q);
  LNQD1 _TECHMAP_DLATCH_N (.d(D), .en(E), .q(Q));
endmodule

module \$_DLATCH_NP0_ (input E, input R, input D, output Q);
  LNCND1 _TECHMAP_DLATCH_NP0 (.d(D), .en(E), .q(Q), .cdn(~R), .qn());
endmodule

module \$_DLATCH_NN0_ (input E, input R, input D, output Q);
  LNCND1 _TECHMAP_DLATCH_NN0 (.d(D), .en(E), .q(Q), .cdn(R), .qn());
endmodule

module \$_DLATCH_NP1_ (input E, input R, input D, output Q);
  LNSNQD1 _TECHMAP_DLATCH_NP1 (.d(D), .en(E), .q(Q), .sdn(~R));
endmodule

module \$_DLATCH_NN1_ (input E, input R, input D, output Q);
  LNSNQD1 _TECHMAP_DLATCH_NN1 (.d(D), .en(E), .q(Q), .sdn(R));
endmodule

module \$_DLATCHSR_NPP_ (input E, input S, input R, input D, output Q);
  LNCSND2 _TECHMAP_DLATCHSR_NPP (.d(D), .en(E), .q(Q), .cdn(~(R)), .sdn(~((S) & ~(R))), .qn());
endmodule

module \$_DLATCHSR_NPN_ (input E, input S, input R, input D, output Q);
  LNCSND2 _TECHMAP_DLATCHSR_NPN (.d(D), .en(E), .q(Q), .cdn(~(~R)), .sdn(~((S) & ~(~R))), .qn());
endmodule

module \$_DLATCHSR_NNP_ (input E, input S, input R, input D, output Q);
  LNCSND2 _TECHMAP_DLATCHSR_NNP (.d(D), .en(E), .q(Q), .cdn(~(R)), .sdn(~((~S) & ~(R))), .qn());
endmodule

module \$_DLATCHSR_NNN_ (input E, input S, input R, input D, output Q);
  LNCSND2 _TECHMAP_DLATCHSR_NNN (.d(D), .en(E), .q(Q), .cdn(~(~R)), .sdn(~((~S) & ~(~R))), .qn());
endmodule
