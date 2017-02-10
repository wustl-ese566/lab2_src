/*****************************************************************************************************
* Description:                 Pipelined multiplier template
*
* Author:                      
*
* Email:                       
*
* Rev History:
*       <Author>        <Date>        <Hardware>     <Version>        
*     
*****************************************************************************************************/

module multiplier(
    rst,
    clk,

    req,
    a,
    b,
    y,
    rdy
    );

    input  rst;// Reset
    input  clk;// System clk
    input  req;// Operation request
    input  [31:0] a;// Operand a
    input  [31:0] b;// Operand b

    output [63:0] y;// Multiplier output
    output rdy;// Multiplier ready

    //==============================================
    // Put your code here.
	//==============================================
	
	
endmodule