
module LCD_master ( HCLK, HRESET, dma_req_in, HGRANT, HREADY, HRDATA, HRESP, 
        lcd_en_i, HADDR, HBUSREQ, HWRITE, HTRANS, HBURST, HSIZE, .lcd_upbase({
        \lcd_upbase[LCDUPBASE][28] , \lcd_upbase[LCDUPBASE][27] , 
        \lcd_upbase[LCDUPBASE][26] , \lcd_upbase[LCDUPBASE][25] , 
        \lcd_upbase[LCDUPBASE][24] , \lcd_upbase[LCDUPBASE][23] , 
        \lcd_upbase[LCDUPBASE][22] , \lcd_upbase[LCDUPBASE][21] , 
        \lcd_upbase[LCDUPBASE][20] , \lcd_upbase[LCDUPBASE][19] , 
        \lcd_upbase[LCDUPBASE][18] , \lcd_upbase[LCDUPBASE][17] , 
        \lcd_upbase[LCDUPBASE][16] , \lcd_upbase[LCDUPBASE][15] , 
        \lcd_upbase[LCDUPBASE][14] , \lcd_upbase[LCDUPBASE][13] , 
        \lcd_upbase[LCDUPBASE][12] , \lcd_upbase[LCDUPBASE][11] , 
        \lcd_upbase[LCDUPBASE][10] , \lcd_upbase[LCDUPBASE][9] , 
        \lcd_upbase[LCDUPBASE][8] , \lcd_upbase[LCDUPBASE][7] , 
        \lcd_upbase[LCDUPBASE][6] , \lcd_upbase[LCDUPBASE][5] , 
        \lcd_upbase[LCDUPBASE][4] , \lcd_upbase[LCDUPBASE][3] , 
        \lcd_upbase[LCDUPBASE][2] , \lcd_upbase[LCDUPBASE][1] , 
        \lcd_upbase[LCDUPBASE][0] , \lcd_upbase[UNUSED][2] , 
        \lcd_upbase[UNUSED][1] , \lcd_upbase[UNUSED][0] }), FIFO_full, 
        fifo_push, valid, FIFO_data, fp_pulse );
  input [31:0] HRDATA;
  input [1:0] HRESP;
  output [31:0] HADDR;
  output [1:0] HTRANS;
  output [2:0] HBURST;
  output [2:0] HSIZE;
  output [31:0] FIFO_data;
  input HCLK, HRESET, dma_req_in, HGRANT, HREADY, lcd_en_i,
         \lcd_upbase[LCDUPBASE][28] , \lcd_upbase[LCDUPBASE][27] ,
         \lcd_upbase[LCDUPBASE][26] , \lcd_upbase[LCDUPBASE][25] ,
         \lcd_upbase[LCDUPBASE][24] , \lcd_upbase[LCDUPBASE][23] ,
         \lcd_upbase[LCDUPBASE][22] , \lcd_upbase[LCDUPBASE][21] ,
         \lcd_upbase[LCDUPBASE][20] , \lcd_upbase[LCDUPBASE][19] ,
         \lcd_upbase[LCDUPBASE][18] , \lcd_upbase[LCDUPBASE][17] ,
         \lcd_upbase[LCDUPBASE][16] , \lcd_upbase[LCDUPBASE][15] ,
         \lcd_upbase[LCDUPBASE][14] , \lcd_upbase[LCDUPBASE][13] ,
         \lcd_upbase[LCDUPBASE][12] , \lcd_upbase[LCDUPBASE][11] ,
         \lcd_upbase[LCDUPBASE][10] , \lcd_upbase[LCDUPBASE][9] ,
         \lcd_upbase[LCDUPBASE][8] , \lcd_upbase[LCDUPBASE][7] ,
         \lcd_upbase[LCDUPBASE][6] , \lcd_upbase[LCDUPBASE][5] ,
         \lcd_upbase[LCDUPBASE][4] , \lcd_upbase[LCDUPBASE][3] ,
         \lcd_upbase[LCDUPBASE][2] , \lcd_upbase[LCDUPBASE][1] ,
         \lcd_upbase[LCDUPBASE][0] , \lcd_upbase[UNUSED][2] ,
         \lcd_upbase[UNUSED][1] , \lcd_upbase[UNUSED][0] , FIFO_full, valid,
         fp_pulse;
  output HBUSREQ, HWRITE, fifo_push;
  wire   FIFO_push, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396;
  wire   [2:0] state_q;
  wire   [10:0] count;
  wire   [10:0] count_w;
  wire   [2:0] state_ns;
  assign HSIZE[0] = 1'b0;
  assign HSIZE[2] = 1'b0;
  assign HBURST[1] = 1'b0;
  assign HBURST[2] = 1'b0;
  assign HWRITE = 1'b0;
  assign FIFO_data[31] = HRDATA[31];
  assign FIFO_data[30] = HRDATA[30];
  assign FIFO_data[29] = HRDATA[29];
  assign FIFO_data[28] = HRDATA[28];
  assign FIFO_data[27] = HRDATA[27];
  assign FIFO_data[26] = HRDATA[26];
  assign FIFO_data[25] = HRDATA[25];
  assign FIFO_data[24] = HRDATA[24];
  assign FIFO_data[23] = HRDATA[23];
  assign FIFO_data[22] = HRDATA[22];
  assign FIFO_data[21] = HRDATA[21];
  assign FIFO_data[20] = HRDATA[20];
  assign FIFO_data[19] = HRDATA[19];
  assign FIFO_data[18] = HRDATA[18];
  assign FIFO_data[17] = HRDATA[17];
  assign FIFO_data[16] = HRDATA[16];
  assign FIFO_data[15] = HRDATA[15];
  assign FIFO_data[14] = HRDATA[14];
  assign FIFO_data[13] = HRDATA[13];
  assign FIFO_data[12] = HRDATA[12];
  assign FIFO_data[11] = HRDATA[11];
  assign FIFO_data[10] = HRDATA[10];
  assign FIFO_data[9] = HRDATA[9];
  assign FIFO_data[8] = HRDATA[8];
  assign FIFO_data[7] = HRDATA[7];
  assign FIFO_data[6] = HRDATA[6];
  assign FIFO_data[5] = HRDATA[5];
  assign FIFO_data[4] = HRDATA[4];
  assign FIFO_data[3] = HRDATA[3];
  assign FIFO_data[2] = HRDATA[2];
  assign FIFO_data[1] = HRDATA[1];
  assign FIFO_data[0] = HRDATA[0];
  assign HSIZE[1] = 1'b1;
  assign HBURST[0] = 1'b1;

  CFD2QX1 \state_q_reg[1]  ( .D(state_ns[1]), .CP(HCLK), .CD(n394), .Q(
        state_q[1]) );
  CFD2QX1 \state_q_reg[2]  ( .D(state_ns[2]), .CP(HCLK), .CD(n394), .Q(
        state_q[2]) );
  CFD2QXL FIFO_push_d_reg ( .D(FIFO_push), .CP(HCLK), .CD(n394), .Q(fifo_push)
         );
  CFD3QXL \count_reg[8]  ( .D(count_w[8]), .CP(HCLK), .CD(n132), .SD(n131), 
        .Q(count[8]) );
  CFD2QXL \DMA_addr_reg_reg[27]  ( .D(n142), .CP(HCLK), .CD(n394), .Q(
        HADDR[27]) );
  CFD2QXL \DMA_addr_reg_reg[28]  ( .D(n141), .CP(HCLK), .CD(n394), .Q(
        HADDR[28]) );
  CFD2QXL \DMA_addr_reg_reg[29]  ( .D(n140), .CP(HCLK), .CD(n394), .Q(
        HADDR[29]) );
  CFD2QXL \DMA_addr_reg_reg[30]  ( .D(n139), .CP(HCLK), .CD(n394), .Q(
        HADDR[30]) );
  CFD3QXL \count_reg[7]  ( .D(count_w[7]), .CP(HCLK), .CD(n130), .SD(n129), 
        .Q(count[7]) );
  CFD3QXL \count_reg[9]  ( .D(count_w[9]), .CP(HCLK), .CD(n134), .SD(n133), 
        .Q(count[9]) );
  CFD2QXL \DMA_addr_reg_reg[31]  ( .D(n137), .CP(HCLK), .CD(n394), .Q(
        HADDR[31]) );
  CFD3QXL \count_reg[4]  ( .D(count_w[4]), .CP(HCLK), .CD(n124), .SD(n123), 
        .Q(count[4]) );
  CFD3QXL \count_reg[6]  ( .D(count_w[6]), .CP(HCLK), .CD(n128), .SD(n127), 
        .Q(count[6]) );
  CFD2QXL \DMA_addr_reg_reg[21]  ( .D(n148), .CP(HCLK), .CD(n394), .Q(
        HADDR[21]) );
  CFD2QXL \DMA_addr_reg_reg[22]  ( .D(n147), .CP(HCLK), .CD(n394), .Q(
        HADDR[22]) );
  CFD2QXL \DMA_addr_reg_reg[23]  ( .D(n146), .CP(HCLK), .CD(n394), .Q(
        HADDR[23]) );
  CFD2QXL \DMA_addr_reg_reg[24]  ( .D(n145), .CP(HCLK), .CD(n394), .Q(
        HADDR[24]) );
  CFD2QXL \DMA_addr_reg_reg[25]  ( .D(n144), .CP(HCLK), .CD(n394), .Q(
        HADDR[25]) );
  CFD2QXL \DMA_addr_reg_reg[26]  ( .D(n143), .CP(HCLK), .CD(n394), .Q(
        HADDR[26]) );
  CFD3QXL \count_reg[5]  ( .D(count_w[5]), .CP(HCLK), .CD(n126), .SD(n125), 
        .Q(count[5]) );
  CFD3QXL \count_reg[2]  ( .D(count_w[2]), .CP(HCLK), .CD(n120), .SD(n119), 
        .Q(count[2]) );
  CFD3QXL \count_reg[3]  ( .D(count_w[3]), .CP(HCLK), .CD(n122), .SD(n121), 
        .Q(count[3]) );
  CFD2QXL \DMA_addr_reg_reg[1]  ( .D(n168), .CP(HCLK), .CD(n394), .Q(HADDR[1])
         );
  CFD2QXL \DMA_addr_reg_reg[4]  ( .D(n165), .CP(HCLK), .CD(n394), .Q(HADDR[4])
         );
  CFD2QXL \DMA_addr_reg_reg[6]  ( .D(n163), .CP(HCLK), .CD(n394), .Q(HADDR[6])
         );
  CFD2QXL \DMA_addr_reg_reg[8]  ( .D(n161), .CP(HCLK), .CD(n394), .Q(HADDR[8])
         );
  CFD2QXL \DMA_addr_reg_reg[9]  ( .D(n160), .CP(HCLK), .CD(n394), .Q(HADDR[9])
         );
  CFD2QXL \DMA_addr_reg_reg[10]  ( .D(n159), .CP(HCLK), .CD(n394), .Q(
        HADDR[10]) );
  CFD2QXL \DMA_addr_reg_reg[11]  ( .D(n158), .CP(HCLK), .CD(n394), .Q(
        HADDR[11]) );
  CFD2QXL \DMA_addr_reg_reg[12]  ( .D(n157), .CP(HCLK), .CD(n394), .Q(
        HADDR[12]) );
  CFD2QXL \DMA_addr_reg_reg[13]  ( .D(n156), .CP(HCLK), .CD(n394), .Q(
        HADDR[13]) );
  CFD2QXL \DMA_addr_reg_reg[14]  ( .D(n155), .CP(HCLK), .CD(n394), .Q(
        HADDR[14]) );
  CFD2QXL \DMA_addr_reg_reg[15]  ( .D(n154), .CP(HCLK), .CD(n394), .Q(
        HADDR[15]) );
  CFD2QXL \DMA_addr_reg_reg[16]  ( .D(n153), .CP(HCLK), .CD(n394), .Q(
        HADDR[16]) );
  CFD2QXL \DMA_addr_reg_reg[17]  ( .D(n152), .CP(HCLK), .CD(n394), .Q(
        HADDR[17]) );
  CFD2QXL \DMA_addr_reg_reg[18]  ( .D(n151), .CP(HCLK), .CD(n394), .Q(
        HADDR[18]) );
  CFD2QXL \DMA_addr_reg_reg[0]  ( .D(n169), .CP(HCLK), .CD(n394), .Q(HADDR[0])
         );
  CFD3QXL \count_reg[10]  ( .D(n396), .CP(HCLK), .CD(n136), .SD(n135), .Q(
        count[10]) );
  CFD2QXL \DMA_addr_reg_reg[19]  ( .D(n150), .CP(HCLK), .CD(n394), .Q(
        HADDR[19]) );
  CFD2QXL \DMA_addr_reg_reg[3]  ( .D(n166), .CP(HCLK), .CD(n394), .Q(HADDR[3])
         );
  CFD2QXL \DMA_addr_reg_reg[5]  ( .D(n164), .CP(HCLK), .CD(n394), .Q(HADDR[5])
         );
  CFD2QXL \DMA_addr_reg_reg[20]  ( .D(n149), .CP(HCLK), .CD(n394), .Q(
        HADDR[20]) );
  CFD2QXL \DMA_addr_reg_reg[2]  ( .D(n167), .CP(HCLK), .CD(n394), .Q(HADDR[2])
         );
  CFD2XL \state_q_reg[0]  ( .D(state_ns[0]), .CP(HCLK), .CD(n394), .Q(
        state_q[0]), .QN(n395) );
  CFD2QXL \DMA_addr_reg_reg[7]  ( .D(n162), .CP(HCLK), .CD(n394), .Q(HADDR[7])
         );
  CNR2X1 U191 ( .A(n285), .B(n254), .Z(n277) );
  CND2IX1 U192 ( .B(state_q[0]), .A(state_q[2]), .Z(n223) );
  CNR2IX1 U193 ( .B(count[4]), .A(n209), .Z(n172) );
  CANR11X1 U194 ( .A(count[2]), .B(n198), .C(count[3]), .D(n172), .Z(n204) );
  CND2IX1 U195 ( .B(n292), .A(n351), .Z(n358) );
  CND2IX1 U196 ( .B(n206), .A(n219), .Z(n222) );
  CNR2X1 U197 ( .A(n304), .B(n306), .Z(n173) );
  CND2X1 U198 ( .A(n173), .B(n252), .Z(n285) );
  CNR2IX1 U199 ( .B(n232), .A(HREADY), .Z(n390) );
  CANR2X1 U200 ( .A(HADDR[20]), .B(n386), .C(\lcd_upbase[LCDUPBASE][17] ), .D(
        n385), .Z(n174) );
  CNR2X1 U201 ( .A(n358), .B(n357), .Z(n175) );
  COND1XL U202 ( .A(n175), .B(HADDR[20]), .C(n383), .Z(n176) );
  COND4CX1 U203 ( .A(HADDR[20]), .B(n175), .C(n176), .D(n174), .Z(n149) );
  CIVX1 U204 ( .A(count[9]), .Z(n177) );
  CANR1XL U205 ( .A(n219), .B(n177), .C(n207), .Z(n178) );
  CND2X1 U206 ( .A(count[9]), .B(n203), .Z(n179) );
  CMXI2X1 U207 ( .A0(n179), .A1(n178), .S(count[10]), .Z(n396) );
  CND2IX1 U208 ( .B(n285), .A(n286), .Z(n300) );
  CNR2IX1 U209 ( .B(n271), .A(n302), .Z(n323) );
  CND2IX1 U210 ( .B(state_q[1]), .A(state_q[0]), .Z(n235) );
  COND1XL U211 ( .A(n357), .B(n358), .C(n383), .Z(n180) );
  CANR2X1 U212 ( .A(\lcd_upbase[LCDUPBASE][16] ), .B(n385), .C(HADDR[19]), .D(
        n386), .Z(n181) );
  COND4CX1 U213 ( .A(n358), .B(n357), .C(n180), .D(n181), .Z(n150) );
  CIVX1 U214 ( .A(count[6]), .Z(n182) );
  CND2X1 U215 ( .A(count[5]), .B(n206), .Z(n183) );
  COND2X1 U216 ( .A(n221), .B(n182), .C(n210), .D(n183), .Z(count_w[6]) );
  CNR2IX1 U217 ( .B(n268), .A(n270), .Z(n184) );
  CENX1 U218 ( .A(n269), .B(n184), .Z(n185) );
  CAOR2X1 U219 ( .A(HADDR[2]), .B(n386), .C(n383), .D(n185), .Z(n167) );
  COND1XL U220 ( .A(n303), .B(n302), .C(n383), .Z(n186) );
  CANR2X1 U221 ( .A(\lcd_upbase[LCDUPBASE][0] ), .B(n385), .C(HADDR[3]), .D(
        n386), .Z(n187) );
  COND4CX1 U222 ( .A(n302), .B(n303), .C(n186), .D(n187), .Z(n166) );
  COND3X1 U223 ( .A(n232), .B(HADDR[0]), .C(n229), .D(n383), .Z(n188) );
  CND2X1 U224 ( .A(HADDR[0]), .B(n386), .Z(n189) );
  CND2X1 U225 ( .A(n189), .B(n188), .Z(n169) );
  COND1XL U226 ( .A(n364), .B(n363), .C(n383), .Z(n190) );
  CANR2X1 U227 ( .A(\lcd_upbase[LCDUPBASE][14] ), .B(n385), .C(HADDR[17]), .D(
        n386), .Z(n191) );
  COND4CX1 U228 ( .A(n363), .B(n364), .C(n190), .D(n191), .Z(n152) );
  COND1XL U229 ( .A(n311), .B(n312), .C(n383), .Z(n192) );
  CANR2X1 U230 ( .A(\lcd_upbase[LCDUPBASE][10] ), .B(n385), .C(HADDR[13]), .D(
        n386), .Z(n193) );
  COND4CX1 U231 ( .A(n312), .B(n311), .C(n192), .D(n193), .Z(n156) );
  CANR2X1 U232 ( .A(\lcd_upbase[LCDUPBASE][6] ), .B(n385), .C(HADDR[9]), .D(
        n386), .Z(n194) );
  COND1XL U233 ( .A(n304), .B(n305), .C(n383), .Z(n195) );
  COND4CX1 U234 ( .A(n305), .B(n304), .C(n195), .D(n194), .Z(n160) );
  CNR2X1 U235 ( .A(n208), .B(n222), .Z(n196) );
  CAOR2X1 U236 ( .A(count[7]), .B(n196), .C(n207), .D(count[8]), .Z(count_w[8]) );
  COR3XL U237 ( .A(state_q[1]), .B(state_q[0]), .C(state_q[2]), .Z(n236) );
  CNR2IX1 U238 ( .B(state_q[1]), .A(state_q[2]), .Z(n234) );
  CND2XL U239 ( .A(n234), .B(state_q[0]), .Z(n224) );
  CND2X1 U240 ( .A(n236), .B(n224), .Z(n217) );
  CIVXL U241 ( .A(n217), .Z(n197) );
  CAN3X2 U242 ( .A(count[2]), .B(count[3]), .C(count[4]), .Z(n200) );
  CNR2X1 U243 ( .A(n224), .B(n200), .Z(n198) );
  CNR2X1 U244 ( .A(n197), .B(n198), .Z(n209) );
  CIVX2 U245 ( .A(n204), .Z(count_w[4]) );
  CND2XL U246 ( .A(HRESET), .B(count_w[4]), .Z(n123) );
  CND3XL U247 ( .A(n200), .B(count[5]), .C(count[6]), .Z(n206) );
  CND2IXL U248 ( .B(n224), .A(n206), .Z(n199) );
  CAN2X1 U249 ( .A(n217), .B(n199), .Z(n221) );
  CIVX1 U250 ( .A(n224), .Z(n219) );
  CND2X1 U251 ( .A(n219), .B(n200), .Z(n210) );
  CND2XL U252 ( .A(HRESET), .B(count_w[6]), .Z(n127) );
  CND2XL U253 ( .A(count[7]), .B(count[8]), .Z(n201) );
  CNR2X1 U254 ( .A(n206), .B(n201), .Z(n208) );
  CIVX1 U255 ( .A(n208), .Z(n202) );
  CNR2XL U256 ( .A(n202), .B(n224), .Z(n203) );
  COND1XL U257 ( .A(n224), .B(n208), .C(n217), .Z(n207) );
  CMXI2X1 U258 ( .A0(n203), .A1(n207), .S(count[9]), .Z(n205) );
  CIVX2 U259 ( .A(n205), .Z(count_w[9]) );
  CND2XL U260 ( .A(HRESET), .B(count_w[9]), .Z(n133) );
  CIVX2 U261 ( .A(HRESET), .Z(n394) );
  COR2XL U262 ( .A(count_w[6]), .B(n394), .Z(n128) );
  COR2XL U263 ( .A(n396), .B(n394), .Z(n136) );
  CND2XL U264 ( .A(HRESET), .B(n396), .Z(n135) );
  CND2XL U265 ( .A(HRESET), .B(n204), .Z(n124) );
  CND2XL U266 ( .A(HRESET), .B(n205), .Z(n134) );
  COR2XL U267 ( .A(count_w[8]), .B(n394), .Z(n132) );
  CND2XL U268 ( .A(HRESET), .B(count_w[8]), .Z(n131) );
  CMXI2X1 U269 ( .A0(n210), .A1(n209), .S(count[5]), .Z(count_w[5]) );
  CND2XL U270 ( .A(HRESET), .B(count_w[5]), .Z(n125) );
  CIVX1 U271 ( .A(HGRANT), .Z(n211) );
  CNR3XL U272 ( .A(FIFO_full), .B(count[10]), .C(n211), .Z(n225) );
  CND2X1 U273 ( .A(n219), .B(n225), .Z(n220) );
  CNR3XL U274 ( .A(fp_pulse), .B(state_q[2]), .C(n235), .Z(n212) );
  CND2X1 U275 ( .A(n234), .B(n395), .Z(n238) );
  CIVXL U276 ( .A(HREADY), .Z(n218) );
  COND2X1 U277 ( .A(n211), .B(n238), .C(n220), .D(n218), .Z(n233) );
  COND4CX1 U278 ( .A(n212), .B(HGRANT), .C(n233), .D(dma_req_in), .Z(n213) );
  CND2XL U279 ( .A(state_q[1]), .B(state_q[2]), .Z(n391) );
  COND3XL U280 ( .A(HREADY), .B(n220), .C(n213), .D(n391), .Z(state_ns[1]) );
  COR2XL U281 ( .A(count_w[5]), .B(n394), .Z(n126) );
  CIVX1 U282 ( .A(count[2]), .Z(n214) );
  CND2X1 U283 ( .A(n219), .B(n214), .Z(n216) );
  COND1XL U284 ( .A(n214), .B(n217), .C(n216), .Z(count_w[2]) );
  COR2XL U285 ( .A(count_w[2]), .B(n394), .Z(n120) );
  CANR1XL U286 ( .A(count[2]), .B(n219), .C(count[3]), .Z(n215) );
  CANR11X1 U287 ( .A(count[3]), .B(n217), .C(n216), .D(n215), .Z(count_w[3])
         );
  CND2XL U288 ( .A(HRESET), .B(count_w[3]), .Z(n121) );
  CAN4X1 U289 ( .A(n218), .B(count[10]), .C(FIFO_full), .D(HGRANT), .Z(n246)
         );
  CND2X1 U290 ( .A(n246), .B(n219), .Z(n393) );
  CND2X1 U291 ( .A(n393), .B(n220), .Z(HTRANS[0]) );
  CND2IXL U292 ( .B(HTRANS[0]), .A(n238), .Z(HTRANS[1]) );
  COR2XL U293 ( .A(count_w[3]), .B(n394), .Z(n122) );
  CMXI2X1 U294 ( .A0(n222), .A1(n221), .S(count[7]), .Z(count_w[7]) );
  COR2XL U295 ( .A(count_w[7]), .B(n394), .Z(n130) );
  CND2XL U296 ( .A(HRESET), .B(count_w[7]), .Z(n129) );
  CND2XL U297 ( .A(HRESET), .B(count_w[2]), .Z(n119) );
  CNR2X2 U298 ( .A(n223), .B(state_q[1]), .Z(n232) );
  COND1XL U299 ( .A(n238), .B(HGRANT), .C(n235), .Z(n227) );
  CANR1XL U300 ( .A(n225), .B(HREADY), .C(n224), .Z(n226) );
  CNR3X1 U301 ( .A(n390), .B(n227), .C(n226), .Z(n228) );
  CND2X2 U302 ( .A(n228), .B(n391), .Z(n386) );
  CNR2X1 U303 ( .A(n234), .B(HADDR[2]), .Z(n270) );
  CND2X1 U304 ( .A(n234), .B(HADDR[2]), .Z(n268) );
  CND2X1 U305 ( .A(n232), .B(HADDR[0]), .Z(n229) );
  CIVX1 U306 ( .A(HADDR[1]), .Z(n230) );
  CNR2X1 U307 ( .A(n229), .B(n230), .Z(n251) );
  CIVXL U308 ( .A(n251), .Z(n269) );
  COAN1X1 U309 ( .A(n232), .B(n234), .C(n228), .Z(n383) );
  CEOXL U310 ( .A(n230), .B(n229), .Z(n231) );
  CAOR2XL U311 ( .A(HADDR[1]), .B(n386), .C(n383), .D(n231), .Z(n168) );
  CND2XL U312 ( .A(HREADY), .B(n232), .Z(n244) );
  CND2IX1 U313 ( .B(n233), .A(n244), .Z(FIFO_push) );
  CIVX2 U314 ( .A(n234), .Z(n389) );
  CIVXL U315 ( .A(n235), .Z(n243) );
  CND2XL U316 ( .A(HGRANT), .B(dma_req_in), .Z(n242) );
  CIVX2 U317 ( .A(fp_pulse), .Z(n241) );
  CIVX2 U318 ( .A(n236), .Z(n385) );
  CND2XL U319 ( .A(lcd_en_i), .B(n385), .Z(n239) );
  CND2XL U320 ( .A(state_q[2]), .B(state_q[0]), .Z(n237) );
  CND3XL U321 ( .A(n239), .B(n238), .C(n237), .Z(n240) );
  CANR11X1 U322 ( .A(n243), .B(n242), .C(n241), .D(n240), .Z(n245) );
  COND3X1 U323 ( .A(n246), .B(n389), .C(n245), .D(n244), .Z(state_ns[0]) );
  CIVX1 U324 ( .A(HADDR[9]), .Z(n304) );
  CIVX2 U325 ( .A(HADDR[3]), .Z(n303) );
  CIVX1 U326 ( .A(HADDR[4]), .Z(n333) );
  CNR2X1 U327 ( .A(n303), .B(n333), .Z(n271) );
  CIVX2 U328 ( .A(HADDR[5]), .Z(n322) );
  CIVX1 U329 ( .A(HADDR[6]), .Z(n273) );
  CNR2X1 U330 ( .A(n322), .B(n273), .Z(n247) );
  CND2X1 U331 ( .A(n271), .B(n247), .Z(n248) );
  CNR2X1 U332 ( .A(n248), .B(n270), .Z(n250) );
  CNR2X1 U333 ( .A(n248), .B(n268), .Z(n249) );
  CANR1X1 U334 ( .A(n251), .B(n250), .C(n249), .Z(n259) );
  CIVXL U335 ( .A(n259), .Z(n286) );
  CIVX2 U336 ( .A(HADDR[7]), .Z(n281) );
  CIVX1 U337 ( .A(HADDR[8]), .Z(n264) );
  CNR2X1 U338 ( .A(n281), .B(n264), .Z(n252) );
  CND2X1 U339 ( .A(n286), .B(n252), .Z(n305) );
  CIVX1 U340 ( .A(HADDR[10]), .Z(n306) );
  CIVX2 U341 ( .A(HADDR[11]), .Z(n341) );
  CIVX1 U342 ( .A(HADDR[12]), .Z(n287) );
  CNR2X1 U343 ( .A(n341), .B(n287), .Z(n301) );
  CIVX1 U344 ( .A(HADDR[13]), .Z(n311) );
  CIVX1 U345 ( .A(HADDR[14]), .Z(n313) );
  CNR2X1 U346 ( .A(n311), .B(n313), .Z(n253) );
  CND2X1 U347 ( .A(n301), .B(n253), .Z(n254) );
  CIVX2 U348 ( .A(HADDR[15]), .Z(n293) );
  CIVX1 U349 ( .A(HADDR[16]), .Z(n295) );
  CNR2X1 U350 ( .A(n293), .B(n295), .Z(n350) );
  CIVX1 U351 ( .A(HADDR[17]), .Z(n364) );
  CIVX1 U352 ( .A(HADDR[18]), .Z(n352) );
  CNR2X1 U353 ( .A(n364), .B(n352), .Z(n255) );
  CND2X1 U354 ( .A(n350), .B(n255), .Z(n292) );
  CND2X1 U355 ( .A(HADDR[19]), .B(HADDR[20]), .Z(n256) );
  CNR2X1 U356 ( .A(n292), .B(n256), .Z(n257) );
  CND2X1 U357 ( .A(n277), .B(n257), .Z(n258) );
  CNR2X2 U358 ( .A(n259), .B(n258), .Z(n318) );
  CND2X1 U359 ( .A(n260), .B(n383), .Z(n262) );
  CANR2X1 U360 ( .A(n386), .B(HADDR[25]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][22] ), .Z(n261) );
  CND2X1 U361 ( .A(n262), .B(n261), .Z(n144) );
  CND2XL U362 ( .A(n286), .B(HADDR[7]), .Z(n263) );
  CEOX1 U363 ( .A(n264), .B(n263), .Z(n265) );
  CND2X1 U364 ( .A(n265), .B(n383), .Z(n267) );
  CANR2X1 U365 ( .A(n386), .B(HADDR[8]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][5] ), .Z(n266) );
  CND2X1 U366 ( .A(n267), .B(n266), .Z(n161) );
  COND1XL U367 ( .A(n270), .B(n269), .C(n268), .Z(n331) );
  CIVX1 U368 ( .A(n331), .Z(n302) );
  CND2XL U369 ( .A(n323), .B(HADDR[5]), .Z(n272) );
  CEOX1 U370 ( .A(n273), .B(n272), .Z(n274) );
  CND2X1 U371 ( .A(n274), .B(n383), .Z(n276) );
  CANR2X1 U372 ( .A(n386), .B(HADDR[6]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][3] ), .Z(n275) );
  CND2X1 U373 ( .A(n276), .B(n275), .Z(n163) );
  CND2X1 U374 ( .A(n286), .B(n277), .Z(n294) );
  CIVX2 U375 ( .A(n294), .Z(n351) );
  CENX1 U376 ( .A(n351), .B(n293), .Z(n278) );
  CND2X1 U377 ( .A(n278), .B(n383), .Z(n280) );
  CANR2X1 U378 ( .A(n386), .B(HADDR[15]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][12] ), .Z(n279) );
  CND2X1 U379 ( .A(n280), .B(n279), .Z(n154) );
  CENX1 U380 ( .A(n286), .B(n281), .Z(n282) );
  CND2X1 U381 ( .A(n282), .B(n383), .Z(n284) );
  CANR2X1 U382 ( .A(n386), .B(HADDR[7]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][4] ), .Z(n283) );
  CND2X1 U383 ( .A(n284), .B(n283), .Z(n162) );
  CNR2X1 U384 ( .A(n300), .B(n341), .Z(n288) );
  CENX1 U385 ( .A(n288), .B(n287), .Z(n289) );
  CND2X1 U386 ( .A(n289), .B(n383), .Z(n291) );
  CANR2X1 U387 ( .A(n386), .B(HADDR[12]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][9] ), .Z(n290) );
  CND2X1 U388 ( .A(n291), .B(n290), .Z(n157) );
  CIVX1 U389 ( .A(HADDR[19]), .Z(n357) );
  CNR2X1 U390 ( .A(n294), .B(n293), .Z(n296) );
  CENX1 U391 ( .A(n296), .B(n295), .Z(n297) );
  CND2X1 U392 ( .A(n297), .B(n383), .Z(n299) );
  CANR2X1 U393 ( .A(n386), .B(HADDR[16]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][13] ), .Z(n298) );
  CND2X1 U394 ( .A(n299), .B(n298), .Z(n153) );
  CIVX2 U395 ( .A(n300), .Z(n342) );
  CND2X1 U396 ( .A(n342), .B(n301), .Z(n312) );
  CNR2X1 U397 ( .A(n305), .B(n304), .Z(n307) );
  CENX1 U398 ( .A(n307), .B(n306), .Z(n308) );
  CND2X1 U399 ( .A(n308), .B(n383), .Z(n310) );
  CANR2X1 U400 ( .A(n386), .B(HADDR[10]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][7] ), .Z(n309) );
  CND2X1 U401 ( .A(n310), .B(n309), .Z(n159) );
  CNR2X1 U402 ( .A(n312), .B(n311), .Z(n314) );
  CENX1 U403 ( .A(n314), .B(n313), .Z(n315) );
  CND2X1 U404 ( .A(n315), .B(n383), .Z(n317) );
  CANR2X1 U405 ( .A(n386), .B(HADDR[14]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][11] ), .Z(n316) );
  CND2X1 U406 ( .A(n317), .B(n316), .Z(n155) );
  CHA1X1 U407 ( .A(HADDR[21]), .B(n318), .CO(n359), .S(n319) );
  CND2X1 U408 ( .A(n319), .B(n383), .Z(n321) );
  CANR2X1 U409 ( .A(n386), .B(HADDR[21]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][18] ), .Z(n320) );
  CND2X1 U410 ( .A(n321), .B(n320), .Z(n148) );
  CENX1 U411 ( .A(n323), .B(n322), .Z(n324) );
  CND2X1 U412 ( .A(n324), .B(n383), .Z(n326) );
  CANR2X1 U413 ( .A(n386), .B(HADDR[5]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][2] ), .Z(n325) );
  CND2X1 U414 ( .A(n326), .B(n325), .Z(n164) );
  CHA1X1 U415 ( .A(HADDR[24]), .B(n327), .CO(n346), .S(n328) );
  CND2X1 U416 ( .A(n328), .B(n383), .Z(n330) );
  CANR2X1 U417 ( .A(n386), .B(HADDR[24]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][21] ), .Z(n329) );
  CND2X1 U418 ( .A(n330), .B(n329), .Z(n145) );
  CND2X1 U419 ( .A(n331), .B(HADDR[3]), .Z(n332) );
  CEOX1 U420 ( .A(n333), .B(n332), .Z(n334) );
  CND2X1 U421 ( .A(n334), .B(n383), .Z(n336) );
  CANR2X1 U422 ( .A(n386), .B(HADDR[4]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][1] ), .Z(n335) );
  CND2X1 U423 ( .A(n336), .B(n335), .Z(n165) );
  CHA1X1 U424 ( .A(HADDR[23]), .B(n337), .CO(n327), .S(n338) );
  CND2X1 U425 ( .A(n338), .B(n383), .Z(n340) );
  CANR2X1 U426 ( .A(n386), .B(HADDR[23]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][20] ), .Z(n339) );
  CND2X1 U427 ( .A(n340), .B(n339), .Z(n146) );
  CENX1 U428 ( .A(n342), .B(n341), .Z(n343) );
  CND2X1 U429 ( .A(n343), .B(n383), .Z(n345) );
  CANR2X1 U430 ( .A(n386), .B(HADDR[11]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][8] ), .Z(n344) );
  CND2X1 U431 ( .A(n345), .B(n344), .Z(n158) );
  CHA1X1 U432 ( .A(HADDR[25]), .B(n346), .CO(n365), .S(n260) );
  CND2X1 U433 ( .A(n347), .B(n383), .Z(n349) );
  CANR2X1 U434 ( .A(n386), .B(HADDR[27]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][24] ), .Z(n348) );
  CND2X1 U435 ( .A(n349), .B(n348), .Z(n142) );
  CND2X1 U436 ( .A(n351), .B(n350), .Z(n363) );
  CNR2X1 U437 ( .A(n363), .B(n364), .Z(n353) );
  CENX1 U438 ( .A(n353), .B(n352), .Z(n354) );
  CND2X1 U439 ( .A(n354), .B(n383), .Z(n356) );
  CANR2X1 U440 ( .A(n386), .B(HADDR[18]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][15] ), .Z(n355) );
  CND2X1 U441 ( .A(n356), .B(n355), .Z(n151) );
  CHA1X1 U442 ( .A(HADDR[22]), .B(n359), .CO(n337), .S(n360) );
  CND2X1 U443 ( .A(n360), .B(n383), .Z(n362) );
  CANR2X1 U444 ( .A(n386), .B(HADDR[22]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][19] ), .Z(n361) );
  CND2X1 U445 ( .A(n362), .B(n361), .Z(n147) );
  CHA1X1 U446 ( .A(HADDR[26]), .B(n365), .CO(n369), .S(n366) );
  CND2X1 U447 ( .A(n366), .B(n383), .Z(n368) );
  CANR2X1 U448 ( .A(n386), .B(HADDR[26]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][23] ), .Z(n367) );
  CND2X1 U449 ( .A(n368), .B(n367), .Z(n143) );
  CHA1X1 U450 ( .A(HADDR[27]), .B(n369), .CO(n373), .S(n347) );
  CND2X1 U451 ( .A(n370), .B(n383), .Z(n372) );
  CANR2X1 U452 ( .A(n386), .B(HADDR[28]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][25] ), .Z(n371) );
  CND2X1 U453 ( .A(n372), .B(n371), .Z(n141) );
  CHA1X1 U454 ( .A(HADDR[28]), .B(n373), .CO(n377), .S(n370) );
  CND2X1 U455 ( .A(n374), .B(n383), .Z(n376) );
  CANR2X1 U456 ( .A(n386), .B(HADDR[29]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][26] ), .Z(n375) );
  CND2X1 U457 ( .A(n376), .B(n375), .Z(n140) );
  CHA1X1 U458 ( .A(HADDR[29]), .B(n377), .CO(n381), .S(n374) );
  CND2X1 U459 ( .A(n378), .B(n383), .Z(n380) );
  CANR2X1 U460 ( .A(n386), .B(HADDR[30]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][27] ), .Z(n379) );
  CND2X1 U461 ( .A(n380), .B(n379), .Z(n139) );
  CHA1X1 U462 ( .A(HADDR[30]), .B(n381), .CO(n382), .S(n378) );
  CEOX2 U463 ( .A(HADDR[31]), .B(n382), .Z(n384) );
  CND2X1 U464 ( .A(n384), .B(n383), .Z(n388) );
  CANR2X1 U465 ( .A(n386), .B(HADDR[31]), .C(n385), .D(
        \lcd_upbase[LCDUPBASE][28] ), .Z(n387) );
  CND2X1 U466 ( .A(n388), .B(n387), .Z(n137) );
  COND1XL U467 ( .A(state_q[2]), .B(n395), .C(n389), .Z(HBUSREQ) );
  CIVXL U468 ( .A(n390), .Z(n392) );
  CND3XL U469 ( .A(n393), .B(n392), .C(n391), .Z(state_ns[2]) );
endmodule

