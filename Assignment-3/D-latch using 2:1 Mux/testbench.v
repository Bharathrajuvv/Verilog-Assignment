// Testbench code for D-latch using 2:1 Mux
module test;
  reg d,se;
  wire y;
  d_latch_mux duv(d,se,y);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t d=%b se=%b y=%b",$time,d,se,y);
    se=0; d=0; #10;
    se=1; d=0; #10;
    se=1; d=1; #10;
    se=0; d=1; #10;
  end
endmodule
