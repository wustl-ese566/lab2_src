/*****************************************************************************************************
* Description:                 One cycle multiplier for Demo
*
* Author:                      Dengxue Yan
*
* Email:                       Dengxue.Yan@wustl.edu
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        
*     Dengxue Yan   2016-09-09 23:00       --           1.00             Create
*****************************************************************************************************/
`timescale 1ns / 1ps

module multiplier_tb();

    reg  [31:0] a;
    reg  [31:0] b;
    reg  clk;
    reg  req;
    reg  rst;

    wire [63:0] y;
    wire rdy;

    multiplier DUT(
        .rst(rst),
        .clk(clk),
        .req(req),
        .a(a),
        .b(b),
        .y(y),
        .rdy(rdy)
        );

    initial
    begin
        $dumpfile("multiplier.vcd");
        $dumpvars(0, multiplier_tb);

        rst = 1;
        clk = 0;
        a = 0;
        b = 0;
        req = 0;

        #16
        rst = 0;
        a = 1;
        b = 1;
        req = 1;

        #20
        req = 0;

        #1000
        a = -1;
        b = 1;
        req = 1;

        #20
        req = 0;

        #1000
        a = 1;
        b = -1;
        req = 1;

        #20
        req = 0;

        #1000
        a = -1;
        b = -1;
        req = 1;

        #20
        req = 0;

        #1000
        $finish;
    end

    always 
        #10 clk = !clk;

endmodule