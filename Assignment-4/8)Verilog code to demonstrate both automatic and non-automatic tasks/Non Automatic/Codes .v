// Verilog code to demonstrate both non-automatic tasks
module without_auo_task;
  reg b;
  initial begin
    a(1);
    a(2);
    a(3);
  end
  task a(input integer x);
    integer tmp=0;
    begin
      tmp=tmp+x;
      $display("without :tmp=%d",tmp);
    end
  endtask
endmodule
