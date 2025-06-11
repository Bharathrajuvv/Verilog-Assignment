// Code for uses different tasks to perform arithmetic operations.
module arit_task;
  reg [7:0] a,b;
  reg [7:0] z;
  
  task add_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x+y;
    end
  endtask
  
  task sub_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x-y;
    end
  endtask
  
  task mul_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x*y;
    end
  endtask
  
  task div_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x/y;
    end
  endtask
  initial begin
    a=8'd12;
    b=8'd4;
    add_task(a,b,z);
    $display("Addition: %d + %d = %d", a, b, z);
    
    sub_task(a,b,z);
    $display("Subtraction: %d - %d = %d",a,b,z);
    
    mul_task(a,b,z);
    $display("Multiple: %d * %d = %d",a,b,z);
    
    div_task(a,b,z);
    $display("Division: %d / %d = %d",a,b,z);
  end
endmodule

    
  
    

