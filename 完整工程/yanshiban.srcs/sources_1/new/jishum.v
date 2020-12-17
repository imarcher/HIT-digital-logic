`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 00:39:57
// Design Name: 
// Module Name: jishum
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

module jishum(
input key_in, clear,
output reg[1:0] count


);
initial
begin
    count = 2'b00;
   
  
end

always @(posedge clear or negedge key_in)
begin
    
    if(clear == 1) count = 2'b00;
    else
    begin
       
        if(count<2'b11) count = count + 1;
        else count = 2'b00;
     
      
    
    end
end

endmodule
