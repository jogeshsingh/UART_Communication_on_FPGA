# UART_Communication_on_FPGA
UART(UNIVERSAL ASYNCHRONOUS RECEIVER TRANSMITTER )  (UART-PC-FPGA)
It is also called as Serial to Parallel and Parallel to Serial Communication . UART has lot of applications for e.g,Wireless communication ,Bluetooth Modules , used as on board interface  in Microcontrollers , GPRS modules as so on in varieties of other communication systems too. 
   # Specifications 
      1. FPGA CLOCK RATE = 100 MHZ
      2. BAUD RATE = 115200 bps (bits per second)
      3. Data Frame = 8 bits (0-7)
      4. 1 Start Bit (Active Low)
      5. 1 Stop Bit  (Active High)
   FPGA = NEXYS4 ARTIX-7 
      
# Elaborated_Design
   # Receiver 
![RTL_DESIGN_UART_RECEIVER](https://user-images.githubusercontent.com/98607828/176993481-1c058aa8-996b-4594-8444-21dda3417825.jpg)
  # Transmitter
  ![UART_TX](https://user-images.githubusercontent.com/98607828/177555078-80a8d709-97fd-49dd-9f22-a8725935f2a3.jpg)
   ![Screenshot 2022-07-06 135339](https://user-images.githubusercontent.com/98607828/177557204-b26558f7-0896-4180-aef2-46093ba845c5.jpg)
   # Top_Level_Design
![Screenshot 2022-07-06 135408](https://user-images.githubusercontent.com/98607828/177557346-084b7299-2f5b-4890-9118-84ff26f83d30.jpg)

  
   
   # Synthesized Design
![Screenshot 2022-07-06 135453](https://user-images.githubusercontent.com/98607828/177555315-10b5976f-295d-46a8-ab21-92d685128c33.jpg)

# Implemented_Design
![UART_IMPLEMENTATION](https://user-images.githubusercontent.com/98607828/176993487-4c2fd025-2c8b-4603-b879-1ea01edc4e4e.jpg)
![UART_FPGA](https://user-images.githubusercontent.com/98607828/176993492-885929eb-5d14-4af7-a6d1-bceeac4adcd2.jpg)

![IMG-20220702-WA0001](https://user-images.githubusercontent.com/98607828/177001319-80c1a7f6-bf03-488a-9b40-53e23cfaee78.jpg)

 # Transmitter 
 https://youtu.be/nObsH4TaBLA
# Receiever
https://youtu.be/FIwmlXadMqU
# Simulation_Results
![UART](https://user-images.githubusercontent.com/98607828/176993509-622a32d6-ad4a-4c26-bf4b-ee6567fb56b9.jpg)

![UART_TX_RX](https://user-images.githubusercontent.com/98607828/177177111-dd3b0d73-6b3d-47ae-ac61-cbd63be6a423.jpg)
