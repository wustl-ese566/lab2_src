/*****************************************************************************************************
* Description:                 One cycle multiplier for Demo
*
* Author:                      Dengxue Yan
*
* Email:                       Dengxue.Yan@wustl.edu
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        <Description>
*     Dengxue Yan   2016-09-09 23:00       --           1.00             Create
*****************************************************************************************************/
`timescale 1ns / 1ps

module multiplier_tb();

    reg  [31:0] a;
    reg  [31:0] b;
    reg  clk;

    wire [63:0] y;

    multiplier DUT(
        .a(a),
        .b(b),
        .y(y)
        );

    initial
    begin
        $dumpfile("multiplier.vcd");
        $dumpvars(0, multiplier_tb);

        clk = 0;
        a = 1;
        b = 1;

        #10
        a = -1;
        b = -1;

        #10
        a = 1;
        b = -1;

        #10
        a = -1;
        b = 1;

        #10
        a = -10;
        b = 10;

        #20
        $finish;
    end

    always 
        #10 clk = !clk;

endmodule