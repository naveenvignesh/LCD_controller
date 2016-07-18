
module timing_control ( pixel_clk, rst, cclk, .lcd_timh({\lcd_timh[HBP][7] , 
        \lcd_timh[HBP][6] , \lcd_timh[HBP][5] , \lcd_timh[HBP][4] , 
        \lcd_timh[HBP][3] , \lcd_timh[HBP][2] , \lcd_timh[HBP][1] , 
        \lcd_timh[HBP][0] , \lcd_timh[HFP][7] , \lcd_timh[HFP][6] , 
        \lcd_timh[HFP][5] , \lcd_timh[HFP][4] , \lcd_timh[HFP][3] , 
        \lcd_timh[HFP][2] , \lcd_timh[HFP][1] , \lcd_timh[HFP][0] , 
        \lcd_timh[HSW][7] , \lcd_timh[HSW][6] , \lcd_timh[HSW][5] , 
        \lcd_timh[HSW][4] , \lcd_timh[HSW][3] , \lcd_timh[HSW][2] , 
        \lcd_timh[HSW][1] , \lcd_timh[HSW][0] , \lcd_timh[PPL][5] , 
        \lcd_timh[PPL][4] , \lcd_timh[PPL][3] , \lcd_timh[PPL][2] , 
        \lcd_timh[PPL][1] , \lcd_timh[PPL][0] , \lcd_timh[UNUSED][1] , 
        \lcd_timh[UNUSED][0] }), .lcd_timv({\lcd_timv[VBP][7] , 
        \lcd_timv[VBP][6] , \lcd_timv[VBP][5] , \lcd_timv[VBP][4] , 
        \lcd_timv[VBP][3] , \lcd_timv[VBP][2] , \lcd_timv[VBP][1] , 
        \lcd_timv[VBP][0] , \lcd_timv[VFP][7] , \lcd_timv[VFP][6] , 
        \lcd_timv[VFP][5] , \lcd_timv[VFP][4] , \lcd_timv[VFP][3] , 
        \lcd_timv[VFP][2] , \lcd_timv[VFP][1] , \lcd_timv[VFP][0] , 
        \lcd_timv[VSW][5] , \lcd_timv[VSW][4] , \lcd_timv[VSW][3] , 
        \lcd_timv[VSW][2] , \lcd_timv[VSW][1] , \lcd_timv[VSW][0] , 
        \lcd_timv[LPP][9] , \lcd_timv[LPP][8] , \lcd_timv[LPP][7] , 
        \lcd_timv[LPP][6] , \lcd_timv[LPP][5] , \lcd_timv[LPP][4] , 
        \lcd_timv[LPP][3] , \lcd_timv[LPP][2] , \lcd_timv[LPP][1] , 
        \lcd_timv[LPP][0] }), lcd_en, lcd_pwr, LCDPWR, LCDDCLK, LCDFP, LCDLE, 
        LCDLP, x_count, y_count, pixel_disp_on, LCDENA_LCDM, Lcdena_lcdm, 
    .lcd_le({\lcd_le[UNUSED_le0][14] , \lcd_le[UNUSED_le0][13] , 
        \lcd_le[UNUSED_le0][12] , \lcd_le[UNUSED_le0][11] , 
        \lcd_le[UNUSED_le0][10] , \lcd_le[UNUSED_le0][9] , 
        \lcd_le[UNUSED_le0][8] , \lcd_le[UNUSED_le0][7] , 
        \lcd_le[UNUSED_le0][6] , \lcd_le[UNUSED_le0][5] , 
        \lcd_le[UNUSED_le0][4] , \lcd_le[UNUSED_le0][3] , 
        \lcd_le[UNUSED_le0][2] , \lcd_le[UNUSED_le0][1] , 
        \lcd_le[UNUSED_le0][0] , \lcd_le[LEE] , \lcd_le[UNUSED_le1][8] , 
        \lcd_le[UNUSED_le1][7] , \lcd_le[UNUSED_le1][6] , 
        \lcd_le[UNUSED_le1][5] , \lcd_le[UNUSED_le1][4] , 
        \lcd_le[UNUSED_le1][3] , \lcd_le[UNUSED_le1][2] , 
        \lcd_le[UNUSED_le1][1] , \lcd_le[UNUSED_le1][0] , \lcd_le[LED][6] , 
        \lcd_le[LED][5] , \lcd_le[LED][4] , \lcd_le[LED][3] , \lcd_le[LED][2] , 
        \lcd_le[LED][1] , \lcd_le[LED][0] }), fp_pulse );
  output [9:0] x_count;
  output [9:0] y_count;
  input pixel_clk, rst, cclk, \lcd_timh[HBP][7] , \lcd_timh[HBP][6] ,
         \lcd_timh[HBP][5] , \lcd_timh[HBP][4] , \lcd_timh[HBP][3] ,
         \lcd_timh[HBP][2] , \lcd_timh[HBP][1] , \lcd_timh[HBP][0] ,
         \lcd_timh[HFP][7] , \lcd_timh[HFP][6] , \lcd_timh[HFP][5] ,
         \lcd_timh[HFP][4] , \lcd_timh[HFP][3] , \lcd_timh[HFP][2] ,
         \lcd_timh[HFP][1] , \lcd_timh[HFP][0] , \lcd_timh[HSW][7] ,
         \lcd_timh[HSW][6] , \lcd_timh[HSW][5] , \lcd_timh[HSW][4] ,
         \lcd_timh[HSW][3] , \lcd_timh[HSW][2] , \lcd_timh[HSW][1] ,
         \lcd_timh[HSW][0] , \lcd_timh[PPL][5] , \lcd_timh[PPL][4] ,
         \lcd_timh[PPL][3] , \lcd_timh[PPL][2] , \lcd_timh[PPL][1] ,
         \lcd_timh[PPL][0] , \lcd_timh[UNUSED][1] , \lcd_timh[UNUSED][0] ,
         \lcd_timv[VBP][7] , \lcd_timv[VBP][6] , \lcd_timv[VBP][5] ,
         \lcd_timv[VBP][4] , \lcd_timv[VBP][3] , \lcd_timv[VBP][2] ,
         \lcd_timv[VBP][1] , \lcd_timv[VBP][0] , \lcd_timv[VFP][7] ,
         \lcd_timv[VFP][6] , \lcd_timv[VFP][5] , \lcd_timv[VFP][4] ,
         \lcd_timv[VFP][3] , \lcd_timv[VFP][2] , \lcd_timv[VFP][1] ,
         \lcd_timv[VFP][0] , \lcd_timv[VSW][5] , \lcd_timv[VSW][4] ,
         \lcd_timv[VSW][3] , \lcd_timv[VSW][2] , \lcd_timv[VSW][1] ,
         \lcd_timv[VSW][0] , \lcd_timv[LPP][9] , \lcd_timv[LPP][8] ,
         \lcd_timv[LPP][7] , \lcd_timv[LPP][6] , \lcd_timv[LPP][5] ,
         \lcd_timv[LPP][4] , \lcd_timv[LPP][3] , \lcd_timv[LPP][2] ,
         \lcd_timv[LPP][1] , \lcd_timv[LPP][0] , lcd_en, lcd_pwr,
         \lcd_le[UNUSED_le0][14] , \lcd_le[UNUSED_le0][13] ,
         \lcd_le[UNUSED_le0][12] , \lcd_le[UNUSED_le0][11] ,
         \lcd_le[UNUSED_le0][10] , \lcd_le[UNUSED_le0][9] ,
         \lcd_le[UNUSED_le0][8] , \lcd_le[UNUSED_le0][7] ,
         \lcd_le[UNUSED_le0][6] , \lcd_le[UNUSED_le0][5] ,
         \lcd_le[UNUSED_le0][4] , \lcd_le[UNUSED_le0][3] ,
         \lcd_le[UNUSED_le0][2] , \lcd_le[UNUSED_le0][1] ,
         \lcd_le[UNUSED_le0][0] , \lcd_le[LEE] , \lcd_le[UNUSED_le1][8] ,
         \lcd_le[UNUSED_le1][7] , \lcd_le[UNUSED_le1][6] ,
         \lcd_le[UNUSED_le1][5] , \lcd_le[UNUSED_le1][4] ,
         \lcd_le[UNUSED_le1][3] , \lcd_le[UNUSED_le1][2] ,
         \lcd_le[UNUSED_le1][1] , \lcd_le[UNUSED_le1][0] , \lcd_le[LED][6] ,
         \lcd_le[LED][5] , \lcd_le[LED][4] , \lcd_le[LED][3] ,
         \lcd_le[LED][2] , \lcd_le[LED][1] , \lcd_le[LED][0] ;
  output LCDPWR, LCDDCLK, LCDFP, LCDLE, LCDLP, pixel_disp_on, LCDENA_LCDM,
         Lcdena_lcdm, fp_pulse;
  wire   LCDDCLK, LCDFP, LCDENA_LCDM, N696, N697, N698, N699, N700, N701, N702,
         N703, N704, N705, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474;
  wire   [3:0] vstate;
  wire   [11:0] counter_clicks;
  wire   [2:0] vnxtstate;
  wire   [11:0] counter_clicks_nxt;
  wire   [11:0] line_count;
  wire   [3:0] linestate;
  wire   [11:0] line_count_nxt;
  wire   [31:0] lcdle_cur_state;
  wire   [31:0] lcdle_nxt_state;
  wire   [6:0] lcdle_delay_count;
  wire   [2:0] lcdle_hold_count;
  assign LCDDCLK = pixel_clk;
  assign fp_pulse = LCDFP;
  assign Lcdena_lcdm = LCDENA_LCDM;
  assign pixel_disp_on = LCDENA_LCDM;

  CFD4QXL \line_count_reg[0]  ( .D(line_count_nxt[0]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[0]) );
  CFD4QXL \line_count_reg[1]  ( .D(line_count_nxt[1]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[1]) );
  CFD4QXL \line_count_reg[2]  ( .D(n206), .CP(LCDDCLK), .SD(n473), .Q(
        line_count[2]) );
  CFD4QXL \line_count_reg[3]  ( .D(line_count_nxt[3]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[3]) );
  CFD4QXL \line_count_reg[4]  ( .D(line_count_nxt[4]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[4]) );
  CFD4QXL \line_count_reg[5]  ( .D(line_count_nxt[5]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[5]) );
  CFD4QXL \line_count_reg[6]  ( .D(line_count_nxt[6]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[6]) );
  CFD4QXL \line_count_reg[7]  ( .D(line_count_nxt[7]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[7]) );
  CFD4QXL \line_count_reg[8]  ( .D(line_count_nxt[8]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[8]) );
  CFD4QXL \line_count_reg[9]  ( .D(line_count_nxt[9]), .CP(LCDDCLK), .SD(n473), 
        .Q(line_count[9]) );
  CFD4QXL \line_count_reg[10]  ( .D(line_count_nxt[10]), .CP(LCDDCLK), .SD(
        n473), .Q(line_count[10]) );
  CFD4QXL \line_count_reg[11]  ( .D(line_count_nxt[11]), .CP(LCDDCLK), .SD(
        n473), .Q(line_count[11]) );
  CFD4QXL \counter_clicks_reg[11]  ( .D(counter_clicks_nxt[11]), .CP(n474), 
        .SD(n473), .Q(counter_clicks[11]) );
  CFD4QXL \counter_clicks_reg[0]  ( .D(counter_clicks_nxt[0]), .CP(n474), .SD(
        n473), .Q(counter_clicks[0]) );
  CFD4QXL \counter_clicks_reg[1]  ( .D(counter_clicks_nxt[1]), .CP(n474), .SD(
        n473), .Q(counter_clicks[1]) );
  CFD4QXL \counter_clicks_reg[2]  ( .D(counter_clicks_nxt[2]), .CP(n474), .SD(
        n473), .Q(counter_clicks[2]) );
  CFD4QXL \counter_clicks_reg[3]  ( .D(counter_clicks_nxt[3]), .CP(n474), .SD(
        n473), .Q(counter_clicks[3]) );
  CFD4QXL \counter_clicks_reg[4]  ( .D(counter_clicks_nxt[4]), .CP(n474), .SD(
        n473), .Q(counter_clicks[4]) );
  CFD4QXL \counter_clicks_reg[5]  ( .D(counter_clicks_nxt[5]), .CP(n474), .SD(
        n473), .Q(counter_clicks[5]) );
  CFD4QXL \counter_clicks_reg[6]  ( .D(counter_clicks_nxt[6]), .CP(n474), .SD(
        n473), .Q(counter_clicks[6]) );
  CFD4QXL \counter_clicks_reg[7]  ( .D(counter_clicks_nxt[7]), .CP(n474), .SD(
        n473), .Q(counter_clicks[7]) );
  CFD4QXL \counter_clicks_reg[8]  ( .D(counter_clicks_nxt[8]), .CP(n474), .SD(
        n473), .Q(counter_clicks[8]) );
  CFD4QXL \counter_clicks_reg[9]  ( .D(counter_clicks_nxt[9]), .CP(n474), .SD(
        n473), .Q(counter_clicks[9]) );
  CFD4QXL \counter_clicks_reg[10]  ( .D(counter_clicks_nxt[10]), .CP(n474), 
        .SD(n473), .Q(counter_clicks[10]) );
  CFD2QX1 \linestate_reg[0]  ( .D(n203), .CP(LCDDCLK), .CD(n473), .Q(
        linestate[0]) );
  CFD2QX1 \linestate_reg[1]  ( .D(n201), .CP(LCDDCLK), .CD(n473), .Q(
        linestate[1]) );
  CFD2QX1 \linestate_reg[2]  ( .D(n197), .CP(LCDDCLK), .CD(n473), .Q(
        linestate[2]) );
  CFD4QXL \lcdle_hold_count_reg[0]  ( .D(n164), .CP(cclk), .SD(n473), .Q(
        lcdle_hold_count[0]) );
  CFD4QXL \lcdle_hold_count_reg[1]  ( .D(n163), .CP(cclk), .SD(n473), .Q(
        lcdle_hold_count[1]) );
  CFD2QXL \x_cor_reg[7]  ( .D(N703), .CP(n474), .CD(n473), .Q(x_count[7]) );
  CFD2QXL \x_cor_reg[5]  ( .D(N701), .CP(n474), .CD(n473), .Q(x_count[5]) );
  CFD2QXL \x_cor_reg[3]  ( .D(N699), .CP(n474), .CD(n473), .Q(x_count[3]) );
  CFD2QXL \x_cor_reg[9]  ( .D(N705), .CP(n474), .CD(n473), .Q(x_count[9]) );
  CFD2QXL \lcdle_cur_state_reg[1]  ( .D(lcdle_nxt_state[1]), .CP(cclk), .CD(
        n473), .Q(lcdle_cur_state[1]) );
  CFD2QXL \x_cor_reg[1]  ( .D(N697), .CP(n474), .CD(n473), .Q(x_count[1]) );
  CFD2QXL \x_cor_reg[8]  ( .D(N704), .CP(n474), .CD(n473), .Q(x_count[8]) );
  CFD2QXL \x_cor_reg[6]  ( .D(N702), .CP(n474), .CD(n473), .Q(x_count[6]) );
  CFD2QXL \x_cor_reg[4]  ( .D(N700), .CP(n474), .CD(n473), .Q(x_count[4]) );
  CFD2QXL \x_cor_reg[2]  ( .D(N698), .CP(n474), .CD(n473), .Q(x_count[2]) );
  CFD3QXL \lcdle_delay_count_reg[2]  ( .D(n169), .CP(cclk), .CD(n177), .SD(
        n176), .Q(lcdle_delay_count[2]) );
  CFD3QXL \lcdle_delay_count_reg[6]  ( .D(n165), .CP(cclk), .CD(n185), .SD(
        n184), .Q(lcdle_delay_count[6]) );
  CFD3QXL \lcdle_delay_count_reg[4]  ( .D(n167), .CP(cclk), .CD(n181), .SD(
        n180), .Q(lcdle_delay_count[4]) );
  CFD2QXL \vstate_reg[0]  ( .D(vnxtstate[0]), .CP(n474), .CD(n473), .Q(
        vstate[0]) );
  CFD2QXL \lcdle_cur_state_reg[0]  ( .D(lcdle_nxt_state[0]), .CP(cclk), .CD(
        n473), .Q(lcdle_cur_state[0]) );
  CFD2QXL \vstate_reg[2]  ( .D(vnxtstate[2]), .CP(n474), .CD(n473), .Q(
        vstate[2]) );
  CFD2QXL \x_cor_reg[0]  ( .D(N696), .CP(n474), .CD(n473), .Q(x_count[0]) );
  CFD3QXL \lcdle_delay_count_reg[5]  ( .D(n166), .CP(cclk), .CD(n183), .SD(
        n182), .Q(lcdle_delay_count[5]) );
  CFD2QXL \lcdle_hold_count_reg[2]  ( .D(n162), .CP(cclk), .CD(n473), .Q(
        lcdle_hold_count[2]) );
  CFD3QXL \lcdle_delay_count_reg[3]  ( .D(n168), .CP(cclk), .CD(n179), .SD(
        n178), .Q(lcdle_delay_count[3]) );
  CFD3QXL \lcdle_delay_count_reg[1]  ( .D(n170), .CP(cclk), .CD(n175), .SD(
        n174), .Q(lcdle_delay_count[1]) );
  CFD3QXL \lcdle_delay_count_reg[0]  ( .D(n171), .CP(cclk), .CD(n173), .SD(
        n172), .Q(lcdle_delay_count[0]) );
  CFD2QXL \vstate_reg[1]  ( .D(vnxtstate[1]), .CP(n474), .CD(n473), .Q(
        vstate[1]) );
  CFD2QXL \y_cor_reg[7]  ( .D(n188), .CP(LCDDCLK), .CD(n473), .Q(y_count[7])
         );
  CFD2QXL \y_cor_reg[9]  ( .D(n186), .CP(LCDDCLK), .CD(n473), .Q(y_count[9])
         );
  CFD2QXL \y_cor_reg[4]  ( .D(n191), .CP(LCDDCLK), .CD(n473), .Q(y_count[4])
         );
  CFD2QXL \y_cor_reg[2]  ( .D(n193), .CP(LCDDCLK), .CD(n473), .Q(y_count[2])
         );
  CFD2QXL \y_cor_reg[8]  ( .D(n187), .CP(LCDDCLK), .CD(n473), .Q(y_count[8])
         );
  CFD2QXL \y_cor_reg[6]  ( .D(n189), .CP(LCDDCLK), .CD(n473), .Q(y_count[6])
         );
  CFD2QXL \y_cor_reg[1]  ( .D(n194), .CP(LCDDCLK), .CD(n473), .Q(y_count[1])
         );
  CFD2QXL \y_cor_reg[5]  ( .D(n190), .CP(LCDDCLK), .CD(n473), .Q(y_count[5])
         );
  CFD2QXL \y_cor_reg[3]  ( .D(n192), .CP(LCDDCLK), .CD(n473), .Q(y_count[3])
         );
  CFD2QXL \y_cor_reg[0]  ( .D(n195), .CP(LCDDCLK), .CD(n473), .Q(y_count[0])
         );
  CNIVXL U246 ( .A(n327), .Z(n199) );
  CNIVX1 U247 ( .A(n199), .Z(n197) );
  CNIVX1 U248 ( .A(n200), .Z(n198) );
  CNIVX1 U249 ( .A(n225), .Z(n200) );
  CNIVX1 U250 ( .A(n202), .Z(n201) );
  CDLY1X2 U251 ( .A(n291), .Z(n202) );
  CNIVXL U252 ( .A(n407), .Z(n205) );
  CNIVX1 U253 ( .A(n205), .Z(n203) );
  CNIVX1 U254 ( .A(n239), .Z(n204) );
  CNR2XL U255 ( .A(n314), .B(n251), .Z(line_count_nxt[11]) );
  CNIVX1 U256 ( .A(line_count_nxt[2]), .Z(n206) );
  CNIVX1 U257 ( .A(lcd_en), .Z(n207) );
  CEOX1 U258 ( .A(line_count[9]), .B(\lcd_timh[PPL][5] ), .Z(n208) );
  CNR3XL U259 ( .A(n208), .B(line_count[10]), .C(line_count[11]), .Z(n209) );
  CENX1 U260 ( .A(line_count[7]), .B(\lcd_timh[PPL][3] ), .Z(n210) );
  CND3XL U261 ( .A(line_count[3]), .B(n209), .C(n210), .Z(n275) );
  CND4X1 U262 ( .A(n409), .B(n407), .C(n408), .D(\lcd_le[LEE] ), .Z(n211) );
  COND2X1 U263 ( .A(n410), .B(n211), .C(n460), .D(n411), .Z(lcdle_nxt_state[0]) );
  CENX1 U264 ( .A(counter_clicks[9]), .B(\lcd_timv[LPP][9] ), .Z(n212) );
  CEOX1 U265 ( .A(counter_clicks[0]), .B(\lcd_timv[LPP][0] ), .Z(n213) );
  CEOX1 U266 ( .A(counter_clicks[8]), .B(\lcd_timv[LPP][8] ), .Z(n214) );
  CEOX1 U267 ( .A(counter_clicks[1]), .B(\lcd_timv[LPP][1] ), .Z(n215) );
  CEOX1 U268 ( .A(counter_clicks[5]), .B(\lcd_timv[LPP][5] ), .Z(n216) );
  CEOX1 U269 ( .A(counter_clicks[2]), .B(\lcd_timv[LPP][2] ), .Z(n217) );
  CEOX1 U270 ( .A(counter_clicks[3]), .B(\lcd_timv[LPP][3] ), .Z(n218) );
  COR8X1 U271 ( .A(counter_clicks[11]), .B(counter_clicks[10]), .C(n213), .D(
        n214), .E(n215), .F(n216), .G(n217), .H(n218), .Z(n219) );
  CEOX1 U272 ( .A(counter_clicks[6]), .B(\lcd_timv[LPP][6] ), .Z(n220) );
  CEOX1 U273 ( .A(counter_clicks[4]), .B(\lcd_timv[LPP][4] ), .Z(n221) );
  CNR3XL U274 ( .A(n221), .B(n219), .C(n220), .Z(n222) );
  CENX1 U275 ( .A(\lcd_timv[LPP][7] ), .B(counter_clicks[7]), .Z(n223) );
  CND3XL U276 ( .A(n222), .B(n212), .C(n223), .Z(n357) );
  CIVX2 U277 ( .A(n313), .Z(n224) );
  CND2XL U278 ( .A(n288), .B(n319), .Z(n225) );
  COND4CXL U279 ( .A(n409), .B(n224), .C(n305), .D(n198), .Z(n327) );
  CENX1 U280 ( .A(counter_clicks[6]), .B(\lcd_timv[VFP][6] ), .Z(n226) );
  CENX1 U281 ( .A(counter_clicks[4]), .B(\lcd_timv[VFP][4] ), .Z(n227) );
  CENX1 U282 ( .A(counter_clicks[5]), .B(\lcd_timv[VFP][5] ), .Z(n228) );
  CENX1 U283 ( .A(counter_clicks[0]), .B(\lcd_timv[VFP][0] ), .Z(n229) );
  CENX1 U284 ( .A(counter_clicks[1]), .B(\lcd_timv[VFP][1] ), .Z(n230) );
  CENX1 U285 ( .A(counter_clicks[3]), .B(\lcd_timv[VFP][3] ), .Z(n231) );
  CENX1 U286 ( .A(counter_clicks[2]), .B(\lcd_timv[VFP][2] ), .Z(n232) );
  CND8X1 U287 ( .A(n226), .B(n350), .C(n227), .D(n228), .E(n229), .F(n230), 
        .G(n231), .H(n232), .Z(n233) );
  CEOX1 U288 ( .A(counter_clicks[7]), .B(\lcd_timv[VFP][7] ), .Z(n234) );
  CNR2X1 U289 ( .A(n233), .B(n234), .Z(n359) );
  CANR2X1 U290 ( .A(lcd_en), .B(n453), .C(LCDFP), .D(n455), .Z(n235) );
  COND11X1 U291 ( .A(n447), .B(vstate[0]), .C(n448), .D(n235), .Z(vnxtstate[1]) );
  CIVX1 U292 ( .A(n309), .Z(n236) );
  CANR1XL U293 ( .A(n310), .B(n236), .C(n312), .Z(n237) );
  COND11X1 U294 ( .A(linestate[1]), .B(n313), .C(linestate[0]), .D(n237), .Z(
        n238) );
  COND4CX1 U295 ( .A(n307), .B(n474), .C(n238), .D(n207), .Z(n239) );
  COND3XL U296 ( .A(n305), .B(n303), .C(n304), .D(n204), .Z(n407) );
  CENX1 U297 ( .A(counter_clicks[6]), .B(\lcd_timv[VBP][6] ), .Z(n240) );
  CENX1 U298 ( .A(counter_clicks[5]), .B(\lcd_timv[VBP][5] ), .Z(n241) );
  CENX1 U299 ( .A(counter_clicks[4]), .B(\lcd_timv[VBP][4] ), .Z(n242) );
  CENX1 U300 ( .A(counter_clicks[0]), .B(\lcd_timv[VBP][0] ), .Z(n243) );
  CENX1 U301 ( .A(counter_clicks[1]), .B(\lcd_timv[VBP][1] ), .Z(n244) );
  CENX1 U302 ( .A(counter_clicks[3]), .B(\lcd_timv[VBP][3] ), .Z(n245) );
  CENX1 U303 ( .A(counter_clicks[2]), .B(\lcd_timv[VBP][2] ), .Z(n246) );
  CND8X1 U304 ( .A(n240), .B(n350), .C(n241), .D(n242), .E(n243), .F(n244), 
        .G(n245), .H(n246), .Z(n247) );
  CEOX1 U305 ( .A(counter_clicks[7]), .B(\lcd_timv[VBP][7] ), .Z(n248) );
  CNR2X1 U306 ( .A(n247), .B(n248), .Z(n450) );
  CND3XL U307 ( .A(n473), .B(lcd_en), .C(n449), .Z(n249) );
  CANR3X1 U308 ( .A(lcdle_hold_count[1]), .B(lcdle_hold_count[0]), .C(
        lcdle_hold_count[2]), .D(n249), .Z(LCDLE) );
  CND3XL U309 ( .A(n454), .B(n452), .C(n448), .Z(n250) );
  CANR4CX1 U310 ( .A(n415), .B(n357), .C(n250), .D(n268), .Z(vnxtstate[2]) );
  CEOXL U311 ( .A(line_count[11]), .B(n430), .Z(n251) );
  CIVX1 U312 ( .A(LCDFP), .Z(n252) );
  CIVX1 U313 ( .A(n450), .Z(n253) );
  COND2X1 U314 ( .A(n451), .B(n253), .C(vstate[1]), .D(n452), .Z(n254) );
  COND4CX1 U315 ( .A(n454), .B(n254), .C(n453), .D(lcd_en), .Z(n255) );
  COND1XL U316 ( .A(n455), .B(n252), .C(n255), .Z(vnxtstate[0]) );
  CNR2X1 U317 ( .A(n471), .B(n470), .Z(n256) );
  COND1XL U318 ( .A(lcd_en), .B(n472), .C(n256), .Z(n164) );
  COND1XL U319 ( .A(line_count[2]), .B(n431), .C(n442), .Z(n257) );
  CNR2X1 U320 ( .A(n314), .B(n257), .Z(line_count_nxt[2]) );
  CMXI2XL U321 ( .A0(n269), .A1(line_count[4]), .S(\lcd_timh[PPL][0] ), .Z(
        n274) );
  CIVX2 U322 ( .A(line_count[4]), .Z(n269) );
  CNR4X1 U323 ( .A(line_count[8]), .B(line_count[9]), .C(line_count[11]), .D(
        line_count[10]), .Z(n299) );
  CENX1 U324 ( .A(line_count[3]), .B(\lcd_timh[HFP][3] ), .Z(n261) );
  CENX1 U325 ( .A(line_count[7]), .B(\lcd_timh[HFP][7] ), .Z(n260) );
  CENX1 U326 ( .A(line_count[4]), .B(\lcd_timh[HFP][4] ), .Z(n259) );
  CENX1 U327 ( .A(line_count[5]), .B(\lcd_timh[HFP][5] ), .Z(n258) );
  CAN4X1 U328 ( .A(n261), .B(n260), .C(n259), .D(n258), .Z(n264) );
  CENX1 U329 ( .A(line_count[1]), .B(\lcd_timh[HFP][1] ), .Z(n263) );
  CENX1 U330 ( .A(line_count[0]), .B(\lcd_timh[HFP][0] ), .Z(n262) );
  CAN4X1 U331 ( .A(n299), .B(n264), .C(n263), .D(n262), .Z(n267) );
  CENX1 U332 ( .A(line_count[6]), .B(\lcd_timh[HFP][6] ), .Z(n266) );
  CENX1 U333 ( .A(line_count[2]), .B(\lcd_timh[HFP][2] ), .Z(n265) );
  CND3XL U334 ( .A(n267), .B(n266), .C(n265), .Z(n313) );
  CIVX2 U335 ( .A(n207), .Z(n268) );
  CNR3XL U336 ( .A(linestate[0]), .B(linestate[1]), .C(n268), .Z(n409) );
  CIVX2 U337 ( .A(linestate[2]), .Z(n305) );
  CEOXL U338 ( .A(line_count[6]), .B(\lcd_timh[PPL][2] ), .Z(n276) );
  CIVX2 U339 ( .A(\lcd_timh[PPL][1] ), .Z(n272) );
  CIVX2 U340 ( .A(line_count[1]), .Z(n433) );
  CIVX1 U341 ( .A(line_count[0]), .Z(n432) );
  CNR2X1 U342 ( .A(n433), .B(n432), .Z(n431) );
  CND2X1 U343 ( .A(line_count[2]), .B(n431), .Z(n442) );
  CANR1XL U344 ( .A(n272), .B(line_count[5]), .C(n442), .Z(n271) );
  CENX1 U345 ( .A(line_count[8]), .B(\lcd_timh[PPL][4] ), .Z(n270) );
  COND3X1 U346 ( .A(line_count[5]), .B(n272), .C(n271), .D(n270), .Z(n273) );
  CNR4X1 U347 ( .A(n276), .B(n275), .C(n274), .D(n273), .Z(n288) );
  CND2X1 U348 ( .A(linestate[0]), .B(n305), .Z(n289) );
  CIVX2 U349 ( .A(linestate[1]), .Z(n287) );
  CNR3X1 U350 ( .A(n289), .B(n287), .C(n268), .Z(n319) );
  CENX1 U351 ( .A(line_count[7]), .B(\lcd_timh[HSW][7] ), .Z(n280) );
  CENX1 U352 ( .A(line_count[5]), .B(\lcd_timh[HSW][5] ), .Z(n279) );
  CENX1 U353 ( .A(line_count[3]), .B(\lcd_timh[HSW][3] ), .Z(n278) );
  CENX1 U354 ( .A(line_count[4]), .B(\lcd_timh[HSW][4] ), .Z(n277) );
  CAN4X1 U355 ( .A(n280), .B(n279), .C(n278), .D(n277), .Z(n283) );
  CENX1 U356 ( .A(line_count[0]), .B(\lcd_timh[HSW][0] ), .Z(n282) );
  CENX1 U357 ( .A(line_count[1]), .B(\lcd_timh[HSW][1] ), .Z(n281) );
  CAN4X1 U358 ( .A(n299), .B(n283), .C(n282), .D(n281), .Z(n286) );
  CENX1 U359 ( .A(line_count[6]), .B(\lcd_timh[HSW][6] ), .Z(n285) );
  CENX1 U360 ( .A(line_count[2]), .B(\lcd_timh[HSW][2] ), .Z(n284) );
  CND3XL U361 ( .A(n286), .B(n285), .C(n284), .Z(n307) );
  CNR2X1 U362 ( .A(linestate[1]), .B(n289), .Z(n474) );
  CND2X1 U363 ( .A(n207), .B(n474), .Z(n342) );
  CNR3XL U364 ( .A(n288), .B(n287), .C(n289), .Z(n312) );
  CANR4CXL U365 ( .A(n289), .B(n268), .C(linestate[1]), .D(n312), .Z(n290) );
  COND1XL U366 ( .A(n307), .B(n342), .C(n290), .Z(n291) );
  CIVXL U367 ( .A(linestate[0]), .Z(n303) );
  CANR2X1 U368 ( .A(linestate[0]), .B(n268), .C(n409), .D(n305), .Z(n304) );
  CND3XL U369 ( .A(linestate[1]), .B(n305), .C(n303), .Z(n309) );
  CEOXL U370 ( .A(\lcd_timh[HBP][1] ), .B(line_count[1]), .Z(n302) );
  CENX1 U371 ( .A(line_count[5]), .B(\lcd_timh[HBP][5] ), .Z(n295) );
  CENX1 U372 ( .A(line_count[4]), .B(\lcd_timh[HBP][4] ), .Z(n294) );
  CENX1 U373 ( .A(line_count[6]), .B(\lcd_timh[HBP][6] ), .Z(n293) );
  CENX1 U374 ( .A(line_count[7]), .B(\lcd_timh[HBP][7] ), .Z(n292) );
  CAN4X1 U375 ( .A(n295), .B(n294), .C(n293), .D(n292), .Z(n298) );
  CENX1 U376 ( .A(line_count[2]), .B(\lcd_timh[HBP][2] ), .Z(n297) );
  CENX1 U377 ( .A(line_count[3]), .B(\lcd_timh[HBP][3] ), .Z(n296) );
  CND4X1 U378 ( .A(n299), .B(n298), .C(n297), .D(n296), .Z(n301) );
  CEOXL U379 ( .A(line_count[0]), .B(\lcd_timh[HBP][0] ), .Z(n300) );
  CNR3XL U380 ( .A(n302), .B(n301), .C(n300), .Z(n310) );
  COND1XL U381 ( .A(n409), .B(n305), .C(n304), .Z(n306) );
  CANR1XL U382 ( .A(n474), .B(n307), .C(n306), .Z(n308) );
  COND4CX1 U383 ( .A(n310), .B(n207), .C(n309), .D(n308), .Z(n311) );
  CANR3X1 U384 ( .A(linestate[2]), .B(n313), .C(n312), .D(n311), .Z(n314) );
  CIVX2 U385 ( .A(line_count[7]), .Z(n436) );
  CIVX2 U386 ( .A(line_count[5]), .Z(n445) );
  CIVX2 U387 ( .A(line_count[3]), .Z(n441) );
  CNR2X1 U388 ( .A(n442), .B(n441), .Z(n440) );
  CND2X1 U389 ( .A(line_count[4]), .B(n440), .Z(n444) );
  CNR2X1 U390 ( .A(n445), .B(n444), .Z(n443) );
  CND2X1 U391 ( .A(line_count[6]), .B(n443), .Z(n435) );
  CNR2X1 U392 ( .A(n436), .B(n435), .Z(n434) );
  CND2X1 U393 ( .A(line_count[8]), .B(n434), .Z(n438) );
  COND1XL U394 ( .A(line_count[8]), .B(n434), .C(n438), .Z(n315) );
  CNR2XL U395 ( .A(n314), .B(n315), .Z(line_count_nxt[8]) );
  COND1XL U396 ( .A(line_count[6]), .B(n443), .C(n435), .Z(n316) );
  CNR2XL U397 ( .A(n314), .B(n316), .Z(line_count_nxt[6]) );
  COND1XL U398 ( .A(line_count[4]), .B(n440), .C(n444), .Z(n317) );
  CNR2XL U399 ( .A(n314), .B(n317), .Z(line_count_nxt[4]) );
  CIVX2 U400 ( .A(line_count[9]), .Z(n439) );
  CNR2X1 U401 ( .A(n439), .B(n438), .Z(n437) );
  CND2X1 U402 ( .A(line_count[10]), .B(n437), .Z(n430) );
  COND1XL U403 ( .A(line_count[10]), .B(n437), .C(n430), .Z(n318) );
  CNR2XL U404 ( .A(n314), .B(n318), .Z(line_count_nxt[10]) );
  CIVXL U405 ( .A(vstate[2]), .Z(n358) );
  CND2XL U406 ( .A(vstate[1]), .B(n358), .Z(n451) );
  CIVXL U407 ( .A(vstate[0]), .Z(n454) );
  CNR2X1 U408 ( .A(n451), .B(n454), .Z(n420) );
  CND2X1 U409 ( .A(n420), .B(n319), .Z(n427) );
  CND2XL U410 ( .A(y_count[1]), .B(y_count[0]), .Z(n322) );
  CNR2IX1 U411 ( .B(y_count[2]), .A(n322), .Z(n332) );
  CND2X1 U412 ( .A(n332), .B(y_count[3]), .Z(n323) );
  CNR2XL U413 ( .A(y_count[3]), .B(n427), .Z(n331) );
  COND4CX1 U414 ( .A(linestate[2]), .B(n409), .C(n319), .D(n420), .Z(n339) );
  CIVX2 U415 ( .A(n339), .Z(n341) );
  COND1XL U416 ( .A(n332), .B(n427), .C(n341), .Z(n330) );
  COND1XL U417 ( .A(n331), .B(n330), .C(y_count[4]), .Z(n320) );
  COND11XL U418 ( .A(y_count[4]), .B(n427), .C(n323), .D(n320), .Z(n191) );
  CNR2XL U419 ( .A(y_count[1]), .B(n427), .Z(n333) );
  COND1XL U420 ( .A(y_count[0]), .B(n427), .C(n341), .Z(n334) );
  COND1XL U421 ( .A(n333), .B(n334), .C(y_count[2]), .Z(n321) );
  COND11XL U422 ( .A(y_count[2]), .B(n322), .C(n427), .D(n321), .Z(n193) );
  CNR2IX1 U423 ( .B(y_count[4]), .A(n323), .Z(n337) );
  CND2X1 U424 ( .A(n337), .B(y_count[5]), .Z(n338) );
  CNR2XL U425 ( .A(y_count[5]), .B(n427), .Z(n336) );
  COND1XL U426 ( .A(n337), .B(n427), .C(n341), .Z(n335) );
  COND1XL U427 ( .A(n336), .B(n335), .C(y_count[6]), .Z(n324) );
  COND11XL U428 ( .A(y_count[6]), .B(n427), .C(n338), .D(n324), .Z(n189) );
  CIVXL U429 ( .A(lcdle_cur_state[0]), .Z(n408) );
  CNR2X1 U430 ( .A(lcdle_cur_state[1]), .B(n408), .Z(n398) );
  CIVX2 U431 ( .A(n398), .Z(n374) );
  CNR3XL U432 ( .A(lcdle_delay_count[0]), .B(lcdle_delay_count[2]), .C(
        lcdle_delay_count[1]), .Z(n388) );
  CNR2X1 U433 ( .A(lcdle_delay_count[4]), .B(lcdle_delay_count[3]), .Z(n325)
         );
  CND2X1 U434 ( .A(n388), .B(n325), .Z(n397) );
  CNR3XL U435 ( .A(lcdle_delay_count[5]), .B(lcdle_delay_count[6]), .C(n397), 
        .Z(n411) );
  CIVX2 U436 ( .A(n411), .Z(n401) );
  CIVX2 U437 ( .A(lcdle_hold_count[1]), .Z(n345) );
  CIVX2 U438 ( .A(lcdle_hold_count[0]), .Z(n472) );
  CND2XL U439 ( .A(n345), .B(n472), .Z(n449) );
  CIVXL U440 ( .A(lcdle_cur_state[1]), .Z(n326) );
  CNR2X1 U441 ( .A(lcdle_cur_state[0]), .B(n326), .Z(n343) );
  CND2XL U442 ( .A(linestate[2]), .B(n326), .Z(n410) );
  CNR4X1 U443 ( .A(\lcd_le[LEE] ), .B(lcdle_cur_state[0]), .C(n410), .D(n327), 
        .Z(n328) );
  CANR4CX1 U444 ( .A(lcdle_hold_count[2]), .B(n449), .C(n343), .D(n328), .Z(
        n329) );
  CANR4CXL U445 ( .A(n374), .B(n401), .C(n329), .D(n268), .Z(
        lcdle_nxt_state[1]) );
  CIVX2 U446 ( .A(n420), .Z(n415) );
  CIVXL U447 ( .A(vstate[1]), .Z(n448) );
  CNR4X1 U448 ( .A(counter_clicks[9]), .B(counter_clicks[11]), .C(
        counter_clicks[10]), .D(counter_clicks[8]), .Z(n350) );
  CND2XL U449 ( .A(vstate[2]), .B(n359), .Z(n452) );
  CAOR2XL U450 ( .A(n332), .B(n331), .C(y_count[3]), .D(n330), .Z(n192) );
  CAOR2XL U451 ( .A(y_count[1]), .B(n334), .C(y_count[0]), .D(n333), .Z(n194)
         );
  CAOR2XL U452 ( .A(n337), .B(n336), .C(y_count[5]), .D(n335), .Z(n190) );
  CIVX2 U453 ( .A(n427), .Z(LCDENA_LCDM) );
  CND2IX1 U454 ( .B(n338), .A(y_count[6]), .Z(n424) );
  CANR1XL U455 ( .A(LCDENA_LCDM), .B(n424), .C(n339), .Z(n426) );
  CIVX1 U456 ( .A(y_count[7]), .Z(n425) );
  CND2XL U457 ( .A(LCDENA_LCDM), .B(n425), .Z(n340) );
  COND2XL U458 ( .A(n426), .B(n425), .C(n340), .D(n424), .Z(n188) );
  CMXI2XL U459 ( .A0(n427), .A1(n341), .S(y_count[0]), .Z(n195) );
  CNR2X1 U460 ( .A(vstate[2]), .B(n268), .Z(n356) );
  CIVX2 U461 ( .A(n356), .Z(n447) );
  CNR3XL U462 ( .A(vstate[1]), .B(n454), .C(n447), .Z(LCDFP) );
  CIVXL U463 ( .A(n342), .Z(LCDLP) );
  CIVX3 U464 ( .A(rst), .Z(n473) );
  CAN2X1 U465 ( .A(lcd_pwr), .B(n473), .Z(LCDPWR) );
  CNR2XL U466 ( .A(line_count[0]), .B(n314), .Z(line_count_nxt[0]) );
  CNR2X1 U467 ( .A(lcdle_hold_count[0]), .B(n268), .Z(n471) );
  CNR2X1 U468 ( .A(n268), .B(n449), .Z(n380) );
  CNR2X1 U469 ( .A(n343), .B(n268), .Z(n470) );
  CNR2X1 U470 ( .A(n380), .B(n470), .Z(n344) );
  COND1XL U471 ( .A(n345), .B(n471), .C(n344), .Z(n163) );
  CND2X1 U472 ( .A(\lcd_le[LED][2] ), .B(rst), .Z(n176) );
  CND2X1 U473 ( .A(\lcd_le[LED][5] ), .B(rst), .Z(n182) );
  CND2X1 U474 ( .A(\lcd_le[LED][6] ), .B(rst), .Z(n184) );
  CND2X1 U475 ( .A(\lcd_le[LED][0] ), .B(rst), .Z(n172) );
  CND2X1 U476 ( .A(\lcd_le[LED][4] ), .B(rst), .Z(n180) );
  CND2X1 U477 ( .A(\lcd_le[LED][1] ), .B(rst), .Z(n174) );
  CND2X1 U478 ( .A(\lcd_le[LED][3] ), .B(rst), .Z(n178) );
  CND2XL U479 ( .A(lcd_en), .B(n398), .Z(n460) );
  CAOR1XL U480 ( .A(n398), .B(lcdle_delay_count[0]), .C(n268), .Z(n387) );
  CNR2X1 U481 ( .A(n398), .B(n268), .Z(n461) );
  CANR2X1 U482 ( .A(lcdle_delay_count[1]), .B(n387), .C(n461), .D(
        \lcd_le[LED][1] ), .Z(n346) );
  COND11X1 U483 ( .A(lcdle_delay_count[0]), .B(lcdle_delay_count[1]), .C(n460), 
        .D(n346), .Z(n170) );
  COND1XL U484 ( .A(vstate[0]), .B(n450), .C(n356), .Z(n362) );
  CEOX1 U485 ( .A(\lcd_timv[VSW][4] ), .B(counter_clicks[4]), .Z(n355) );
  CEOX1 U486 ( .A(counter_clicks[5]), .B(\lcd_timv[VSW][5] ), .Z(n352) );
  CENX1 U487 ( .A(counter_clicks[1]), .B(\lcd_timv[VSW][1] ), .Z(n349) );
  CENX1 U488 ( .A(counter_clicks[2]), .B(\lcd_timv[VSW][2] ), .Z(n348) );
  CENX1 U489 ( .A(counter_clicks[0]), .B(\lcd_timv[VSW][0] ), .Z(n347) );
  CND4X1 U490 ( .A(n350), .B(n349), .C(n348), .D(n347), .Z(n351) );
  COR4X1 U491 ( .A(counter_clicks[6]), .B(counter_clicks[7]), .C(n352), .D(
        n351), .Z(n354) );
  CEOX1 U492 ( .A(counter_clicks[3]), .B(\lcd_timv[VSW][3] ), .Z(n353) );
  CNR3XL U493 ( .A(n355), .B(n354), .C(n353), .Z(n455) );
  CANR4CXL U494 ( .A(vstate[1]), .B(n455), .C(n356), .D(n454), .Z(n361) );
  CND2X1 U495 ( .A(n420), .B(n357), .Z(n446) );
  COND4CXL U496 ( .A(lcd_en), .B(n359), .C(n358), .D(n446), .Z(n360) );
  CANR3X1 U497 ( .A(vstate[1]), .B(n362), .C(n361), .D(n360), .Z(n416) );
  CIVX2 U498 ( .A(counter_clicks[9]), .Z(n373) );
  CIVX2 U499 ( .A(counter_clicks[7]), .Z(n393) );
  CIVX2 U500 ( .A(counter_clicks[5]), .Z(n419) );
  CIVX2 U501 ( .A(counter_clicks[3]), .Z(n379) );
  CIVXL U502 ( .A(counter_clicks[0]), .Z(n369) );
  CIVX2 U503 ( .A(counter_clicks[1]), .Z(n368) );
  CNR2X1 U504 ( .A(n369), .B(n368), .Z(n367) );
  CND2X1 U505 ( .A(counter_clicks[2]), .B(n367), .Z(n378) );
  CNR2X1 U506 ( .A(n379), .B(n378), .Z(n377) );
  CND2X1 U507 ( .A(counter_clicks[4]), .B(n377), .Z(n418) );
  CNR2X1 U508 ( .A(n419), .B(n418), .Z(n417) );
  CND2X1 U509 ( .A(counter_clicks[6]), .B(n417), .Z(n392) );
  CNR2X1 U510 ( .A(n393), .B(n392), .Z(n391) );
  CND2X1 U511 ( .A(counter_clicks[8]), .B(n391), .Z(n385) );
  CNR2X1 U512 ( .A(n373), .B(n385), .Z(n383) );
  CND2X1 U513 ( .A(counter_clicks[10]), .B(n383), .Z(n382) );
  CEOX1 U514 ( .A(counter_clicks[11]), .B(n382), .Z(n363) );
  CNR2X1 U515 ( .A(n416), .B(n363), .Z(counter_clicks_nxt[11]) );
  CNR2X1 U516 ( .A(x_count[0]), .B(n415), .Z(N696) );
  COND1XL U517 ( .A(counter_clicks[2]), .B(n367), .C(n378), .Z(n364) );
  CNR2X1 U518 ( .A(n416), .B(n364), .Z(counter_clicks_nxt[2]) );
  COND1XL U519 ( .A(counter_clicks[6]), .B(n417), .C(n392), .Z(n365) );
  CNR2X1 U520 ( .A(n416), .B(n365), .Z(counter_clicks_nxt[6]) );
  CAN2X1 U521 ( .A(x_count[1]), .B(x_count[0]), .Z(n422) );
  CND2X1 U522 ( .A(n422), .B(x_count[2]), .Z(n396) );
  CIVX2 U523 ( .A(x_count[3]), .Z(n395) );
  CNR2X1 U524 ( .A(n396), .B(n395), .Z(n402) );
  CND2X1 U525 ( .A(n402), .B(x_count[4]), .Z(n406) );
  CIVX2 U526 ( .A(x_count[5]), .Z(n405) );
  CNR2X1 U527 ( .A(n406), .B(n405), .Z(n404) );
  CND2X1 U528 ( .A(n404), .B(x_count[6]), .Z(n370) );
  CIVX2 U529 ( .A(x_count[7]), .Z(n366) );
  CNR2X1 U530 ( .A(n370), .B(n366), .Z(n413) );
  CANR3X1 U531 ( .A(n370), .B(n366), .C(n413), .D(n415), .Z(N703) );
  CANR3X1 U532 ( .A(n369), .B(n368), .C(n367), .D(n416), .Z(
        counter_clicks_nxt[1]) );
  COND1XL U533 ( .A(n404), .B(x_count[6]), .C(n370), .Z(n371) );
  CNR2X1 U534 ( .A(n415), .B(n371), .Z(N702) );
  COND1XL U535 ( .A(counter_clicks[4]), .B(n377), .C(n418), .Z(n372) );
  CNR2X1 U536 ( .A(n416), .B(n372), .Z(counter_clicks_nxt[4]) );
  CANR3X1 U537 ( .A(n373), .B(n385), .C(n383), .D(n416), .Z(
        counter_clicks_nxt[9]) );
  COND1XL U538 ( .A(n388), .B(n374), .C(lcd_en), .Z(n462) );
  COND4CX1 U539 ( .A(n398), .B(lcdle_delay_count[3]), .C(n462), .D(
        lcdle_delay_count[4]), .Z(n376) );
  CNR2X1 U540 ( .A(n460), .B(n397), .Z(n466) );
  CANR1XL U541 ( .A(n461), .B(\lcd_le[LED][4] ), .C(n466), .Z(n375) );
  CND2X1 U542 ( .A(n376), .B(n375), .Z(n167) );
  CANR3X1 U543 ( .A(n379), .B(n378), .C(n377), .D(n416), .Z(
        counter_clicks_nxt[3]) );
  CENX1 U544 ( .A(lcdle_hold_count[2]), .B(n380), .Z(n381) );
  CNR2X1 U545 ( .A(n470), .B(n381), .Z(n162) );
  CNR2X1 U546 ( .A(counter_clicks[0]), .B(n416), .Z(counter_clicks_nxt[0]) );
  COND1XL U547 ( .A(counter_clicks[10]), .B(n383), .C(n382), .Z(n384) );
  CNR2X1 U548 ( .A(n416), .B(n384), .Z(counter_clicks_nxt[10]) );
  COND1XL U549 ( .A(counter_clicks[8]), .B(n391), .C(n385), .Z(n386) );
  CNR2X1 U550 ( .A(n416), .B(n386), .Z(counter_clicks_nxt[8]) );
  CIVX2 U551 ( .A(n461), .Z(n469) );
  CIVX2 U552 ( .A(\lcd_le[LED][2] ), .Z(n423) );
  COND4CX1 U553 ( .A(n398), .B(lcdle_delay_count[1]), .C(n387), .D(
        lcdle_delay_count[2]), .Z(n389) );
  CND2IX1 U554 ( .B(n460), .A(n388), .Z(n464) );
  COND3X1 U555 ( .A(n469), .B(n423), .C(n389), .D(n464), .Z(n169) );
  CND2X1 U556 ( .A(n413), .B(x_count[8]), .Z(n412) );
  CEOX1 U557 ( .A(x_count[9]), .B(n412), .Z(n390) );
  CNR2X1 U558 ( .A(n415), .B(n390), .Z(N705) );
  CANR3X1 U559 ( .A(n393), .B(n392), .C(n391), .D(n416), .Z(
        counter_clicks_nxt[7]) );
  COND1XL U560 ( .A(n422), .B(x_count[2]), .C(n396), .Z(n394) );
  CNR2X1 U561 ( .A(n415), .B(n394), .Z(N698) );
  CANR3X1 U562 ( .A(n396), .B(n395), .C(n402), .D(n415), .Z(N699) );
  CAOR1XL U563 ( .A(n397), .B(n398), .C(n268), .Z(n465) );
  COND4CX1 U564 ( .A(lcdle_delay_count[5]), .B(n398), .C(n465), .D(
        lcdle_delay_count[6]), .Z(n400) );
  CND2X1 U565 ( .A(n461), .B(\lcd_le[LED][6] ), .Z(n399) );
  COND3X1 U566 ( .A(n401), .B(n460), .C(n400), .D(n399), .Z(n165) );
  COND1XL U567 ( .A(n402), .B(x_count[4]), .C(n406), .Z(n403) );
  CNR2X1 U568 ( .A(n415), .B(n403), .Z(N700) );
  CANR3X1 U569 ( .A(n406), .B(n405), .C(n404), .D(n415), .Z(N701) );
  COND1XL U570 ( .A(n413), .B(x_count[8]), .C(n412), .Z(n414) );
  CNR2X1 U571 ( .A(n415), .B(n414), .Z(N704) );
  CANR3X1 U572 ( .A(n419), .B(n418), .C(n417), .D(n416), .Z(
        counter_clicks_nxt[5]) );
  COND1XL U573 ( .A(x_count[1]), .B(x_count[0]), .C(n420), .Z(n421) );
  CNR2X1 U574 ( .A(n422), .B(n421), .Z(N697) );
  COR2X1 U575 ( .A(\lcd_le[LED][3] ), .B(n473), .Z(n179) );
  CND2X1 U576 ( .A(rst), .B(n423), .Z(n177) );
  COR2X1 U577 ( .A(\lcd_le[LED][6] ), .B(n473), .Z(n185) );
  COR2X1 U578 ( .A(\lcd_le[LED][4] ), .B(n473), .Z(n181) );
  CIVX2 U579 ( .A(\lcd_le[LED][5] ), .Z(n468) );
  CND2X1 U580 ( .A(rst), .B(n468), .Z(n183) );
  COR2X1 U581 ( .A(\lcd_le[LED][1] ), .B(n473), .Z(n175) );
  COR2X1 U582 ( .A(\lcd_le[LED][0] ), .B(n473), .Z(n173) );
  CIVXL U583 ( .A(y_count[8]), .Z(n429) );
  COR3XL U584 ( .A(n427), .B(n425), .C(n424), .Z(n458) );
  COND1XL U585 ( .A(y_count[7]), .B(n427), .C(n426), .Z(n456) );
  COND4CX1 U586 ( .A(LCDENA_LCDM), .B(n429), .C(n456), .D(y_count[9]), .Z(n428) );
  COND11X1 U587 ( .A(y_count[9]), .B(n429), .C(n458), .D(n428), .Z(n186) );
  CANR3X1 U588 ( .A(n433), .B(n432), .C(n314), .D(n431), .Z(line_count_nxt[1])
         );
  CANR3X1 U589 ( .A(n436), .B(n435), .C(n434), .D(n314), .Z(line_count_nxt[7])
         );
  CANR3X1 U590 ( .A(n439), .B(n438), .C(n437), .D(n314), .Z(line_count_nxt[9])
         );
  CANR3X1 U591 ( .A(n442), .B(n441), .C(n440), .D(n314), .Z(line_count_nxt[3])
         );
  CANR3X1 U592 ( .A(n445), .B(n444), .C(n443), .D(n314), .Z(line_count_nxt[5])
         );
  CIVX2 U593 ( .A(n446), .Z(n453) );
  CND2XL U594 ( .A(y_count[8]), .B(n456), .Z(n457) );
  COND1XL U595 ( .A(n458), .B(y_count[8]), .C(n457), .Z(n187) );
  CANR2XL U596 ( .A(\lcd_le[LED][0] ), .B(n461), .C(lcdle_delay_count[0]), .D(
        n268), .Z(n459) );
  COND1XL U597 ( .A(lcdle_delay_count[0]), .B(n460), .C(n459), .Z(n171) );
  CANR2X1 U598 ( .A(lcdle_delay_count[3]), .B(n462), .C(n461), .D(
        \lcd_le[LED][3] ), .Z(n463) );
  COND1XL U599 ( .A(lcdle_delay_count[3]), .B(n464), .C(n463), .Z(n168) );
  CMXI2X1 U600 ( .A0(n466), .A1(n465), .S(lcdle_delay_count[5]), .Z(n467) );
  COND1XL U601 ( .A(n469), .B(n468), .C(n467), .Z(n166) );
endmodule

