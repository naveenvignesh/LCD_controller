//parameter LCD_TIMH_ADDR = 32'hFFE1_0000;
//parameter LCD_TIMV_ADDR = 32'hFFE1_0004;
/*typedef struct packed {
    //0xFFE1 0000 
    reg[7:0] HBP;
    reg[7:0] HFP;
    reg[7:0] HSW;
    reg[5:0] PPL;
    reg[1:0] resv;
  
} LCD_TIMH;

typedef struct packed {
    //0xFFE1_0004
    reg[7:0] VBP;
    reg[7:0] VFP;
    reg[5:0] VSW;
    reg[9:0] LPP;

} LCD_TIMV;

typedef struct packed {
    reg [14:0]   resv;
    reg          LEE;
    reg [8:0]    resv_;
    reg [6:0]    LED;
} LCD_LE;

typedef  struct packed{
reg [15:0] resv1;
reg         WATERMARK;
reg [1:0]   resv2;
reg [1:0]   LCDVCOMP;
reg         LCDPWR;
reg         BEPO;// big endian pixel order
reg         BEBO;// big endian byte order in memory
reg         BGR;// bgr if 1
reg         LCDDUAL;
reg         LCDMONO8;
reg         LCDTFT;
reg         LCDBW;
reg [2:0]   LCDBPP;// bits per pixel
reg         LCDEN;
} LCD_CTRL;
*/

typedef enum {INIT,DELAY,OUT} LDE_STATE;

module timing_control(input pixel_clk,rst,lcddclk,cclk,
                      input LCD_TIMH lcd_timh,input LCD_TIMV lcd_timv,input lcd_en,// lcd_en reg input
                      input lcd_pwr,// power reg input
                      output LCDPWR,output LCDDCLK,
                      output LCDFP, output LCDLE, output LCDLP,output LCDVD,
                      output [9:0] x_count,y_count,output pixel_disp_on);

LCD_TIMH      lcd_timh;
LCD_TIMV      lcd_timv;
LCD_LE        lcd_le;
 
reg [11:0] h_pixel;
reg [11:0] v_pixel;    
reg [11:0] line_length;
reg [11:0] frame_length;    
reg [2:0]  le_count;
reg        le_start;
reg [6:0]  lcdle_delay_count;
reg [2:0]  lcdle_hold_count;

reg line_clk;
reg [9:0] x_cor;
reg [9:0] y_cor;    

LDE_STATE lcdle_cur_state,lcdle_nxt_state;

//LCD power display register
assign LCDPWR = rst ? 0:lcd_pwr;

always @(*) begin
  frame_length= lcd_timv.VBP + lcd_timv.VFP + lcd_timv.LPP+ lcd_timv.VSW+3;
  line_length = (lcd_timh.HSW+lcd_timh.HBP+ (16*(lcd_timh.PPL+1)) +lcd_timh.HFP+3)*lcd_timv.LPP;
end

// vertical scan
always@(posedge line_clk or posedge rst) begin 
    if(rst) begin
         v_pixel <= #1 12'hfff;
         le_start <= #1 0; 
    end else begin

             if(lcd_en) begin 
             case(1) 
	     (v_pixel == frame_length): v_pixel<= #1 0; 
             default: v_pixel <= #1 v_pixel + 1;
             endcase
             end

             end 

              
 end 

// generate LCD vertical timing parameters.
assign #1 LCDFP =  (rst|!lcd_en) ? 0:((v_pixel >= 0) && (v_pixel <= lcd_timv.VSW)); 
//assign #1 LCDFP =  (rst|!lcd_en) ? 0:((v_pixel > lcd_timv.VFP) && (v_pixel < lcd_timv.VFP+lcd_timv.VSW)); 

// horizontal pixel signal generation
always @(posedge pixel_clk or posedge rst) begin 
  if(rst) begin
    h_pixel <= #1 0;
  end else begin  

      if(lcd_en) begin 
            case(1)
             (h_pixel == line_length): begin
                                         h_pixel <= #1 0;
                                        end
             ((v_pixel >= (lcd_timv.VSW+lcd_timv.VBP+1)) && (v_pixel <= (lcd_timv.VSW+lcd_timv.VBP+lcd_timv.LPP+2))): begin  
                                         h_pixel <= #1 h_pixel + 1;
                                        end
            endcase
          end
           end 
end 

assign  LCDLP = (rst|!lcd_en) ? 0 : ((h_pixel >= 0 ) && (h_pixel <= lcd_timh.HSW));

// line clk generation 
reg [11:0] line_clk_count;

always @(posedge pixel_clk or posedge rst) begin 
   if(rst) begin 
     line_clk_count <= #0 0;
   end else begin 
              
      if(lcd_en) begin 
            case(1)
             (line_clk_count == line_length):begin
                                             line_clk_count <= #0 0;
                                             end
             default:line_clk_count <= #0 line_clk_count + 1;                                                   
            endcase                                                             
	    end
         end 
end 
assign line_clk = rst ? 0 :( line_clk_count > 0 && line_clk_count < lcd_timh.HSW );
//assign line_clk = (rst| !lcd_en) ? 0 :~(line_clk_count == line_length);
//assign line_clk = (rst| !lcd_en) ? 0 :(line_clk_count == 0);
//LCDLE generation 
always @(posedge cclk or posedge rst) begin 
  if(rst) begin
   lcdle_cur_state <= #0 INIT; 
  end else begin 
           lcdle_cur_state <= #1 lcdle_nxt_state;    
  end
end 


//lcdle delay counter
always @(posedge cclk or posedge rst) begin
   if(rst) begin
     lcdle_delay_count <= #0 lcd_le.LED;
     lcdle_hold_count <= #0 3;
   end else begin
             if(lcd_en) begin  
             lcdle_delay_count <= #1 ((lcdle_cur_state == DELAY)?  (lcdle_delay_count - 1) : lcd_le.LED);
             lcdle_hold_count <= #1 ((lcdle_cur_state == OUT)?  (lcdle_hold_count - 1) : 3);
             end
            end
end 

// state selection logic 
always @(*) begin
  
  lcdle_nxt_state = INIT;
 
 if(lcd_en) begin  

   case(lcdle_cur_state)
    INIT: begin
           if(h_pixel == (lcd_timh.HSW+lcd_timh.HBP+lcd_timh.PPL+lcd_timh.HFP)) begin
               lcdle_nxt_state = (lcd_le.LEE==0) ? OUT:DELAY;
           end else begin 
		     lcdle_nxt_state =  lcdle_cur_state;
                    end  
          end
    DELAY:begin
            if(lcdle_delay_count==0) begin
               lcdle_nxt_state = OUT; 
            end else begin 
               lcdle_nxt_state = lcdle_cur_state;
            end
	  end
    OUT  :begin
            if(lcdle_hold_count==0) begin
               lcdle_nxt_state = INIT;// 4 cycle pouch over 
            end else begin 
               lcdle_nxt_state = lcdle_cur_state;
                     end
          end
   endcase

 end 
end

assign LCDLE = (rst | !lcd_en)  ? 0:((lcdle_hold_count >0 )&& (lcdle_hold_count<3));

// x_cur logic
always @(posedge pixel_clk or posedge rst) begin 
 if(rst) begin
   x_cor <= #0 0; 
 end else begin
           if(lcd_en) begin 
            case(1)
             (h_pixel>(lcd_timh.HSW+lcd_timh.HBP))&&(h_pixel<(lcd_timh.HSW+lcd_timh.HBP+lcd_timh.PPL)):
                                                                             begin
                                                                               x_cor <= #1 x_cor + 1; 
								             end
             default : x_cor <= #1 0;
            endcase
           end 
          end
end 
// y_cur logic
always @(posedge pixel_clk or posedge rst) begin 
 if(rst) begin 
   y_cor <= #0 0;
 end else begin
            if(lcd_en) begin  
            case(1)
             (h_pixel==(lcd_timh.HSW+lcd_timh.HBP+lcd_timh.PPL)): begin 
								  y_cor <= #1 y_cor + 1;
								 end
            endcase
            end
          end
end 
// pixel_disp_on
//wire pixel_disp_on;
assign pixel_disp_on =  lcd_en? (h_pixel>=(lcd_timh.HSW+lcd_timh.HBP+lcd_timh.PPL)) && (h_pixel<(lcd_timh.HSW+lcd_timh.HBP+lcd_timh.PPL)):0;

assign x_count = x_cor;
assign y_count = y_cor;

endmodule 
