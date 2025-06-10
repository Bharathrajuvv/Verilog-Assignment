// Codes for two functions for multiplication and division.
module mul_div_function;
  reg[15:0] a,b;
  wire [15:0] mux_rs;
  wire [7:0] div_rs;
  assign mux_rs=mul(a,b);
  assign div_rs=div(a,b);
  function [15:0] mul;
    input [15:0] x,y;
    begin
      mul=x*y;
    end
  endfunction
  function [7:0] div;
    input [7:0] x,y;
    begin
      div=x/y;
    end
  endfunction
  initial begin
    a=8'd24; b=8'd2; #10;
    $display("mul=%d div=%d a=%d b=%d",mux_rs,div_rs,a,b);
  end
endmodule
