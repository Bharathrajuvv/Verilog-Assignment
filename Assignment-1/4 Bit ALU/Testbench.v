// Testbench code for 4 Bit ALU Operation
module test;
  reg [3:0] a,b,sel;
  wire [3:0] x;
  wire o;
  alu duv(a,b,sel,x,o);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time%0t a=%b b=%b sel=%b x=%b o=%b",$time,a,b,sel,x,o);
    
    a=4'b1100; b=4'b1010;
     sel = 4'b0000; #10;
     sel = 4'b0001; #10;
     sel = 4'b0010; #10;
     sel = 4'b0011; #10;
     sel = 4'b0100; #10;
     sel = 4'b0101; #10;
     sel = 4'b0110; #10;
     sel = 4'b0111; #10;
     sel = 4'b1000; #10;
     sel = 4'b1001; #10;
     sel = 4'b1010; #10;
     sel = 4'b1011; #10;
     sel = 4'b1100; #10;
     sel = 4'b1101; #10;
     sel = 4'b1110; #10;
     sel = 4'b1111; #10;
  end
endmodule

    
