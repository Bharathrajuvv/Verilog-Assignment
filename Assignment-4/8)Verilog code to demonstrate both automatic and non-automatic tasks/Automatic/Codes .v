// Verilog code to demonstrate both automatic Task
module with_auo_task;
  reg b;
  initial begin
    a(1);
    a(2);
    a(3);
  end
  task automatic  a(input integer x);
    integer tmp=0;
    begin
      tmp=tmp+x;
      $display("with :tmp=%d",tmp);
    end
  endtask
endmodule
