// Testbench code 2 Bit Comparator
module twobit_com_tb;
  reg a1,a0,b1,b0;
  wire lt,gt,eq;
  twobit_com duv(.*);
  initial
    begin
      $dumpfile("tes.vcd");
      $dumpvars;
      a1=0;b1=0;a0=0;b0=0; #5;
      a1=0;b1=0;a0=0;b0=1; #5;
      a1=0;b1=0;a0=1;b0=0; #5;
      a1=0;b1=0;a0=1;b0=1; #5;
      a1=0;b1=1;a0=0;b0=0; #5;
      a1=0;b1=1;a0=0;b0=1; #5;
      a1=0;b1=1;a0=1;b0=0; #5;
      a1=0;b1=1;a0=1;b0=1; #5;
      a1=1;b1=0;a0=0;b0=0; #5;
      a1=1;b1=0;a0=0;b0=1; #5;
      a1=1;b1=0;a0=1;b0=0; #5;
      a1=1;b1=0;a0=1;b0=1; #5;
      a1=1;b1=1;a0=0;b0=0; #5;
      a1=1;b1=1;a0=0;b0=1; #5;
      a1=1;b1=1;a0=1;b0=0; #5;
      a1=1;b1=1;a0=1;b0=1; #5;
    end
  initial
    begin
      $monitor("time=%0t a1=%b b1=%b a0=%b b0=%b lt=%b gt=%b eq=%b",$time,a1,b1,a0,b0,lt,gt,eq);
    end
endmodule

      
