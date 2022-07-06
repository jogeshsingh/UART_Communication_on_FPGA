`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2022 07:28:42 PM
// Design Name: 
// Module Name: Ttestbench_UART_Rx
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



/////testebench module for uart receiever ///
`define WIDTH 8
module UART_Rx_tb();
reg i_clk =0;///Fpga clk ///
reg i_Rx_serial = 1'b1 ; ///data is serially loaded from PC through this ////
wire o_RX_DV ; ////output showing data is successfully received //
wire [`WIDTH-1:0] o_RX_out ;////output led's showing the received ASCII code from PC //



parameter CLKS_PER_BIT = 868 ;

///Design instantiation///
UART_Rx DUT(
 .i_clk(i_clk) , ///Fpga clk ///
 .i_Rx_serial(i_Rx_serial) , ///data is serially loaded from PC through this ////
 .o_RX_DV(o_RX_DV) , ////output showing data is successfully received //
 .o_RX(o_RX_out) ////output led's showing the received ASCII code from PC //
 );


///clk gen= 100MHZ///
always #5 i_clk = ~i_clk ;

task UART_WRITE_BYTE ;
 input [7:0] i_data ;
 integer i;
 begin
 
 i_Rx_serial <=1'b0;
 #1000;

//send data byte //

for (i =0; i<8; i=i+1)
 begin
 i_Rx_serial <= i_data[i];
 #8600;
 end
 i_Rx_serial <= 1'b1;
 #8600;
end
endtask 


initial
 begin
 @(posedge i_clk);
 UART_WRITE_BYTE(8'h32) ;
 
if (o_RX_out == 8'h32)
 $display("correct data received");
 else
 $display ("incorrect data is received");
 end

endmodule
