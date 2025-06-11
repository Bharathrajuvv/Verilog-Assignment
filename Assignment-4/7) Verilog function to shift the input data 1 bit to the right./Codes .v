// Verilog function to shift the input data 1 bit to the right.
module one_shift;
  reg [3:0] a;
  wire [3:0] b;
  assign b=shift_rht(a);
  function [3:0] shift_rht;
    input [3:0] x;
    begin
      shift_rht = x >> 1;
    end
  endfunction
  initial begin
    a=4'b1010; #10;
    $display("shift_rht=%b",b);
  end
endmodule

    
