// design code for full adder in parameter construct
module full_add #(parameter B=8)(input [B-1:0]a, input [B-1:0]b,input ca,output [B-1:0] su,output co);
  assign su=a^b^ca;
  assign co=(a&b)|(b&ca)|(ca&a);
endmodule
