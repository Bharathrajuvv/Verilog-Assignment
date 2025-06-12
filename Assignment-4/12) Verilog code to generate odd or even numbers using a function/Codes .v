// Verilog code to generate odd or even numbers using a function
module gen_num;
  function [15:0] a;
    input [7:0] b;
    input c;
    begin
      a=(b*2)+c;
    end
  endfunction
  
  integer i;
  initial begin
    $display("generating Even num:");
    for (i=0; i<50; i=i+1)
      $display("even[%0d] =%0d",i, a(i,0));
    $display("nGenerating Odd num:");
    for (i=0; i<50; i=i+1)
      $display("odd[%0d]=%0d", i,a(i,1));
  end
endmodule
