// Testbench code for full adder in parameter construct
module test;
  parameter B=8;
  reg [B-1:0]a;
  reg [B-1:0]b;
  reg ca;
  wire [B-1:0]su;
  wire co;
  
  full_add #(B) duv(a,b,ca,su,co);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t a=%b b=%b ca=%b su=%b co=%b",$time,a,b,ca,su,co);
    
    a=8'b00001111;b=8'b11001100;ca=1'b0; #10;
    a=8'b01101010;b=8'b11010101;ca=1'b0; #10;
    a=8'b01111111;b=8'b11100010;ca=1'b0; #10;
    a=8'b00001001;b=8'b11001010;ca=1'b0; #10;
  end
endmodule

    
