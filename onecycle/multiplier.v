/*****************************************************************************************************
* Description:                 One cycle multiplier for Demo
*
* Author:                      Dengxue Yan
*
* Email:                       Dengxue.Yan@wustl.edu
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        <Description>
*     Dengxue Yan   2017-01-09 17:00       --           1.00             Create
*****************************************************************************************************/
`timescale 1ns / 1ps

module multiplier(
        .rst(rst),
        .clk(clk),
        .req(req),
        .a(a),
        .b(b),
        .y(y),
        .rdy(rdy)
    );

    input  rst;// Reset
    input  clk;// System clk
    input  req;// Operation request
    input  [31:0] a;// Operand a
    input  [31:0] b;// Operand b

    output [63:0] y;// Multiplier output
    output rdy;// Multiplier ready

    assign rdy = req;
    
    wire [31:0] temp00 = b[0]  ? a: 32'h00000000; 
    wire [31:0] temp01 = b[1]  ? a: 32'h00000000; 
    wire [31:0] temp02 = b[2]  ? a: 32'h00000000; 
    wire [31:0] temp03 = b[3]  ? a: 32'h00000000; 
    wire [31:0] temp04 = b[4]  ? a: 32'h00000000; 
    wire [31:0] temp05 = b[5]  ? a: 32'h00000000; 
    wire [31:0] temp06 = b[6]  ? a: 32'h00000000; 
    wire [31:0] temp07 = b[7]  ? a: 32'h00000000; 
    wire [31:0] temp08 = b[8]  ? a: 32'h00000000; 
    wire [31:0] temp09 = b[9]  ? a: 32'h00000000; 
    wire [31:0] temp10 = b[10] ? a: 32'h00000000; 
    wire [31:0] temp11 = b[11] ? a: 32'h00000000; 
    wire [31:0] temp12 = b[12] ? a: 32'h00000000; 
    wire [31:0] temp13 = b[13] ? a: 32'h00000000; 
    wire [31:0] temp14 = b[14] ? a: 32'h00000000; 
    wire [31:0] temp15 = b[15] ? a: 32'h00000000; 
    wire [31:0] temp16 = b[16] ? a: 32'h00000000; 
    wire [31:0] temp17 = b[17] ? a: 32'h00000000; 
    wire [31:0] temp18 = b[18] ? a: 32'h00000000; 
    wire [31:0] temp19 = b[19] ? a: 32'h00000000; 
    wire [31:0] temp20 = b[20] ? a: 32'h00000000; 
    wire [31:0] temp21 = b[21] ? a: 32'h00000000; 
    wire [31:0] temp22 = b[22] ? a: 32'h00000000; 
    wire [31:0] temp23 = b[23] ? a: 32'h00000000; 
    wire [31:0] temp24 = b[24] ? a: 32'h00000000; 
    wire [31:0] temp25 = b[25] ? a: 32'h00000000; 
    wire [31:0] temp26 = b[26] ? a: 32'h00000000; 
    wire [31:0] temp27 = b[27] ? a: 32'h00000000; 
    wire [31:0] temp28 = b[28] ? a: 32'h00000000; 
    wire [31:0] temp29 = b[29] ? a: 32'h00000000; 
    wire [31:0] temp30 = b[30] ? a: 32'h00000000; 
    wire [31:0] temp31 = b[31] ? a: 32'h00000000; 
 
    assign y = 
        {temp00} +
        {temp01, 1'h0} + 
        {temp02, 2'h0} + 
        {temp03, 3'h0} + 
        {temp04, 4'h0} + 
        {temp05, 5'h00} + 
        {temp06, 6'h00} + 
        {temp07, 7'h00} + 
        {temp08, 8'h00} + 
        {temp09, 9'h000} + 
        {temp10, 10'h000} + 
        {temp11, 11'h000} + 
        {temp12, 12'h000} + 
        {temp13, 13'h0000} + 
        {temp14, 14'h0000} + 
        {temp15, 15'h0000} + 
        {temp16, 16'h0000} + 
        {temp17, 17'h00000} + 
        {temp18, 18'h00000} + 
        {temp19, 19'h00000} + 
        {temp20, 20'h00000} + 
        {temp21, 21'h000000} + 
        {temp22, 22'h000000} + 
        {temp23, 23'h000000} + 
        {temp24, 24'h000000} + 
        {temp25, 25'h0000000} + 
        {temp26, 26'h0000000} + 
        {temp27, 27'h0000000} + 
        {temp28, 28'h0000000} + 
        {temp29, 29'h00000000} + 
        {temp30, 30'h00000000} +
        {temp31, 31'h00000000};

endmodule