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
    req_msg_a,
    req_msg_b,
    req_val,
    req_rdy,
    resp_msg,
    resp_val,
    resp_rdy
    );

    input  rst;// Reset
    input  clk;// System clk
    input  [31:0] req_msg_a;// Operand a
    input  [31:0] req_msg_b;// Operand b
    input  req_val;// Operation request
    output req_rdy;// New operands could be accepted, if it is deasserted, req_val and req_msg will be ignored

    output [63:0] resp_msg;// Multiplier result output
    output resp_val;// Multiplier result valid flag
    input  resp_rdy;// Host ready to accept the result flag

    //==============================================
    // Put your code here.
    //==============================================
	
	
endmodule
