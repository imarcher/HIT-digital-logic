`timescale 1ns / 1ps
module xiaodou(input key_in, input clk,
output reg key_out
);
reg [32:0]count_low, count_high;
parameter SAMPLE_TIME = 20000000;
initial 
begin
count_low = 0;
count_high = 0;
key_out = 0;
end

always @(posedge clk)
    begin
        if(key_in == 0) count_low = count_low + 1;
        else count_low = 0;
        if(key_in == 1) count_high = count_high + 1;
        else count_high = 0;
        if(count_high == SAMPLE_TIME)
        begin 
            key_out = 1;
            count_high = 0;
        end
        else if(count_low == SAMPLE_TIME)
        begin
            key_out = 0;
            count_low = 0;
        end
    end
endmodule