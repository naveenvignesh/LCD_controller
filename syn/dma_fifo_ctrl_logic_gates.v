
module dma_fifo_ctrl_logic ( dma_req, clk, rst, push, pull, data_in, 
    .lcd_ctrl({\lcd_ctrl[UNUSED_0][14] , \lcd_ctrl[UNUSED_0][13] , 
        \lcd_ctrl[UNUSED_0][12] , \lcd_ctrl[UNUSED_0][11] , 
        \lcd_ctrl[UNUSED_0][10] , \lcd_ctrl[UNUSED_0][9] , 
        \lcd_ctrl[UNUSED_0][8] , \lcd_ctrl[UNUSED_0][7] , 
        \lcd_ctrl[UNUSED_0][6] , \lcd_ctrl[UNUSED_0][5] , 
        \lcd_ctrl[UNUSED_0][4] , \lcd_ctrl[UNUSED_0][3] , 
        \lcd_ctrl[UNUSED_0][2] , \lcd_ctrl[UNUSED_0][1] , 
        \lcd_ctrl[UNUSED_0][0] , \lcd_ctrl[WATERMARK] , 
        \lcd_ctrl[UNUSED_1][1] , \lcd_ctrl[UNUSED_1][0] , 
        \lcd_ctrl[LCDVCOMP][1] , \lcd_ctrl[LCDVCOMP][0] , \lcd_ctrl[LCDPWR] , 
        \lcd_ctrl[BEPO] , \lcd_ctrl[BEBO] , \lcd_ctrl[BGR] , 
        \lcd_ctrl[LCDDUAL] , \lcd_ctrl[LCDMONO8] , \lcd_ctrl[LCDTFT] , 
        \lcd_ctrl[LCDBW] , \lcd_ctrl[LCDBPP][2] , \lcd_ctrl[LCDBPP][1] , 
        \lcd_ctrl[LCDBPP][0] , \lcd_ctrl[LCDEN] }), data_out, fifofull, 
        \mem_if0.f0_waddr , \mem_if0.f0_wdata , \mem_if0.f0_write , 
        \mem_if0.f0_raddr , \mem_if0.f0_rdata , \mem_if1.f0_waddr , 
        \mem_if1.f0_wdata , \mem_if1.f0_write , \mem_if1.f0_raddr , 
        \mem_if1.f0_rdata , fp_pulse );
  input [31:0] data_in;
  output [31:0] data_out;
  output [4:0] \mem_if0.f0_waddr ;
  output [31:0] \mem_if0.f0_wdata ;
  output [4:0] \mem_if0.f0_raddr ;
  input [31:0] \mem_if0.f0_rdata ;
  output [4:0] \mem_if1.f0_waddr ;
  output [31:0] \mem_if1.f0_wdata ;
  output [4:0] \mem_if1.f0_raddr ;
  input [31:0] \mem_if1.f0_rdata ;
  input clk, rst, push, pull, \lcd_ctrl[UNUSED_0][14] ,
         \lcd_ctrl[UNUSED_0][13] , \lcd_ctrl[UNUSED_0][12] ,
         \lcd_ctrl[UNUSED_0][11] , \lcd_ctrl[UNUSED_0][10] ,
         \lcd_ctrl[UNUSED_0][9] , \lcd_ctrl[UNUSED_0][8] ,
         \lcd_ctrl[UNUSED_0][7] , \lcd_ctrl[UNUSED_0][6] ,
         \lcd_ctrl[UNUSED_0][5] , \lcd_ctrl[UNUSED_0][4] ,
         \lcd_ctrl[UNUSED_0][3] , \lcd_ctrl[UNUSED_0][2] ,
         \lcd_ctrl[UNUSED_0][1] , \lcd_ctrl[UNUSED_0][0] ,
         \lcd_ctrl[WATERMARK] , \lcd_ctrl[UNUSED_1][1] ,
         \lcd_ctrl[UNUSED_1][0] , \lcd_ctrl[LCDVCOMP][1] ,
         \lcd_ctrl[LCDVCOMP][0] , \lcd_ctrl[LCDPWR] , \lcd_ctrl[BEPO] ,
         \lcd_ctrl[BEBO] , \lcd_ctrl[BGR] , \lcd_ctrl[LCDDUAL] ,
         \lcd_ctrl[LCDMONO8] , \lcd_ctrl[LCDTFT] , \lcd_ctrl[LCDBW] ,
         \lcd_ctrl[LCDBPP][2] , \lcd_ctrl[LCDBPP][1] , \lcd_ctrl[LCDBPP][0] ,
         \lcd_ctrl[LCDEN] , fp_pulse;
  output dma_req, fifofull, \mem_if0.f0_write , \mem_if1.f0_write ;
  wire   mod2_push, mod2_pull, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233;
  wire   [5:0] depth_left_top;
  wire   [5:0] depth_left_bottom;
  wire   [5:0] r_ptr;
  wire   [5:0] w_ptr;
  assign \mem_if0.f0_wdata  [31] = \mem_if1.f0_wdata  [31];
  assign \mem_if1.f0_wdata  [31] = data_in[31];
  assign \mem_if0.f0_wdata  [30] = \mem_if1.f0_wdata  [30];
  assign \mem_if1.f0_wdata  [30] = data_in[30];
  assign \mem_if0.f0_wdata  [29] = \mem_if1.f0_wdata  [29];
  assign \mem_if1.f0_wdata  [29] = data_in[29];
  assign \mem_if0.f0_wdata  [28] = \mem_if1.f0_wdata  [28];
  assign \mem_if1.f0_wdata  [28] = data_in[28];
  assign \mem_if0.f0_wdata  [27] = \mem_if1.f0_wdata  [27];
  assign \mem_if1.f0_wdata  [27] = data_in[27];
  assign \mem_if0.f0_wdata  [26] = \mem_if1.f0_wdata  [26];
  assign \mem_if1.f0_wdata  [26] = data_in[26];
  assign \mem_if0.f0_wdata  [25] = \mem_if1.f0_wdata  [25];
  assign \mem_if1.f0_wdata  [25] = data_in[25];
  assign \mem_if0.f0_wdata  [24] = \mem_if1.f0_wdata  [24];
  assign \mem_if1.f0_wdata  [24] = data_in[24];
  assign \mem_if0.f0_wdata  [23] = \mem_if1.f0_wdata  [23];
  assign \mem_if1.f0_wdata  [23] = data_in[23];
  assign \mem_if0.f0_wdata  [22] = \mem_if1.f0_wdata  [22];
  assign \mem_if1.f0_wdata  [22] = data_in[22];
  assign \mem_if0.f0_wdata  [21] = \mem_if1.f0_wdata  [21];
  assign \mem_if1.f0_wdata  [21] = data_in[21];
  assign \mem_if0.f0_wdata  [20] = \mem_if1.f0_wdata  [20];
  assign \mem_if1.f0_wdata  [20] = data_in[20];
  assign \mem_if0.f0_wdata  [19] = \mem_if1.f0_wdata  [19];
  assign \mem_if1.f0_wdata  [19] = data_in[19];
  assign \mem_if0.f0_wdata  [18] = \mem_if1.f0_wdata  [18];
  assign \mem_if1.f0_wdata  [18] = data_in[18];
  assign \mem_if0.f0_wdata  [17] = \mem_if1.f0_wdata  [17];
  assign \mem_if1.f0_wdata  [17] = data_in[17];
  assign \mem_if0.f0_wdata  [16] = \mem_if1.f0_wdata  [16];
  assign \mem_if1.f0_wdata  [16] = data_in[16];
  assign \mem_if0.f0_wdata  [15] = \mem_if1.f0_wdata  [15];
  assign \mem_if1.f0_wdata  [15] = data_in[15];
  assign \mem_if0.f0_wdata  [14] = \mem_if1.f0_wdata  [14];
  assign \mem_if1.f0_wdata  [14] = data_in[14];
  assign \mem_if0.f0_wdata  [13] = \mem_if1.f0_wdata  [13];
  assign \mem_if1.f0_wdata  [13] = data_in[13];
  assign \mem_if0.f0_wdata  [12] = \mem_if1.f0_wdata  [12];
  assign \mem_if1.f0_wdata  [12] = data_in[12];
  assign \mem_if0.f0_wdata  [11] = \mem_if1.f0_wdata  [11];
  assign \mem_if1.f0_wdata  [11] = data_in[11];
  assign \mem_if0.f0_wdata  [10] = \mem_if1.f0_wdata  [10];
  assign \mem_if1.f0_wdata  [10] = data_in[10];
  assign \mem_if0.f0_wdata  [9] = \mem_if1.f0_wdata  [9];
  assign \mem_if1.f0_wdata  [9] = data_in[9];
  assign \mem_if0.f0_wdata  [8] = \mem_if1.f0_wdata  [8];
  assign \mem_if1.f0_wdata  [8] = data_in[8];
  assign \mem_if0.f0_wdata  [7] = \mem_if1.f0_wdata  [7];
  assign \mem_if1.f0_wdata  [7] = data_in[7];
  assign \mem_if0.f0_wdata  [6] = \mem_if1.f0_wdata  [6];
  assign \mem_if1.f0_wdata  [6] = data_in[6];
  assign \mem_if0.f0_wdata  [5] = \mem_if1.f0_wdata  [5];
  assign \mem_if1.f0_wdata  [5] = data_in[5];
  assign \mem_if0.f0_wdata  [4] = \mem_if1.f0_wdata  [4];
  assign \mem_if1.f0_wdata  [4] = data_in[4];
  assign \mem_if0.f0_wdata  [3] = \mem_if1.f0_wdata  [3];
  assign \mem_if1.f0_wdata  [3] = data_in[3];
  assign \mem_if0.f0_wdata  [2] = \mem_if1.f0_wdata  [2];
  assign \mem_if1.f0_wdata  [2] = data_in[2];
  assign \mem_if0.f0_wdata  [1] = \mem_if1.f0_wdata  [1];
  assign \mem_if1.f0_wdata  [1] = data_in[1];
  assign \mem_if0.f0_wdata  [0] = \mem_if1.f0_wdata  [0];
  assign \mem_if1.f0_wdata  [0] = data_in[0];

  CFD2QXL \fifo_top/w_ptr_reg[4]  ( .D(n65), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_waddr [4]) );
  CFD2QXL \fifo_top/r_ptr_reg[4]  ( .D(n60), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_raddr [4]) );
  CFD2QXL \fifo_bottom/w_ptr_reg[4]  ( .D(n92), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_waddr [4]) );
  CFD2QXL \fifo_bottom/r_ptr_reg[4]  ( .D(n87), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_raddr [4]) );
  CFD2QXL \r_ptr_reg[1]  ( .D(n75), .CP(clk), .CD(n231), .Q(r_ptr[1]) );
  CFD2QXL \w_ptr_reg[1]  ( .D(n81), .CP(clk), .CD(n231), .Q(w_ptr[1]) );
  CFD2QXL \fifo_top/w_ptr_reg[0]  ( .D(n64), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_waddr [0]) );
  CFD2QXL \fifo_top/r_ptr_reg[0]  ( .D(n59), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_raddr [0]) );
  CFD2QXL \fifo_bottom/w_ptr_reg[0]  ( .D(n91), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_waddr [0]) );
  CFD2QXL \fifo_bottom/r_ptr_reg[0]  ( .D(n86), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_raddr [0]) );
  CFD2QXL \r_ptr_reg[3]  ( .D(n73), .CP(clk), .CD(n231), .Q(r_ptr[3]) );
  CFD2QXL \w_ptr_reg[3]  ( .D(n79), .CP(clk), .CD(n231), .Q(w_ptr[3]) );
  CFD2QXL \r_ptr_reg[2]  ( .D(n74), .CP(clk), .CD(n231), .Q(r_ptr[2]) );
  CFD2QXL \w_ptr_reg[2]  ( .D(n80), .CP(clk), .CD(n231), .Q(w_ptr[2]) );
  CFD2QXL \r_ptr_reg[4]  ( .D(n72), .CP(clk), .CD(n231), .Q(r_ptr[4]) );
  CFD2QXL \r_ptr_reg[0]  ( .D(n76), .CP(clk), .CD(n231), .Q(r_ptr[0]) );
  CFD2QXL \w_ptr_reg[4]  ( .D(n78), .CP(clk), .CD(n231), .Q(w_ptr[4]) );
  CFD2QXL \w_ptr_reg[0]  ( .D(n82), .CP(clk), .CD(n231), .Q(w_ptr[0]) );
  CFD2QXL \fifo_top/w_ptr_reg[2]  ( .D(n62), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_waddr [2]) );
  CFD2QXL \fifo_top/r_ptr_reg[2]  ( .D(n57), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_raddr [2]) );
  CFD2QXL \fifo_bottom/w_ptr_reg[2]  ( .D(n89), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_waddr [2]) );
  CFD2QXL \fifo_bottom/r_ptr_reg[2]  ( .D(n84), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_raddr [2]) );
  CFD2QXL \fifo_top/w_ptr_reg[1]  ( .D(n63), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_waddr [1]) );
  CFD2QXL \fifo_top/r_ptr_reg[1]  ( .D(n58), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_raddr [1]) );
  CFD2QXL \fifo_bottom/w_ptr_reg[1]  ( .D(n90), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_waddr [1]) );
  CFD2QXL \fifo_bottom/r_ptr_reg[1]  ( .D(n85), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_raddr [1]) );
  CFD2QXL \fifo_top/w_ptr_reg[3]  ( .D(n61), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_waddr [3]) );
  CFD2QXL \fifo_top/r_ptr_reg[3]  ( .D(n56), .CP(clk), .CD(n231), .Q(
        \mem_if0.f0_raddr [3]) );
  CFD2QXL \fifo_bottom/w_ptr_reg[3]  ( .D(n88), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_waddr [3]) );
  CFD2QXL \fifo_bottom/r_ptr_reg[3]  ( .D(n83), .CP(clk), .CD(n231), .Q(
        \mem_if1.f0_raddr [3]) );
  CFD2QXL mod2_pull_reg ( .D(n54), .CP(clk), .CD(n231), .Q(mod2_pull) );
  CFD2QXL \w_ptr_reg[5]  ( .D(n93), .CP(clk), .CD(n231), .Q(w_ptr[5]) );
  CFD2QXL \r_ptr_reg[5]  ( .D(n77), .CP(clk), .CD(n231), .Q(r_ptr[5]) );
  CFD2QXL mod2_push_reg ( .D(n55), .CP(clk), .CD(n231), .Q(mod2_push) );
  CFD2QX1 \fifo_top/depth_left_reg[0]  ( .D(n70), .CP(clk), .CD(n231), .Q(
        depth_left_top[0]) );
  CFD2QX1 \fifo_bottom/depth_left_reg[0]  ( .D(n97), .CP(clk), .CD(n231), .Q(
        depth_left_bottom[0]) );
  CFD2QXL \fifo_top/depth_left_reg[3]  ( .D(n67), .CP(clk), .CD(n231), .Q(
        depth_left_top[3]) );
  CFD2QXL \fifo_bottom/depth_left_reg[4]  ( .D(n98), .CP(clk), .CD(n231), .Q(
        depth_left_bottom[4]) );
  CFD2QXL \fifo_bottom/depth_left_reg[3]  ( .D(n94), .CP(clk), .CD(n231), .Q(
        depth_left_bottom[3]) );
  CFD2QXL \fifo_bottom/depth_left_reg[1]  ( .D(n96), .CP(clk), .CD(n231), .Q(
        depth_left_bottom[1]) );
  CFD2QXL \fifo_top/depth_left_reg[2]  ( .D(n68), .CP(clk), .CD(n231), .Q(
        depth_left_top[2]) );
  CFD2QXL \fifo_bottom/depth_left_reg[2]  ( .D(n95), .CP(clk), .CD(n231), .Q(
        depth_left_bottom[2]) );
  CFD2QX1 \fifo_top/depth_left_reg[1]  ( .D(n69), .CP(clk), .CD(n231), .Q(
        depth_left_top[1]) );
  CFD4XL \fifo_top/depth_left_reg[5]  ( .D(n71), .CP(clk), .SD(n231), .Q(
        depth_left_top[5]), .QN(n233) );
  CFD4XL \fifo_bottom/depth_left_reg[5]  ( .D(n99), .CP(clk), .SD(n231), .Q(
        depth_left_bottom[5]), .QN(n232) );
  CFD2QXL \fifo_top/depth_left_reg[4]  ( .D(n66), .CP(clk), .CD(n231), .Q(
        depth_left_top[4]) );
  CNR2X1 U143 ( .A(n149), .B(n125), .Z(n143) );
  CIVX1 U144 ( .A(n187), .Z(n103) );
  CANR1X1 U145 ( .A(n186), .B(n103), .C(n229), .Z(n173) );
  CND8X1 U146 ( .A(depth_left_bottom[4]), .B(depth_left_bottom[3]), .C(
        depth_left_top[3]), .D(n184), .E(depth_left_top[2]), .F(
        depth_left_top[0]), .G(depth_left_top[1]), .H(depth_left_top[4]), .Z(
        n104) );
  CND4XL U147 ( .A(depth_left_bottom[1]), .B(depth_left_bottom[2]), .C(
        depth_left_bottom[0]), .D(n185), .Z(n105) );
  CND3XL U148 ( .A(\lcd_ctrl[LCDTFT] ), .B(n186), .C(n187), .Z(n106) );
  COND1XL U149 ( .A(n104), .B(n105), .C(n106), .Z(fifofull) );
  CIVX1 U150 ( .A(\lcd_ctrl[WATERMARK] ), .Z(n107) );
  CANR1XL U151 ( .A(n167), .B(n107), .C(\lcd_ctrl[LCDTFT] ), .Z(n108) );
  CNR2X1 U152 ( .A(depth_left_bottom[2]), .B(depth_left_top[2]), .Z(n109) );
  COND1XL U153 ( .A(\lcd_ctrl[WATERMARK] ), .B(n109), .C(n185), .Z(n110) );
  CNR4X1 U154 ( .A(n169), .B(n168), .C(n184), .D(n110), .Z(n111) );
  CANR3X1 U155 ( .A(n170), .B(n108), .C(rst), .D(n111), .Z(dma_req) );
  CND2X1 U156 ( .A(n204), .B(r_ptr[4]), .Z(n112) );
  CENX1 U157 ( .A(r_ptr[5]), .B(n112), .Z(n77) );
  CIVX2 U158 ( .A(pull), .Z(n230) );
  CNR2X1 U159 ( .A(mod2_pull), .B(n230), .Z(n113) );
  CIVX2 U160 ( .A(\lcd_ctrl[LCDTFT] ), .Z(n184) );
  CND2X1 U161 ( .A(n113), .B(n184), .Z(n145) );
  CIVX2 U162 ( .A(w_ptr[5]), .Z(n124) );
  CNR2X1 U163 ( .A(depth_left_bottom[0]), .B(depth_left_bottom[1]), .Z(n115)
         );
  COR2X1 U164 ( .A(depth_left_bottom[3]), .B(depth_left_bottom[4]), .Z(n169)
         );
  CNR2X1 U165 ( .A(depth_left_bottom[2]), .B(n169), .Z(n114) );
  CND2X2 U166 ( .A(n115), .B(n114), .Z(n137) );
  CNR2X2 U167 ( .A(depth_left_bottom[5]), .B(n137), .Z(n132) );
  COAN1X1 U168 ( .A(n124), .B(n132), .C(\lcd_ctrl[LCDTFT] ), .Z(n117) );
  COND1XL U169 ( .A(mod2_push), .B(\lcd_ctrl[LCDTFT] ), .C(push), .Z(n116) );
  CNR2X2 U170 ( .A(n117), .B(n116), .Z(n136) );
  CAN3XL U171 ( .A(pull), .B(r_ptr[5]), .C(n137), .Z(n118) );
  CANR1X1 U172 ( .A(\lcd_ctrl[LCDTFT] ), .B(n118), .C(n132), .Z(n119) );
  CND3X2 U173 ( .A(n145), .B(n136), .C(n119), .Z(n190) );
  CIVX2 U174 ( .A(n190), .Z(n188) );
  CIVX1 U175 ( .A(r_ptr[5]), .Z(n150) );
  CND2XL U176 ( .A(\lcd_ctrl[LCDTFT] ), .B(pull), .Z(n129) );
  CNR2X1 U177 ( .A(n232), .B(n137), .Z(n120) );
  CANR4CX1 U178 ( .A(n150), .B(n129), .C(n145), .D(n120), .Z(n133) );
  CND2IX1 U179 ( .B(n136), .A(n133), .Z(n121) );
  CND2X1 U180 ( .A(n190), .B(n121), .Z(n193) );
  CMX2XL U181 ( .A0(depth_left_bottom[1]), .A1(n122), .S(n193), .Z(n96) );
  COR2X1 U182 ( .A(depth_left_top[4]), .B(depth_left_top[3]), .Z(n168) );
  COR4X1 U183 ( .A(depth_left_top[1]), .B(depth_left_top[2]), .C(
        depth_left_top[0]), .D(n168), .Z(n128) );
  CNR2X2 U184 ( .A(n128), .B(depth_left_top[5]), .Z(n125) );
  CIVX2 U185 ( .A(n125), .Z(n147) );
  CIVX2 U186 ( .A(push), .Z(n229) );
  CANR1XL U187 ( .A(mod2_push), .B(n184), .C(n229), .Z(n123) );
  COND4CX4 U188 ( .A(n124), .B(n147), .C(n184), .D(n123), .Z(n149) );
  CNR2XL U189 ( .A(r_ptr[5]), .B(n129), .Z(n126) );
  CND2X1 U190 ( .A(n128), .B(n126), .Z(n127) );
  CND3X2 U191 ( .A(n143), .B(n145), .C(n127), .Z(n199) );
  CIVX2 U192 ( .A(n199), .Z(n197) );
  CNR2X1 U193 ( .A(n128), .B(n233), .Z(n142) );
  CANR4CX1 U194 ( .A(r_ptr[5]), .B(n129), .C(n145), .D(n142), .Z(n146) );
  CND2X1 U195 ( .A(n149), .B(n146), .Z(n130) );
  CND2X1 U196 ( .A(n199), .B(n130), .Z(n202) );
  CMX2XL U197 ( .A0(depth_left_top[3]), .A1(n131), .S(n202), .Z(n67) );
  CIVX2 U198 ( .A(n136), .Z(n175) );
  CIVXL U199 ( .A(n132), .Z(n134) );
  COND1XL U200 ( .A(n175), .B(n134), .C(n133), .Z(n213) );
  CIVX1 U201 ( .A(\mem_if1.f0_raddr [0]), .Z(n212) );
  CNR2X1 U202 ( .A(n213), .B(n212), .Z(n211) );
  CND2X1 U203 ( .A(\mem_if1.f0_raddr [1]), .B(n211), .Z(n214) );
  CNR2IX1 U204 ( .B(\mem_if1.f0_raddr [2]), .A(n214), .Z(n178) );
  CEOXL U205 ( .A(n178), .B(\mem_if1.f0_raddr [3]), .Z(n83) );
  CFA1XL U206 ( .A(depth_left_bottom[1]), .B(n188), .CI(depth_left_bottom[0]), 
        .CO(n140), .S(n122) );
  CMX2XL U207 ( .A0(depth_left_bottom[3]), .A1(n135), .S(n193), .Z(n94) );
  COND4CXL U208 ( .A(depth_left_bottom[5]), .B(n145), .C(n137), .D(n136), .Z(
        n209) );
  CIVX1 U209 ( .A(\mem_if1.f0_waddr [0]), .Z(n208) );
  CNR2X1 U210 ( .A(n209), .B(n208), .Z(n207) );
  CND2X1 U211 ( .A(\mem_if1.f0_waddr [1]), .B(n207), .Z(n210) );
  CNR2IX1 U212 ( .B(\mem_if1.f0_waddr [2]), .A(n210), .Z(n176) );
  CEOXL U213 ( .A(n176), .B(\mem_if1.f0_waddr [3]), .Z(n88) );
  CFA1XL U214 ( .A(depth_left_top[2]), .B(n138), .CI(n197), .CO(n171), .S(n139) );
  CMX2XL U215 ( .A0(depth_left_top[2]), .A1(n139), .S(n202), .Z(n68) );
  CFA1XL U216 ( .A(depth_left_bottom[2]), .B(n140), .CI(n188), .CO(n165), .S(
        n141) );
  CMX2XL U217 ( .A0(depth_left_bottom[2]), .A1(n141), .S(n193), .Z(n95) );
  CIVXL U218 ( .A(n142), .Z(n144) );
  COND1XL U219 ( .A(n145), .B(n144), .C(n143), .Z(n223) );
  CIVX1 U220 ( .A(\mem_if0.f0_waddr [0]), .Z(n222) );
  CNR2X1 U221 ( .A(n223), .B(n222), .Z(n221) );
  CND2X1 U222 ( .A(\mem_if0.f0_waddr [1]), .B(n221), .Z(n224) );
  CNR2IX1 U223 ( .B(\mem_if0.f0_waddr [2]), .A(n224), .Z(n180) );
  CEOXL U224 ( .A(n180), .B(\mem_if0.f0_waddr [3]), .Z(n61) );
  CEOXL U225 ( .A(\mem_if1.f0_raddr [1]), .B(n211), .Z(n85) );
  COND1XL U226 ( .A(n149), .B(n147), .C(n146), .Z(n227) );
  CIVX1 U227 ( .A(\mem_if0.f0_raddr [0]), .Z(n226) );
  CNR2X1 U228 ( .A(n227), .B(n226), .Z(n225) );
  CND2X1 U229 ( .A(\mem_if0.f0_raddr [1]), .B(n225), .Z(n228) );
  CNR2IX1 U230 ( .B(\mem_if0.f0_raddr [2]), .A(n228), .Z(n182) );
  CEOXL U231 ( .A(n182), .B(\mem_if0.f0_raddr [3]), .Z(n56) );
  CFA1XL U232 ( .A(depth_left_top[1]), .B(n197), .CI(depth_left_top[0]), .CO(
        n138), .S(n148) );
  CMX2XL U233 ( .A0(depth_left_top[1]), .A1(n148), .S(n202), .Z(n69) );
  CEOXL U234 ( .A(depth_left_top[0]), .B(n202), .Z(n70) );
  CEOXL U235 ( .A(\mem_if0.f0_waddr [1]), .B(n221), .Z(n63) );
  CEOXL U236 ( .A(depth_left_bottom[0]), .B(n193), .Z(n97) );
  CNR2X1 U237 ( .A(rst), .B(n149), .Z(\mem_if0.f0_write ) );
  CNR2X2 U238 ( .A(rst), .B(n150), .Z(n164) );
  CNR2X2 U239 ( .A(r_ptr[5]), .B(rst), .Z(n163) );
  CAOR2XL U240 ( .A(n164), .B(\mem_if1.f0_rdata [16]), .C(n163), .D(
        \mem_if0.f0_rdata [16]), .Z(data_out[16]) );
  CAOR2XL U241 ( .A(n164), .B(\mem_if1.f0_rdata [26]), .C(n163), .D(
        \mem_if0.f0_rdata [26]), .Z(data_out[26]) );
  CAOR2XL U242 ( .A(n164), .B(\mem_if1.f0_rdata [25]), .C(n163), .D(
        \mem_if0.f0_rdata [25]), .Z(data_out[25]) );
  CAOR2XL U243 ( .A(n164), .B(\mem_if1.f0_rdata [14]), .C(n163), .D(
        \mem_if0.f0_rdata [14]), .Z(data_out[14]) );
  CAOR2XL U244 ( .A(n164), .B(\mem_if1.f0_rdata [30]), .C(n163), .D(
        \mem_if0.f0_rdata [30]), .Z(data_out[30]) );
  CAOR2XL U245 ( .A(n164), .B(\mem_if1.f0_rdata [0]), .C(n163), .D(
        \mem_if0.f0_rdata [0]), .Z(data_out[0]) );
  CAOR2XL U246 ( .A(n164), .B(\mem_if1.f0_rdata [28]), .C(n163), .D(
        \mem_if0.f0_rdata [28]), .Z(data_out[28]) );
  CAOR2XL U247 ( .A(n164), .B(\mem_if1.f0_rdata [23]), .C(n163), .D(
        \mem_if0.f0_rdata [23]), .Z(data_out[23]) );
  CAOR2XL U248 ( .A(n164), .B(\mem_if1.f0_rdata [4]), .C(n163), .D(
        \mem_if0.f0_rdata [4]), .Z(data_out[4]) );
  CAOR2XL U249 ( .A(n164), .B(\mem_if1.f0_rdata [19]), .C(n163), .D(
        \mem_if0.f0_rdata [19]), .Z(data_out[19]) );
  CAOR2XL U250 ( .A(n164), .B(\mem_if1.f0_rdata [2]), .C(n163), .D(
        \mem_if0.f0_rdata [2]), .Z(data_out[2]) );
  CAOR2XL U251 ( .A(n164), .B(\mem_if1.f0_rdata [1]), .C(n163), .D(
        \mem_if0.f0_rdata [1]), .Z(data_out[1]) );
  CAOR2XL U252 ( .A(n164), .B(\mem_if1.f0_rdata [3]), .C(n163), .D(
        \mem_if0.f0_rdata [3]), .Z(data_out[3]) );
  CAOR2XL U253 ( .A(n164), .B(\mem_if1.f0_rdata [5]), .C(n163), .D(
        \mem_if0.f0_rdata [5]), .Z(data_out[5]) );
  CAOR2XL U254 ( .A(n164), .B(\mem_if1.f0_rdata [21]), .C(n163), .D(
        \mem_if0.f0_rdata [21]), .Z(data_out[21]) );
  CAOR2XL U255 ( .A(n164), .B(\mem_if1.f0_rdata [24]), .C(n163), .D(
        \mem_if0.f0_rdata [24]), .Z(data_out[24]) );
  CIVX2 U256 ( .A(r_ptr[1]), .Z(n220) );
  CFA1X1 U257 ( .A(depth_left_bottom[2]), .B(n151), .CI(depth_left_top[2]), 
        .CO(n153), .S(n167) );
  CFA1X1 U258 ( .A(depth_left_bottom[4]), .B(n152), .CI(depth_left_top[4]), 
        .CO(n154), .S(n157) );
  CFA1XL U259 ( .A(depth_left_bottom[3]), .B(n153), .CI(depth_left_top[3]), 
        .CO(n152), .S(n156) );
  CFA1X1 U260 ( .A(depth_left_bottom[5]), .B(n154), .CI(depth_left_top[5]), 
        .CO(n187), .S(n155) );
  CNR3X1 U261 ( .A(n157), .B(n156), .C(n155), .Z(n170) );
  CHA1X1 U262 ( .A(depth_left_bottom[0]), .B(depth_left_top[0]), .CO(n158), 
        .S(n160) );
  CFA1X1 U263 ( .A(depth_left_bottom[1]), .B(n158), .CI(depth_left_top[1]), 
        .CO(n151), .S(n159) );
  CNR2X1 U264 ( .A(n160), .B(n159), .Z(n161) );
  CND2X1 U265 ( .A(n170), .B(n161), .Z(n162) );
  CNR2X2 U266 ( .A(n167), .B(n162), .Z(n186) );
  CANR1X1 U267 ( .A(n187), .B(n186), .C(n230), .Z(n174) );
  CND2X1 U268 ( .A(n174), .B(r_ptr[0]), .Z(n219) );
  CNR2X2 U269 ( .A(n220), .B(n219), .Z(n218) );
  CND2X2 U270 ( .A(r_ptr[2]), .B(n218), .Z(n196) );
  CNR2IX4 U271 ( .B(r_ptr[3]), .A(n196), .Z(n204) );
  CAOR2XL U272 ( .A(n164), .B(\mem_if1.f0_rdata [27]), .C(n163), .D(
        \mem_if0.f0_rdata [27]), .Z(data_out[27]) );
  CAOR2XL U273 ( .A(n164), .B(\mem_if1.f0_rdata [18]), .C(n163), .D(
        \mem_if0.f0_rdata [18]), .Z(data_out[18]) );
  CAOR2XL U274 ( .A(n164), .B(\mem_if1.f0_rdata [6]), .C(n163), .D(
        \mem_if0.f0_rdata [6]), .Z(data_out[6]) );
  CAOR2XL U275 ( .A(n164), .B(\mem_if1.f0_rdata [17]), .C(n163), .D(
        \mem_if0.f0_rdata [17]), .Z(data_out[17]) );
  CAOR2XL U276 ( .A(n164), .B(\mem_if1.f0_rdata [29]), .C(n163), .D(
        \mem_if0.f0_rdata [29]), .Z(data_out[29]) );
  CAOR2XL U277 ( .A(n164), .B(\mem_if1.f0_rdata [10]), .C(n163), .D(
        \mem_if0.f0_rdata [10]), .Z(data_out[10]) );
  CAOR2XL U278 ( .A(n164), .B(\mem_if1.f0_rdata [20]), .C(n163), .D(
        \mem_if0.f0_rdata [20]), .Z(data_out[20]) );
  CAOR2XL U279 ( .A(n164), .B(\mem_if1.f0_rdata [31]), .C(n163), .D(
        \mem_if0.f0_rdata [31]), .Z(data_out[31]) );
  CAOR2XL U280 ( .A(n164), .B(\mem_if1.f0_rdata [22]), .C(n163), .D(
        \mem_if0.f0_rdata [22]), .Z(data_out[22]) );
  CAOR2XL U281 ( .A(n164), .B(\mem_if1.f0_rdata [8]), .C(n163), .D(
        \mem_if0.f0_rdata [8]), .Z(data_out[8]) );
  CAOR2XL U282 ( .A(n164), .B(\mem_if1.f0_rdata [13]), .C(n163), .D(
        \mem_if0.f0_rdata [13]), .Z(data_out[13]) );
  CAOR2XL U283 ( .A(n164), .B(\mem_if1.f0_rdata [7]), .C(n163), .D(
        \mem_if0.f0_rdata [7]), .Z(data_out[7]) );
  CAOR2XL U284 ( .A(n164), .B(\mem_if1.f0_rdata [12]), .C(n163), .D(
        \mem_if0.f0_rdata [12]), .Z(data_out[12]) );
  CAOR2XL U285 ( .A(n164), .B(\mem_if1.f0_rdata [15]), .C(n163), .D(
        \mem_if0.f0_rdata [15]), .Z(data_out[15]) );
  CAOR2XL U286 ( .A(n164), .B(\mem_if1.f0_rdata [11]), .C(n163), .D(
        \mem_if0.f0_rdata [11]), .Z(data_out[11]) );
  CAOR2XL U287 ( .A(n164), .B(\mem_if1.f0_rdata [9]), .C(n163), .D(
        \mem_if0.f0_rdata [9]), .Z(data_out[9]) );
  CFA1XL U288 ( .A(depth_left_bottom[3]), .B(n165), .CI(n188), .CO(n189), .S(
        n135) );
  CMX2X1 U289 ( .A0(depth_left_bottom[4]), .A1(n166), .S(n193), .Z(n98) );
  CNR2XL U290 ( .A(depth_left_bottom[5]), .B(depth_left_top[5]), .Z(n185) );
  CFA1X1 U291 ( .A(depth_left_top[3]), .B(n171), .CI(n197), .CO(n198), .S(n131) );
  CMX2X1 U292 ( .A0(depth_left_top[4]), .A1(n172), .S(n202), .Z(n66) );
  CIVX2 U293 ( .A(w_ptr[1]), .Z(n217) );
  CND2X1 U294 ( .A(n173), .B(w_ptr[0]), .Z(n216) );
  CNR2X2 U295 ( .A(n217), .B(n216), .Z(n215) );
  CND2X2 U296 ( .A(w_ptr[2]), .B(n215), .Z(n195) );
  CNR2IX2 U297 ( .B(w_ptr[3]), .A(n195), .Z(n205) );
  CEOXL U298 ( .A(n205), .B(w_ptr[4]), .Z(n78) );
  CIVX2 U299 ( .A(rst), .Z(n231) );
  CEOXL U300 ( .A(\mem_if1.f0_waddr [1]), .B(n207), .Z(n90) );
  CEOXL U301 ( .A(\mem_if0.f0_raddr [1]), .B(n225), .Z(n58) );
  CEOXL U302 ( .A(n173), .B(w_ptr[0]), .Z(n82) );
  CEOXL U303 ( .A(n174), .B(r_ptr[0]), .Z(n76) );
  CEOXL U304 ( .A(w_ptr[2]), .B(n215), .Z(n80) );
  CEOXL U305 ( .A(r_ptr[2]), .B(n218), .Z(n74) );
  CNR2X1 U306 ( .A(rst), .B(n175), .Z(\mem_if1.f0_write ) );
  CND2X1 U307 ( .A(n176), .B(\mem_if1.f0_waddr [3]), .Z(n177) );
  CENX1 U308 ( .A(\mem_if1.f0_waddr [4]), .B(n177), .Z(n92) );
  CND2X1 U309 ( .A(n178), .B(\mem_if1.f0_raddr [3]), .Z(n179) );
  CENX1 U310 ( .A(\mem_if1.f0_raddr [4]), .B(n179), .Z(n87) );
  CND2X1 U311 ( .A(n180), .B(\mem_if0.f0_waddr [3]), .Z(n181) );
  CENX1 U312 ( .A(\mem_if0.f0_waddr [4]), .B(n181), .Z(n65) );
  CND2X1 U313 ( .A(n182), .B(\mem_if0.f0_raddr [3]), .Z(n183) );
  CENX1 U314 ( .A(\mem_if0.f0_raddr [4]), .B(n183), .Z(n60) );
  CFA1XL U315 ( .A(depth_left_bottom[4]), .B(n189), .CI(n188), .CO(n192), .S(
        n166) );
  CENX1 U316 ( .A(depth_left_bottom[5]), .B(n190), .Z(n191) );
  CENX1 U317 ( .A(n192), .B(n191), .Z(n194) );
  CMXI2X1 U318 ( .A0(n232), .A1(n194), .S(n193), .Z(n99) );
  CENX1 U319 ( .A(w_ptr[3]), .B(n195), .Z(n79) );
  CENX1 U320 ( .A(r_ptr[3]), .B(n196), .Z(n73) );
  CFA1X1 U321 ( .A(depth_left_top[4]), .B(n198), .CI(n197), .CO(n201), .S(n172) );
  CENX1 U322 ( .A(depth_left_top[5]), .B(n199), .Z(n200) );
  CENX1 U323 ( .A(n201), .B(n200), .Z(n203) );
  CMXI2X1 U324 ( .A0(n233), .A1(n203), .S(n202), .Z(n71) );
  CEOX1 U325 ( .A(n204), .B(r_ptr[4]), .Z(n72) );
  CND2X1 U326 ( .A(n205), .B(w_ptr[4]), .Z(n206) );
  CENX1 U327 ( .A(w_ptr[5]), .B(n206), .Z(n93) );
  CANR1XL U328 ( .A(n209), .B(n208), .C(n207), .Z(n91) );
  CENX1 U329 ( .A(\mem_if1.f0_waddr [2]), .B(n210), .Z(n89) );
  CANR1XL U330 ( .A(n213), .B(n212), .C(n211), .Z(n86) );
  CENX1 U331 ( .A(\mem_if1.f0_raddr [2]), .B(n214), .Z(n84) );
  CANR1XL U332 ( .A(n217), .B(n216), .C(n215), .Z(n81) );
  CANR1XL U333 ( .A(n220), .B(n219), .C(n218), .Z(n75) );
  CANR1XL U334 ( .A(n223), .B(n222), .C(n221), .Z(n64) );
  CENX1 U335 ( .A(\mem_if0.f0_waddr [2]), .B(n224), .Z(n62) );
  CANR1XL U336 ( .A(n227), .B(n226), .C(n225), .Z(n59) );
  CENX1 U337 ( .A(\mem_if0.f0_raddr [2]), .B(n228), .Z(n57) );
  CENX1 U338 ( .A(mod2_push), .B(n229), .Z(n55) );
  CENX1 U339 ( .A(mod2_pull), .B(n230), .Z(n54) );
endmodule

