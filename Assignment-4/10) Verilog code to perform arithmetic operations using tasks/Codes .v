// Verilog code to perform arithmetic operations using tasks.
module task_arithmetic;
  task add(input [7:0] a,b, output[7:0] x);
    begin
      x=a+b;
    end
  endtask
  task sub(input [7:0] a,b, output [7:0] x);
    begin
      x=a-b;
    end
  endtask
  task mul(input [15:0] a,b, output [31:0] x);
    begin
      x=a*b;
    end
  endtask
  task div(input [15:0] a,b, output [7:0] x);
    begin
      x=a/b;
    end
  endtask
  
  reg [7:0] add_rs,sub_rs;
  reg [15:0] mul_rs,div_rs;
  
  initial begin
    #10 add(10,2,add_rs);
    #10 sub(5,5,sub_rs);
    #10 mul(22,2,mul_rs);
    #10 div(20,5,div_rs);
    $display("Addition=%d Subtraction=%d Multiply=%d Division=%d",add_rs,sub_rs,mul_rs,div_rs);
  end
endmodule

    
  
