`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 03:46:07 PM
// Design Name: 
// Module Name: Multiplexer_Dataflow
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


module Multiplexer_Dataflow(o, i, s);
    input[7:0]i;
    input[2:0]s;
    output o;
    
    assign o = (~s[2] & ~s[1] & ~s[2] & i[0]) | (~s[2] & ~s[1] & s[2] & i[1]) | (~s[2] & s[1] & ~s[2] & i[2]) | 
    (~s[2] & s[1] & s[2] & i[3]) | (s[2] & ~s[1] & ~s[2] & i[4]) | (s[2] & ~s[1] & s[2] & i[5]) | 
    (s[2] & s[1] & ~s[2] & i[6]) | (s[2] & s[1] & s[2] & i[7]);
    
    
endmodule
