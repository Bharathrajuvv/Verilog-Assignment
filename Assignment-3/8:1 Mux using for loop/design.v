// Design code for 8:1 Mux usign for loop
module mux8to1(input [7:0] in, input[2:0] s, output reg ou);
  integer i;
  always@(*)begin
    ou = 0;
    for (i = 0; i<8; i = i+1)begin
      if(s == i)
        ou = in[i];
    end
  end
endmodule

    
 
