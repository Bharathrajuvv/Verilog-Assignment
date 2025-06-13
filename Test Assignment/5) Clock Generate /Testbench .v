// Testbench code for clock Gentrete 
module test;
    reg clk_50MHz;
    reg reset;
    wire clk_100Hz;
  clk_divider_100Hz uut (.*);
    initial begin
        clk_50MHz = 0;
        forever #10 clk_50MHz = ~clk_50MHz;
    end
    initial begin
        reset = 1;
        #100 reset = 0;
        $monitor("Time = %0t ns: clk_100Hz = %b", $time, clk_100Hz);
        #10000000 $finish;
    end
endmodule
