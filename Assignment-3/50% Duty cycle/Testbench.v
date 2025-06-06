// Testbench  code for 50% Duty Cylce
module test;
  wire clk;
  duty_cycle duv(clk);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    #200;
    $finish;
  end
endmodule
