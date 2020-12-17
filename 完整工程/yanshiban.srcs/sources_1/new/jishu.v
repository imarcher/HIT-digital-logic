`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:11:23
// Design Name: 
// Module Name: jishu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module jishu(
input key_in, clear,green,
output reg[1:0] count,
output reg shu01,output reg shu02,output reg shu03,output reg shu04,output reg shu05,output reg shu06,output reg shu07

);
initial
begin
    count = 2'b00;
   
  shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=0;
end

always @(posedge clear or negedge key_in)
begin
    
    if(clear == 1)
    begin
        count = 2'b00;
        shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=0;
    end
    else
    begin
       
        if(count<2'b11) begin
        count = count + 1;
        case(count)
          2'b01:begin
          shu01=0;shu02=1;shu03=1;shu04=0;shu05=0;shu06=0;shu07=0;end
          2'b10:begin
          shu01=1;shu02=1;shu03=0;shu04=1;shu05=1;shu06=0;shu07=1;end
          2'b11:begin
          shu01=1;shu02=1;shu03=1;shu04=1;shu05=0;shu06=0;shu07=1;end
          endcase
          end
        else begin
        count = 2'b00;
        shu01=0;shu02=1;shu03=1;shu04=0;shu05=0;shu06=1;shu07=1;
        end
   
      
    
    end
    
    
end

endmodule
