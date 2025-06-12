// Verilog code to shift a number right using a function.
module seven_shift;
  reg [15:0] a;
  wire [15:0] b;
  assign b=shift_rht(a);
  function [15:0] shift_rht;
    input [15:0] x;
    begin
      shift_rht= x>> 7;
    end
  endfunction
  initial begin
    a=16'b1010101010101010; #10;
    $display("shift_rht=%b",b);
  end
endmodul
