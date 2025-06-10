// Code for Even using function
module gen_num1;
  function [7:0] get_even;
    input [4:0] b;
    begin
      get_even =b*2;
    end
  endfunction
  
  integer j;
  initial begin
    for(j=0;j<20;j=j+1)
      $display("even[%0d]=%0d",j,get_even(j));
  end
endmodule
