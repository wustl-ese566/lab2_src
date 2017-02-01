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
    output rdy;



endmodule