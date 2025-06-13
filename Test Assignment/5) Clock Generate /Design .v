// Design code for clock generate 
module clk_divider_100Hz (input clk_50MHz,input reset,output reg clk_100Hz);
    reg [17:0] counter;
  always @(posedge clk_50MHz or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_100Hz <= 0;
        end
        else begin
            if (counter == 249999) begin 
                counter <= 0;
                clk_100Hz <= ~clk_100Hz; 
            end
            else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
