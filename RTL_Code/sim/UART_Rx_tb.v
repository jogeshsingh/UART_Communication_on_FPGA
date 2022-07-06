`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2022 07:31:02 PM
// Design Name: 
// Module Name: UART_Rx_tb
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
module UART_Rx_tb();

  
  reg Clk = 0;
  reg RX_Serial = 1;
  wire [7:0] Byte_RX;
  
Top_UART_Rx DUT(
 .i_clk(Clk) , ///Fpga clk ///
 .i_Rx_serial(RX_Serial) , ///data is serially loaded from PC through this ////
 .o_RX_DV() , ////DATA_VALID , output showing data is successfully received //
 .o_RX(Byte_RX) ////output led's showing the received ASCII code from PC //
 );
  // Takes in input byte and serializes it 
  task UART_WRITE_BYTE_1;
    input [7:0] i_data;
    integer     i;
    begin
      
      // Send Start Bit
      RX_Serial <= 1'b0;
      #(PERIOD);
      #1000;
      
      // Send Data Byte
      for (i=0; i<8; i=i+1)
        begin
          RX_Serial <= i_data[i];
          #(PERIOD);
        end
      
      // Send Stop Bit
      RX_Serial <= 1'b1;
      #(PERIOD);
     end
  endtask // UART_WRITE_BYTE
  
  task UART_WRITE_BYTE_2;
    input [7:0] i_data;
    integer     i;
    begin
      
      // Send Start Bit
      RX_Serial <= 1'b0;
      #(PERIOD);
      #1000;
      
      // Send Data Byte
      for (i=0; i<8; i=i+1)
        begin
          RX_Serial <= i_data[i];
          #(PERIOD);
        end
      
      // Send Stop Bit
      RX_Serial <= 1'b1;
      #(PERIOD);
     end
  endtask // UART_WRITE_BYTE
 
  
  always #(CLK_PERIOD/2) Clk <= ~Clk;

  
  initial
    begin
      @(posedge Clk);
      UART_WRITE_BYTE_1(8'h56);
      @(posedge Clk);
            
      // Check that the correct command was received
      if (Byte_RX == 8'h56)
        $display("Correct Byte Received");
      else
        $display("Incorrect Byte Received");
    $finish();
    end
    
    
endmodule

