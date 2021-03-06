




/******************** HTRANS parameter *********************/
                           
  parameter IDLE     = 2'b00;
  parameter BUSY     = 2'b01;
  parameter NONSEQ   = 2'b10;
  parameter SEQ      = 2'b11;
                          
 
 //********************** HRESP parameter ********************//

 
 parameter OKAY    = 2'b00;
 parameter ERROR   = 2'b01;
 parameter RETRY   = 2'b10;
 parameter SPLIT   = 2'b11;

 
/*********************** HWRITE parameter *********************/
  
 parameter WRITE = 1'b1;
 parameter READ = 1'b0;
 
//********************* parameter for register addresses ************************//
	parameter	LCD_CFG_ADDR 		=	32'hE01FC1B8; 
	parameter	LCD_TIMH_ADDR		=	32'hFFE10000;
	parameter	LCD_TIMV_ADDR		=	32'hFFE10004;
	parameter	LCD_POL_ADDR  		=	32'hFFE10008;
	parameter	LCD_LE_ADDR		=	32'hFFE1000C;
	parameter	LCD_UPBASE_ADDR		=	32'hFFE10010;
	parameter	LCD_LPBASE_ADDR		=	32'hFFE10014;
	parameter	LCD_CTRL_ADDR		=	32'hFFE10018;
	parameter	LCD_INTMSK_ADDR		=	32'hFFE1001C;
	parameter	LCD_INTRAW_ADDR		=	32'hFFE10020;
	parameter	LCD_INTSTAT_ADDR	=	32'hFFE10024;
	parameter	LCD_INTCLR_ADDR		=	32'hFFE10028;
	parameter	LCD_UPCURR_ADDR		=	32'hFFE1002C;
	parameter	LCD_LPCURR_ADDR		=	32'hFFE10030;
        parameter       CRSR_CTRL_ADDR		=	32'hFFE10C00;
        parameter       CRSR_CFG_ADDR           =	32'hFFE10C04;
        parameter       CRSR_PAL0_ADDR          =	32'hFFE10C08;
        parameter       CRSR_PAL1_ADDR          =	32'hFFE10C0C;
        parameter       CRSR_XY_ADDR            =	32'hFFE10C10;
        parameter       CRSR_CLIP_ADDR          =	32'hFFE10C14;
        parameter       CRSR_INTMSK_ADDR        =	32'hFFE10C20;
        parameter       CRSR_INTCLR_ADDR        =	32'hFFE10C24;
        parameter       CRSR_INTRAW_ADDR        =	32'hFFE10C28;
        parameter       CRSR_INTSTAT_ADDR       =	32'hFFE10C2C;


//************************* STATE MACHINE sates definition ************************//
    
typedef enum bit [1:0]	{IDLE_ST = 2'b00,RD_ADDR_ST = 2'b01, WR_OP_ST = 2'b10, RD_OP_ST = 2'b11} slave_states;




//============================================================================//


module LCD_slave (
//AHBIF.AHBS  s,
//AHBIF.AHBCLKS  clk,


input HCLK,
input HRESET,
input HSEL,

input [31:0] HADDR,
input [31:0] HWDATA,


input  HWRITE,
input [1:0] HTRANS,
input [2:0] HSIZE,
input [2:0] HBURST,


output reg [31:0] HRDATA,
output reg HREADY,

output reg [1:0] HRESP,

//interface      s,
//interface  clk,
//output LCD_ctrl_reg LCD_reg      //passign structure as a output
//output [31:0] LCD_RDATA,
//input [31:0] LCD_RADDR,
//input r_data

output LCD_CFG      lcd_cfg     ,
output LCD_TIMH     lcd_timh    ,
output LCD_TIMV     lcd_timv    ,
output LCD_POL      lcd_pol     ,
output LCD_LE       lcd_le      ,
output LCD_UPBASE   lcd_upbase  ,
output LCD_LPBASE   lcd_lpbase  ,
output LCD_CTRL     lcd_ctrl    ,
output LCD_INTMSK   lcd_intmsk  ,
output LCD_INTRAW   lcd_intraw  ,
output LCD_INTSTAT  lcd_intstat ,
output LCD_INTCLR   lcd_intclr  ,
output LCD_UPCURR   lcd_upcurr  ,
output LCD_LPCURR   lcd_lpcurr  ,
output CRSR_CTRL    crsr_ctrl   ,
output CRSR_CFG     crsr_cfg    ,
output CRSR_PAL0    crsr_pal0   ,
output CRSR_PAL1    crsr_pal1   ,
output CRSR_XY      crsr_xy     ,
output CRSR_CLIP    crsr_clip   ,
output CRSR_INTMSK  crsr_intmsk ,
output CRSR_INTCLR  crsr_intclr ,
output CRSR_INTRAW  crsr_intraw ,
output CRSR_INTSTAT crsr_intstat


);



//reg [1:0] HRESP;
wire [31:0] LCD_CFG_mem_c;     
wire [31:0] LCD_TIMH_reg_c;    
wire [31:0] LCD_TIMV_reg_c;    
wire [31:0] LCD_POL_reg_c ;    
wire [31:0] LCD_LE_reg_c  ;    
wire [31:0] LCD_UPBASE_reg_c;  
wire [31:0] LCD_LPBASE_reg_c ; 
wire [31:0] LCD_CTRL_reg_c    ;
wire [31:0] LCD_INTMSK_reg_c  ;
wire [31:0] LCD_INTRAW_reg_c  ;
wire [31:0] LCD_INTSTAT_reg_c ;
wire [31:0] LCD_INTCLR_reg_c  ;
wire [31:0] LCD_UPCURR_reg_c  ;
wire [31:0] LCD_LPCURR_reg_c  ;
wire [31:0] CRSR_CTRL_reg_c   ;
wire [31:0] CRSR_CFG_reg_c    ;
wire [31:0] CRSR_PAL0_reg_c   ;
wire [31:0] CRSR_PAL1_reg_c   ;
wire [31:0] CRSR_XY_reg_c     ;
wire [31:0] CRSR_CLIP_reg_c   ;
wire [31:0] CRSR_INTMSK_reg_c ;
wire [31:0] CRSR_INTCLR_reg_c ;
wire [31:0] CRSR_INTRAW_reg_c ;
wire [31:0] CRSR_INTSTAT_reg_c;



reg [23:0][31:0] LCD_reg_d;					//regs for LCD_regs



reg     [31:0] ahbs_addr_reg;
wire    [31:0] ahbs_addr_reg_c;
wire [31:0] ahbs_RDATA_reg_c;

//reg [31:0] LCD_RDATA_reg,LCD_RDATA_reg_c;

				        
reg	[31:0] ahbs_RDATA_reg;
	
slave_states state_q, state_ns;

   //reg clk;
   //assign clk = clk; 


//assign  s.HRDATA = ahbs_RDATA_reg;


//assign LCD_RDATA = LCD_RDATA_reg;

//assign  LCD_reg   = LCD_reg_d;            //assigning the structure


  

   assign lcd_cfg	  =	LCD_reg_d[0]  ; 
   assign lcd_timh    	  =	LCD_reg_d[1]  ;
   assign lcd_timv    	  =	LCD_reg_d[2]  ;
   assign lcd_pol	  =	LCD_reg_d[3]  ;
   assign lcd_le	  =	LCD_reg_d[4]  ;
   assign lcd_upbase  	  =	LCD_reg_d[5]  ;
   assign lcd_lpbase  	  =	LCD_reg_d[6]  ;
   assign lcd_ctrl    	  =	LCD_reg_d[7]  ;
   assign lcd_intmsk  	  =	LCD_reg_d[8]  ;
   assign lcd_intraw  	  =	LCD_reg_d[9]  ;
   assign lcd_intstat     =	LCD_reg_d[10] ;
   assign lcd_intclr  	  =	LCD_reg_d[11] ;
   assign lcd_upcurr  	  =	LCD_reg_d[12] ;
   assign lcd_lpcurr  	  =	LCD_reg_d[13] ;
   assign crsr_ctrl   	  =	LCD_reg_d[14] ;
   assign crsr_cfg        =	LCD_reg_d[15] ;
   assign crsr_pal0       =	LCD_reg_d[16] ;
   assign crsr_pal1       =	LCD_reg_d[17] ;
   assign crsr_xy	  =	LCD_reg_d[18] ;
   assign crsr_clip       =	LCD_reg_d[19] ;
   assign crsr_intmsk     = 	LCD_reg_d[20] ;
   assign crsr_intclr     =	LCD_reg_d[21] ;
   assign crsr_intraw     =	LCD_reg_d[22] ;
   assign crsr_intstat    =	LCD_reg_d[23] ;


    assign HSIZE = 3'b010;







 
//********* state machine **********************************// 
     
always @(posedge HCLK or negedge HRESET) begin
   if(HRESET == 1'b0) begin
        state_q <= IDLE_ST;
   end else begin
	state_q <= state_ns; 
   end
 end
 
 
 
 always @(*) begin
    
    case(state_q)
      
      IDLE_ST      : begin
        HREADY = 1'b0;
        HRESP  = 2'b00;

        if(HSEL==1'b1) begin
          state_ns = RD_ADDR_ST;
        end else begin 
          state_ns = IDLE_ST;
        end

      end
      
      
      RD_ADDR_ST   : begin
        HREADY = 1'b1;
        HRESP  = 2'b00;
        
        if(HWRITE==1'b1 && HSEL==1'b1 && HTRANS[1]==1'b1) begin   
          state_ns = WR_OP_ST;
        end
        else if(HWRITE==1'b0 && HSEL==1'b1 && HTRANS[1]==1'b1) begin
          state_ns = RD_OP_ST;
        end else begin
          state_ns = IDLE_ST;
         end

      end
      
      
      WR_OP_ST : begin
        HREADY = 1'b1;
        HRESP  = 2'b00;

	if(HWRITE ==1'b1 && HSEL==1'b1 && HTRANS == 2'b10) begin
		state_ns = WR_OP_ST;
        end else if(HWRITE ==1'b0 && HSEL==1'b1 && HTRANS == 2'b10) begin
                state_ns = RD_OP_ST;
	end else begin
		state_ns = IDLE_ST;
	end

      end
      
      
      RD_OP_ST  : begin
        HREADY = 1'b1;
        HRESP  = 2'b00;

	if(HWRITE ==1'b1 && HSEL==1'b1 && HTRANS == 2'b10) begin
		state_ns = WR_OP_ST;
        end else if(HWRITE ==1'b0 && HSEL==1'b1 && HTRANS == 2'b10) begin
                state_ns = RD_OP_ST;
	end else begin
		state_ns = IDLE_ST;
	end

      end
      
      

	default begin
		state_ns = IDLE_ST;
	end
      
    endcase
 end
 //**********************************************************//
 
 
 
 
//**********************************************************//
always @ (posedge HCLK or posedge HRESET)
begin
	if (HRESET) begin
           state_q <= IDLE_ST;
	   ahbs_addr_reg      <= #1 0;
           LCD_reg_d[0]       <= #1 32'h0000;
           LCD_reg_d[1]       <= #1 32'h0000;
           LCD_reg_d[2]       <= #1 32'h0000;
           LCD_reg_d[3]       <= #1 32'h0000;
           LCD_reg_d[4]       <= #1 32'h0000;
           LCD_reg_d[5]       <= #1 32'h0000;
           LCD_reg_d[6]       <= #1 32'h0000;
           LCD_reg_d[7]       <= #1 32'h0000;
           LCD_reg_d[8]       <= #1 32'h0000;
           LCD_reg_d[9]      <= #1 32'h0000;
           LCD_reg_d[10]      <= #1 32'h0000;
           LCD_reg_d[11]      <= #1 32'h0000;
           LCD_reg_d[12]      <= #1 32'h0000;
           LCD_reg_d[13]      <= #1 32'h0000;
           LCD_reg_d[14]      <= #1 32'h0000;
           LCD_reg_d[15]      <= #1 32'h0000;
           LCD_reg_d[16]      <= #1 32'h0000;
           LCD_reg_d[17]      <= #1 32'h0000;
           LCD_reg_d[18]      <= #1 32'h0000;
           LCD_reg_d[19]      <= #1 32'h0000;
           LCD_reg_d[20]      <= #1 32'h0000;
           LCD_reg_d[21]      <= #1 32'h0000;
           LCD_reg_d[22]      <= #1 32'h0000;
           LCD_reg_d[23]      <= #1 32'h0000;
           //ahbs_RDATA_reg     <= #1 32'h0000;
	   //LCD_RDATA_reg	<= #1 32'h0000;

	end 
        else 
        begin
	   state_q <= state_ns;  
           ahbs_addr_reg 	<= #1 ahbs_addr_reg_c;
           LCD_reg_d[0] 	<= #1 LCD_CFG_mem_c;
           LCD_reg_d[1] 	<= #1 LCD_TIMH_reg_c;
           LCD_reg_d[2] 	<= #1 LCD_TIMV_reg_c;
           LCD_reg_d[3] 	<= #1 LCD_POL_reg_c;
           LCD_reg_d[4] 	<= #1 LCD_LE_reg_c;
           LCD_reg_d[5] 	<= #1 LCD_UPBASE_reg_c;
           LCD_reg_d[6] 	<= #1 LCD_LPBASE_reg_c;
           LCD_reg_d[7] 	<= #1 LCD_CTRL_reg_c;
           LCD_reg_d[8] 	<= #1 LCD_INTMSK_reg_c;
           LCD_reg_d[9] 	<= #1 LCD_INTRAW_reg_c;
           LCD_reg_d[10]	<= #1 LCD_INTSTAT_reg_c;
           LCD_reg_d[11]	<= #1 LCD_INTCLR_reg_c;
           LCD_reg_d[12]	<= #1 LCD_UPCURR_reg_c;
           LCD_reg_d[13]	<= #1 LCD_LPCURR_reg_c;   
           LCD_reg_d[14]	<= #1 CRSR_CTRL_reg_c;
           LCD_reg_d[15]	<= #1 CRSR_CFG_reg_c;
           LCD_reg_d[16]	<= #1 CRSR_PAL0_reg_c;
           LCD_reg_d[17]	<= #1 CRSR_PAL1_reg_c;
           LCD_reg_d[18]	<= #1 CRSR_XY_reg_c;
           LCD_reg_d[19]	<= #1 CRSR_CLIP_reg_c;
           LCD_reg_d[20]	<= #1 CRSR_INTMSK_reg_c;
           LCD_reg_d[21]	<= #1 CRSR_INTCLR_reg_c;
           LCD_reg_d[22]	<= #1 CRSR_INTRAW_reg_c;
           LCD_reg_d[23]	<= #1 CRSR_INTSTAT_reg_c;
           //ahbs_RDATA_reg     <= #1 ahbs_RDATA_reg_c;
           //LCD_RDATA_reg       <= #1 LCD_RDATA_reg_c;


	end
end 
//******************************************************


assign ahbs_addr_reg_c = (state_q == RD_ADDR_ST | (state_q == RD_OP_ST & HTRANS==2'b10) | (state_q == WR_OP_ST & HTRANS == 2'b10)) ? HADDR : ahbs_addr_reg;

 

//=========================
//  Decoder
//=========================

assign LCD_CFG_mem_c      = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_CFG_ADDR) ? HWDATA 	: LCD_reg_d[0] 		  ; 
assign LCD_TIMH_reg_c     = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_TIMH_ADDR) ? HWDATA 	: LCD_reg_d[1] 		  ; 
assign LCD_TIMV_reg_c     = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_TIMV_ADDR) ? HWDATA 	: LCD_reg_d[2] 		  ; 
assign LCD_POL_reg_c      = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_POL_ADDR) ? HWDATA 	: LCD_reg_d[3] 		  ; 
assign LCD_LE_reg_c       = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_LE_ADDR) ? HWDATA 	: LCD_reg_d[4] 		  ; 
assign LCD_UPBASE_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_UPBASE_ADDR) ? HWDATA 	: LCD_reg_d[5] 		  ; 
assign LCD_LPBASE_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_LPBASE_ADDR) ? HWDATA 	: LCD_reg_d[6] 		  ; 
assign LCD_CTRL_reg_c     = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_CTRL_ADDR) ? HWDATA 	: LCD_reg_d[7] 		  ; 
assign LCD_INTMSK_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_INTMSK_ADDR) ? HWDATA 	: LCD_reg_d[8] 		  ; 
assign LCD_INTRAW_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_INTRAW_ADDR) ? HWDATA 	: LCD_reg_d[9] 		  ; 
assign LCD_INTSTAT_reg_c  = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_INTSTAT_ADDR) ? HWDATA  : LCD_reg_d[10]		  ; 
assign LCD_INTCLR_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_INTCLR_ADDR) ? HWDATA 	: LCD_reg_d[11]		  ; 
assign LCD_UPCURR_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_UPCURR_ADDR) ? HWDATA 	: LCD_reg_d[12]		  ; 
assign LCD_LPCURR_reg_c   = (state_q == WR_OP_ST & ahbs_addr_reg == LCD_LPCURR_ADDR) ? HWDATA 	: LCD_reg_d[13]		  ; 
assign CRSR_CTRL_reg_c    = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_CTRL_ADDR) ? HWDATA 	: LCD_reg_d[14]		  ; 
assign CRSR_CFG_reg_c     = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_CFG_ADDR) ? HWDATA 	: LCD_reg_d[15]		  ; 
assign CRSR_PAL0_reg_c    = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_PAL0_ADDR) ? HWDATA 	: LCD_reg_d[16]		  ; 
assign CRSR_PAL1_reg_c    = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_PAL1_ADDR) ? HWDATA 	: LCD_reg_d[17]		  ; 
assign CRSR_XY_reg_c      = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_XY_ADDR) ? HWDATA 	: LCD_reg_d[18]		  ; 
assign CRSR_CLIP_reg_c    = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_CLIP_ADDR) ? HWDATA 	: LCD_reg_d[19]		  ; 
assign CRSR_INTMSK_reg_c  = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_INTMSK_ADDR) ? HWDATA  : LCD_reg_d[20]		  ; 
assign CRSR_INTCLR_reg_c  = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_INTCLR_ADDR) ? HWDATA  : LCD_reg_d[21]		  ; 
assign CRSR_INTRAW_reg_c  = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_INTRAW_ADDR) ? HWDATA  : LCD_reg_d[22]		  ; 
assign CRSR_INTSTAT_reg_c = (state_q == WR_OP_ST & ahbs_addr_reg == CRSR_INTSTAT_ADDR) ? HWDATA : LCD_reg_d[23]		  ; 

//===========================
// Slave Register Read data
//===========================

assign   HRDATA     =       {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_CFG_ADDR)}} 	&  LCD_reg_d[0] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_TIMH_ADDR)}} 	&  LCD_reg_d[1] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_TIMV_ADDR)}} 	&  LCD_reg_d[2] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_POL_ADDR)}} 	&  LCD_reg_d[3] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_LE_ADDR)}} 	&  LCD_reg_d[4] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_UPBASE_ADDR)}}	&  LCD_reg_d[5] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_LPBASE_ADDR)}}	&  LCD_reg_d[6] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_CTRL_ADDR)}} 	&  LCD_reg_d[7] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_INTMSK_ADDR)}}	&  LCD_reg_d[8] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_INTRAW_ADDR)}}	&  LCD_reg_d[9] |
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_INTSTAT_ADDR)}}	&  LCD_reg_d[10]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_INTCLR_ADDR)}} 	&  LCD_reg_d[11]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_UPCURR_ADDR)}} 	&  LCD_reg_d[12]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == LCD_LPCURR_ADDR)}} 	&  LCD_reg_d[13]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_CTRL_ADDR)}} 	&  LCD_reg_d[14]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_CFG_ADDR)}} 	&  LCD_reg_d[15]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_PAL0_ADDR)}} 	&  LCD_reg_d[16]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_PAL1_ADDR)}} 	&  LCD_reg_d[17]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_XY_ADDR)}} 	&  LCD_reg_d[18]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_CLIP_ADDR)}}	&  LCD_reg_d[19]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_INTMSK_ADDR)}} 	&  LCD_reg_d[20]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_INTCLR_ADDR)}} 	&  LCD_reg_d[21]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_INTRAW_ADDR)}} 	&  LCD_reg_d[22]|
                            {32{(state_q == RD_OP_ST  & ahbs_addr_reg == CRSR_INTSTAT_ADDR)}} 	&  LCD_reg_d[23];

                            
//========================================
//Register Reading by internal blocks
//========================================


/*
assign LCD_RDATA_reg_c   =  {32{(r_data == 1'b1 & LCD_RADDR == LCD_CFG_ADDR)}} 		& LCD_reg_d[0]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_TIMH_ADDR)}} 	& LCD_reg_d[1]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_TIMV_ADDR)}} 	& LCD_reg_d[2]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_POL_ADDR)}} 		& LCD_reg_d[3]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_LE_ADDR)}} 		& LCD_reg_d[4]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_UPBASE_ADDR)}}	& LCD_reg_d[5]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_LPBASE_ADDR)}}	& LCD_reg_d[6]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_CTRL_ADDR)}} 	& LCD_reg_d[7]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_INTMSK_ADDR)}}	& LCD_reg_d[8]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_INTRAW_ADDR)}}	& LCD_reg_d[9]  |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_INTSTAT_ADDR)}}	& LCD_reg_d[10] |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_INTCLR_ADDR)}} 	& LCD_reg_d[11] |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_UPCURR_ADDR)}} 	& LCD_reg_d[12] |
                            {32{(r_data == 1'b1 & LCD_RADDR == LCD_LPCURR_ADDR)}} 	& LCD_reg_d[13] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_CTRL_ADDR)}} 	& LCD_reg_d[14] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_CFG_ADDR)}} 	& LCD_reg_d[15] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_PAL0_ADDR)}} 	& LCD_reg_d[16] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_PAL1_ADDR)}} 	& LCD_reg_d[17] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_XY_ADDR)}} 		& LCD_reg_d[18] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_CLIP_ADDR)}} 	& LCD_reg_d[19] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_INTMSK_ADDR)}} 	& LCD_reg_d[20] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_INTCLR_ADDR)}} 	& LCD_reg_d[21] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_INTRAW_ADDR)}} 	& LCD_reg_d[22] |
                            {32{(r_data == 1'b1 & LCD_RADDR == CRSR_INTSTAT_ADDR)}} 	& LCD_reg_d[23] ;*/







endmodule
