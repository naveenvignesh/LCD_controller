module tft_stn_data_encoding(input [23:0] pstoencode_data_in,input lcdbpp,output lcdout)

always @(*) begin 

  case (lcdbpp) 
	3'b000: begin //1bpp
   
		end 
	3'b001: begin //2bpp
		end
	3'b010: begin //4bpp
		end
	3'b011: begin //8bpp
		end
	3'b100: begin //16bpp 1:5:5:5
		end
	3'b101: begin //24bpp
                  lcdout = pstoencode_data_in;
		end
	3'b110: begin //16bpp 5:6:5
		end
	3'b111: begin //12 bpp 4:4:4
		end
  endcase
 
end 

endmodule 
