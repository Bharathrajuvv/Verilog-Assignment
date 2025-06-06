// Design code for 50% Duty Cylce
module duty_cycle(output reg clk);
  initial begin
    clk=0;
    forever begin
      #10 clk= ~clk;
    end
  end
endmodule

