// Verilog code where a task can call both a task and a function.
module task_fun;
  reg [31:0] a,b,rs;
  function [31:0] mul_fun;
    input [31:0] x,y;
    begin
      mul_fun = x*y;
    end
  endfunction
  
  task print_rs_task;
    input [31:0] c;
    begin
      $display("Inside print_rs_task: c=%0d",c);
    end
  endtask
  
  task main_task;
    input [31:0] val1,val2;
    begin
      rs=mul_fun(val1,val2);
      print_rs_task(rs);
      $display("Inside top_tak: computed rs =  %0d",rs);
    end
  endtask
  initial begin
    a=7; b=6; 
    $display("Intial value: a=%0d b=%0d",a,b);
    main_task(a,b);
    end
endmodule

