// Testbench code for Nor gate usign Switch-level and Gate level
module nor_gate_tb;
  reg a,b;
  wire y;
  nor_gate duv(.*);
  initial
    begin
      a=0;b=0; #5;
      a=0;b=1; #5;
      a=1;b=0; #5;
      a=1;b=1; #5;
    end
  initial
    begin
      $monitor("time=%0t a=%b b=%b y=%b",$time,a,b,y);
    end
endmodule

      
