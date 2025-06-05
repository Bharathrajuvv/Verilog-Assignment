// Design code for Nand gate using Switch-level and Gate level
module nand_gate(input a,b, output y);
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(y,vdd,a);
  pmos p2(y,vdd,b);
  nmos n1(y,w,a);
  nmos n2(w,gnd,b);
endmodule

module nand_gate1(input a,b, output y);
  nand g1 (y,a,b);
endmodule
