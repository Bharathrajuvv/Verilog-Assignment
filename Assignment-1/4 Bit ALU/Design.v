// Design code for 4 Bit ALU Operation
module alu(input[3:0] a,b,sel, output [3:0] x, output o);
  reg [3:0] y;
  wire [4:0] z;
  assign x=y;
  assign z={1'b0,a}+{1'b0,b};
  assign o=z[4];
  always@(*)
    begin
      case(sel)
        4'b0000:
          y=a+b;
         4'b0001:
          y=a-b;
         4'b0010:
          y=a*b;
         4'b0011:
           y=a/b;
         4'b0100:
           y=a<<1;
         4'b0101:
           y=a>>1;
         4'b0110:
           y={a[2:0],a[3]};
         4'b0111:
           y={a[0],a[3:1]};
         4'b1000:
           y=a&b;
         4'b1001:
           y=a|b;
         4'b1010:
           y=a^b;
         4'b1011:
           y=~(a&b);
         4'b1100:
           y=~(a|b);
         4'b1101:
           y=~(a^b);
         4'b1110:
           y=(a>b)?4'd1:4'd0;
         4'b1111:
           y=(a==b)?4'd1:4'd0;
        default:y=a+b;
      endcase
    end
endmodule
