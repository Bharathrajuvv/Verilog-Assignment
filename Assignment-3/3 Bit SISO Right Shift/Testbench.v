// Testbench code for 3 Bit Right Shift SISO
module test;
  reg si,clk,rst;
  wire so;
  siso duv(si,clk,rst,so);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t si=%b clk=%b rst=%b so=%b",$time,si,clk,rst,so);
    rst=1;
    #5 si=0;
    rst=0;
    si=1; #5;
    si=1; #5;
    si=1; #5;
    si=1; #5;
    si=0; #5;
    si=0; #5;
    si=0; #5;
    si=1; #5;
    #100 $finish;
  end
endmodule

    
    
    
