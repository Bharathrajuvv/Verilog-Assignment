// Code for Sum of Two number using Task
module sum_task;
  reg [3:0] a,b;
  reg [3:0] sum;
  task cal_sum;
    input [3:0] x,y;
    output [3:0] out;
    begin
      out = x+y;
    end
  endtask
  initial begin
    a=3;
    b=2;
    cal_sum(a,b,sum);
    $display("sum: %d",sum);
  end
endmodule
