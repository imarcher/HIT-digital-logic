`timescale 1ns / 1ps
module jishi(input green, jicun, clk,red,
             output reg jishi_g, jishi_r,
             
             output reg num_0, num_1, num_2, num_3, num_4, num_5, num_6
             );
reg [31:0]cnt;
reg [3:0] count;

reg jishiclk;
initial
begin
    count = 0;
    jishiclk = 0;
    jishi_g = 1;
    jishi_r = 0;
    cnt = 0;
    num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 0; num_5 = 1; num_6 = 1;
end

always @(posedge clk)
begin
    cnt=cnt+1;
    if(cnt == 50000000)
    begin
        cnt=0;
        jishiclk=~jishiclk;
    end
    
end

always @(posedge jishiclk)
begin
    if(!green&&jicun&&!red)
    begin
        count = count + 1;
        if(count == 4'b0001)
        begin
            num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 0; num_5 = 1; num_6 = 1;
        end
        else if(count == 4'b0010)
        begin
            num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 1; num_5 = 1; num_6 = 1;
        end
        else if(count == 4'b0011)
        begin
            num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 0; num_4 = 0; num_5 = 0; num_6 = 0;
        end
        else if(count == 4'b0100)
        begin
            num_0 = 1; num_1 = 0; num_2 = 1; num_3 = 1; num_4 = 1; num_5 = 1; num_6 = 1;
        end
        else if(count == 4'b0101)
        begin
            num_0 = 1; num_1 = 0; num_2 = 1; num_3 = 1; num_4 = 0; num_5 = 1; num_6 = 1;
        end
        else if(count == 4'b0110)
        begin
            num_0 = 0; num_1 = 1; num_2 = 1; num_3 = 0; num_4 = 0; num_5 = 1; num_6 = 1;
        end
        else if(count == 4'b0111)
        begin
            num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 0; num_5 = 0; num_6 = 1;
        end
        else if(count == 4'b1000)
        begin
            num_0 = 1; num_1 = 1; num_2 = 0; num_3 = 1; num_4 = 1; num_5 = 0; num_6 = 1;
        end
        else if(count == 4'b1001)
        begin
            num_0 = 0; num_1 = 1; num_2 = 1; num_3 = 0; num_4 = 0; num_5 = 0; num_6 = 0;
        end
        else if(count == 4'b1010)
        begin
            count = 3'b000;
            num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 1; num_5 = 1; num_6 = 0;
            jishi_g = 0;
            jishi_r = 1;
        end
    end
    else begin
    count=0;
    num_0 = 1; num_1 = 1; num_2 = 1; num_3 = 1; num_4 = 0; num_5 = 1; num_6 = 1;
    end
end
endmodule
