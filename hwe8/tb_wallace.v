`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/28 00:15:43
// Design Name: 
// Module Name: tb
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


module tb(
    
    );
    
    reg [31:0] A;
    reg [31:0] B;
    wire [63:0] out;
    initial begin
        A = 32'hffffffff;
        B = 32'hffffffff;
        #10
        A = 32'd4;
        B = 32'd9;
        #10
        A = 32'h666;
        B = 32'h44321;
        #10
        A = 32'h90012345;
        B = 32'h54321;
       #10
        A = 32'h88888888;
        B = 32'h55735;
       #10
        A = 32'hff431234;
        B = 32'hfff44444;
        #10
        A = 32'h2333;
        B = 32'hfff44444;
     end
     mul32 mul(
        .A(A),
        .B(B),
        .product(out)
     );
     
    
endmodule
