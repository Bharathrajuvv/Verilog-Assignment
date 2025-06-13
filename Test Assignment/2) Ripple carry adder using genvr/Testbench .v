// Testbench code for Ripple carry adder usign genvr
module test_ripple_carry;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
        ripple_carry_adder #(4) rca(a, b, cin, sum, cout);
    
    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        $display("0 + 0 + 0 = %b (cout=%b)", sum, cout);
        
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        $display("15 + 1 + 0 = %b (cout=%b)", sum, cout);
        
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        $display("10 + 5 + 1 = %b (cout=%b)", sum, cout);
    end
endmodule
