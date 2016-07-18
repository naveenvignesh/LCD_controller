module send_pixel_color(
input clk,rst,write_slave,
input [7:0] raddr_slave,raddr_ps,waddr_slave,
input [31:0] wdata_slave, 
output [15:0] pixel_color_out_slave,pixel_color_out_ps
);
 
  
 mem128x32(.clk(clk),.write(write_slave),.waddr(waddr_slave),.wdata(wdata_slave),.raddr(raddr_slave),.rdata(pixel_color_out_slave),.raddr1(raddr_ps),.rdata1(pixel_color_out_slave));

endmodule 
