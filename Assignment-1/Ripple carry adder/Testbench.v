// Testbench code for Ripple carry adder
module ripple_carryadder_tb;
  reg [3:0] a,b;
  reg ci;
  wire [3:0] s;
  wire c;
  ripple_carryadder duv(.*);
  initial
    begin
     #5; a=4'b1111; b=4'b1000; ci=0; 
     #5; a=4'b1010; b=4'b1001; ci=0; 
    end
  initial
    begin
      $monitor("time=%0t, a=%b b=%b ci=%b s=%b c=%b",$time,a,b,ci,s,c);
    end
endmodule

  
