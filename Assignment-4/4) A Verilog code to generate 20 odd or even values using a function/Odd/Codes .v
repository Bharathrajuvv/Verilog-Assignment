// Code for Odd using function+
module gen_num;
  function [7:0] get_odd;
    input [4:0] a;
    begin
      get_odd = a*2+1;
    end
  endfunction
  
  integer i;
  initial begin
    for(i=0;i<20;i=i+1)
      $display("odd[%0d]=%0d",i,get_odd(i));
  end
endmodule
