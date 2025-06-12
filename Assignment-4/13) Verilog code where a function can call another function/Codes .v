// Verilog code where a function can call another function.
module converter;
  function xor_r;
    input a,b;
    begin
      xor_r=a^b;
    end
  endfunction
  
  function [4:0] gray_to_bin;
    input [4:0] gray;
    begin
      gray_to_bin[4] = gray[4];
      gray_to_bin[3] = xor_r(gray[3] , gray_to_bin[4]);
      gray_to_bin[2] = xor_r(gray[2] , gray_to_bin[3]);
      gray_to_bin[1] = xor_r(gray[1] , gray_to_bin[2]);
      gray_to_bin[0] = xor_r(gray[0] , gray_to_bin[1]);
    end
  endfunction
  
  reg [4:0] gray;
  reg [4:0] bin;
  integer i;
  
  initial begin
    $display("Gray | Binary");
    for (i=0; i<32; i=i+1)begin
      gray = i[4:0];
      bin= gray_to_bin(gray);
      $display(" %b | %b",gray,bin);
    end
  end
endmodule
      
