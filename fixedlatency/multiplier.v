/*****************************************************************************************************
* Description:                 Fixed latency multiplier for Demo
*
* Author:                      Dengxue Yan
*
* Email:                       Dengxue.Yan@wustl.edu
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        
*     Dengxue Yan   2017-01-09 17:00       --           1.00             Create
*****************************************************************************************************/
`timescale 1ns / 1ps

module multiplier(
    rst,
    clk,
    req,
    a,
    b,
    y,
    rdy
    );

    input  rst;
    input  clk;
    input  req;
    input  [31:0] a;
    input  [31:0] b;

    output [63:0] y;
    reg [63:0] y;
    output rdy;
    reg rdy;

    reg [1:0] state = 2'b00;
    reg [4:0] counter = 5'h00;

    reg [63:0] a_temp = 0;
    reg [31:0] b_temp = 0;
    reg [63:0] y_temp = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // reset
            a_temp <= 0;
            b_temp <= 0;
            y_temp <= 0;
            y <= 0;
            state <= 2'b00;
            rdy <= 1'b0;
        end
        else begin
            case (state)
            2'b00: begin
                if (req) begin
                    a_temp <= {32'h00000000, a};
                    b_temp <= b;
                    y_temp <= 0;
                    counter <= 5'h00;
                    rdy <= 1'b0;
                    state <= 2'b01;
                end
            end
            2'b01: begin
                if (5'h1F == counter) begin
                    state <= 2'b11;
                end
                else begin
                    counter <= counter + 1'b1;
                end
                y_temp <= y_temp + (b_temp[0] ? a_temp: 0);

                a_temp <= {a_temp[62:0], 1'b0};
                b_temp <= {1'b0, b_temp[31:1]};
            end
            2'b11: begin
                y <= y_temp;
                rdy <= 1'b1;
                state <= 2'b00;
            end
            default: begin
                state <= 2'b00;
            end
            endcase
        end
    end

endmodule