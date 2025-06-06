// Design code for D-latch using 2:1 Mux
module d_latch_mux(input d,se, output reg y);
  always@(*)begin
    case(se)
      1'b0 :y = y;
      1'b1 :y = d;
    endcase
  end
endmodule
