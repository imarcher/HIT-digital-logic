`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:13:10
// Design Name: 
// Module Name: jicun
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

module jicun(
        input clk,input [3:0] shuru,jishu,input red,lock,
        output reg [3:0] n1,n2,n3,n4,output reg kaishi,
        output reg shu01,output reg shu02,output reg shu03,output reg shu04,output reg shu05,output reg shu06,output reg shu07,
        output reg shu11,output reg shu12,output reg shu13,output reg shu14,output reg shu15,output reg shu16,output reg shu17,
        output reg shu21,output reg shu22,output reg shu23,output reg shu24,output reg shu25,output reg shu26,output reg shu27,
        output reg shu31,output reg shu32,output reg shu33,output reg shu34,output reg shu35,output reg shu36,output reg shu37
    );
    initial
    begin
    n1=4'b0011;
    n2=4'b0010;
    n3=4'b0001;
    n4=0;
    shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=0;
    shu11=1;shu12=1;shu13=1;shu14=1;shu15=1;shu16=1;shu17=0;
    shu21=1;shu22=1;shu23=1;shu24=1;shu25=1;shu26=1;shu27=0;
    shu31=1;shu32=1;shu33=1;shu34=1;shu35=1;shu36=1;shu37=0;
    kaishi=0;
    end
    
    always @(posedge clk)
    begin
    if(!red)begin
    if(lock) kaishi=0;
    if(jishu==2'b01) begin
    kaishi=1;
    n1=shuru;
    case(n1)
      4'b0000:begin
      shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=0;end
      4'b0001:begin
      shu01=0;shu02=1;shu03=1;shu04=0;shu05=0;shu06=0;shu07=0;end
      4'b0010:begin
      shu01=1;shu02=1;shu03=0;shu04=1;shu05=1;shu06=0;shu07=1;end
      4'b0011:begin
      shu01=1;shu02=1;shu03=1;shu04=1;shu05=0;shu06=0;shu07=1;end
      4'b0100:begin
      shu01=0;shu02=1;shu03=1;shu04=0;shu05=0;shu06=1;shu07=1;end
      4'b0101:begin
      shu01=1;shu02=0;shu03=1;shu04=1;shu05=0;shu06=1;shu07=1;end
      4'b0110:begin
      shu01=1;shu02=0;shu03=1;shu04=1;shu05=1;shu06=1;shu07=1;end
      4'b0111:begin
      shu01=1;shu02=1;shu03=1;shu04=0;shu05=0;shu06=0;shu07=0;end
      4'b1000:begin
      shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=1;end
      4'b1001:begin
      shu01=1;shu02=1;shu03=1;shu04=1;shu05=0;shu06=1;shu07=1;end
      endcase
      end
    else if(jishu==2'b10) begin
    n2=shuru;
    case(n2)
          4'b0000:begin
        shu11=1;shu12=1;shu13=1;shu14=1;shu15=1;shu16=1;shu17=0;end
        4'b0001:begin
        shu11=0;shu12=1;shu13=1;shu14=0;shu15=0;shu16=0;shu17=0;end
        4'b0010:begin
        shu11=1;shu12=1;shu13=0;shu14=1;shu15=1;shu16=0;shu17=1;end
        4'b0011:begin
        shu11=1;shu12=1;shu13=1;shu14=1;shu15=0;shu16=0;shu17=1;end
        4'b0100:begin
        shu11=0;shu12=1;shu13=1;shu14=0;shu15=0;shu16=1;shu17=1;end
        4'b0101:begin
        shu11=1;shu12=0;shu13=1;shu14=1;shu15=0;shu16=1;shu17=1;end
        4'b0110:begin
        shu11=1;shu12=0;shu13=1;shu14=1;shu15=1;shu16=1;shu17=1;end
        4'b0111:begin
        shu11=1;shu12=1;shu13=1;shu14=0;shu15=0;shu16=0;shu17=0;end
        4'b1000:begin
        shu11=1;shu12=1;shu13=1;shu14=1;shu15=1;shu16=1;shu17=1;end
        4'b1001:begin
        shu11=1;shu12=1;shu13=1;shu14=1;shu15=0;shu16=1;shu17=1;end
          endcase
      end
    else if(jishu==2'b11)begin
     n3=shuru;
    case(n3)
           4'b0000:begin
            shu21=1;shu22=1;shu23=1;shu24=1;shu25=1;shu26=1;shu27=0;end
            4'b0001:begin
            shu21=0;shu22=1;shu23=1;shu24=0;shu25=0;shu26=0;shu27=0;end
            4'b0010:begin
            shu21=1;shu22=1;shu23=0;shu24=1;shu25=1;shu26=0;shu27=1;end
            4'b0011:begin
            shu21=1;shu22=1;shu23=1;shu24=1;shu25=0;shu26=0;shu27=1;end
            4'b0100:begin
            shu21=0;shu22=1;shu23=1;shu24=0;shu25=0;shu26=1;shu27=1;end
            4'b0101:begin
            shu21=1;shu22=0;shu23=1;shu24=1;shu25=0;shu26=1;shu27=1;end
            4'b0110:begin
            shu21=1;shu22=0;shu23=1;shu24=1;shu25=1;shu26=1;shu27=1;end
            4'b0111:begin
            shu21=1;shu22=1;shu23=1;shu24=0;shu25=0;shu26=0;shu27=0;end
            4'b1000:begin
            shu21=1;shu22=1;shu23=1;shu24=1;shu25=1;shu26=1;shu27=1;end
            4'b1001:begin
            shu21=1;shu22=1;shu23=1;shu24=1;shu25=0;shu26=1;shu27=1;end
            endcase
       
       end
    else if(jishu==2'b00)begin
     n4=shuru;
     case(n4)
           4'b0000:begin
          shu31=1;shu32=1;shu33=1;shu34=1;shu35=1;shu36=1;shu37=0;end
          4'b0001:begin
          shu31=0;shu02=1;shu33=1;shu34=0;shu35=0;shu36=0;shu37=0;end
          4'b0010:begin
          shu31=1;shu02=1;shu33=0;shu34=1;shu35=1;shu36=0;shu37=1;end
          4'b0011:begin
          shu31=1;shu02=1;shu33=1;shu34=1;shu35=0;shu36=0;shu37=1;end
          4'b0100:begin
          shu31=0;shu02=1;shu33=1;shu34=0;shu35=0;shu36=1;shu37=1;end
          4'b0101:begin
          shu31=1;shu02=0;shu33=1;shu34=1;shu35=0;shu36=1;shu37=1;end
          4'b0110:begin
          shu31=1;shu02=0;shu33=1;shu34=1;shu35=1;shu36=1;shu37=1;end
          4'b0111:begin
          shu31=1;shu02=1;shu33=1;shu34=0;shu35=0;shu36=0;shu37=0;end
          4'b1000:begin
          shu31=1;shu02=1;shu33=1;shu34=1;shu35=1;shu36=1;shu37=1;end
          4'b1001:begin
          shu01=1;shu02=1;shu33=1;shu34=1;shu35=0;shu36=1;shu37=1;end
             endcase
        end
        end
        
        else
        begin
        shu01=1;shu02=1;shu03=1;shu04=1;shu05=1;shu06=1;shu07=1;
        shu11=1;shu12=1;shu13=1;shu14=1;shu15=1;shu16=1;shu17=1;
        shu21=1;shu22=1;shu23=1;shu24=1;shu25=1;shu26=1;shu27=1;
        shu31=1;shu32=1;shu33=1;shu34=1;shu35=1;shu36=1;shu37=1;
        end
    end
endmodule