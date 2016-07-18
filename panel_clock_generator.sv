//parameter LCD_POL_ADDR=32'hFFE1_0008;
//parameter LCD_CFG_ADDR=32'hE01F_C1B8;
/*typedef struct packed {
  reg [31:27] PCD_HI;
  reg [26]    BCD;
  reg [25:16] CPL;
  reg [15]    resv;
  reg [14]    IOE;
  reg [13]    IPC;
  reg [12]    IHS;
  reg [11]    IVS;
  reg [10:6]  ACB;
  reg [5]     CLKSEL;
  reg [4:0]   PCD_LO;

} LCD_POL;

typedef struct packed{
  reg [31:5] resv;
  reg [4:0]  CLKDIV;
} LCD_CFG;
*/

module clk_generator(input HCLK,rst,en,input LCD_CFG lcd_cfg,input LCD_POL lcd_pol,output LCDDCLK,output pixel_clk);

  //LCD_POL lcd_pol;
  //LCD_CFG lcd_cfg;
 
  reg [4:0] temp_count; // to divide clock
  reg [9:0] lcdd_count; // to divide clock
  //reg [9:0] line_count; // to divide clock
  //reg       clk_div;    // divided clock
  //reg       clk_lcddclk; // lcddclk generator
  //reg       line_clk;    // line clock generator
  // write to register lcd pol
  /*always @(posedge HCLK or negedge rst) begin 
    if(!rst) begin
         lcd_pol <= #0 0;
         lcd_cfg <= #0 0;
    end else begin
               if(reg_wr && (addr==LCD_POL_ADDR)) begin 
                 lcd_pol <= #1 reg_data;
               end 
               if(reg_wr && (addr==LCD_CFG_ADDR)) begin 
                 lcd_cfg <= #1 reg_data;
               end 
             end 
  end*/

  // clk divider logic 
  always @(posedge HCLK or posedge rst) begin
   if(rst) begin 
    temp_count     <= #0 0;
    lcdd_count     <= #0 0;
    //clk_div        <= #0 0;
    //clk_lcddclk    <= #0 0;
    //line_count     <= #0 0;
   end else begin
 
    if(en) begin 

     if(temp_count == (lcd_cfg.CLKDIV)) begin
       //clk_div    <=  ~clk_div;
       temp_count <=  0; 
     end else begin 
      temp_count <=  temp_count + 1;
              end

     if(lcdd_count == ({lcd_pol.PCD_HI,lcd_pol.PCD_LO}+10'b1)) begin
       //clk_lcddclk <=  ~clk_lcddclk;
       lcdd_count  <= #1 0; 
     end begin
          lcdd_count <= #1 lcdd_count + 1; 
         end
     end
   end 

  end 
 
wire phase180_pixel_clk;
wire phase180_lcddclk;

 assign phase180_pixel_clk= rst ? 0 : (en ? (temp_count==lcd_cfg.CLKDIV):0);
 assign phase180_lcddclk  = rst ? 0 : (en ? (lcdd_count=={lcd_pol.PCD_HI,lcd_pol.PCD_LO}+10'b1):0);

 assign pixel_clk = ~phase180_pixel_clk ;
 assign LCDDCLK   = ~phase180_lcddclk   ;

endmodule
