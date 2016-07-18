
module LCD_slave ( HCLK, HRESET, HSEL, HADDR, HWDATA, HWRITE, HTRANS, HSIZE, 
        HBURST, HRDATA, HREADY, HRESP, .lcd_cfg({\lcd_cfg[UNUSED][26] , 
        \lcd_cfg[UNUSED][25] , \lcd_cfg[UNUSED][24] , \lcd_cfg[UNUSED][23] , 
        \lcd_cfg[UNUSED][22] , \lcd_cfg[UNUSED][21] , \lcd_cfg[UNUSED][20] , 
        \lcd_cfg[UNUSED][19] , \lcd_cfg[UNUSED][18] , \lcd_cfg[UNUSED][17] , 
        \lcd_cfg[UNUSED][16] , \lcd_cfg[UNUSED][15] , \lcd_cfg[UNUSED][14] , 
        \lcd_cfg[UNUSED][13] , \lcd_cfg[UNUSED][12] , \lcd_cfg[UNUSED][11] , 
        \lcd_cfg[UNUSED][10] , \lcd_cfg[UNUSED][9] , \lcd_cfg[UNUSED][8] , 
        \lcd_cfg[UNUSED][7] , \lcd_cfg[UNUSED][6] , \lcd_cfg[UNUSED][5] , 
        \lcd_cfg[UNUSED][4] , \lcd_cfg[UNUSED][3] , \lcd_cfg[UNUSED][2] , 
        \lcd_cfg[UNUSED][1] , \lcd_cfg[UNUSED][0] , \lcd_cfg[CLKDIV][4] , 
        \lcd_cfg[CLKDIV][3] , \lcd_cfg[CLKDIV][2] , \lcd_cfg[CLKDIV][1] , 
        \lcd_cfg[CLKDIV][0] }), .lcd_timh({\lcd_timh[HBP][7] , 
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
        \lcd_timv[LPP][0] }), .lcd_pol({\lcd_pol[PCD_HI][4] , 
        \lcd_pol[PCD_HI][3] , \lcd_pol[PCD_HI][2] , \lcd_pol[PCD_HI][1] , 
        \lcd_pol[PCD_HI][0] , \lcd_pol[BCD] , \lcd_pol[CPL][9] , 
        \lcd_pol[CPL][8] , \lcd_pol[CPL][7] , \lcd_pol[CPL][6] , 
        \lcd_pol[CPL][5] , \lcd_pol[CPL][4] , \lcd_pol[CPL][3] , 
        \lcd_pol[CPL][2] , \lcd_pol[CPL][1] , \lcd_pol[CPL][0] , 
        \lcd_pol[UNUSED] , \lcd_pol[IOE] , \lcd_pol[IPC] , \lcd_pol[IHS] , 
        \lcd_pol[IVS] , \lcd_pol[ACB][4] , \lcd_pol[ACB][3] , 
        \lcd_pol[ACB][2] , \lcd_pol[ACB][1] , \lcd_pol[ACB][0] , 
        \lcd_pol[CLKSEL] , \lcd_pol[PCD_LO][4] , \lcd_pol[PCD_LO][3] , 
        \lcd_pol[PCD_LO][2] , \lcd_pol[PCD_LO][1] , \lcd_pol[PCD_LO][0] }), 
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
        \lcd_le[LED][1] , \lcd_le[LED][0] }), .lcd_upbase({
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
        \lcd_upbase[UNUSED][1] , \lcd_upbase[UNUSED][0] }), .lcd_lpbase({
        \lcd_lpbase[LCDLPBASE][28] , \lcd_lpbase[LCDLPBASE][27] , 
        \lcd_lpbase[LCDLPBASE][26] , \lcd_lpbase[LCDLPBASE][25] , 
        \lcd_lpbase[LCDLPBASE][24] , \lcd_lpbase[LCDLPBASE][23] , 
        \lcd_lpbase[LCDLPBASE][22] , \lcd_lpbase[LCDLPBASE][21] , 
        \lcd_lpbase[LCDLPBASE][20] , \lcd_lpbase[LCDLPBASE][19] , 
        \lcd_lpbase[LCDLPBASE][18] , \lcd_lpbase[LCDLPBASE][17] , 
        \lcd_lpbase[LCDLPBASE][16] , \lcd_lpbase[LCDLPBASE][15] , 
        \lcd_lpbase[LCDLPBASE][14] , \lcd_lpbase[LCDLPBASE][13] , 
        \lcd_lpbase[LCDLPBASE][12] , \lcd_lpbase[LCDLPBASE][11] , 
        \lcd_lpbase[LCDLPBASE][10] , \lcd_lpbase[LCDLPBASE][9] , 
        \lcd_lpbase[LCDLPBASE][8] , \lcd_lpbase[LCDLPBASE][7] , 
        \lcd_lpbase[LCDLPBASE][6] , \lcd_lpbase[LCDLPBASE][5] , 
        \lcd_lpbase[LCDLPBASE][4] , \lcd_lpbase[LCDLPBASE][3] , 
        \lcd_lpbase[LCDLPBASE][2] , \lcd_lpbase[LCDLPBASE][1] , 
        \lcd_lpbase[LCDLPBASE][0] , \lcd_lpbase[UNUSED][2] , 
        \lcd_lpbase[UNUSED][1] , \lcd_lpbase[UNUSED][0] }), .lcd_ctrl({
        \lcd_ctrl[UNUSED_0][14] , \lcd_ctrl[UNUSED_0][13] , 
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
        \lcd_ctrl[LCDBPP][0] , \lcd_ctrl[LCDEN] }), .lcd_intmsk({
        \lcd_intmsk[UNUSED_0][26] , \lcd_intmsk[UNUSED_0][25] , 
        \lcd_intmsk[UNUSED_0][24] , \lcd_intmsk[UNUSED_0][23] , 
        \lcd_intmsk[UNUSED_0][22] , \lcd_intmsk[UNUSED_0][21] , 
        \lcd_intmsk[UNUSED_0][20] , \lcd_intmsk[UNUSED_0][19] , 
        \lcd_intmsk[UNUSED_0][18] , \lcd_intmsk[UNUSED_0][17] , 
        \lcd_intmsk[UNUSED_0][16] , \lcd_intmsk[UNUSED_0][15] , 
        \lcd_intmsk[UNUSED_0][14] , \lcd_intmsk[UNUSED_0][13] , 
        \lcd_intmsk[UNUSED_0][12] , \lcd_intmsk[UNUSED_0][11] , 
        \lcd_intmsk[UNUSED_0][10] , \lcd_intmsk[UNUSED_0][9] , 
        \lcd_intmsk[UNUSED_0][8] , \lcd_intmsk[UNUSED_0][7] , 
        \lcd_intmsk[UNUSED_0][6] , \lcd_intmsk[UNUSED_0][5] , 
        \lcd_intmsk[UNUSED_0][4] , \lcd_intmsk[UNUSED_0][3] , 
        \lcd_intmsk[UNUSED_0][2] , \lcd_intmsk[UNUSED_0][1] , 
        \lcd_intmsk[UNUSED_0][0] , \lcd_intmsk[BERIM] , \lcd_intmsk[VCOMPIM] , 
        \lcd_intmsk[LNBUIM] , \lcd_intmsk[FUFIM] , \lcd_intmsk[UNUSED_1] }), 
    .lcd_intraw({\lcd_intraw[UNUSED_0][26] , \lcd_intraw[UNUSED_0][25] , 
        \lcd_intraw[UNUSED_0][24] , \lcd_intraw[UNUSED_0][23] , 
        \lcd_intraw[UNUSED_0][22] , \lcd_intraw[UNUSED_0][21] , 
        \lcd_intraw[UNUSED_0][20] , \lcd_intraw[UNUSED_0][19] , 
        \lcd_intraw[UNUSED_0][18] , \lcd_intraw[UNUSED_0][17] , 
        \lcd_intraw[UNUSED_0][16] , \lcd_intraw[UNUSED_0][15] , 
        \lcd_intraw[UNUSED_0][14] , \lcd_intraw[UNUSED_0][13] , 
        \lcd_intraw[UNUSED_0][12] , \lcd_intraw[UNUSED_0][11] , 
        \lcd_intraw[UNUSED_0][10] , \lcd_intraw[UNUSED_0][9] , 
        \lcd_intraw[UNUSED_0][8] , \lcd_intraw[UNUSED_0][7] , 
        \lcd_intraw[UNUSED_0][6] , \lcd_intraw[UNUSED_0][5] , 
        \lcd_intraw[UNUSED_0][4] , \lcd_intraw[UNUSED_0][3] , 
        \lcd_intraw[UNUSED_0][2] , \lcd_intraw[UNUSED_0][1] , 
        \lcd_intraw[UNUSED_0][0] , \lcd_intraw[BERRAW] , 
        \lcd_intraw[VCOMPRIS] , \lcd_intraw[LNBURIS] , \lcd_intraw[FUFRIS] , 
        \lcd_intraw[UNUSED_1] }), .lcd_intstat({\lcd_intstat[UNUSED_0][26] , 
        \lcd_intstat[UNUSED_0][25] , \lcd_intstat[UNUSED_0][24] , 
        \lcd_intstat[UNUSED_0][23] , \lcd_intstat[UNUSED_0][22] , 
        \lcd_intstat[UNUSED_0][21] , \lcd_intstat[UNUSED_0][20] , 
        \lcd_intstat[UNUSED_0][19] , \lcd_intstat[UNUSED_0][18] , 
        \lcd_intstat[UNUSED_0][17] , \lcd_intstat[UNUSED_0][16] , 
        \lcd_intstat[UNUSED_0][15] , \lcd_intstat[UNUSED_0][14] , 
        \lcd_intstat[UNUSED_0][13] , \lcd_intstat[UNUSED_0][12] , 
        \lcd_intstat[UNUSED_0][11] , \lcd_intstat[UNUSED_0][10] , 
        \lcd_intstat[UNUSED_0][9] , \lcd_intstat[UNUSED_0][8] , 
        \lcd_intstat[UNUSED_0][7] , \lcd_intstat[UNUSED_0][6] , 
        \lcd_intstat[UNUSED_0][5] , \lcd_intstat[UNUSED_0][4] , 
        \lcd_intstat[UNUSED_0][3] , \lcd_intstat[UNUSED_0][2] , 
        \lcd_intstat[UNUSED_0][1] , \lcd_intstat[UNUSED_0][0] , 
        \lcd_intstat[BERMIS] , \lcd_intstat[VCOMPMIS] , \lcd_intstat[LNBUMIS] , 
        \lcd_intstat[FUFMIS] , \lcd_intstat[UNUSED_1] }), .lcd_intclr({
        \lcd_intclr[UNUSED_0][26] , \lcd_intclr[UNUSED_0][25] , 
        \lcd_intclr[UNUSED_0][24] , \lcd_intclr[UNUSED_0][23] , 
        \lcd_intclr[UNUSED_0][22] , \lcd_intclr[UNUSED_0][21] , 
        \lcd_intclr[UNUSED_0][20] , \lcd_intclr[UNUSED_0][19] , 
        \lcd_intclr[UNUSED_0][18] , \lcd_intclr[UNUSED_0][17] , 
        \lcd_intclr[UNUSED_0][16] , \lcd_intclr[UNUSED_0][15] , 
        \lcd_intclr[UNUSED_0][14] , \lcd_intclr[UNUSED_0][13] , 
        \lcd_intclr[UNUSED_0][12] , \lcd_intclr[UNUSED_0][11] , 
        \lcd_intclr[UNUSED_0][10] , \lcd_intclr[UNUSED_0][9] , 
        \lcd_intclr[UNUSED_0][8] , \lcd_intclr[UNUSED_0][7] , 
        \lcd_intclr[UNUSED_0][6] , \lcd_intclr[UNUSED_0][5] , 
        \lcd_intclr[UNUSED_0][4] , \lcd_intclr[UNUSED_0][3] , 
        \lcd_intclr[UNUSED_0][2] , \lcd_intclr[UNUSED_0][1] , 
        \lcd_intclr[UNUSED_0][0] , \lcd_intclr[BERIC] , \lcd_intclr[VCOMPIC] , 
        \lcd_intclr[LNBUIC] , \lcd_intclr[FUFIC] , \lcd_intclr[UNUSED_1] }), 
    .lcd_upcurr({\lcd_upcurr[LCDUPCURR][31] , \lcd_upcurr[LCDUPCURR][30] , 
        \lcd_upcurr[LCDUPCURR][29] , \lcd_upcurr[LCDUPCURR][28] , 
        \lcd_upcurr[LCDUPCURR][27] , \lcd_upcurr[LCDUPCURR][26] , 
        \lcd_upcurr[LCDUPCURR][25] , \lcd_upcurr[LCDUPCURR][24] , 
        \lcd_upcurr[LCDUPCURR][23] , \lcd_upcurr[LCDUPCURR][22] , 
        \lcd_upcurr[LCDUPCURR][21] , \lcd_upcurr[LCDUPCURR][20] , 
        \lcd_upcurr[LCDUPCURR][19] , \lcd_upcurr[LCDUPCURR][18] , 
        \lcd_upcurr[LCDUPCURR][17] , \lcd_upcurr[LCDUPCURR][16] , 
        \lcd_upcurr[LCDUPCURR][15] , \lcd_upcurr[LCDUPCURR][14] , 
        \lcd_upcurr[LCDUPCURR][13] , \lcd_upcurr[LCDUPCURR][12] , 
        \lcd_upcurr[LCDUPCURR][11] , \lcd_upcurr[LCDUPCURR][10] , 
        \lcd_upcurr[LCDUPCURR][9] , \lcd_upcurr[LCDUPCURR][8] , 
        \lcd_upcurr[LCDUPCURR][7] , \lcd_upcurr[LCDUPCURR][6] , 
        \lcd_upcurr[LCDUPCURR][5] , \lcd_upcurr[LCDUPCURR][4] , 
        \lcd_upcurr[LCDUPCURR][3] , \lcd_upcurr[LCDUPCURR][2] , 
        \lcd_upcurr[LCDUPCURR][1] , \lcd_upcurr[LCDUPCURR][0] }), 
    .lcd_lpcurr({\lcd_lpcurr[LCDLPCURR][31] , \lcd_lpcurr[LCDLPCURR][30] , 
        \lcd_lpcurr[LCDLPCURR][29] , \lcd_lpcurr[LCDLPCURR][28] , 
        \lcd_lpcurr[LCDLPCURR][27] , \lcd_lpcurr[LCDLPCURR][26] , 
        \lcd_lpcurr[LCDLPCURR][25] , \lcd_lpcurr[LCDLPCURR][24] , 
        \lcd_lpcurr[LCDLPCURR][23] , \lcd_lpcurr[LCDLPCURR][22] , 
        \lcd_lpcurr[LCDLPCURR][21] , \lcd_lpcurr[LCDLPCURR][20] , 
        \lcd_lpcurr[LCDLPCURR][19] , \lcd_lpcurr[LCDLPCURR][18] , 
        \lcd_lpcurr[LCDLPCURR][17] , \lcd_lpcurr[LCDLPCURR][16] , 
        \lcd_lpcurr[LCDLPCURR][15] , \lcd_lpcurr[LCDLPCURR][14] , 
        \lcd_lpcurr[LCDLPCURR][13] , \lcd_lpcurr[LCDLPCURR][12] , 
        \lcd_lpcurr[LCDLPCURR][11] , \lcd_lpcurr[LCDLPCURR][10] , 
        \lcd_lpcurr[LCDLPCURR][9] , \lcd_lpcurr[LCDLPCURR][8] , 
        \lcd_lpcurr[LCDLPCURR][7] , \lcd_lpcurr[LCDLPCURR][6] , 
        \lcd_lpcurr[LCDLPCURR][5] , \lcd_lpcurr[LCDLPCURR][4] , 
        \lcd_lpcurr[LCDLPCURR][3] , \lcd_lpcurr[LCDLPCURR][2] , 
        \lcd_lpcurr[LCDLPCURR][1] , \lcd_lpcurr[LCDLPCURR][0] }), .crsr_ctrl({
        \crsr_ctrl[UNUSED_0][25] , \crsr_ctrl[UNUSED_0][24] , 
        \crsr_ctrl[UNUSED_0][23] , \crsr_ctrl[UNUSED_0][22] , 
        \crsr_ctrl[UNUSED_0][21] , \crsr_ctrl[UNUSED_0][20] , 
        \crsr_ctrl[UNUSED_0][19] , \crsr_ctrl[UNUSED_0][18] , 
        \crsr_ctrl[UNUSED_0][17] , \crsr_ctrl[UNUSED_0][16] , 
        \crsr_ctrl[UNUSED_0][15] , \crsr_ctrl[UNUSED_0][14] , 
        \crsr_ctrl[UNUSED_0][13] , \crsr_ctrl[UNUSED_0][12] , 
        \crsr_ctrl[UNUSED_0][11] , \crsr_ctrl[UNUSED_0][10] , 
        \crsr_ctrl[UNUSED_0][9] , \crsr_ctrl[UNUSED_0][8] , 
        \crsr_ctrl[UNUSED_0][7] , \crsr_ctrl[UNUSED_0][6] , 
        \crsr_ctrl[UNUSED_0][5] , \crsr_ctrl[UNUSED_0][4] , 
        \crsr_ctrl[UNUSED_0][3] , \crsr_ctrl[UNUSED_0][2] , 
        \crsr_ctrl[UNUSED_0][1] , \crsr_ctrl[UNUSED_0][0] , 
        \crsr_ctrl[CRSRNUM][1] , \crsr_ctrl[CRSRNUM][0] , 
        \crsr_ctrl[UNUSED_1][2] , \crsr_ctrl[UNUSED_1][1] , 
        \crsr_ctrl[UNUSED_1][0] , \crsr_ctrl[CRSRON] }), .crsr_cfg({
        \crsr_cfg[UNUSED][29] , \crsr_cfg[UNUSED][28] , \crsr_cfg[UNUSED][27] , 
        \crsr_cfg[UNUSED][26] , \crsr_cfg[UNUSED][25] , \crsr_cfg[UNUSED][24] , 
        \crsr_cfg[UNUSED][23] , \crsr_cfg[UNUSED][22] , \crsr_cfg[UNUSED][21] , 
        \crsr_cfg[UNUSED][20] , \crsr_cfg[UNUSED][19] , \crsr_cfg[UNUSED][18] , 
        \crsr_cfg[UNUSED][17] , \crsr_cfg[UNUSED][16] , \crsr_cfg[UNUSED][15] , 
        \crsr_cfg[UNUSED][14] , \crsr_cfg[UNUSED][13] , \crsr_cfg[UNUSED][12] , 
        \crsr_cfg[UNUSED][11] , \crsr_cfg[UNUSED][10] , \crsr_cfg[UNUSED][9] , 
        \crsr_cfg[UNUSED][8] , \crsr_cfg[UNUSED][7] , \crsr_cfg[UNUSED][6] , 
        \crsr_cfg[UNUSED][5] , \crsr_cfg[UNUSED][4] , \crsr_cfg[UNUSED][3] , 
        \crsr_cfg[UNUSED][2] , \crsr_cfg[UNUSED][1] , \crsr_cfg[UNUSED][0] , 
        \crsr_cfg[FRAMESYNC] , \crsr_cfg[CRSRSIZE] }), .crsr_pal0({
        \crsr_pal0[UNUSED][7] , \crsr_pal0[UNUSED][6] , \crsr_pal0[UNUSED][5] , 
        \crsr_pal0[UNUSED][4] , \crsr_pal0[UNUSED][3] , \crsr_pal0[UNUSED][2] , 
        \crsr_pal0[UNUSED][1] , \crsr_pal0[UNUSED][0] , \crsr_pal0[BLUE][7] , 
        \crsr_pal0[BLUE][6] , \crsr_pal0[BLUE][5] , \crsr_pal0[BLUE][4] , 
        \crsr_pal0[BLUE][3] , \crsr_pal0[BLUE][2] , \crsr_pal0[BLUE][1] , 
        \crsr_pal0[BLUE][0] , \crsr_pal0[GREEN][7] , \crsr_pal0[GREEN][6] , 
        \crsr_pal0[GREEN][5] , \crsr_pal0[GREEN][4] , \crsr_pal0[GREEN][3] , 
        \crsr_pal0[GREEN][2] , \crsr_pal0[GREEN][1] , \crsr_pal0[GREEN][0] , 
        \crsr_pal0[RED][7] , \crsr_pal0[RED][6] , \crsr_pal0[RED][5] , 
        \crsr_pal0[RED][4] , \crsr_pal0[RED][3] , \crsr_pal0[RED][2] , 
        \crsr_pal0[RED][1] , \crsr_pal0[RED][0] }), .crsr_pal1({
        \crsr_pal1[UNUSED][7] , \crsr_pal1[UNUSED][6] , \crsr_pal1[UNUSED][5] , 
        \crsr_pal1[UNUSED][4] , \crsr_pal1[UNUSED][3] , \crsr_pal1[UNUSED][2] , 
        \crsr_pal1[UNUSED][1] , \crsr_pal1[UNUSED][0] , \crsr_pal1[BLUE][7] , 
        \crsr_pal1[BLUE][6] , \crsr_pal1[BLUE][5] , \crsr_pal1[BLUE][4] , 
        \crsr_pal1[BLUE][3] , \crsr_pal1[BLUE][2] , \crsr_pal1[BLUE][1] , 
        \crsr_pal1[BLUE][0] , \crsr_pal1[GREEN][7] , \crsr_pal1[GREEN][6] , 
        \crsr_pal1[GREEN][5] , \crsr_pal1[GREEN][4] , \crsr_pal1[GREEN][3] , 
        \crsr_pal1[GREEN][2] , \crsr_pal1[GREEN][1] , \crsr_pal1[GREEN][0] , 
        \crsr_pal1[RED][7] , \crsr_pal1[RED][6] , \crsr_pal1[RED][5] , 
        \crsr_pal1[RED][4] , \crsr_pal1[RED][3] , \crsr_pal1[RED][2] , 
        \crsr_pal1[RED][1] , \crsr_pal1[RED][0] }), .crsr_xy({
        \crsr_xy[UNUSED_0][5] , \crsr_xy[UNUSED_0][4] , \crsr_xy[UNUSED_0][3] , 
        \crsr_xy[UNUSED_0][2] , \crsr_xy[UNUSED_0][1] , \crsr_xy[UNUSED_0][0] , 
        \crsr_xy[CRSRY][9] , \crsr_xy[CRSRY][8] , \crsr_xy[CRSRY][7] , 
        \crsr_xy[CRSRY][6] , \crsr_xy[CRSRY][5] , \crsr_xy[CRSRY][4] , 
        \crsr_xy[CRSRY][3] , \crsr_xy[CRSRY][2] , \crsr_xy[CRSRY][1] , 
        \crsr_xy[CRSRY][0] , \crsr_xy[UNUSED_1][5] , \crsr_xy[UNUSED_1][4] , 
        \crsr_xy[UNUSED_1][3] , \crsr_xy[UNUSED_1][2] , \crsr_xy[UNUSED_1][1] , 
        \crsr_xy[UNUSED_1][0] , \crsr_xy[CRSRX][9] , \crsr_xy[CRSRX][8] , 
        \crsr_xy[CRSRX][7] , \crsr_xy[CRSRX][6] , \crsr_xy[CRSRX][5] , 
        \crsr_xy[CRSRX][4] , \crsr_xy[CRSRX][3] , \crsr_xy[CRSRX][2] , 
        \crsr_xy[CRSRX][1] , \crsr_xy[CRSRX][0] }), .crsr_clip({
        \crsr_clip[UNUSED_0][17] , \crsr_clip[UNUSED_0][16] , 
        \crsr_clip[UNUSED_0][15] , \crsr_clip[UNUSED_0][14] , 
        \crsr_clip[UNUSED_0][13] , \crsr_clip[UNUSED_0][12] , 
        \crsr_clip[UNUSED_0][11] , \crsr_clip[UNUSED_0][10] , 
        \crsr_clip[UNUSED_0][9] , \crsr_clip[UNUSED_0][8] , 
        \crsr_clip[UNUSED_0][7] , \crsr_clip[UNUSED_0][6] , 
        \crsr_clip[UNUSED_0][5] , \crsr_clip[UNUSED_0][4] , 
        \crsr_clip[UNUSED_0][3] , \crsr_clip[UNUSED_0][2] , 
        \crsr_clip[UNUSED_0][1] , \crsr_clip[UNUSED_0][0] , 
        \crsr_clip[CRSRCLIPY][5] , \crsr_clip[CRSRCLIPY][4] , 
        \crsr_clip[CRSRCLIPY][3] , \crsr_clip[CRSRCLIPY][2] , 
        \crsr_clip[CRSRCLIPY][1] , \crsr_clip[CRSRCLIPY][0] , 
        \crsr_clip[UNUSED_1][1] , \crsr_clip[UNUSED_1][0] , 
        \crsr_clip[CRSRCLIPX][5] , \crsr_clip[CRSRCLIPX][4] , 
        \crsr_clip[CRSRCLIPX][3] , \crsr_clip[CRSRCLIPX][2] , 
        \crsr_clip[CRSRCLIPX][1] , \crsr_clip[CRSRCLIPX][0] }), .crsr_intmsk({
        \crsr_intmsk[UNUSED][30] , \crsr_intmsk[UNUSED][29] , 
        \crsr_intmsk[UNUSED][28] , \crsr_intmsk[UNUSED][27] , 
        \crsr_intmsk[UNUSED][26] , \crsr_intmsk[UNUSED][25] , 
        \crsr_intmsk[UNUSED][24] , \crsr_intmsk[UNUSED][23] , 
        \crsr_intmsk[UNUSED][22] , \crsr_intmsk[UNUSED][21] , 
        \crsr_intmsk[UNUSED][20] , \crsr_intmsk[UNUSED][19] , 
        \crsr_intmsk[UNUSED][18] , \crsr_intmsk[UNUSED][17] , 
        \crsr_intmsk[UNUSED][16] , \crsr_intmsk[UNUSED][15] , 
        \crsr_intmsk[UNUSED][14] , \crsr_intmsk[UNUSED][13] , 
        \crsr_intmsk[UNUSED][12] , \crsr_intmsk[UNUSED][11] , 
        \crsr_intmsk[UNUSED][10] , \crsr_intmsk[UNUSED][9] , 
        \crsr_intmsk[UNUSED][8] , \crsr_intmsk[UNUSED][7] , 
        \crsr_intmsk[UNUSED][6] , \crsr_intmsk[UNUSED][5] , 
        \crsr_intmsk[UNUSED][4] , \crsr_intmsk[UNUSED][3] , 
        \crsr_intmsk[UNUSED][2] , \crsr_intmsk[UNUSED][1] , 
        \crsr_intmsk[UNUSED][0] , \crsr_intmsk[CRSRIM] }), .crsr_intclr({
        \crsr_intclr[UNUSED][30] , \crsr_intclr[UNUSED][29] , 
        \crsr_intclr[UNUSED][28] , \crsr_intclr[UNUSED][27] , 
        \crsr_intclr[UNUSED][26] , \crsr_intclr[UNUSED][25] , 
        \crsr_intclr[UNUSED][24] , \crsr_intclr[UNUSED][23] , 
        \crsr_intclr[UNUSED][22] , \crsr_intclr[UNUSED][21] , 
        \crsr_intclr[UNUSED][20] , \crsr_intclr[UNUSED][19] , 
        \crsr_intclr[UNUSED][18] , \crsr_intclr[UNUSED][17] , 
        \crsr_intclr[UNUSED][16] , \crsr_intclr[UNUSED][15] , 
        \crsr_intclr[UNUSED][14] , \crsr_intclr[UNUSED][13] , 
        \crsr_intclr[UNUSED][12] , \crsr_intclr[UNUSED][11] , 
        \crsr_intclr[UNUSED][10] , \crsr_intclr[UNUSED][9] , 
        \crsr_intclr[UNUSED][8] , \crsr_intclr[UNUSED][7] , 
        \crsr_intclr[UNUSED][6] , \crsr_intclr[UNUSED][5] , 
        \crsr_intclr[UNUSED][4] , \crsr_intclr[UNUSED][3] , 
        \crsr_intclr[UNUSED][2] , \crsr_intclr[UNUSED][1] , 
        \crsr_intclr[UNUSED][0] , \crsr_intclr[CRSRIC] }), .crsr_intraw({
        \crsr_intraw[UNUSED][30] , \crsr_intraw[UNUSED][29] , 
        \crsr_intraw[UNUSED][28] , \crsr_intraw[UNUSED][27] , 
        \crsr_intraw[UNUSED][26] , \crsr_intraw[UNUSED][25] , 
        \crsr_intraw[UNUSED][24] , \crsr_intraw[UNUSED][23] , 
        \crsr_intraw[UNUSED][22] , \crsr_intraw[UNUSED][21] , 
        \crsr_intraw[UNUSED][20] , \crsr_intraw[UNUSED][19] , 
        \crsr_intraw[UNUSED][18] , \crsr_intraw[UNUSED][17] , 
        \crsr_intraw[UNUSED][16] , \crsr_intraw[UNUSED][15] , 
        \crsr_intraw[UNUSED][14] , \crsr_intraw[UNUSED][13] , 
        \crsr_intraw[UNUSED][12] , \crsr_intraw[UNUSED][11] , 
        \crsr_intraw[UNUSED][10] , \crsr_intraw[UNUSED][9] , 
        \crsr_intraw[UNUSED][8] , \crsr_intraw[UNUSED][7] , 
        \crsr_intraw[UNUSED][6] , \crsr_intraw[UNUSED][5] , 
        \crsr_intraw[UNUSED][4] , \crsr_intraw[UNUSED][3] , 
        \crsr_intraw[UNUSED][2] , \crsr_intraw[UNUSED][1] , 
        \crsr_intraw[UNUSED][0] , \crsr_intraw[CRSRRIS] }), .crsr_intstat({
        \crsr_intstat[UNUSED][30] , \crsr_intstat[UNUSED][29] , 
        \crsr_intstat[UNUSED][28] , \crsr_intstat[UNUSED][27] , 
        \crsr_intstat[UNUSED][26] , \crsr_intstat[UNUSED][25] , 
        \crsr_intstat[UNUSED][24] , \crsr_intstat[UNUSED][23] , 
        \crsr_intstat[UNUSED][22] , \crsr_intstat[UNUSED][21] , 
        \crsr_intstat[UNUSED][20] , \crsr_intstat[UNUSED][19] , 
        \crsr_intstat[UNUSED][18] , \crsr_intstat[UNUSED][17] , 
        \crsr_intstat[UNUSED][16] , \crsr_intstat[UNUSED][15] , 
        \crsr_intstat[UNUSED][14] , \crsr_intstat[UNUSED][13] , 
        \crsr_intstat[UNUSED][12] , \crsr_intstat[UNUSED][11] , 
        \crsr_intstat[UNUSED][10] , \crsr_intstat[UNUSED][9] , 
        \crsr_intstat[UNUSED][8] , \crsr_intstat[UNUSED][7] , 
        \crsr_intstat[UNUSED][6] , \crsr_intstat[UNUSED][5] , 
        \crsr_intstat[UNUSED][4] , \crsr_intstat[UNUSED][3] , 
        \crsr_intstat[UNUSED][2] , \crsr_intstat[UNUSED][1] , 
        \crsr_intstat[UNUSED][0] , \crsr_intstat[CRSRMIS] }), rdata_rpal_slave, 
        write_slave_rampal, data_slave_rampal, addr_slave_rampal );
  input [31:0] HADDR;
  input [31:0] HWDATA;
  input [1:0] HTRANS;
  input [2:0] HSIZE;
  input [2:0] HBURST;
  output [31:0] HRDATA;
  output [1:0] HRESP;
  input [31:0] rdata_rpal_slave;
  output [31:0] data_slave_rampal;
  output [6:0] addr_slave_rampal;
  input HCLK, HRESET, HSEL, HWRITE;
  output HREADY, \lcd_cfg[UNUSED][26] , \lcd_cfg[UNUSED][25] ,
         \lcd_cfg[UNUSED][24] , \lcd_cfg[UNUSED][23] , \lcd_cfg[UNUSED][22] ,
         \lcd_cfg[UNUSED][21] , \lcd_cfg[UNUSED][20] , \lcd_cfg[UNUSED][19] ,
         \lcd_cfg[UNUSED][18] , \lcd_cfg[UNUSED][17] , \lcd_cfg[UNUSED][16] ,
         \lcd_cfg[UNUSED][15] , \lcd_cfg[UNUSED][14] , \lcd_cfg[UNUSED][13] ,
         \lcd_cfg[UNUSED][12] , \lcd_cfg[UNUSED][11] , \lcd_cfg[UNUSED][10] ,
         \lcd_cfg[UNUSED][9] , \lcd_cfg[UNUSED][8] , \lcd_cfg[UNUSED][7] ,
         \lcd_cfg[UNUSED][6] , \lcd_cfg[UNUSED][5] , \lcd_cfg[UNUSED][4] ,
         \lcd_cfg[UNUSED][3] , \lcd_cfg[UNUSED][2] , \lcd_cfg[UNUSED][1] ,
         \lcd_cfg[UNUSED][0] , \lcd_cfg[CLKDIV][4] , \lcd_cfg[CLKDIV][3] ,
         \lcd_cfg[CLKDIV][2] , \lcd_cfg[CLKDIV][1] , \lcd_cfg[CLKDIV][0] ,
         \lcd_timh[HBP][7] , \lcd_timh[HBP][6] , \lcd_timh[HBP][5] ,
         \lcd_timh[HBP][4] , \lcd_timh[HBP][3] , \lcd_timh[HBP][2] ,
         \lcd_timh[HBP][1] , \lcd_timh[HBP][0] , \lcd_timh[HFP][7] ,
         \lcd_timh[HFP][6] , \lcd_timh[HFP][5] , \lcd_timh[HFP][4] ,
         \lcd_timh[HFP][3] , \lcd_timh[HFP][2] , \lcd_timh[HFP][1] ,
         \lcd_timh[HFP][0] , \lcd_timh[HSW][7] , \lcd_timh[HSW][6] ,
         \lcd_timh[HSW][5] , \lcd_timh[HSW][4] , \lcd_timh[HSW][3] ,
         \lcd_timh[HSW][2] , \lcd_timh[HSW][1] , \lcd_timh[HSW][0] ,
         \lcd_timh[PPL][5] , \lcd_timh[PPL][4] , \lcd_timh[PPL][3] ,
         \lcd_timh[PPL][2] , \lcd_timh[PPL][1] , \lcd_timh[PPL][0] ,
         \lcd_timh[UNUSED][1] , \lcd_timh[UNUSED][0] , \lcd_timv[VBP][7] ,
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
         \lcd_timv[LPP][0] , \lcd_pol[PCD_HI][4] , \lcd_pol[PCD_HI][3] ,
         \lcd_pol[PCD_HI][2] , \lcd_pol[PCD_HI][1] , \lcd_pol[PCD_HI][0] ,
         \lcd_pol[BCD] , \lcd_pol[CPL][9] , \lcd_pol[CPL][8] ,
         \lcd_pol[CPL][7] , \lcd_pol[CPL][6] , \lcd_pol[CPL][5] ,
         \lcd_pol[CPL][4] , \lcd_pol[CPL][3] , \lcd_pol[CPL][2] ,
         \lcd_pol[CPL][1] , \lcd_pol[CPL][0] , \lcd_pol[UNUSED] ,
         \lcd_pol[IOE] , \lcd_pol[IPC] , \lcd_pol[IHS] , \lcd_pol[IVS] ,
         \lcd_pol[ACB][4] , \lcd_pol[ACB][3] , \lcd_pol[ACB][2] ,
         \lcd_pol[ACB][1] , \lcd_pol[ACB][0] , \lcd_pol[CLKSEL] ,
         \lcd_pol[PCD_LO][4] , \lcd_pol[PCD_LO][3] , \lcd_pol[PCD_LO][2] ,
         \lcd_pol[PCD_LO][1] , \lcd_pol[PCD_LO][0] , \lcd_le[UNUSED_le0][14] ,
         \lcd_le[UNUSED_le0][13] , \lcd_le[UNUSED_le0][12] ,
         \lcd_le[UNUSED_le0][11] , \lcd_le[UNUSED_le0][10] ,
         \lcd_le[UNUSED_le0][9] , \lcd_le[UNUSED_le0][8] ,
         \lcd_le[UNUSED_le0][7] , \lcd_le[UNUSED_le0][6] ,
         \lcd_le[UNUSED_le0][5] , \lcd_le[UNUSED_le0][4] ,
         \lcd_le[UNUSED_le0][3] , \lcd_le[UNUSED_le0][2] ,
         \lcd_le[UNUSED_le0][1] , \lcd_le[UNUSED_le0][0] , \lcd_le[LEE] ,
         \lcd_le[UNUSED_le1][8] , \lcd_le[UNUSED_le1][7] ,
         \lcd_le[UNUSED_le1][6] , \lcd_le[UNUSED_le1][5] ,
         \lcd_le[UNUSED_le1][4] , \lcd_le[UNUSED_le1][3] ,
         \lcd_le[UNUSED_le1][2] , \lcd_le[UNUSED_le1][1] ,
         \lcd_le[UNUSED_le1][0] , \lcd_le[LED][6] , \lcd_le[LED][5] ,
         \lcd_le[LED][4] , \lcd_le[LED][3] , \lcd_le[LED][2] ,
         \lcd_le[LED][1] , \lcd_le[LED][0] , \lcd_upbase[LCDUPBASE][28] ,
         \lcd_upbase[LCDUPBASE][27] , \lcd_upbase[LCDUPBASE][26] ,
         \lcd_upbase[LCDUPBASE][25] , \lcd_upbase[LCDUPBASE][24] ,
         \lcd_upbase[LCDUPBASE][23] , \lcd_upbase[LCDUPBASE][22] ,
         \lcd_upbase[LCDUPBASE][21] , \lcd_upbase[LCDUPBASE][20] ,
         \lcd_upbase[LCDUPBASE][19] , \lcd_upbase[LCDUPBASE][18] ,
         \lcd_upbase[LCDUPBASE][17] , \lcd_upbase[LCDUPBASE][16] ,
         \lcd_upbase[LCDUPBASE][15] , \lcd_upbase[LCDUPBASE][14] ,
         \lcd_upbase[LCDUPBASE][13] , \lcd_upbase[LCDUPBASE][12] ,
         \lcd_upbase[LCDUPBASE][11] , \lcd_upbase[LCDUPBASE][10] ,
         \lcd_upbase[LCDUPBASE][9] , \lcd_upbase[LCDUPBASE][8] ,
         \lcd_upbase[LCDUPBASE][7] , \lcd_upbase[LCDUPBASE][6] ,
         \lcd_upbase[LCDUPBASE][5] , \lcd_upbase[LCDUPBASE][4] ,
         \lcd_upbase[LCDUPBASE][3] , \lcd_upbase[LCDUPBASE][2] ,
         \lcd_upbase[LCDUPBASE][1] , \lcd_upbase[LCDUPBASE][0] ,
         \lcd_upbase[UNUSED][2] , \lcd_upbase[UNUSED][1] ,
         \lcd_upbase[UNUSED][0] , \lcd_lpbase[LCDLPBASE][28] ,
         \lcd_lpbase[LCDLPBASE][27] , \lcd_lpbase[LCDLPBASE][26] ,
         \lcd_lpbase[LCDLPBASE][25] , \lcd_lpbase[LCDLPBASE][24] ,
         \lcd_lpbase[LCDLPBASE][23] , \lcd_lpbase[LCDLPBASE][22] ,
         \lcd_lpbase[LCDLPBASE][21] , \lcd_lpbase[LCDLPBASE][20] ,
         \lcd_lpbase[LCDLPBASE][19] , \lcd_lpbase[LCDLPBASE][18] ,
         \lcd_lpbase[LCDLPBASE][17] , \lcd_lpbase[LCDLPBASE][16] ,
         \lcd_lpbase[LCDLPBASE][15] , \lcd_lpbase[LCDLPBASE][14] ,
         \lcd_lpbase[LCDLPBASE][13] , \lcd_lpbase[LCDLPBASE][12] ,
         \lcd_lpbase[LCDLPBASE][11] , \lcd_lpbase[LCDLPBASE][10] ,
         \lcd_lpbase[LCDLPBASE][9] , \lcd_lpbase[LCDLPBASE][8] ,
         \lcd_lpbase[LCDLPBASE][7] , \lcd_lpbase[LCDLPBASE][6] ,
         \lcd_lpbase[LCDLPBASE][5] , \lcd_lpbase[LCDLPBASE][4] ,
         \lcd_lpbase[LCDLPBASE][3] , \lcd_lpbase[LCDLPBASE][2] ,
         \lcd_lpbase[LCDLPBASE][1] , \lcd_lpbase[LCDLPBASE][0] ,
         \lcd_lpbase[UNUSED][2] , \lcd_lpbase[UNUSED][1] ,
         \lcd_lpbase[UNUSED][0] , \lcd_ctrl[UNUSED_0][14] ,
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
         \lcd_ctrl[LCDEN] , \lcd_intmsk[UNUSED_0][26] ,
         \lcd_intmsk[UNUSED_0][25] , \lcd_intmsk[UNUSED_0][24] ,
         \lcd_intmsk[UNUSED_0][23] , \lcd_intmsk[UNUSED_0][22] ,
         \lcd_intmsk[UNUSED_0][21] , \lcd_intmsk[UNUSED_0][20] ,
         \lcd_intmsk[UNUSED_0][19] , \lcd_intmsk[UNUSED_0][18] ,
         \lcd_intmsk[UNUSED_0][17] , \lcd_intmsk[UNUSED_0][16] ,
         \lcd_intmsk[UNUSED_0][15] , \lcd_intmsk[UNUSED_0][14] ,
         \lcd_intmsk[UNUSED_0][13] , \lcd_intmsk[UNUSED_0][12] ,
         \lcd_intmsk[UNUSED_0][11] , \lcd_intmsk[UNUSED_0][10] ,
         \lcd_intmsk[UNUSED_0][9] , \lcd_intmsk[UNUSED_0][8] ,
         \lcd_intmsk[UNUSED_0][7] , \lcd_intmsk[UNUSED_0][6] ,
         \lcd_intmsk[UNUSED_0][5] , \lcd_intmsk[UNUSED_0][4] ,
         \lcd_intmsk[UNUSED_0][3] , \lcd_intmsk[UNUSED_0][2] ,
         \lcd_intmsk[UNUSED_0][1] , \lcd_intmsk[UNUSED_0][0] ,
         \lcd_intmsk[BERIM] , \lcd_intmsk[VCOMPIM] , \lcd_intmsk[LNBUIM] ,
         \lcd_intmsk[FUFIM] , \lcd_intmsk[UNUSED_1] ,
         \lcd_intraw[UNUSED_0][26] , \lcd_intraw[UNUSED_0][25] ,
         \lcd_intraw[UNUSED_0][24] , \lcd_intraw[UNUSED_0][23] ,
         \lcd_intraw[UNUSED_0][22] , \lcd_intraw[UNUSED_0][21] ,
         \lcd_intraw[UNUSED_0][20] , \lcd_intraw[UNUSED_0][19] ,
         \lcd_intraw[UNUSED_0][18] , \lcd_intraw[UNUSED_0][17] ,
         \lcd_intraw[UNUSED_0][16] , \lcd_intraw[UNUSED_0][15] ,
         \lcd_intraw[UNUSED_0][14] , \lcd_intraw[UNUSED_0][13] ,
         \lcd_intraw[UNUSED_0][12] , \lcd_intraw[UNUSED_0][11] ,
         \lcd_intraw[UNUSED_0][10] , \lcd_intraw[UNUSED_0][9] ,
         \lcd_intraw[UNUSED_0][8] , \lcd_intraw[UNUSED_0][7] ,
         \lcd_intraw[UNUSED_0][6] , \lcd_intraw[UNUSED_0][5] ,
         \lcd_intraw[UNUSED_0][4] , \lcd_intraw[UNUSED_0][3] ,
         \lcd_intraw[UNUSED_0][2] , \lcd_intraw[UNUSED_0][1] ,
         \lcd_intraw[UNUSED_0][0] , \lcd_intraw[BERRAW] ,
         \lcd_intraw[VCOMPRIS] , \lcd_intraw[LNBURIS] , \lcd_intraw[FUFRIS] ,
         \lcd_intraw[UNUSED_1] , \lcd_intstat[UNUSED_0][26] ,
         \lcd_intstat[UNUSED_0][25] , \lcd_intstat[UNUSED_0][24] ,
         \lcd_intstat[UNUSED_0][23] , \lcd_intstat[UNUSED_0][22] ,
         \lcd_intstat[UNUSED_0][21] , \lcd_intstat[UNUSED_0][20] ,
         \lcd_intstat[UNUSED_0][19] , \lcd_intstat[UNUSED_0][18] ,
         \lcd_intstat[UNUSED_0][17] , \lcd_intstat[UNUSED_0][16] ,
         \lcd_intstat[UNUSED_0][15] , \lcd_intstat[UNUSED_0][14] ,
         \lcd_intstat[UNUSED_0][13] , \lcd_intstat[UNUSED_0][12] ,
         \lcd_intstat[UNUSED_0][11] , \lcd_intstat[UNUSED_0][10] ,
         \lcd_intstat[UNUSED_0][9] , \lcd_intstat[UNUSED_0][8] ,
         \lcd_intstat[UNUSED_0][7] , \lcd_intstat[UNUSED_0][6] ,
         \lcd_intstat[UNUSED_0][5] , \lcd_intstat[UNUSED_0][4] ,
         \lcd_intstat[UNUSED_0][3] , \lcd_intstat[UNUSED_0][2] ,
         \lcd_intstat[UNUSED_0][1] , \lcd_intstat[UNUSED_0][0] ,
         \lcd_intstat[BERMIS] , \lcd_intstat[VCOMPMIS] ,
         \lcd_intstat[LNBUMIS] , \lcd_intstat[FUFMIS] ,
         \lcd_intstat[UNUSED_1] , \lcd_intclr[UNUSED_0][26] ,
         \lcd_intclr[UNUSED_0][25] , \lcd_intclr[UNUSED_0][24] ,
         \lcd_intclr[UNUSED_0][23] , \lcd_intclr[UNUSED_0][22] ,
         \lcd_intclr[UNUSED_0][21] , \lcd_intclr[UNUSED_0][20] ,
         \lcd_intclr[UNUSED_0][19] , \lcd_intclr[UNUSED_0][18] ,
         \lcd_intclr[UNUSED_0][17] , \lcd_intclr[UNUSED_0][16] ,
         \lcd_intclr[UNUSED_0][15] , \lcd_intclr[UNUSED_0][14] ,
         \lcd_intclr[UNUSED_0][13] , \lcd_intclr[UNUSED_0][12] ,
         \lcd_intclr[UNUSED_0][11] , \lcd_intclr[UNUSED_0][10] ,
         \lcd_intclr[UNUSED_0][9] , \lcd_intclr[UNUSED_0][8] ,
         \lcd_intclr[UNUSED_0][7] , \lcd_intclr[UNUSED_0][6] ,
         \lcd_intclr[UNUSED_0][5] , \lcd_intclr[UNUSED_0][4] ,
         \lcd_intclr[UNUSED_0][3] , \lcd_intclr[UNUSED_0][2] ,
         \lcd_intclr[UNUSED_0][1] , \lcd_intclr[UNUSED_0][0] ,
         \lcd_intclr[BERIC] , \lcd_intclr[VCOMPIC] , \lcd_intclr[LNBUIC] ,
         \lcd_intclr[FUFIC] , \lcd_intclr[UNUSED_1] ,
         \lcd_upcurr[LCDUPCURR][31] , \lcd_upcurr[LCDUPCURR][30] ,
         \lcd_upcurr[LCDUPCURR][29] , \lcd_upcurr[LCDUPCURR][28] ,
         \lcd_upcurr[LCDUPCURR][27] , \lcd_upcurr[LCDUPCURR][26] ,
         \lcd_upcurr[LCDUPCURR][25] , \lcd_upcurr[LCDUPCURR][24] ,
         \lcd_upcurr[LCDUPCURR][23] , \lcd_upcurr[LCDUPCURR][22] ,
         \lcd_upcurr[LCDUPCURR][21] , \lcd_upcurr[LCDUPCURR][20] ,
         \lcd_upcurr[LCDUPCURR][19] , \lcd_upcurr[LCDUPCURR][18] ,
         \lcd_upcurr[LCDUPCURR][17] , \lcd_upcurr[LCDUPCURR][16] ,
         \lcd_upcurr[LCDUPCURR][15] , \lcd_upcurr[LCDUPCURR][14] ,
         \lcd_upcurr[LCDUPCURR][13] , \lcd_upcurr[LCDUPCURR][12] ,
         \lcd_upcurr[LCDUPCURR][11] , \lcd_upcurr[LCDUPCURR][10] ,
         \lcd_upcurr[LCDUPCURR][9] , \lcd_upcurr[LCDUPCURR][8] ,
         \lcd_upcurr[LCDUPCURR][7] , \lcd_upcurr[LCDUPCURR][6] ,
         \lcd_upcurr[LCDUPCURR][5] , \lcd_upcurr[LCDUPCURR][4] ,
         \lcd_upcurr[LCDUPCURR][3] , \lcd_upcurr[LCDUPCURR][2] ,
         \lcd_upcurr[LCDUPCURR][1] , \lcd_upcurr[LCDUPCURR][0] ,
         \lcd_lpcurr[LCDLPCURR][31] , \lcd_lpcurr[LCDLPCURR][30] ,
         \lcd_lpcurr[LCDLPCURR][29] , \lcd_lpcurr[LCDLPCURR][28] ,
         \lcd_lpcurr[LCDLPCURR][27] , \lcd_lpcurr[LCDLPCURR][26] ,
         \lcd_lpcurr[LCDLPCURR][25] , \lcd_lpcurr[LCDLPCURR][24] ,
         \lcd_lpcurr[LCDLPCURR][23] , \lcd_lpcurr[LCDLPCURR][22] ,
         \lcd_lpcurr[LCDLPCURR][21] , \lcd_lpcurr[LCDLPCURR][20] ,
         \lcd_lpcurr[LCDLPCURR][19] , \lcd_lpcurr[LCDLPCURR][18] ,
         \lcd_lpcurr[LCDLPCURR][17] , \lcd_lpcurr[LCDLPCURR][16] ,
         \lcd_lpcurr[LCDLPCURR][15] , \lcd_lpcurr[LCDLPCURR][14] ,
         \lcd_lpcurr[LCDLPCURR][13] , \lcd_lpcurr[LCDLPCURR][12] ,
         \lcd_lpcurr[LCDLPCURR][11] , \lcd_lpcurr[LCDLPCURR][10] ,
         \lcd_lpcurr[LCDLPCURR][9] , \lcd_lpcurr[LCDLPCURR][8] ,
         \lcd_lpcurr[LCDLPCURR][7] , \lcd_lpcurr[LCDLPCURR][6] ,
         \lcd_lpcurr[LCDLPCURR][5] , \lcd_lpcurr[LCDLPCURR][4] ,
         \lcd_lpcurr[LCDLPCURR][3] , \lcd_lpcurr[LCDLPCURR][2] ,
         \lcd_lpcurr[LCDLPCURR][1] , \lcd_lpcurr[LCDLPCURR][0] ,
         \crsr_ctrl[UNUSED_0][25] , \crsr_ctrl[UNUSED_0][24] ,
         \crsr_ctrl[UNUSED_0][23] , \crsr_ctrl[UNUSED_0][22] ,
         \crsr_ctrl[UNUSED_0][21] , \crsr_ctrl[UNUSED_0][20] ,
         \crsr_ctrl[UNUSED_0][19] , \crsr_ctrl[UNUSED_0][18] ,
         \crsr_ctrl[UNUSED_0][17] , \crsr_ctrl[UNUSED_0][16] ,
         \crsr_ctrl[UNUSED_0][15] , \crsr_ctrl[UNUSED_0][14] ,
         \crsr_ctrl[UNUSED_0][13] , \crsr_ctrl[UNUSED_0][12] ,
         \crsr_ctrl[UNUSED_0][11] , \crsr_ctrl[UNUSED_0][10] ,
         \crsr_ctrl[UNUSED_0][9] , \crsr_ctrl[UNUSED_0][8] ,
         \crsr_ctrl[UNUSED_0][7] , \crsr_ctrl[UNUSED_0][6] ,
         \crsr_ctrl[UNUSED_0][5] , \crsr_ctrl[UNUSED_0][4] ,
         \crsr_ctrl[UNUSED_0][3] , \crsr_ctrl[UNUSED_0][2] ,
         \crsr_ctrl[UNUSED_0][1] , \crsr_ctrl[UNUSED_0][0] ,
         \crsr_ctrl[CRSRNUM][1] , \crsr_ctrl[CRSRNUM][0] ,
         \crsr_ctrl[UNUSED_1][2] , \crsr_ctrl[UNUSED_1][1] ,
         \crsr_ctrl[UNUSED_1][0] , \crsr_ctrl[CRSRON] , \crsr_cfg[UNUSED][29] ,
         \crsr_cfg[UNUSED][28] , \crsr_cfg[UNUSED][27] ,
         \crsr_cfg[UNUSED][26] , \crsr_cfg[UNUSED][25] ,
         \crsr_cfg[UNUSED][24] , \crsr_cfg[UNUSED][23] ,
         \crsr_cfg[UNUSED][22] , \crsr_cfg[UNUSED][21] ,
         \crsr_cfg[UNUSED][20] , \crsr_cfg[UNUSED][19] ,
         \crsr_cfg[UNUSED][18] , \crsr_cfg[UNUSED][17] ,
         \crsr_cfg[UNUSED][16] , \crsr_cfg[UNUSED][15] ,
         \crsr_cfg[UNUSED][14] , \crsr_cfg[UNUSED][13] ,
         \crsr_cfg[UNUSED][12] , \crsr_cfg[UNUSED][11] ,
         \crsr_cfg[UNUSED][10] , \crsr_cfg[UNUSED][9] , \crsr_cfg[UNUSED][8] ,
         \crsr_cfg[UNUSED][7] , \crsr_cfg[UNUSED][6] , \crsr_cfg[UNUSED][5] ,
         \crsr_cfg[UNUSED][4] , \crsr_cfg[UNUSED][3] , \crsr_cfg[UNUSED][2] ,
         \crsr_cfg[UNUSED][1] , \crsr_cfg[UNUSED][0] , \crsr_cfg[FRAMESYNC] ,
         \crsr_cfg[CRSRSIZE] , \crsr_pal0[UNUSED][7] , \crsr_pal0[UNUSED][6] ,
         \crsr_pal0[UNUSED][5] , \crsr_pal0[UNUSED][4] ,
         \crsr_pal0[UNUSED][3] , \crsr_pal0[UNUSED][2] ,
         \crsr_pal0[UNUSED][1] , \crsr_pal0[UNUSED][0] , \crsr_pal0[BLUE][7] ,
         \crsr_pal0[BLUE][6] , \crsr_pal0[BLUE][5] , \crsr_pal0[BLUE][4] ,
         \crsr_pal0[BLUE][3] , \crsr_pal0[BLUE][2] , \crsr_pal0[BLUE][1] ,
         \crsr_pal0[BLUE][0] , \crsr_pal0[GREEN][7] , \crsr_pal0[GREEN][6] ,
         \crsr_pal0[GREEN][5] , \crsr_pal0[GREEN][4] , \crsr_pal0[GREEN][3] ,
         \crsr_pal0[GREEN][2] , \crsr_pal0[GREEN][1] , \crsr_pal0[GREEN][0] ,
         \crsr_pal0[RED][7] , \crsr_pal0[RED][6] , \crsr_pal0[RED][5] ,
         \crsr_pal0[RED][4] , \crsr_pal0[RED][3] , \crsr_pal0[RED][2] ,
         \crsr_pal0[RED][1] , \crsr_pal0[RED][0] , \crsr_pal1[UNUSED][7] ,
         \crsr_pal1[UNUSED][6] , \crsr_pal1[UNUSED][5] ,
         \crsr_pal1[UNUSED][4] , \crsr_pal1[UNUSED][3] ,
         \crsr_pal1[UNUSED][2] , \crsr_pal1[UNUSED][1] ,
         \crsr_pal1[UNUSED][0] , \crsr_pal1[BLUE][7] , \crsr_pal1[BLUE][6] ,
         \crsr_pal1[BLUE][5] , \crsr_pal1[BLUE][4] , \crsr_pal1[BLUE][3] ,
         \crsr_pal1[BLUE][2] , \crsr_pal1[BLUE][1] , \crsr_pal1[BLUE][0] ,
         \crsr_pal1[GREEN][7] , \crsr_pal1[GREEN][6] , \crsr_pal1[GREEN][5] ,
         \crsr_pal1[GREEN][4] , \crsr_pal1[GREEN][3] , \crsr_pal1[GREEN][2] ,
         \crsr_pal1[GREEN][1] , \crsr_pal1[GREEN][0] , \crsr_pal1[RED][7] ,
         \crsr_pal1[RED][6] , \crsr_pal1[RED][5] , \crsr_pal1[RED][4] ,
         \crsr_pal1[RED][3] , \crsr_pal1[RED][2] , \crsr_pal1[RED][1] ,
         \crsr_pal1[RED][0] , \crsr_xy[UNUSED_0][5] , \crsr_xy[UNUSED_0][4] ,
         \crsr_xy[UNUSED_0][3] , \crsr_xy[UNUSED_0][2] ,
         \crsr_xy[UNUSED_0][1] , \crsr_xy[UNUSED_0][0] , \crsr_xy[CRSRY][9] ,
         \crsr_xy[CRSRY][8] , \crsr_xy[CRSRY][7] , \crsr_xy[CRSRY][6] ,
         \crsr_xy[CRSRY][5] , \crsr_xy[CRSRY][4] , \crsr_xy[CRSRY][3] ,
         \crsr_xy[CRSRY][2] , \crsr_xy[CRSRY][1] , \crsr_xy[CRSRY][0] ,
         \crsr_xy[UNUSED_1][5] , \crsr_xy[UNUSED_1][4] ,
         \crsr_xy[UNUSED_1][3] , \crsr_xy[UNUSED_1][2] ,
         \crsr_xy[UNUSED_1][1] , \crsr_xy[UNUSED_1][0] , \crsr_xy[CRSRX][9] ,
         \crsr_xy[CRSRX][8] , \crsr_xy[CRSRX][7] , \crsr_xy[CRSRX][6] ,
         \crsr_xy[CRSRX][5] , \crsr_xy[CRSRX][4] , \crsr_xy[CRSRX][3] ,
         \crsr_xy[CRSRX][2] , \crsr_xy[CRSRX][1] , \crsr_xy[CRSRX][0] ,
         \crsr_clip[UNUSED_0][17] , \crsr_clip[UNUSED_0][16] ,
         \crsr_clip[UNUSED_0][15] , \crsr_clip[UNUSED_0][14] ,
         \crsr_clip[UNUSED_0][13] , \crsr_clip[UNUSED_0][12] ,
         \crsr_clip[UNUSED_0][11] , \crsr_clip[UNUSED_0][10] ,
         \crsr_clip[UNUSED_0][9] , \crsr_clip[UNUSED_0][8] ,
         \crsr_clip[UNUSED_0][7] , \crsr_clip[UNUSED_0][6] ,
         \crsr_clip[UNUSED_0][5] , \crsr_clip[UNUSED_0][4] ,
         \crsr_clip[UNUSED_0][3] , \crsr_clip[UNUSED_0][2] ,
         \crsr_clip[UNUSED_0][1] , \crsr_clip[UNUSED_0][0] ,
         \crsr_clip[CRSRCLIPY][5] , \crsr_clip[CRSRCLIPY][4] ,
         \crsr_clip[CRSRCLIPY][3] , \crsr_clip[CRSRCLIPY][2] ,
         \crsr_clip[CRSRCLIPY][1] , \crsr_clip[CRSRCLIPY][0] ,
         \crsr_clip[UNUSED_1][1] , \crsr_clip[UNUSED_1][0] ,
         \crsr_clip[CRSRCLIPX][5] , \crsr_clip[CRSRCLIPX][4] ,
         \crsr_clip[CRSRCLIPX][3] , \crsr_clip[CRSRCLIPX][2] ,
         \crsr_clip[CRSRCLIPX][1] , \crsr_clip[CRSRCLIPX][0] ,
         \crsr_intmsk[UNUSED][30] , \crsr_intmsk[UNUSED][29] ,
         \crsr_intmsk[UNUSED][28] , \crsr_intmsk[UNUSED][27] ,
         \crsr_intmsk[UNUSED][26] , \crsr_intmsk[UNUSED][25] ,
         \crsr_intmsk[UNUSED][24] , \crsr_intmsk[UNUSED][23] ,
         \crsr_intmsk[UNUSED][22] , \crsr_intmsk[UNUSED][21] ,
         \crsr_intmsk[UNUSED][20] , \crsr_intmsk[UNUSED][19] ,
         \crsr_intmsk[UNUSED][18] , \crsr_intmsk[UNUSED][17] ,
         \crsr_intmsk[UNUSED][16] , \crsr_intmsk[UNUSED][15] ,
         \crsr_intmsk[UNUSED][14] , \crsr_intmsk[UNUSED][13] ,
         \crsr_intmsk[UNUSED][12] , \crsr_intmsk[UNUSED][11] ,
         \crsr_intmsk[UNUSED][10] , \crsr_intmsk[UNUSED][9] ,
         \crsr_intmsk[UNUSED][8] , \crsr_intmsk[UNUSED][7] ,
         \crsr_intmsk[UNUSED][6] , \crsr_intmsk[UNUSED][5] ,
         \crsr_intmsk[UNUSED][4] , \crsr_intmsk[UNUSED][3] ,
         \crsr_intmsk[UNUSED][2] , \crsr_intmsk[UNUSED][1] ,
         \crsr_intmsk[UNUSED][0] , \crsr_intmsk[CRSRIM] ,
         \crsr_intclr[UNUSED][30] , \crsr_intclr[UNUSED][29] ,
         \crsr_intclr[UNUSED][28] , \crsr_intclr[UNUSED][27] ,
         \crsr_intclr[UNUSED][26] , \crsr_intclr[UNUSED][25] ,
         \crsr_intclr[UNUSED][24] , \crsr_intclr[UNUSED][23] ,
         \crsr_intclr[UNUSED][22] , \crsr_intclr[UNUSED][21] ,
         \crsr_intclr[UNUSED][20] , \crsr_intclr[UNUSED][19] ,
         \crsr_intclr[UNUSED][18] , \crsr_intclr[UNUSED][17] ,
         \crsr_intclr[UNUSED][16] , \crsr_intclr[UNUSED][15] ,
         \crsr_intclr[UNUSED][14] , \crsr_intclr[UNUSED][13] ,
         \crsr_intclr[UNUSED][12] , \crsr_intclr[UNUSED][11] ,
         \crsr_intclr[UNUSED][10] , \crsr_intclr[UNUSED][9] ,
         \crsr_intclr[UNUSED][8] , \crsr_intclr[UNUSED][7] ,
         \crsr_intclr[UNUSED][6] , \crsr_intclr[UNUSED][5] ,
         \crsr_intclr[UNUSED][4] , \crsr_intclr[UNUSED][3] ,
         \crsr_intclr[UNUSED][2] , \crsr_intclr[UNUSED][1] ,
         \crsr_intclr[UNUSED][0] , \crsr_intclr[CRSRIC] ,
         \crsr_intraw[UNUSED][30] , \crsr_intraw[UNUSED][29] ,
         \crsr_intraw[UNUSED][28] , \crsr_intraw[UNUSED][27] ,
         \crsr_intraw[UNUSED][26] , \crsr_intraw[UNUSED][25] ,
         \crsr_intraw[UNUSED][24] , \crsr_intraw[UNUSED][23] ,
         \crsr_intraw[UNUSED][22] , \crsr_intraw[UNUSED][21] ,
         \crsr_intraw[UNUSED][20] , \crsr_intraw[UNUSED][19] ,
         \crsr_intraw[UNUSED][18] , \crsr_intraw[UNUSED][17] ,
         \crsr_intraw[UNUSED][16] , \crsr_intraw[UNUSED][15] ,
         \crsr_intraw[UNUSED][14] , \crsr_intraw[UNUSED][13] ,
         \crsr_intraw[UNUSED][12] , \crsr_intraw[UNUSED][11] ,
         \crsr_intraw[UNUSED][10] , \crsr_intraw[UNUSED][9] ,
         \crsr_intraw[UNUSED][8] , \crsr_intraw[UNUSED][7] ,
         \crsr_intraw[UNUSED][6] , \crsr_intraw[UNUSED][5] ,
         \crsr_intraw[UNUSED][4] , \crsr_intraw[UNUSED][3] ,
         \crsr_intraw[UNUSED][2] , \crsr_intraw[UNUSED][1] ,
         \crsr_intraw[UNUSED][0] , \crsr_intraw[CRSRRIS] ,
         \crsr_intstat[UNUSED][30] , \crsr_intstat[UNUSED][29] ,
         \crsr_intstat[UNUSED][28] , \crsr_intstat[UNUSED][27] ,
         \crsr_intstat[UNUSED][26] , \crsr_intstat[UNUSED][25] ,
         \crsr_intstat[UNUSED][24] , \crsr_intstat[UNUSED][23] ,
         \crsr_intstat[UNUSED][22] , \crsr_intstat[UNUSED][21] ,
         \crsr_intstat[UNUSED][20] , \crsr_intstat[UNUSED][19] ,
         \crsr_intstat[UNUSED][18] , \crsr_intstat[UNUSED][17] ,
         \crsr_intstat[UNUSED][16] , \crsr_intstat[UNUSED][15] ,
         \crsr_intstat[UNUSED][14] , \crsr_intstat[UNUSED][13] ,
         \crsr_intstat[UNUSED][12] , \crsr_intstat[UNUSED][11] ,
         \crsr_intstat[UNUSED][10] , \crsr_intstat[UNUSED][9] ,
         \crsr_intstat[UNUSED][8] , \crsr_intstat[UNUSED][7] ,
         \crsr_intstat[UNUSED][6] , \crsr_intstat[UNUSED][5] ,
         \crsr_intstat[UNUSED][4] , \crsr_intstat[UNUSED][3] ,
         \crsr_intstat[UNUSED][2] , \crsr_intstat[UNUSED][1] ,
         \crsr_intstat[UNUSED][0] , \crsr_intstat[CRSRMIS] ,
         write_slave_rampal;
  wire   n660, n662, n664, n666, n668, n670, n672, n674, n676, n678, n680,
         n682, n684, n686, n688, n690, n692, n694, n696, n698, n700, n702,
         n704, n706, n708, n710, n712, n714, n716, n718, n720, n722, n724,
         n726, n728, n730, n732, n734, n736, n738, n740, n742, n744, n746,
         n748, n750, n752, n754, n756, n758, n760, n762, n764, n766, n768,
         n770, n772, n774, n776, n778, n780, n782, n784, n786, n788, n790,
         n792, n794, n796, n798, n800, n802, n804, n806, n808, n810, n812,
         n814, n816, n818, n820, n822, n824, n826, n828, n830, n832, n834,
         n836, n838, n840, n842, n844, n846, n848, n850, n852, n854, n856,
         n858, n860, n862, n864, n866, n868, n870, n872, n874, n876, n878,
         n880, n882, n884, n886, n888, n890, n892, n894, n896, n898, n900,
         n902, n904, n906, n908, n910, n912, n914, n916, n918, n920, n922,
         n924, n926, n928, n930, n932, n934, n936, n938, n940, n942, n944,
         n946, n948, n950, n952, n954, n956, n958, n960, n962, n964, n966,
         n968, n970, n972, n974, n976, n978, n980, n982, n984, n986, n988,
         n990, n992, n994, n996, n998, n1000, n1002, n1004, n1006, n1008,
         n1010, n1012, n1014, n1016, n1018, n1020, n1022, n1024, n1026, n1028,
         n1030, n1032, n1034, n1036, n1038, n1040, n1042, n1044, n1046, n1048,
         n1050, n1052, n1054, n1056, n1058, n1060, n1062, n1064, n1066, n1068,
         n1070, n1072, n1074, n1076, n1078, n1080, n1082, n1084, n1086, n1088,
         n1090, n1092, n1094, n1096, n1098, n1100, n1102, n1104, n1106, n1108,
         n1110, n1112, n1114, n1116, n1118, n1120, n1122, n1124, n1126, n1128,
         n1130, n1132, n1134, n1136, n1138, n1140, n1142, n1144, n1146, n1148,
         n1150, n1152, n1154, n1156, n1158, n1160, n1162, n1164, n1166, n1168,
         n1170, n1172, n1174, n1176, n1178, n1180, n1182, n1184, n1186, n1188,
         n1190, n1192, n1194, n1196, n1198, n1200, n1202, n1204, n1206, n1208,
         n1210, n1212, n1214, n1216, n1218, n1220, n1222, n1224, n1226, n1228,
         n1230, n1232, n1234, n1236, n1238, n1240, n1242, n1244, n1246, n1248,
         n1250, n1252, n1254, n1256, n1258, n1260, n1262, n1264, n1266, n1268,
         n1270, n1272, n1274, n1276, n1278, n1280, n1282, n1284, n1286, n1288,
         n1290, n1292, n1294, n1296, n1298, n1300, n1302, n1304, n1306, n1308,
         n1310, n1312, n1314, n1316, n1318, n1320, n1322, n1324, n1326, n1328,
         n1330, n1332, n1334, n1336, n1338, n1340, n1342, n1344, n1346, n1348,
         n1350, n1352, n1354, n1356, n1358, n1360, n1362, n1364, n1366, n1368,
         n1370, n1372, n1374, n1376, n1378, n1380, n1382, n1384, n1386, n1388,
         n1390, n1392, n1394, n1396, n1398, n1400, n1402, n1404, n1406, n1408,
         n1410, n1412, n1414, n1416, n1418, n1420, n1422, n1424, n1426, n1428,
         n1430, n1432, n1434, n1436, n1438, n1440, n1442, n1444, n1446, n1448,
         n1450, n1452, n1454, n1456, n1458, n1460, n1462, n1464, n1466, n1468,
         n1470, n1472, n1474, n1476, n1478, n1480, n1482, n1484, n1486, n1488,
         n1490, n1492, n1494, n1496, n1498, n1500, n1502, n1504, n1506, n1508,
         n1510, n1512, n1514, n1516, n1518, n1520, n1522, n1524, n1526, n1528,
         n1530, n1532, n1534, n1536, n1538, n1540, n1542, n1544, n1546, n1548,
         n1550, n1552, n1554, n1556, n1558, n1560, n1562, n1564, n1566, n1568,
         n1570, n1572, n1574, n1576, n1578, n1580, n1582, n1584, n1586, n1588,
         n1590, n1592, n1594, n1596, n1598, n1600, n1602, n1604, n1606, n1608,
         n1610, n1612, n1614, n1616, n1618, n1620, n1622, n1624, n1626, n1628,
         n1630, n1632, n1634, n1636, n1638, n1640, n1642, n1644, n1646, n1648,
         n1650, n1652, n1654, n1656, n1658, n1660, n1662, n1664, n1666, n1668,
         n1670, n1672, n1674, n1676, n1678, n1680, n1682, n1684, n1686, n1688,
         n1690, n1692, n1694, n1696, n1698, n1700, n1702, n1704, n1706, n1708,
         n1710, n1712, n1714, n1716, n1718, n1720, n1722, n1724, n1726, n1728,
         n1730, n1732, n1734, n1736, n1738, n1740, n1742, n1744, n1746, n1748,
         n1750, n1752, n1754, n1756, n1758, n1760, n1762, n1764, n1766, n1768,
         n1770, n1772, n1774, n1776, n1778, n1780, n1782, n1784, n1786, n1788,
         n1790, n1792, n1794, n1796, n1798, n1800, n1802, n1804, n1806, n1808,
         n1810, n1812, n1814, n1816, n1818, n1820, n1822, n1824, n1826, n1828,
         n1830, n1832, n1834, n1836, n1838, n1840, n1842, n1844, n1846, n1848,
         n1850, n1852, n1854, n1856, n1858, n1860, n1862, n1864, n1866, n1868,
         n1870, n1872, n1874, n1876, n1878, n1880, n1882, n1884, n1886, n1888,
         n1890, n1892, n1894, n1896, n1898, n1900, n1902, n1904, n1906, n1908,
         n1910, n1912, n1914, n1916, n1918, n1920, n1922, n1924, n1926, n1928,
         n1930, n1932, n1934, n1936, n1938, n1940, n1942, n1944, n1946, n1948,
         n1950, n1952, n1954, n1956, n1958, n1960, n1962, n1964, n1966, n1968,
         n1970, n1972, n617, n619, n621, n623, n625, n627, n629, n631, n633,
         n635, n637, n639, n641, n643, n645, n647, n649, n651, n653, n655,
         n657, n659, n661, n663, n665, n667, n669, n671, n673, n675, n677,
         n679, n681, n683, n685, n687, n689, n691, n693, n695, n697, n699,
         n701, n703, n705, n707, n709, n711, n713, n715, n717, n719, n721,
         n723, n725, n727, n729, n731, n733, n735, n737, n739, n741, n743,
         n745, n747, n749, n751, n753, n755, n757, n759, n761, n763, n765,
         n767, n769, n771, n773, n775, n777, n779, n781, n783, n785, n787,
         n789, n791, n793, n795, n797, n799, n801, n803, n805, n807, n809,
         n811, n813, n815, n817, n819, n821, n823, n825, n827, n829, n831,
         n833, n835, n837, n839, n841, n843, n845, n847, n849, n851, n853,
         n855, n857, n859, n861, n863, n865, n867, n869, n871, n873, n875,
         n877, n879, n881, n883, n885, n887, n889, n891, n893, n895, n897,
         n899, n901, n903, n905, n907, n909, n911, n913, n915, n917, n919,
         n921, n923, n925, n927, n929, n931, n933, n935, n937, n939, n941,
         n943, n945, n947, n949, n951, n953, n955, n957, n959, n961, n963,
         n965, n967, n969, n971, n973, n975, n977, n979, n981, n983, n985,
         n987, n989, n991, n993, n995, n997, n999, n1001, n1003, n1005, n1007,
         n1009, n1011, n1013, n1015, n1017, n1019, n1021, n1023, n1025, n1027,
         n1029, n1031, n1033, n1035, n1037, n1039, n1041, n1043, n1045, n1047,
         n1049, n1051, n1053, n1055, n1057, n1059, n1061, n1063, n1065, n1067,
         n1069, n1071, n1073, n1075, n1077, n1079, n1081, n1083, n1085, n1087,
         n1089, n1091, n1093, n1095, n1097, n1099, n1101, n1103, n1105, n1107,
         n1109, n1111, n1113, n1115, n1117, n1119, n1121, n1123, n1125, n1127,
         n1129, n1131, n1133, n1135, n1137, n1139, n1141, n1143, n1145, n1147,
         n1149, n1151, n1153, n1155, n1157, n1159, n1161, n1163, n1165, n1167,
         n1169, n1171, n1173, n1175, n1177, n1179, n1181, n1183, n1185, n1187,
         n1189, n1191, n1193, n1195, n1197, n1199, n1201, n1203, n1205, n1207,
         n1209, n1211, n1213, n1215, n1217, n1219, n1221, n1223, n1225, n1227,
         n1229, n1231, n1233, n1235, n1237, n1239, n1241, n1243, n1245, n1247,
         n1249, n1251, n1253, n1255, n1257, n1259, n1261, n1263, n1265, n1267,
         n1269, n1271, n1273, n1275, n1277, n1279, n1281, n1283, n1285, n1287,
         n1289, n1291, n1293, n1295, n1297, n1299, n1301, n1303, n1305, n1307,
         n1309, n1311, n1313, n1315, n1317, n1319, n1321, n1323, n1325, n1327,
         n1329, n1331, n1333, n1335, n1337, n1339, n1341, n1343, n1345, n1347,
         n1349, n1351, n1353, n1355, n1357, n1359, n1361, n1363, n1365, n1367,
         n1369, n1371, n1373, n1375, n1377, n1379, n1381, n1383, n1385, n1387,
         n1389, n1391, n1393, n1395, n1397, n1399, n1401, n1403, n1405, n1407,
         n1409, n1411, n1413, n1415, n1417, n1419, n1421, n1423, n1425, n1427,
         n1429, n1431, n1433, n1435, n1437, n1439, n1441, n1443, n1445, n1447,
         n1449, n1451, n1453, n1455, n1457, n1459, n1461, n1463, n1465, n1467,
         n1469, n1471, n1473, n1475, n1477, n1479, n1481, n1483, n1485, n1487,
         n1489, n1491, n1493, n1495, n1497, n1499, n1501, n1503, n1505, n1507,
         n1509, n1511, n1513, n1515, n1517, n1519, n1521, n1523, n1525, n1527,
         n1529, n1531, n1533, n1535, n1537, n1539, n1541, n1543, n1545, n1547,
         n1549, n1551, n1553, n1555, n1557, n1559, n1561, n1563, n1565, n1567,
         n1569, n1571, n1573, n1575, n1577, n1579, n1581, n1583, n1585, n1587,
         n1589, n1591, n1593, n1595, n1597, n1599, n1601, n1603, n1605, n1607,
         n1609, n1611, n1613, n1615, n1617, n1619, n1621, n1623, n1625, n1627,
         n1629, n1631, n1633, n1635, n1637, n1639, n1641, n1643, n1645, n1647,
         n1649, n1651, n1653, n1655, n1657, n1659, n1661, n1663, n1665, n1667,
         n1669, n1671, n1673, n1675, n1677, n1679, n1681, n1683, n1685, n1687,
         n1689, n1691, n1693, n1695, n1697, n1699, n1701, n1703, n1705, n1707,
         n1709, n1711, n1713, n1715, n1717, n1719, n1721, n1723, n1725, n1727,
         n1729, n1731, n1733, n1735, n1737, n1739, n1741, n1743, n1745, n1747,
         n1749, n1751, n1753, n1755, n1757, n1759, n1761, n1763, n1765, n1767,
         n1769, n1771, n1773, n1775, n1777, n1779, n1781, n1783, n1785, n1787,
         n1789, n1791, n1793, n1795, n1797, n1799, n1801, n1803, n1805, n1807,
         n1809, n1811, n1813, n1815, n1817, n1819, n1821, n1823, n1825, n1827,
         n1829, n1831, n1833, n1835, n1837, n1839, n1841, n1843, n1845, n1847,
         n1849, n1851, n1853, n1855, n1857, n1859, n1861, n1863, n1865, n1867,
         n1869, n1871, n1873, n1875, n1877, n1879, n1881, n1883, n1885, n1887,
         n1889, n1891, n1893, n1895, n1897, n1899, n1901, n1903, n1905, n1907,
         n1909, n1911, n1913, n1915, n1917, n1919, n1921, n1923, n1925, n1927,
         n1929, n1931, n1933, n1935, n1937, n1939, n1941, n1943, n1945, n1947,
         n1949, n1951, n1953, n1955, n1957, n1959, n1961, n1963, n1965, n1967,
         n1969, n1971, n1973, n1975, n1977, n1979, n1981, n1983, n1985, n1987,
         n1989, n1991, n1993, n1995, n1997, n1999, n2001, n2003, n2005, n2007,
         n2009, n2011, n2013, n2015, n2017, n2019, n2021, n2023, n2025, n2027,
         n2029, n2031, n2033, n2035, n2037, n2039, n2041, n2043, n2045, n2047,
         n2049, n2051, n2053, n2055, n2057, n2059, n2061, n2063, n2065, n2067,
         n2069, n2071, n2073, n2075, n2077, n2079, n2081, n2083, n2085, n2087,
         n2089, n2091, n2093, n2095, n2097, n2099, n2101, n2103, n2105, n2107,
         n2109, n2111, n2113, n2115, n2117, n2119, n2121, n2123, n2125, n2127,
         n2129, n2131, n2133, n2135, n2137, n2139, n2141, n2143, n2145, n2147,
         n2149, n2151, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2200, n2201, n2202, n2203, n2204,
         n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213, n2214,
         n2215, n2216, n2217, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n618, n620, n622, n624, n626, n628, n630, n632,
         n634, n636, n638, n640, n642, n644, n646, n648, n650, n652, n654,
         n656, n658;
  wire   [1:0] state_q;
  wire   [1:0] state_ns;
  wire   [31:0] ahbs_addr_reg;
  tri   [31:0] rdata_rpal_slave;
  tri   [31:0] data_slave_rampal;
  tri   [6:0] addr_slave_rampal;
  tri   N46;
  assign write_slave_rampal = N46;

  CFD4QXL \state_q_reg[0]  ( .D(state_ns[0]), .CP(HCLK), .SD(n658), .Q(
        state_q[0]) );
  CFD2QX1 \ahbs_addr_reg_reg[5]  ( .D(n2191), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[5]) );
  CFD2QX1 \ahbs_addr_reg_reg[3]  ( .D(n2189), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[3]) );
  CFD2QX1 \ahbs_addr_reg_reg[2]  ( .D(n2188), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[2]) );
  CFD2QX1 \LCD_reg_ctrl_reg[0]  ( .D(n1577), .CP(HCLK), .CD(n7), .Q(
        \lcd_ctrl[LCDEN] ) );
  CFD2QXL \LCD_reg_pol_reg[31]  ( .D(n1895), .CP(HCLK), .CD(n658), .Q(n718) );
  CFD2QXL \LCD_reg_le_reg[31]  ( .D(n1831), .CP(HCLK), .CD(n638), .Q(n782) );
  CFD2QXL \LCD_reg_ctrl_reg[31]  ( .D(n1639), .CP(HCLK), .CD(n638), .Q(n900)
         );
  CFD2QXL \LCD_reg_intmsk_reg[31]  ( .D(n1575), .CP(HCLK), .CD(n7), .Q(n950)
         );
  CFD2QXL \LCD_reg_intraw_reg[31]  ( .D(n1511), .CP(HCLK), .CD(n640), .Q(n1014) );
  CFD2QXL \LCD_reg_intclr_reg[31]  ( .D(n1383), .CP(HCLK), .CD(n650), .Q(n1142) );
  CFD2QXL \LCD_reg_lpcurr_reg[31]  ( .D(n1255), .CP(HCLK), .CD(n650), .Q(n1270) );
  CFD2QXL \LCD_reg_crsrctrl_reg[31]  ( .D(n1191), .CP(HCLK), .CD(n650), .Q(
        n1334) );
  CFD2QXL \LCD_reg_pal0_reg[31]  ( .D(n1063), .CP(HCLK), .CD(n648), .Q(n1462)
         );
  CFD2QXL \LCD_reg_pal1_reg[31]  ( .D(n999), .CP(HCLK), .CD(n638), .Q(n1526)
         );
  CFD2QXL \LCD_reg_crsrintraw_reg[31]  ( .D(n679), .CP(HCLK), .CD(n650), .Q(
        n1846) );
  CFD2QXL \LCD_reg_cfg_reg[15]  ( .D(n2055), .CP(HCLK), .CD(n7), .Q(n692) );
  CFD2QXL \LCD_reg_cfg_reg[14]  ( .D(n2053), .CP(HCLK), .CD(n7), .Q(n694) );
  CFD2QXL \LCD_reg_cfg_reg[13]  ( .D(n2051), .CP(HCLK), .CD(n7), .Q(n696) );
  CFD2QXL \LCD_reg_cfg_reg[12]  ( .D(n2049), .CP(HCLK), .CD(n7), .Q(n698) );
  CFD2QXL \LCD_reg_cfg_reg[11]  ( .D(n2047), .CP(HCLK), .CD(n7), .Q(n700) );
  CFD2QXL \LCD_reg_cfg_reg[10]  ( .D(n2045), .CP(HCLK), .CD(n7), .Q(n702) );
  CFD2QXL \LCD_reg_cfg_reg[9]  ( .D(n2043), .CP(HCLK), .CD(n7), .Q(n704) );
  CFD2QXL \LCD_reg_cfg_reg[8]  ( .D(n2041), .CP(HCLK), .CD(n7), .Q(n706) );
  CFD2QXL \LCD_reg_cfg_reg[7]  ( .D(n2039), .CP(HCLK), .CD(n7), .Q(n708) );
  CFD2QXL \LCD_reg_cfg_reg[6]  ( .D(n2037), .CP(HCLK), .CD(n640), .Q(n710) );
  CFD2QXL \LCD_reg_cfg_reg[5]  ( .D(n2035), .CP(HCLK), .CD(n656), .Q(n712) );
  CFD2QXL \LCD_reg_pol_reg[30]  ( .D(n1893), .CP(HCLK), .CD(n642), .Q(n720) );
  CFD2QXL \LCD_reg_pol_reg[29]  ( .D(n1891), .CP(HCLK), .CD(n648), .Q(n722) );
  CFD2QXL \LCD_reg_pol_reg[28]  ( .D(n1889), .CP(HCLK), .CD(n7), .Q(n724) );
  CFD2QXL \LCD_reg_pol_reg[27]  ( .D(n1887), .CP(HCLK), .CD(n638), .Q(n726) );
  CFD2QXL \LCD_reg_pol_reg[26]  ( .D(n1885), .CP(HCLK), .CD(n7), .Q(n728) );
  CFD2QXL \LCD_reg_pol_reg[25]  ( .D(n1883), .CP(HCLK), .CD(n658), .Q(n730) );
  CFD2QXL \LCD_reg_pol_reg[24]  ( .D(n1881), .CP(HCLK), .CD(n658), .Q(n732) );
  CFD2QXL \LCD_reg_pol_reg[23]  ( .D(n1879), .CP(HCLK), .CD(n654), .Q(n734) );
  CFD2QXL \LCD_reg_pol_reg[22]  ( .D(n1877), .CP(HCLK), .CD(n648), .Q(n736) );
  CFD2QXL \LCD_reg_pol_reg[21]  ( .D(n1875), .CP(HCLK), .CD(n656), .Q(n738) );
  CFD2QXL \LCD_reg_pol_reg[20]  ( .D(n1873), .CP(HCLK), .CD(n654), .Q(n740) );
  CFD2QXL \LCD_reg_pol_reg[19]  ( .D(n1871), .CP(HCLK), .CD(n658), .Q(n742) );
  CFD2QXL \LCD_reg_pol_reg[18]  ( .D(n1869), .CP(HCLK), .CD(n7), .Q(n744) );
  CFD2QXL \LCD_reg_pol_reg[17]  ( .D(n1867), .CP(HCLK), .CD(n656), .Q(n746) );
  CFD2QXL \LCD_reg_pol_reg[16]  ( .D(n1865), .CP(HCLK), .CD(n648), .Q(n748) );
  CFD2QXL \LCD_reg_pol_reg[15]  ( .D(n1863), .CP(HCLK), .CD(n656), .Q(n750) );
  CFD2QXL \LCD_reg_pol_reg[14]  ( .D(n1861), .CP(HCLK), .CD(n654), .Q(n752) );
  CFD2QXL \LCD_reg_pol_reg[13]  ( .D(n1859), .CP(HCLK), .CD(n658), .Q(n754) );
  CFD2QXL \LCD_reg_pol_reg[12]  ( .D(n1857), .CP(HCLK), .CD(n7), .Q(n756) );
  CFD2QXL \LCD_reg_pol_reg[11]  ( .D(n1855), .CP(HCLK), .CD(n646), .Q(n758) );
  CFD2QXL \LCD_reg_pol_reg[10]  ( .D(n1853), .CP(HCLK), .CD(n650), .Q(n760) );
  CFD2QXL \LCD_reg_pol_reg[9]  ( .D(n1851), .CP(HCLK), .CD(n638), .Q(n762) );
  CFD2QXL \LCD_reg_pol_reg[8]  ( .D(n1849), .CP(HCLK), .CD(n650), .Q(n764) );
  CFD2QXL \LCD_reg_pol_reg[7]  ( .D(n1847), .CP(HCLK), .CD(n644), .Q(n766) );
  CFD2QXL \LCD_reg_pol_reg[6]  ( .D(n1845), .CP(HCLK), .CD(n652), .Q(n768) );
  CFD2QXL \LCD_reg_pol_reg[5]  ( .D(n1843), .CP(HCLK), .CD(n642), .Q(n770) );
  CFD2QXL \LCD_reg_pol_reg[4]  ( .D(n1841), .CP(HCLK), .CD(n640), .Q(n772) );
  CFD2QXL \LCD_reg_pol_reg[3]  ( .D(n1839), .CP(HCLK), .CD(n638), .Q(n774) );
  CFD2QXL \LCD_reg_pol_reg[2]  ( .D(n1837), .CP(HCLK), .CD(n638), .Q(n776) );
  CFD2QXL \LCD_reg_pol_reg[1]  ( .D(n1835), .CP(HCLK), .CD(n638), .Q(n778) );
  CFD2QXL \LCD_reg_pol_reg[0]  ( .D(n1833), .CP(HCLK), .CD(n638), .Q(n780) );
  CFD2QXL \LCD_reg_le_reg[30]  ( .D(n1829), .CP(HCLK), .CD(n638), .Q(n784) );
  CFD2QXL \LCD_reg_le_reg[29]  ( .D(n1827), .CP(HCLK), .CD(n638), .Q(n786) );
  CFD2QXL \LCD_reg_le_reg[28]  ( .D(n1825), .CP(HCLK), .CD(n638), .Q(n788) );
  CFD2QXL \LCD_reg_le_reg[27]  ( .D(n1823), .CP(HCLK), .CD(n638), .Q(n790) );
  CFD2QXL \LCD_reg_le_reg[26]  ( .D(n1821), .CP(HCLK), .CD(n654), .Q(n792) );
  CFD2QXL \LCD_reg_le_reg[25]  ( .D(n1819), .CP(HCLK), .CD(n658), .Q(n794) );
  CFD2QXL \LCD_reg_le_reg[24]  ( .D(n1817), .CP(HCLK), .CD(n638), .Q(n796) );
  CFD2QXL \LCD_reg_le_reg[23]  ( .D(n1815), .CP(HCLK), .CD(n652), .Q(n798) );
  CFD2QXL \LCD_reg_le_reg[22]  ( .D(n1813), .CP(HCLK), .CD(n7), .Q(n800) );
  CFD2QXL \LCD_reg_le_reg[21]  ( .D(n1811), .CP(HCLK), .CD(n638), .Q(n802) );
  CFD2QXL \LCD_reg_le_reg[20]  ( .D(n1809), .CP(HCLK), .CD(n7), .Q(n804) );
  CFD2QXL \LCD_reg_le_reg[19]  ( .D(n1807), .CP(HCLK), .CD(n642), .Q(n806) );
  CFD2QXL \LCD_reg_le_reg[18]  ( .D(n1805), .CP(HCLK), .CD(n644), .Q(n808) );
  CFD2QXL \LCD_reg_le_reg[17]  ( .D(n1803), .CP(HCLK), .CD(n656), .Q(n810) );
  CFD2QXL \LCD_reg_le_reg[15]  ( .D(n1799), .CP(HCLK), .CD(n646), .Q(n812) );
  CFD2QXL \LCD_reg_le_reg[14]  ( .D(n1797), .CP(HCLK), .CD(n7), .Q(n814) );
  CFD2QXL \LCD_reg_le_reg[13]  ( .D(n1795), .CP(HCLK), .CD(n644), .Q(n816) );
  CFD2QXL \LCD_reg_le_reg[12]  ( .D(n1793), .CP(HCLK), .CD(n642), .Q(n818) );
  CFD2QXL \LCD_reg_le_reg[11]  ( .D(n1791), .CP(HCLK), .CD(n7), .Q(n820) );
  CFD2QXL \LCD_reg_le_reg[10]  ( .D(n1789), .CP(HCLK), .CD(n638), .Q(n822) );
  CFD2QXL \LCD_reg_le_reg[9]  ( .D(n1787), .CP(HCLK), .CD(n7), .Q(n824) );
  CFD2QXL \LCD_reg_le_reg[8]  ( .D(n1785), .CP(HCLK), .CD(n644), .Q(n826) );
  CFD2QXL \LCD_reg_le_reg[7]  ( .D(n1783), .CP(HCLK), .CD(n644), .Q(n828) );
  CFD2QXL \LCD_reg_upbase_reg[2]  ( .D(n1709), .CP(HCLK), .CD(n650), .Q(n830)
         );
  CFD2QXL \LCD_reg_upbase_reg[1]  ( .D(n1707), .CP(HCLK), .CD(n652), .Q(n832)
         );
  CFD2QXL \LCD_reg_upbase_reg[0]  ( .D(n1705), .CP(HCLK), .CD(n650), .Q(n834)
         );
  CFD2QXL \LCD_reg_ctrl_reg[30]  ( .D(n1637), .CP(HCLK), .CD(n638), .Q(n902)
         );
  CFD2QXL \LCD_reg_ctrl_reg[29]  ( .D(n1635), .CP(HCLK), .CD(n638), .Q(n904)
         );
  CFD2QXL \LCD_reg_ctrl_reg[28]  ( .D(n1633), .CP(HCLK), .CD(n638), .Q(n906)
         );
  CFD2QXL \LCD_reg_ctrl_reg[27]  ( .D(n1631), .CP(HCLK), .CD(n638), .Q(n908)
         );
  CFD2QXL \LCD_reg_ctrl_reg[26]  ( .D(n1629), .CP(HCLK), .CD(n638), .Q(n910)
         );
  CFD2QXL \LCD_reg_ctrl_reg[25]  ( .D(n1627), .CP(HCLK), .CD(n638), .Q(n912)
         );
  CFD2QXL \LCD_reg_ctrl_reg[24]  ( .D(n1625), .CP(HCLK), .CD(n638), .Q(n914)
         );
  CFD2QXL \LCD_reg_ctrl_reg[23]  ( .D(n1623), .CP(HCLK), .CD(n644), .Q(n916)
         );
  CFD2QXL \LCD_reg_ctrl_reg[22]  ( .D(n1621), .CP(HCLK), .CD(n644), .Q(n918)
         );
  CFD2QXL \LCD_reg_ctrl_reg[21]  ( .D(n1619), .CP(HCLK), .CD(n644), .Q(n920)
         );
  CFD2QXL \LCD_reg_ctrl_reg[20]  ( .D(n1617), .CP(HCLK), .CD(n644), .Q(n922)
         );
  CFD2QXL \LCD_reg_ctrl_reg[19]  ( .D(n1615), .CP(HCLK), .CD(n644), .Q(n924)
         );
  CFD2QXL \LCD_reg_ctrl_reg[18]  ( .D(n1613), .CP(HCLK), .CD(n644), .Q(n926)
         );
  CFD2QXL \LCD_reg_ctrl_reg[17]  ( .D(n1611), .CP(HCLK), .CD(n644), .Q(n928)
         );
  CFD2QXL \LCD_reg_ctrl_reg[15]  ( .D(n1607), .CP(HCLK), .CD(n644), .Q(n930)
         );
  CFD2QXL \LCD_reg_ctrl_reg[14]  ( .D(n1605), .CP(HCLK), .CD(n648), .Q(n932)
         );
  CFD2QXL \LCD_reg_ctrl_reg[13]  ( .D(n1603), .CP(HCLK), .CD(n658), .Q(n934)
         );
  CFD2QXL \LCD_reg_ctrl_reg[12]  ( .D(n1601), .CP(HCLK), .CD(n7), .Q(n936) );
  CFD2QXL \LCD_reg_ctrl_reg[10]  ( .D(n1597), .CP(HCLK), .CD(n658), .Q(n938)
         );
  CFD2QXL \LCD_reg_ctrl_reg[9]  ( .D(n1595), .CP(HCLK), .CD(n654), .Q(n940) );
  CFD2QXL \LCD_reg_ctrl_reg[8]  ( .D(n1593), .CP(HCLK), .CD(n656), .Q(n942) );
  CFD2QXL \LCD_reg_ctrl_reg[7]  ( .D(n1591), .CP(HCLK), .CD(n648), .Q(n944) );
  CFD2QXL \LCD_reg_ctrl_reg[6]  ( .D(n1589), .CP(HCLK), .CD(n654), .Q(n946) );
  CFD2QXL \LCD_reg_ctrl_reg[4]  ( .D(n1585), .CP(HCLK), .CD(n658), .Q(n948) );
  CFD2QXL \LCD_reg_intmsk_reg[30]  ( .D(n1573), .CP(HCLK), .CD(n7), .Q(n952)
         );
  CFD2QXL \LCD_reg_intmsk_reg[29]  ( .D(n1571), .CP(HCLK), .CD(n7), .Q(n954)
         );
  CFD2QXL \LCD_reg_intmsk_reg[28]  ( .D(n1569), .CP(HCLK), .CD(n7), .Q(n956)
         );
  CFD2QXL \LCD_reg_intmsk_reg[27]  ( .D(n1567), .CP(HCLK), .CD(n7), .Q(n958)
         );
  CFD2QXL \LCD_reg_intmsk_reg[26]  ( .D(n1565), .CP(HCLK), .CD(n650), .Q(n960)
         );
  CFD2QXL \LCD_reg_intmsk_reg[25]  ( .D(n1563), .CP(HCLK), .CD(n650), .Q(n962)
         );
  CFD2QXL \LCD_reg_intmsk_reg[24]  ( .D(n1561), .CP(HCLK), .CD(n638), .Q(n964)
         );
  CFD2QXL \LCD_reg_intmsk_reg[23]  ( .D(n1559), .CP(HCLK), .CD(n640), .Q(n966)
         );
  CFD2QXL \LCD_reg_intmsk_reg[22]  ( .D(n1557), .CP(HCLK), .CD(n7), .Q(n968)
         );
  CFD2QXL \LCD_reg_intmsk_reg[21]  ( .D(n1555), .CP(HCLK), .CD(n646), .Q(n970)
         );
  CFD2QXL \LCD_reg_intmsk_reg[20]  ( .D(n1553), .CP(HCLK), .CD(n7), .Q(n972)
         );
  CFD2QXL \LCD_reg_intmsk_reg[19]  ( .D(n1551), .CP(HCLK), .CD(n644), .Q(n974)
         );
  CFD2QXL \LCD_reg_intmsk_reg[18]  ( .D(n1549), .CP(HCLK), .CD(n7), .Q(n976)
         );
  CFD2QXL \LCD_reg_intmsk_reg[17]  ( .D(n1547), .CP(HCLK), .CD(n7), .Q(n978)
         );
  CFD2QXL \LCD_reg_intmsk_reg[16]  ( .D(n1545), .CP(HCLK), .CD(n640), .Q(n980)
         );
  CFD2QXL \LCD_reg_intmsk_reg[15]  ( .D(n1543), .CP(HCLK), .CD(n7), .Q(n982)
         );
  CFD2QXL \LCD_reg_intmsk_reg[14]  ( .D(n1541), .CP(HCLK), .CD(n646), .Q(n984)
         );
  CFD2QXL \LCD_reg_intmsk_reg[13]  ( .D(n1539), .CP(HCLK), .CD(n656), .Q(n986)
         );
  CFD2QXL \LCD_reg_intmsk_reg[12]  ( .D(n1537), .CP(HCLK), .CD(n648), .Q(n988)
         );
  CFD2QXL \LCD_reg_intmsk_reg[11]  ( .D(n1535), .CP(HCLK), .CD(n654), .Q(n990)
         );
  CFD2QXL \LCD_reg_intmsk_reg[10]  ( .D(n1533), .CP(HCLK), .CD(n658), .Q(n992)
         );
  CFD2QXL \LCD_reg_intmsk_reg[9]  ( .D(n1531), .CP(HCLK), .CD(n654), .Q(n994)
         );
  CFD2QXL \LCD_reg_intmsk_reg[8]  ( .D(n1529), .CP(HCLK), .CD(n648), .Q(n996)
         );
  CFD2QXL \LCD_reg_intmsk_reg[7]  ( .D(n1527), .CP(HCLK), .CD(n656), .Q(n998)
         );
  CFD2QXL \LCD_reg_intmsk_reg[6]  ( .D(n1525), .CP(HCLK), .CD(n646), .Q(n1000)
         );
  CFD2QXL \LCD_reg_intmsk_reg[5]  ( .D(n1523), .CP(HCLK), .CD(n7), .Q(n1002)
         );
  CFD2QXL \LCD_reg_intmsk_reg[4]  ( .D(n1521), .CP(HCLK), .CD(n640), .Q(n1004)
         );
  CFD2QXL \LCD_reg_intmsk_reg[3]  ( .D(n1519), .CP(HCLK), .CD(n7), .Q(n1006)
         );
  CFD2QXL \LCD_reg_intmsk_reg[2]  ( .D(n1517), .CP(HCLK), .CD(n7), .Q(n1008)
         );
  CFD2QXL \LCD_reg_intmsk_reg[1]  ( .D(n1515), .CP(HCLK), .CD(n658), .Q(n1010)
         );
  CFD2QXL \LCD_reg_intmsk_reg[0]  ( .D(n1513), .CP(HCLK), .CD(n640), .Q(n1012)
         );
  CFD2QXL \LCD_reg_intraw_reg[30]  ( .D(n1509), .CP(HCLK), .CD(n640), .Q(n1016) );
  CFD2QXL \LCD_reg_intraw_reg[29]  ( .D(n1507), .CP(HCLK), .CD(n640), .Q(n1018) );
  CFD2QXL \LCD_reg_intraw_reg[28]  ( .D(n1505), .CP(HCLK), .CD(n640), .Q(n1020) );
  CFD2QXL \LCD_reg_intraw_reg[27]  ( .D(n1503), .CP(HCLK), .CD(n640), .Q(n1022) );
  CFD2QXL \LCD_reg_intraw_reg[26]  ( .D(n1501), .CP(HCLK), .CD(n640), .Q(n1024) );
  CFD2QXL \LCD_reg_intraw_reg[25]  ( .D(n1499), .CP(HCLK), .CD(n640), .Q(n1026) );
  CFD2QXL \LCD_reg_intraw_reg[24]  ( .D(n1497), .CP(HCLK), .CD(n640), .Q(n1028) );
  CFD2QXL \LCD_reg_intraw_reg[23]  ( .D(n1495), .CP(HCLK), .CD(n654), .Q(n1030) );
  CFD2QXL \LCD_reg_intraw_reg[22]  ( .D(n1493), .CP(HCLK), .CD(n654), .Q(n1032) );
  CFD2QXL \LCD_reg_intraw_reg[21]  ( .D(n1491), .CP(HCLK), .CD(n654), .Q(n1034) );
  CFD2QXL \LCD_reg_intraw_reg[20]  ( .D(n1489), .CP(HCLK), .CD(n654), .Q(n1036) );
  CFD2QXL \LCD_reg_intraw_reg[19]  ( .D(n1487), .CP(HCLK), .CD(n654), .Q(n1038) );
  CFD2QXL \LCD_reg_intraw_reg[18]  ( .D(n1485), .CP(HCLK), .CD(n654), .Q(n1040) );
  CFD2QXL \LCD_reg_intraw_reg[17]  ( .D(n1483), .CP(HCLK), .CD(n654), .Q(n1042) );
  CFD2QXL \LCD_reg_intraw_reg[16]  ( .D(n1481), .CP(HCLK), .CD(n654), .Q(n1044) );
  CFD2QXL \LCD_reg_intclr_reg[30]  ( .D(n1381), .CP(HCLK), .CD(n642), .Q(n1144) );
  CFD2QXL \LCD_reg_intclr_reg[29]  ( .D(n1379), .CP(HCLK), .CD(n644), .Q(n1146) );
  CFD2QXL \LCD_reg_intclr_reg[28]  ( .D(n1377), .CP(HCLK), .CD(n644), .Q(n1148) );
  CFD2QXL \LCD_reg_intclr_reg[27]  ( .D(n1375), .CP(HCLK), .CD(n650), .Q(n1150) );
  CFD2QXL \LCD_reg_intclr_reg[26]  ( .D(n1373), .CP(HCLK), .CD(n646), .Q(n1152) );
  CFD2QXL \LCD_reg_intclr_reg[25]  ( .D(n1371), .CP(HCLK), .CD(n640), .Q(n1154) );
  CFD2QXL \LCD_reg_intclr_reg[24]  ( .D(n1369), .CP(HCLK), .CD(n7), .Q(n1156)
         );
  CFD2QXL \LCD_reg_intclr_reg[23]  ( .D(n1367), .CP(HCLK), .CD(n646), .Q(n1158) );
  CFD2QXL \LCD_reg_intclr_reg[22]  ( .D(n1365), .CP(HCLK), .CD(n640), .Q(n1160) );
  CFD2QXL \LCD_reg_intclr_reg[21]  ( .D(n1363), .CP(HCLK), .CD(n7), .Q(n1162)
         );
  CFD2QXL \LCD_reg_intclr_reg[20]  ( .D(n1361), .CP(HCLK), .CD(n638), .Q(n1164) );
  CFD2QXL \LCD_reg_intclr_reg[19]  ( .D(n1359), .CP(HCLK), .CD(n7), .Q(n1166)
         );
  CFD2QXL \LCD_reg_intclr_reg[18]  ( .D(n1357), .CP(HCLK), .CD(n642), .Q(n1168) );
  CFD2QXL \LCD_reg_intclr_reg[17]  ( .D(n1355), .CP(HCLK), .CD(n644), .Q(n1170) );
  CFD2QXL \LCD_reg_intclr_reg[16]  ( .D(n1353), .CP(HCLK), .CD(n652), .Q(n1172) );
  CFD2QXL \LCD_reg_intclr_reg[15]  ( .D(n1351), .CP(HCLK), .CD(n7), .Q(n1174)
         );
  CFD2QXL \LCD_reg_intclr_reg[14]  ( .D(n1349), .CP(HCLK), .CD(n7), .Q(n1176)
         );
  CFD2QXL \LCD_reg_intclr_reg[13]  ( .D(n1347), .CP(HCLK), .CD(n642), .Q(n1178) );
  CFD2QXL \LCD_reg_intclr_reg[12]  ( .D(n1345), .CP(HCLK), .CD(n644), .Q(n1180) );
  CFD2QXL \LCD_reg_intclr_reg[11]  ( .D(n1343), .CP(HCLK), .CD(n7), .Q(n1182)
         );
  CFD2QXL \LCD_reg_intclr_reg[10]  ( .D(n1341), .CP(HCLK), .CD(n646), .Q(n1184) );
  CFD2QXL \LCD_reg_intclr_reg[9]  ( .D(n1339), .CP(HCLK), .CD(n656), .Q(n1186)
         );
  CFD2QXL \LCD_reg_intclr_reg[8]  ( .D(n1337), .CP(HCLK), .CD(n7), .Q(n1188)
         );
  CFD2QXL \LCD_reg_intclr_reg[7]  ( .D(n1335), .CP(HCLK), .CD(n642), .Q(n1190)
         );
  CFD2QXL \LCD_reg_intclr_reg[6]  ( .D(n1333), .CP(HCLK), .CD(n646), .Q(n1192)
         );
  CFD2QXL \LCD_reg_intclr_reg[5]  ( .D(n1331), .CP(HCLK), .CD(n7), .Q(n1194)
         );
  CFD2QXL \LCD_reg_intclr_reg[4]  ( .D(n1329), .CP(HCLK), .CD(n652), .Q(n1196)
         );
  CFD2QXL \LCD_reg_intclr_reg[3]  ( .D(n1327), .CP(HCLK), .CD(n642), .Q(n1198)
         );
  CFD2QXL \LCD_reg_intclr_reg[2]  ( .D(n1325), .CP(HCLK), .CD(n644), .Q(n1200)
         );
  CFD2QXL \LCD_reg_intclr_reg[1]  ( .D(n1323), .CP(HCLK), .CD(n638), .Q(n1202)
         );
  CFD2QXL \LCD_reg_intclr_reg[0]  ( .D(n1321), .CP(HCLK), .CD(n638), .Q(n1204)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[30]  ( .D(n1253), .CP(HCLK), .CD(n650), .Q(n1272) );
  CFD2QXL \LCD_reg_lpcurr_reg[29]  ( .D(n1251), .CP(HCLK), .CD(n650), .Q(n1274) );
  CFD2QXL \LCD_reg_lpcurr_reg[28]  ( .D(n1249), .CP(HCLK), .CD(n650), .Q(n1276) );
  CFD2QXL \LCD_reg_lpcurr_reg[27]  ( .D(n1247), .CP(HCLK), .CD(n650), .Q(n1278) );
  CFD2QXL \LCD_reg_lpcurr_reg[26]  ( .D(n1245), .CP(HCLK), .CD(n650), .Q(n1280) );
  CFD2QXL \LCD_reg_lpcurr_reg[25]  ( .D(n1243), .CP(HCLK), .CD(n7), .Q(n1282)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[24]  ( .D(n1241), .CP(HCLK), .CD(n7), .Q(n1284)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[23]  ( .D(n1239), .CP(HCLK), .CD(n7), .Q(n1286)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[22]  ( .D(n1237), .CP(HCLK), .CD(n7), .Q(n1288)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[21]  ( .D(n1235), .CP(HCLK), .CD(n7), .Q(n1290)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[20]  ( .D(n1233), .CP(HCLK), .CD(n7), .Q(n1292)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[19]  ( .D(n1231), .CP(HCLK), .CD(n7), .Q(n1294)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[18]  ( .D(n1229), .CP(HCLK), .CD(n7), .Q(n1296)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[17]  ( .D(n1227), .CP(HCLK), .CD(n7), .Q(n1298)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[16]  ( .D(n1225), .CP(HCLK), .CD(n652), .Q(n1300) );
  CFD2QXL \LCD_reg_lpcurr_reg[15]  ( .D(n1223), .CP(HCLK), .CD(n652), .Q(n1302) );
  CFD2QXL \LCD_reg_lpcurr_reg[14]  ( .D(n1221), .CP(HCLK), .CD(n652), .Q(n1304) );
  CFD2QXL \LCD_reg_lpcurr_reg[13]  ( .D(n1219), .CP(HCLK), .CD(n652), .Q(n1306) );
  CFD2QXL \LCD_reg_lpcurr_reg[12]  ( .D(n1217), .CP(HCLK), .CD(n652), .Q(n1308) );
  CFD2QXL \LCD_reg_lpcurr_reg[11]  ( .D(n1215), .CP(HCLK), .CD(n652), .Q(n1310) );
  CFD2QXL \LCD_reg_lpcurr_reg[10]  ( .D(n1213), .CP(HCLK), .CD(n652), .Q(n1312) );
  CFD2QXL \LCD_reg_lpcurr_reg[9]  ( .D(n1211), .CP(HCLK), .CD(n652), .Q(n1314)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[8]  ( .D(n1209), .CP(HCLK), .CD(n652), .Q(n1316)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[7]  ( .D(n1207), .CP(HCLK), .CD(n650), .Q(n1318)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[6]  ( .D(n1205), .CP(HCLK), .CD(n650), .Q(n1320)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[5]  ( .D(n1203), .CP(HCLK), .CD(n650), .Q(n1322)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[4]  ( .D(n1201), .CP(HCLK), .CD(n650), .Q(n1324)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[3]  ( .D(n1199), .CP(HCLK), .CD(n650), .Q(n1326)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[2]  ( .D(n1197), .CP(HCLK), .CD(n650), .Q(n1328)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[1]  ( .D(n1195), .CP(HCLK), .CD(n650), .Q(n1330)
         );
  CFD2QXL \LCD_reg_lpcurr_reg[0]  ( .D(n1193), .CP(HCLK), .CD(n650), .Q(n1332)
         );
  CFD2QXL \LCD_reg_crsrctrl_reg[30]  ( .D(n1189), .CP(HCLK), .CD(n652), .Q(
        n1336) );
  CFD2QXL \LCD_reg_crsrctrl_reg[29]  ( .D(n1187), .CP(HCLK), .CD(n652), .Q(
        n1338) );
  CFD2QXL \LCD_reg_crsrctrl_reg[28]  ( .D(n1185), .CP(HCLK), .CD(n652), .Q(
        n1340) );
  CFD2QXL \LCD_reg_crsrctrl_reg[27]  ( .D(n1183), .CP(HCLK), .CD(n652), .Q(
        n1342) );
  CFD2QXL \LCD_reg_crsrctrl_reg[26]  ( .D(n1181), .CP(HCLK), .CD(n652), .Q(
        n1344) );
  CFD2QXL \LCD_reg_crsrctrl_reg[25]  ( .D(n1179), .CP(HCLK), .CD(n652), .Q(
        n1346) );
  CFD2QXL \LCD_reg_crsrctrl_reg[24]  ( .D(n1177), .CP(HCLK), .CD(n652), .Q(
        n1348) );
  CFD2QXL \LCD_reg_crsrctrl_reg[23]  ( .D(n1175), .CP(HCLK), .CD(n652), .Q(
        n1350) );
  CFD2QXL \LCD_reg_crsrctrl_reg[22]  ( .D(n1173), .CP(HCLK), .CD(n652), .Q(
        n1352) );
  CFD2QXL \LCD_reg_crsrctrl_reg[21]  ( .D(n1171), .CP(HCLK), .CD(n650), .Q(
        n1354) );
  CFD2QXL \LCD_reg_crsrctrl_reg[20]  ( .D(n1169), .CP(HCLK), .CD(n650), .Q(
        n1356) );
  CFD2QXL \LCD_reg_crsrctrl_reg[19]  ( .D(n1167), .CP(HCLK), .CD(n650), .Q(
        n1358) );
  CFD2QXL \LCD_reg_crsrctrl_reg[18]  ( .D(n1165), .CP(HCLK), .CD(n650), .Q(
        n1360) );
  CFD2QXL \LCD_reg_crsrctrl_reg[17]  ( .D(n1163), .CP(HCLK), .CD(n650), .Q(
        n1362) );
  CFD2QXL \LCD_reg_crsrctrl_reg[16]  ( .D(n1161), .CP(HCLK), .CD(n650), .Q(
        n1364) );
  CFD2QXL \LCD_reg_crsrctrl_reg[15]  ( .D(n1159), .CP(HCLK), .CD(n650), .Q(
        n1366) );
  CFD2QXL \LCD_reg_crsrctrl_reg[14]  ( .D(n1157), .CP(HCLK), .CD(n650), .Q(
        n1368) );
  CFD2QXL \LCD_reg_crsrctrl_reg[13]  ( .D(n1155), .CP(HCLK), .CD(n650), .Q(
        n1370) );
  CFD2QXL \LCD_reg_crsrctrl_reg[12]  ( .D(n1153), .CP(HCLK), .CD(n644), .Q(
        n1372) );
  CFD2QXL \LCD_reg_crsrctrl_reg[11]  ( .D(n1151), .CP(HCLK), .CD(n652), .Q(
        n1374) );
  CFD2QXL \LCD_reg_crsrctrl_reg[10]  ( .D(n1149), .CP(HCLK), .CD(n640), .Q(
        n1376) );
  CFD2QXL \LCD_reg_crsrctrl_reg[9]  ( .D(n1147), .CP(HCLK), .CD(n642), .Q(
        n1378) );
  CFD2QXL \LCD_reg_crsrctrl_reg[8]  ( .D(n1145), .CP(HCLK), .CD(n644), .Q(
        n1380) );
  CFD2QXL \LCD_reg_crsrctrl_reg[7]  ( .D(n1143), .CP(HCLK), .CD(n640), .Q(
        n1382) );
  CFD2QXL \LCD_reg_crsrctrl_reg[6]  ( .D(n1141), .CP(HCLK), .CD(n638), .Q(
        n1384) );
  CFD2QXL \LCD_reg_crsrctrl_reg[5]  ( .D(n1139), .CP(HCLK), .CD(n646), .Q(
        n1386) );
  CFD2QXL \LCD_reg_crsrctrl_reg[4]  ( .D(n1137), .CP(HCLK), .CD(n650), .Q(
        n1388) );
  CFD2QXL \LCD_reg_crsrctrl_reg[3]  ( .D(n1135), .CP(HCLK), .CD(n650), .Q(
        n1390) );
  CFD2QXL \LCD_reg_crsrctrl_reg[2]  ( .D(n1133), .CP(HCLK), .CD(n642), .Q(
        n1392) );
  CFD2QXL \LCD_reg_crsrctrl_reg[1]  ( .D(n1131), .CP(HCLK), .CD(n644), .Q(
        n1394) );
  CFD2QXL \LCD_reg_crsrctrl_reg[0]  ( .D(n1129), .CP(HCLK), .CD(n638), .Q(
        n1396) );
  CFD2QXL \LCD_reg_pal0_reg[30]  ( .D(n1061), .CP(HCLK), .CD(n648), .Q(n1464)
         );
  CFD2QXL \LCD_reg_pal0_reg[29]  ( .D(n1059), .CP(HCLK), .CD(n7), .Q(n1466) );
  CFD2QXL \LCD_reg_pal0_reg[28]  ( .D(n1057), .CP(HCLK), .CD(n658), .Q(n1468)
         );
  CFD2QXL \LCD_reg_pal0_reg[27]  ( .D(n1055), .CP(HCLK), .CD(n654), .Q(n1470)
         );
  CFD2QXL \LCD_reg_pal0_reg[26]  ( .D(n1053), .CP(HCLK), .CD(n656), .Q(n1472)
         );
  CFD2QXL \LCD_reg_pal0_reg[25]  ( .D(n1051), .CP(HCLK), .CD(n648), .Q(n1474)
         );
  CFD2QXL \LCD_reg_pal0_reg[24]  ( .D(n1049), .CP(HCLK), .CD(n7), .Q(n1476) );
  CFD2QXL \LCD_reg_pal0_reg[23]  ( .D(n1047), .CP(HCLK), .CD(n7), .Q(n1478) );
  CFD2QXL \LCD_reg_pal0_reg[22]  ( .D(n1045), .CP(HCLK), .CD(n7), .Q(n1480) );
  CFD2QXL \LCD_reg_pal0_reg[21]  ( .D(n1043), .CP(HCLK), .CD(n7), .Q(n1482) );
  CFD2QXL \LCD_reg_pal0_reg[20]  ( .D(n1041), .CP(HCLK), .CD(n7), .Q(n1484) );
  CFD2QXL \LCD_reg_pal0_reg[19]  ( .D(n1039), .CP(HCLK), .CD(n7), .Q(n1486) );
  CFD2QXL \LCD_reg_pal0_reg[18]  ( .D(n1037), .CP(HCLK), .CD(n7), .Q(n1488) );
  CFD2QXL \LCD_reg_pal0_reg[17]  ( .D(n1035), .CP(HCLK), .CD(n7), .Q(n1490) );
  CFD2QXL \LCD_reg_pal0_reg[16]  ( .D(n1033), .CP(HCLK), .CD(n7), .Q(n1492) );
  CFD2QXL \LCD_reg_pal0_reg[15]  ( .D(n1031), .CP(HCLK), .CD(n7), .Q(n1494) );
  CFD2QXL \LCD_reg_pal0_reg[14]  ( .D(n1029), .CP(HCLK), .CD(n7), .Q(n1496) );
  CFD2QXL \LCD_reg_pal0_reg[13]  ( .D(n1027), .CP(HCLK), .CD(n640), .Q(n1498)
         );
  CFD2QXL \LCD_reg_pal0_reg[12]  ( .D(n1025), .CP(HCLK), .CD(n640), .Q(n1500)
         );
  CFD2QXL \LCD_reg_pal0_reg[11]  ( .D(n1023), .CP(HCLK), .CD(n640), .Q(n1502)
         );
  CFD2QXL \LCD_reg_pal0_reg[10]  ( .D(n1021), .CP(HCLK), .CD(n640), .Q(n1504)
         );
  CFD2QXL \LCD_reg_pal0_reg[9]  ( .D(n1019), .CP(HCLK), .CD(n640), .Q(n1506)
         );
  CFD2QXL \LCD_reg_pal0_reg[8]  ( .D(n1017), .CP(HCLK), .CD(n640), .Q(n1508)
         );
  CFD2QXL \LCD_reg_pal0_reg[7]  ( .D(n1015), .CP(HCLK), .CD(n640), .Q(n1510)
         );
  CFD2QXL \LCD_reg_pal0_reg[6]  ( .D(n1013), .CP(HCLK), .CD(n640), .Q(n1512)
         );
  CFD2QXL \LCD_reg_pal0_reg[5]  ( .D(n1011), .CP(HCLK), .CD(n640), .Q(n1514)
         );
  CFD2QXL \LCD_reg_pal0_reg[4]  ( .D(n1009), .CP(HCLK), .CD(n640), .Q(n1516)
         );
  CFD2QXL \LCD_reg_pal0_reg[3]  ( .D(n1007), .CP(HCLK), .CD(n7), .Q(n1518) );
  CFD2QXL \LCD_reg_pal0_reg[2]  ( .D(n1005), .CP(HCLK), .CD(n638), .Q(n1520)
         );
  CFD2QXL \LCD_reg_pal0_reg[1]  ( .D(n1003), .CP(HCLK), .CD(n7), .Q(n1522) );
  CFD2QXL \LCD_reg_pal0_reg[0]  ( .D(n1001), .CP(HCLK), .CD(n652), .Q(n1524)
         );
  CFD2QXL \LCD_reg_pal1_reg[30]  ( .D(n997), .CP(HCLK), .CD(n644), .Q(n1528)
         );
  CFD2QXL \LCD_reg_pal1_reg[29]  ( .D(n995), .CP(HCLK), .CD(n642), .Q(n1530)
         );
  CFD2QXL \LCD_reg_pal1_reg[28]  ( .D(n993), .CP(HCLK), .CD(n7), .Q(n1532) );
  CFD2QXL \LCD_reg_pal1_reg[27]  ( .D(n991), .CP(HCLK), .CD(n638), .Q(n1534)
         );
  CFD2QXL \LCD_reg_pal1_reg[26]  ( .D(n989), .CP(HCLK), .CD(n7), .Q(n1536) );
  CFD2QXL \LCD_reg_pal1_reg[25]  ( .D(n987), .CP(HCLK), .CD(n640), .Q(n1538)
         );
  CFD2QXL \LCD_reg_pal1_reg[24]  ( .D(n985), .CP(HCLK), .CD(n646), .Q(n1540)
         );
  CFD2QXL \LCD_reg_pal1_reg[23]  ( .D(n983), .CP(HCLK), .CD(n646), .Q(n1542)
         );
  CFD2QXL \LCD_reg_pal1_reg[22]  ( .D(n981), .CP(HCLK), .CD(n644), .Q(n1544)
         );
  CFD2QXL \LCD_reg_pal1_reg[21]  ( .D(n979), .CP(HCLK), .CD(n642), .Q(n1546)
         );
  CFD2QXL \LCD_reg_pal1_reg[20]  ( .D(n977), .CP(HCLK), .CD(n642), .Q(n1548)
         );
  CFD2QXL \LCD_reg_pal1_reg[19]  ( .D(n975), .CP(HCLK), .CD(n650), .Q(n1550)
         );
  CFD2QXL \LCD_reg_pal1_reg[18]  ( .D(n973), .CP(HCLK), .CD(n652), .Q(n1552)
         );
  CFD2QXL \LCD_reg_pal1_reg[17]  ( .D(n971), .CP(HCLK), .CD(n644), .Q(n1554)
         );
  CFD2QXL \LCD_reg_pal1_reg[16]  ( .D(n969), .CP(HCLK), .CD(n642), .Q(n1556)
         );
  CFD2QXL \LCD_reg_pal1_reg[14]  ( .D(n965), .CP(HCLK), .CD(n638), .Q(n1560)
         );
  CFD2QXL \LCD_reg_pal1_reg[13]  ( .D(n963), .CP(HCLK), .CD(n640), .Q(n1562)
         );
  CFD2QXL \LCD_reg_pal1_reg[12]  ( .D(n961), .CP(HCLK), .CD(n638), .Q(n1564)
         );
  CFD2QXL \LCD_reg_pal1_reg[11]  ( .D(n959), .CP(HCLK), .CD(n7), .Q(n1566) );
  CFD2QXL \LCD_reg_pal1_reg[10]  ( .D(n957), .CP(HCLK), .CD(n640), .Q(n1568)
         );
  CFD2QXL \LCD_reg_pal1_reg[9]  ( .D(n955), .CP(HCLK), .CD(n7), .Q(n1570) );
  CFD2QXL \LCD_reg_pal1_reg[8]  ( .D(n953), .CP(HCLK), .CD(n640), .Q(n1572) );
  CFD2QXL \LCD_reg_pal1_reg[7]  ( .D(n951), .CP(HCLK), .CD(n7), .Q(n1574) );
  CFD2QXL \LCD_reg_pal1_reg[6]  ( .D(n949), .CP(HCLK), .CD(n638), .Q(n1576) );
  CFD2QXL \LCD_reg_pal1_reg[5]  ( .D(n947), .CP(HCLK), .CD(n7), .Q(n1578) );
  CFD2QXL \LCD_reg_pal1_reg[4]  ( .D(n945), .CP(HCLK), .CD(n646), .Q(n1580) );
  CFD2QXL \LCD_reg_pal1_reg[3]  ( .D(n943), .CP(HCLK), .CD(n7), .Q(n1582) );
  CFD2QXL \LCD_reg_pal1_reg[2]  ( .D(n941), .CP(HCLK), .CD(n652), .Q(n1584) );
  CFD2QXL \LCD_reg_pal1_reg[1]  ( .D(n939), .CP(HCLK), .CD(n644), .Q(n1586) );
  CFD2QXL \LCD_reg_pal1_reg[0]  ( .D(n937), .CP(HCLK), .CD(n648), .Q(n1588) );
  CFD2QXL \LCD_reg_crsrintraw_reg[30]  ( .D(n677), .CP(HCLK), .CD(n650), .Q(
        n1848) );
  CFD2QXL \LCD_reg_crsrintraw_reg[29]  ( .D(n675), .CP(HCLK), .CD(n638), .Q(
        n1850) );
  CFD2QXL \LCD_reg_crsrintraw_reg[28]  ( .D(n673), .CP(HCLK), .CD(n640), .Q(
        n1852) );
  CFD2QXL \LCD_reg_crsrintraw_reg[27]  ( .D(n671), .CP(HCLK), .CD(n642), .Q(
        n1854) );
  CFD2QXL \LCD_reg_crsrintraw_reg[26]  ( .D(n669), .CP(HCLK), .CD(n7), .Q(
        n1856) );
  CFD2QXL \LCD_reg_crsrintraw_reg[25]  ( .D(n667), .CP(HCLK), .CD(n638), .Q(
        n1858) );
  CFD2QXL \LCD_reg_crsrintraw_reg[24]  ( .D(n665), .CP(HCLK), .CD(n650), .Q(
        n1860) );
  CFD2QXL \LCD_reg_crsrintraw_reg[23]  ( .D(n663), .CP(HCLK), .CD(n646), .Q(
        n1862) );
  CFD2QXL \LCD_reg_crsrintraw_reg[22]  ( .D(n661), .CP(HCLK), .CD(n7), .Q(
        n1864) );
  CFD2QXL \LCD_reg_crsrintraw_reg[21]  ( .D(n659), .CP(HCLK), .CD(n646), .Q(
        n1866) );
  CFD2QXL \LCD_reg_crsrintraw_reg[20]  ( .D(n657), .CP(HCLK), .CD(n652), .Q(
        n1868) );
  CFD2QXL \LCD_reg_crsrintraw_reg[19]  ( .D(n655), .CP(HCLK), .CD(n644), .Q(
        n1870) );
  CFD2QXL \LCD_reg_crsrintraw_reg[18]  ( .D(n653), .CP(HCLK), .CD(n642), .Q(
        n1872) );
  CFD2QXL \LCD_reg_crsrintraw_reg[17]  ( .D(n651), .CP(HCLK), .CD(n638), .Q(
        n1874) );
  CFD2QXL \LCD_reg_crsrintraw_reg[16]  ( .D(n649), .CP(HCLK), .CD(n652), .Q(
        n1876) );
  CFD2QXL \LCD_reg_crsrintraw_reg[15]  ( .D(n647), .CP(HCLK), .CD(n652), .Q(
        n1878) );
  CFD2QXL \LCD_reg_crsrintraw_reg[14]  ( .D(n645), .CP(HCLK), .CD(n644), .Q(
        n1880) );
  CFD2QXL \LCD_reg_crsrintraw_reg[13]  ( .D(n643), .CP(HCLK), .CD(n642), .Q(
        n1882) );
  CFD2QXL \LCD_reg_crsrintraw_reg[12]  ( .D(n641), .CP(HCLK), .CD(n646), .Q(
        n1884) );
  CFD2QXL \LCD_reg_crsrintraw_reg[11]  ( .D(n639), .CP(HCLK), .CD(n7), .Q(
        n1886) );
  CFD2QXL \LCD_reg_crsrintraw_reg[10]  ( .D(n637), .CP(HCLK), .CD(n650), .Q(
        n1888) );
  CFD2QXL \LCD_reg_crsrintraw_reg[9]  ( .D(n635), .CP(HCLK), .CD(n652), .Q(
        n1890) );
  CFD2QXL \LCD_reg_crsrintraw_reg[8]  ( .D(n633), .CP(HCLK), .CD(n652), .Q(
        n1892) );
  CFD2QXL \LCD_reg_crsrintraw_reg[7]  ( .D(n631), .CP(HCLK), .CD(n654), .Q(
        n1894) );
  CFD2QXL \LCD_reg_crsrintraw_reg[6]  ( .D(n629), .CP(HCLK), .CD(n656), .Q(
        n1896) );
  CFD2QXL \LCD_reg_crsrintraw_reg[5]  ( .D(n627), .CP(HCLK), .CD(n648), .Q(
        n1898) );
  CFD2QXL \LCD_reg_crsrintraw_reg[4]  ( .D(n625), .CP(HCLK), .CD(n7), .Q(n1900) );
  CFD2QXL \LCD_reg_crsrintraw_reg[3]  ( .D(n623), .CP(HCLK), .CD(n7), .Q(n1902) );
  CFD2QXL \LCD_reg_crsrintraw_reg[2]  ( .D(n621), .CP(HCLK), .CD(n658), .Q(
        n1904) );
  CFD2QXL \LCD_reg_crsrintraw_reg[1]  ( .D(n619), .CP(HCLK), .CD(n654), .Q(
        n1906) );
  CFD2QXL \LCD_reg_crsrintraw_reg[0]  ( .D(n617), .CP(HCLK), .CD(n656), .Q(
        n1908) );
  CFD2QXL \LCD_reg_crsrintstat_reg[30]  ( .D(n2149), .CP(HCLK), .CD(n658), .Q(
        n1912) );
  CFD2QXL \LCD_reg_crsrintstat_reg[29]  ( .D(n2147), .CP(HCLK), .CD(n658), .Q(
        n1914) );
  CFD2QXL \LCD_reg_crsrintstat_reg[28]  ( .D(n2145), .CP(HCLK), .CD(n7), .Q(
        n1916) );
  CFD2QXL \LCD_reg_crsrintstat_reg[27]  ( .D(n2143), .CP(HCLK), .CD(n654), .Q(
        n1918) );
  CFD2QXL \LCD_reg_crsrintstat_reg[26]  ( .D(n2141), .CP(HCLK), .CD(n658), .Q(
        n1920) );
  CFD2QXL \LCD_reg_crsrintstat_reg[25]  ( .D(n2139), .CP(HCLK), .CD(n7), .Q(
        n1922) );
  CFD2QXL \LCD_reg_crsrintstat_reg[24]  ( .D(n2137), .CP(HCLK), .CD(n7), .Q(
        n1924) );
  CFD2QXL \LCD_reg_crsrintstat_reg[23]  ( .D(n2135), .CP(HCLK), .CD(n640), .Q(
        n1926) );
  CFD2QXL \LCD_reg_crsrintstat_reg[22]  ( .D(n2133), .CP(HCLK), .CD(n7), .Q(
        n1928) );
  CFD2QXL \LCD_reg_crsrintstat_reg[21]  ( .D(n2131), .CP(HCLK), .CD(n646), .Q(
        n1930) );
  CFD2QXL \LCD_reg_crsrintstat_reg[20]  ( .D(n2129), .CP(HCLK), .CD(n656), .Q(
        n1932) );
  CFD2QXL \LCD_reg_crsrintstat_reg[19]  ( .D(n2127), .CP(HCLK), .CD(n7), .Q(
        n1934) );
  CFD2QXL \LCD_reg_crsrintstat_reg[18]  ( .D(n2125), .CP(HCLK), .CD(n646), .Q(
        n1936) );
  CFD2QXL \LCD_reg_crsrintstat_reg[17]  ( .D(n2123), .CP(HCLK), .CD(n656), .Q(
        n1938) );
  CFD2QXL \LCD_reg_crsrintstat_reg[16]  ( .D(n2121), .CP(HCLK), .CD(n648), .Q(
        n1940) );
  CFD2QXL \LCD_reg_crsrintstat_reg[15]  ( .D(n2119), .CP(HCLK), .CD(n652), .Q(
        n1942) );
  CFD2QXL \LCD_reg_crsrintstat_reg[14]  ( .D(n2117), .CP(HCLK), .CD(n654), .Q(
        n1944) );
  CFD2QXL \LCD_reg_crsrintstat_reg[13]  ( .D(n2115), .CP(HCLK), .CD(n658), .Q(
        n1946) );
  CFD2QXL \LCD_reg_crsrintstat_reg[12]  ( .D(n2113), .CP(HCLK), .CD(n642), .Q(
        n1948) );
  CFD2QXL \LCD_reg_crsrintstat_reg[11]  ( .D(n2111), .CP(HCLK), .CD(n652), .Q(
        n1950) );
  CFD2QXL \LCD_reg_crsrintstat_reg[10]  ( .D(n2109), .CP(HCLK), .CD(n646), .Q(
        n1952) );
  CFD2QXL \LCD_reg_crsrintstat_reg[9]  ( .D(n2107), .CP(HCLK), .CD(n646), .Q(
        n1954) );
  CFD2QXL \LCD_reg_crsrintstat_reg[8]  ( .D(n2105), .CP(HCLK), .CD(n646), .Q(
        n1956) );
  CFD2QXL \LCD_reg_crsrintstat_reg[7]  ( .D(n2103), .CP(HCLK), .CD(n646), .Q(
        n1958) );
  CFD2QXL \LCD_reg_crsrintstat_reg[6]  ( .D(n2101), .CP(HCLK), .CD(n646), .Q(
        n1960) );
  CFD2QXL \LCD_reg_crsrintstat_reg[5]  ( .D(n2099), .CP(HCLK), .CD(n646), .Q(
        n1962) );
  CFD2QXL \LCD_reg_crsrintstat_reg[4]  ( .D(n2097), .CP(HCLK), .CD(n646), .Q(
        n1964) );
  CFD2QXL \LCD_reg_crsrintstat_reg[3]  ( .D(n2095), .CP(HCLK), .CD(n646), .Q(
        n1966) );
  CFD2QXL \LCD_reg_crsrintstat_reg[2]  ( .D(n2093), .CP(HCLK), .CD(n646), .Q(
        n1968) );
  CFD2QXL \LCD_reg_crsrintstat_reg[1]  ( .D(n2091), .CP(HCLK), .CD(n642), .Q(
        n1970) );
  CFD2QXL \LCD_reg_crsrintstat_reg[0]  ( .D(n2089), .CP(HCLK), .CD(n642), .Q(
        n1972) );
  CFD2QXL \LCD_reg_cfg_reg[30]  ( .D(n2085), .CP(HCLK), .CD(n642), .Q(n662) );
  CFD2QXL \LCD_reg_cfg_reg[29]  ( .D(n2083), .CP(HCLK), .CD(n642), .Q(n664) );
  CFD2QXL \LCD_reg_cfg_reg[28]  ( .D(n2081), .CP(HCLK), .CD(n642), .Q(n666) );
  CFD2QXL \LCD_reg_cfg_reg[27]  ( .D(n2079), .CP(HCLK), .CD(n642), .Q(n668) );
  CFD2QXL \LCD_reg_cfg_reg[26]  ( .D(n2077), .CP(HCLK), .CD(n642), .Q(n670) );
  CFD2QXL \LCD_reg_cfg_reg[25]  ( .D(n2075), .CP(HCLK), .CD(n642), .Q(n672) );
  CFD2QXL \LCD_reg_cfg_reg[24]  ( .D(n2073), .CP(HCLK), .CD(n7), .Q(n674) );
  CFD2QXL \LCD_reg_cfg_reg[23]  ( .D(n2071), .CP(HCLK), .CD(n646), .Q(n676) );
  CFD2QXL \LCD_reg_cfg_reg[22]  ( .D(n2069), .CP(HCLK), .CD(n7), .Q(n678) );
  CFD2QXL \LCD_reg_cfg_reg[21]  ( .D(n2067), .CP(HCLK), .CD(n638), .Q(n680) );
  CFD2QXL \LCD_reg_cfg_reg[20]  ( .D(n2065), .CP(HCLK), .CD(n642), .Q(n682) );
  CFD2QXL \LCD_reg_cfg_reg[19]  ( .D(n2063), .CP(HCLK), .CD(n644), .Q(n684) );
  CFD2QXL \LCD_reg_cfg_reg[18]  ( .D(n2061), .CP(HCLK), .CD(n7), .Q(n686) );
  CFD2QXL \LCD_reg_cfg_reg[17]  ( .D(n2059), .CP(HCLK), .CD(n646), .Q(n688) );
  CFD2QXL \LCD_reg_cfg_reg[16]  ( .D(n2057), .CP(HCLK), .CD(n7), .Q(n690) );
  CFD2QXL \LCD_reg_timh_reg[1]  ( .D(n1963), .CP(HCLK), .CD(n654), .Q(n714) );
  CFD2QXL \LCD_reg_timh_reg[0]  ( .D(n1961), .CP(HCLK), .CD(n648), .Q(n716) );
  CFD2QXL \LCD_reg_lpbase_reg[30]  ( .D(n1701), .CP(HCLK), .CD(n7), .Q(n838)
         );
  CFD2QXL \LCD_reg_lpbase_reg[29]  ( .D(n1699), .CP(HCLK), .CD(n646), .Q(n840)
         );
  CFD2QXL \LCD_reg_lpbase_reg[28]  ( .D(n1697), .CP(HCLK), .CD(n646), .Q(n842)
         );
  CFD2QXL \LCD_reg_lpbase_reg[27]  ( .D(n1695), .CP(HCLK), .CD(n638), .Q(n844)
         );
  CFD2QXL \LCD_reg_lpbase_reg[26]  ( .D(n1693), .CP(HCLK), .CD(n650), .Q(n846)
         );
  CFD2QXL \LCD_reg_lpbase_reg[25]  ( .D(n1691), .CP(HCLK), .CD(n7), .Q(n848)
         );
  CFD2QXL \LCD_reg_lpbase_reg[24]  ( .D(n1689), .CP(HCLK), .CD(n7), .Q(n850)
         );
  CFD2QXL \LCD_reg_lpbase_reg[23]  ( .D(n1687), .CP(HCLK), .CD(n642), .Q(n852)
         );
  CFD2QXL \LCD_reg_lpbase_reg[22]  ( .D(n1685), .CP(HCLK), .CD(n644), .Q(n854)
         );
  CFD2QXL \LCD_reg_lpbase_reg[21]  ( .D(n1683), .CP(HCLK), .CD(n652), .Q(n856)
         );
  CFD2QXL \LCD_reg_lpbase_reg[20]  ( .D(n1681), .CP(HCLK), .CD(n7), .Q(n858)
         );
  CFD2QXL \LCD_reg_lpbase_reg[19]  ( .D(n1679), .CP(HCLK), .CD(n646), .Q(n860)
         );
  CFD2QXL \LCD_reg_lpbase_reg[18]  ( .D(n1677), .CP(HCLK), .CD(n638), .Q(n862)
         );
  CFD2QXL \LCD_reg_lpbase_reg[17]  ( .D(n1675), .CP(HCLK), .CD(n644), .Q(n864)
         );
  CFD2QXL \LCD_reg_lpbase_reg[16]  ( .D(n1673), .CP(HCLK), .CD(n642), .Q(n866)
         );
  CFD2QXL \LCD_reg_lpbase_reg[15]  ( .D(n1671), .CP(HCLK), .CD(n644), .Q(n868)
         );
  CFD2QXL \LCD_reg_lpbase_reg[14]  ( .D(n1669), .CP(HCLK), .CD(n652), .Q(n870)
         );
  CFD2QXL \LCD_reg_lpbase_reg[13]  ( .D(n1667), .CP(HCLK), .CD(n7), .Q(n872)
         );
  CFD2QXL \LCD_reg_lpbase_reg[12]  ( .D(n1665), .CP(HCLK), .CD(n646), .Q(n874)
         );
  CFD2QXL \LCD_reg_lpbase_reg[11]  ( .D(n1663), .CP(HCLK), .CD(n7), .Q(n876)
         );
  CFD2QXL \LCD_reg_lpbase_reg[10]  ( .D(n1661), .CP(HCLK), .CD(n7), .Q(n878)
         );
  CFD2QXL \LCD_reg_lpbase_reg[9]  ( .D(n1659), .CP(HCLK), .CD(n7), .Q(n880) );
  CFD2QXL \LCD_reg_lpbase_reg[8]  ( .D(n1657), .CP(HCLK), .CD(n646), .Q(n882)
         );
  CFD2QXL \LCD_reg_lpbase_reg[7]  ( .D(n1655), .CP(HCLK), .CD(n652), .Q(n884)
         );
  CFD2QXL \LCD_reg_lpbase_reg[6]  ( .D(n1653), .CP(HCLK), .CD(n652), .Q(n886)
         );
  CFD2QXL \LCD_reg_lpbase_reg[5]  ( .D(n1651), .CP(HCLK), .CD(n640), .Q(n888)
         );
  CFD2QXL \LCD_reg_lpbase_reg[4]  ( .D(n1649), .CP(HCLK), .CD(n650), .Q(n890)
         );
  CFD2QXL \LCD_reg_lpbase_reg[3]  ( .D(n1647), .CP(HCLK), .CD(n7), .Q(n892) );
  CFD2QXL \LCD_reg_lpbase_reg[2]  ( .D(n1645), .CP(HCLK), .CD(n646), .Q(n894)
         );
  CFD2QXL \LCD_reg_lpbase_reg[1]  ( .D(n1643), .CP(HCLK), .CD(n644), .Q(n896)
         );
  CFD2QXL \LCD_reg_lpbase_reg[0]  ( .D(n1641), .CP(HCLK), .CD(n638), .Q(n898)
         );
  CFD2QXL \LCD_reg_intraw_reg[15]  ( .D(n1479), .CP(HCLK), .CD(n654), .Q(n1046) );
  CFD2QXL \LCD_reg_intraw_reg[14]  ( .D(n1477), .CP(HCLK), .CD(n7), .Q(n1048)
         );
  CFD2QXL \LCD_reg_intraw_reg[13]  ( .D(n1475), .CP(HCLK), .CD(n7), .Q(n1050)
         );
  CFD2QXL \LCD_reg_intraw_reg[12]  ( .D(n1473), .CP(HCLK), .CD(n640), .Q(n1052) );
  CFD2QXL \LCD_reg_intraw_reg[11]  ( .D(n1471), .CP(HCLK), .CD(n638), .Q(n1054) );
  CFD2QXL \LCD_reg_intraw_reg[10]  ( .D(n1469), .CP(HCLK), .CD(n650), .Q(n1056) );
  CFD2QXL \LCD_reg_intraw_reg[9]  ( .D(n1467), .CP(HCLK), .CD(n650), .Q(n1058)
         );
  CFD2QXL \LCD_reg_intraw_reg[8]  ( .D(n1465), .CP(HCLK), .CD(n7), .Q(n1060)
         );
  CFD2QXL \LCD_reg_intraw_reg[7]  ( .D(n1463), .CP(HCLK), .CD(n642), .Q(n1062)
         );
  CFD2QXL \LCD_reg_intraw_reg[6]  ( .D(n1461), .CP(HCLK), .CD(n642), .Q(n1064)
         );
  CFD2QXL \LCD_reg_intraw_reg[5]  ( .D(n1459), .CP(HCLK), .CD(n638), .Q(n1066)
         );
  CFD2QXL \LCD_reg_intraw_reg[4]  ( .D(n1457), .CP(HCLK), .CD(n7), .Q(n1068)
         );
  CFD2QXL \LCD_reg_intraw_reg[3]  ( .D(n1455), .CP(HCLK), .CD(n654), .Q(n1070)
         );
  CFD2QXL \LCD_reg_intraw_reg[2]  ( .D(n1453), .CP(HCLK), .CD(n658), .Q(n1072)
         );
  CFD2QXL \LCD_reg_intraw_reg[1]  ( .D(n1451), .CP(HCLK), .CD(n654), .Q(n1074)
         );
  CFD2QXL \LCD_reg_intraw_reg[0]  ( .D(n1449), .CP(HCLK), .CD(n648), .Q(n1076)
         );
  CFD2QXL \LCD_reg_intstat_reg[30]  ( .D(n1445), .CP(HCLK), .CD(n656), .Q(
        n1080) );
  CFD2QXL \LCD_reg_intstat_reg[29]  ( .D(n1443), .CP(HCLK), .CD(n646), .Q(
        n1082) );
  CFD2QXL \LCD_reg_intstat_reg[28]  ( .D(n1441), .CP(HCLK), .CD(n642), .Q(
        n1084) );
  CFD2QXL \LCD_reg_intstat_reg[27]  ( .D(n1439), .CP(HCLK), .CD(n642), .Q(
        n1086) );
  CFD2QXL \LCD_reg_intstat_reg[26]  ( .D(n1437), .CP(HCLK), .CD(n642), .Q(
        n1088) );
  CFD2QXL \LCD_reg_intstat_reg[25]  ( .D(n1435), .CP(HCLK), .CD(n642), .Q(
        n1090) );
  CFD2QXL \LCD_reg_intstat_reg[24]  ( .D(n1433), .CP(HCLK), .CD(n642), .Q(
        n1092) );
  CFD2QXL \LCD_reg_intstat_reg[23]  ( .D(n1431), .CP(HCLK), .CD(n642), .Q(
        n1094) );
  CFD2QXL \LCD_reg_intstat_reg[22]  ( .D(n1429), .CP(HCLK), .CD(n642), .Q(
        n1096) );
  CFD2QXL \LCD_reg_intstat_reg[21]  ( .D(n1427), .CP(HCLK), .CD(n642), .Q(
        n1098) );
  CFD2QXL \LCD_reg_intstat_reg[20]  ( .D(n1425), .CP(HCLK), .CD(n642), .Q(
        n1100) );
  CFD2QXL \LCD_reg_intstat_reg[19]  ( .D(n1423), .CP(HCLK), .CD(n7), .Q(n1102)
         );
  CFD2QXL \LCD_reg_intstat_reg[18]  ( .D(n1421), .CP(HCLK), .CD(n7), .Q(n1104)
         );
  CFD2QXL \LCD_reg_intstat_reg[17]  ( .D(n1419), .CP(HCLK), .CD(n7), .Q(n1106)
         );
  CFD2QXL \LCD_reg_intstat_reg[16]  ( .D(n1417), .CP(HCLK), .CD(n7), .Q(n1108)
         );
  CFD2QXL \LCD_reg_intstat_reg[15]  ( .D(n1415), .CP(HCLK), .CD(n7), .Q(n1110)
         );
  CFD2QXL \LCD_reg_intstat_reg[14]  ( .D(n1413), .CP(HCLK), .CD(n7), .Q(n1112)
         );
  CFD2QXL \LCD_reg_intstat_reg[13]  ( .D(n1411), .CP(HCLK), .CD(n7), .Q(n1114)
         );
  CFD2QXL \LCD_reg_intstat_reg[12]  ( .D(n1409), .CP(HCLK), .CD(n7), .Q(n1116)
         );
  CFD2QXL \LCD_reg_intstat_reg[11]  ( .D(n1407), .CP(HCLK), .CD(n7), .Q(n1118)
         );
  CFD2QXL \LCD_reg_intstat_reg[10]  ( .D(n1405), .CP(HCLK), .CD(n650), .Q(
        n1120) );
  CFD2QXL \LCD_reg_intstat_reg[9]  ( .D(n1403), .CP(HCLK), .CD(n650), .Q(n1122) );
  CFD2QXL \LCD_reg_intstat_reg[8]  ( .D(n1401), .CP(HCLK), .CD(n7), .Q(n1124)
         );
  CFD2QXL \LCD_reg_intstat_reg[7]  ( .D(n1399), .CP(HCLK), .CD(n642), .Q(n1126) );
  CFD2QXL \LCD_reg_intstat_reg[6]  ( .D(n1397), .CP(HCLK), .CD(n644), .Q(n1128) );
  CFD2QXL \LCD_reg_intstat_reg[5]  ( .D(n1395), .CP(HCLK), .CD(n652), .Q(n1130) );
  CFD2QXL \LCD_reg_intstat_reg[4]  ( .D(n1393), .CP(HCLK), .CD(n7), .Q(n1132)
         );
  CFD2QXL \LCD_reg_intstat_reg[3]  ( .D(n1391), .CP(HCLK), .CD(n644), .Q(n1134) );
  CFD2QXL \LCD_reg_intstat_reg[2]  ( .D(n1389), .CP(HCLK), .CD(n646), .Q(n1136) );
  CFD2QXL \LCD_reg_intstat_reg[1]  ( .D(n1387), .CP(HCLK), .CD(n7), .Q(n1138)
         );
  CFD2QXL \LCD_reg_intstat_reg[0]  ( .D(n1385), .CP(HCLK), .CD(n638), .Q(n1140) );
  CFD2QXL \LCD_reg_upcurr_reg[30]  ( .D(n1317), .CP(HCLK), .CD(n650), .Q(n1208) );
  CFD2QXL \LCD_reg_upcurr_reg[29]  ( .D(n1315), .CP(HCLK), .CD(n640), .Q(n1210) );
  CFD2QXL \LCD_reg_upcurr_reg[28]  ( .D(n1313), .CP(HCLK), .CD(n640), .Q(n1212) );
  CFD2QXL \LCD_reg_upcurr_reg[27]  ( .D(n1311), .CP(HCLK), .CD(n640), .Q(n1214) );
  CFD2QXL \LCD_reg_upcurr_reg[26]  ( .D(n1309), .CP(HCLK), .CD(n640), .Q(n1216) );
  CFD2QXL \LCD_reg_upcurr_reg[25]  ( .D(n1307), .CP(HCLK), .CD(n640), .Q(n1218) );
  CFD2QXL \LCD_reg_upcurr_reg[24]  ( .D(n1305), .CP(HCLK), .CD(n640), .Q(n1220) );
  CFD2QXL \LCD_reg_upcurr_reg[23]  ( .D(n1303), .CP(HCLK), .CD(n640), .Q(n1222) );
  CFD2QXL \LCD_reg_upcurr_reg[22]  ( .D(n1301), .CP(HCLK), .CD(n640), .Q(n1224) );
  CFD2QXL \LCD_reg_upcurr_reg[21]  ( .D(n1299), .CP(HCLK), .CD(n640), .Q(n1226) );
  CFD2QXL \LCD_reg_upcurr_reg[20]  ( .D(n1297), .CP(HCLK), .CD(n7), .Q(n1228)
         );
  CFD2QXL \LCD_reg_upcurr_reg[19]  ( .D(n1295), .CP(HCLK), .CD(n7), .Q(n1230)
         );
  CFD2QXL \LCD_reg_upcurr_reg[18]  ( .D(n1293), .CP(HCLK), .CD(n7), .Q(n1232)
         );
  CFD2QXL \LCD_reg_upcurr_reg[17]  ( .D(n1291), .CP(HCLK), .CD(n7), .Q(n1234)
         );
  CFD2QXL \LCD_reg_upcurr_reg[16]  ( .D(n1289), .CP(HCLK), .CD(n7), .Q(n1236)
         );
  CFD2QXL \LCD_reg_upcurr_reg[15]  ( .D(n1287), .CP(HCLK), .CD(n7), .Q(n1238)
         );
  CFD2QXL \LCD_reg_upcurr_reg[14]  ( .D(n1285), .CP(HCLK), .CD(n7), .Q(n1240)
         );
  CFD2QXL \LCD_reg_upcurr_reg[13]  ( .D(n1283), .CP(HCLK), .CD(n7), .Q(n1242)
         );
  CFD2QXL \LCD_reg_upcurr_reg[12]  ( .D(n1281), .CP(HCLK), .CD(n7), .Q(n1244)
         );
  CFD2QXL \LCD_reg_upcurr_reg[11]  ( .D(n1279), .CP(HCLK), .CD(n652), .Q(n1246) );
  CFD2QXL \LCD_reg_upcurr_reg[10]  ( .D(n1277), .CP(HCLK), .CD(n652), .Q(n1248) );
  CFD2QXL \LCD_reg_upcurr_reg[9]  ( .D(n1275), .CP(HCLK), .CD(n652), .Q(n1250)
         );
  CFD2QXL \LCD_reg_upcurr_reg[8]  ( .D(n1273), .CP(HCLK), .CD(n652), .Q(n1252)
         );
  CFD2QXL \LCD_reg_upcurr_reg[7]  ( .D(n1271), .CP(HCLK), .CD(n652), .Q(n1254)
         );
  CFD2QXL \LCD_reg_upcurr_reg[6]  ( .D(n1269), .CP(HCLK), .CD(n652), .Q(n1256)
         );
  CFD2QXL \LCD_reg_upcurr_reg[5]  ( .D(n1267), .CP(HCLK), .CD(n652), .Q(n1258)
         );
  CFD2QXL \LCD_reg_upcurr_reg[4]  ( .D(n1265), .CP(HCLK), .CD(n652), .Q(n1260)
         );
  CFD2QXL \LCD_reg_upcurr_reg[3]  ( .D(n1263), .CP(HCLK), .CD(n652), .Q(n1262)
         );
  CFD2QXL \LCD_reg_upcurr_reg[2]  ( .D(n1261), .CP(HCLK), .CD(n650), .Q(n1264)
         );
  CFD2QXL \LCD_reg_upcurr_reg[1]  ( .D(n1259), .CP(HCLK), .CD(n650), .Q(n1266)
         );
  CFD2QXL \LCD_reg_upcurr_reg[0]  ( .D(n1257), .CP(HCLK), .CD(n650), .Q(n1268)
         );
  CFD2QXL \LCD_reg_crsrcfg_reg[30]  ( .D(n1125), .CP(HCLK), .CD(n7), .Q(n1400)
         );
  CFD2QXL \LCD_reg_crsrcfg_reg[29]  ( .D(n1123), .CP(HCLK), .CD(n646), .Q(
        n1402) );
  CFD2QXL \LCD_reg_crsrcfg_reg[28]  ( .D(n1121), .CP(HCLK), .CD(n640), .Q(
        n1404) );
  CFD2QXL \LCD_reg_crsrcfg_reg[27]  ( .D(n1119), .CP(HCLK), .CD(n7), .Q(n1406)
         );
  CFD2QXL \LCD_reg_crsrcfg_reg[26]  ( .D(n1117), .CP(HCLK), .CD(n640), .Q(
        n1408) );
  CFD2QXL \LCD_reg_crsrcfg_reg[25]  ( .D(n1115), .CP(HCLK), .CD(n7), .Q(n1410)
         );
  CFD2QXL \LCD_reg_crsrcfg_reg[24]  ( .D(n1113), .CP(HCLK), .CD(n638), .Q(
        n1412) );
  CFD2QXL \LCD_reg_crsrcfg_reg[23]  ( .D(n1111), .CP(HCLK), .CD(n646), .Q(
        n1414) );
  CFD2QXL \LCD_reg_crsrcfg_reg[22]  ( .D(n1109), .CP(HCLK), .CD(n642), .Q(
        n1416) );
  CFD2QXL \LCD_reg_crsrcfg_reg[21]  ( .D(n1107), .CP(HCLK), .CD(n644), .Q(
        n1418) );
  CFD2QXL \LCD_reg_crsrcfg_reg[20]  ( .D(n1105), .CP(HCLK), .CD(n652), .Q(
        n1420) );
  CFD2QXL \LCD_reg_crsrcfg_reg[19]  ( .D(n1103), .CP(HCLK), .CD(n642), .Q(
        n1422) );
  CFD2QXL \LCD_reg_crsrcfg_reg[18]  ( .D(n1101), .CP(HCLK), .CD(n7), .Q(n1424)
         );
  CFD2QXL \LCD_reg_crsrcfg_reg[17]  ( .D(n1099), .CP(HCLK), .CD(n648), .Q(
        n1426) );
  CFD2QXL \LCD_reg_crsrcfg_reg[16]  ( .D(n1097), .CP(HCLK), .CD(n648), .Q(
        n1428) );
  CFD2QXL \LCD_reg_crsrcfg_reg[15]  ( .D(n1095), .CP(HCLK), .CD(n648), .Q(
        n1430) );
  CFD2QXL \LCD_reg_crsrcfg_reg[14]  ( .D(n1093), .CP(HCLK), .CD(n648), .Q(
        n1432) );
  CFD2QXL \LCD_reg_crsrcfg_reg[13]  ( .D(n1091), .CP(HCLK), .CD(n648), .Q(
        n1434) );
  CFD2QXL \LCD_reg_crsrcfg_reg[12]  ( .D(n1089), .CP(HCLK), .CD(n648), .Q(
        n1436) );
  CFD2QXL \LCD_reg_crsrcfg_reg[11]  ( .D(n1087), .CP(HCLK), .CD(n648), .Q(
        n1438) );
  CFD2QXL \LCD_reg_crsrcfg_reg[10]  ( .D(n1085), .CP(HCLK), .CD(n648), .Q(
        n1440) );
  CFD2QXL \LCD_reg_crsrcfg_reg[9]  ( .D(n1083), .CP(HCLK), .CD(n648), .Q(n1442) );
  CFD2QXL \LCD_reg_crsrcfg_reg[8]  ( .D(n1081), .CP(HCLK), .CD(n646), .Q(n1444) );
  CFD2QXL \LCD_reg_crsrcfg_reg[7]  ( .D(n1079), .CP(HCLK), .CD(n646), .Q(n1446) );
  CFD2QXL \LCD_reg_crsrcfg_reg[6]  ( .D(n1077), .CP(HCLK), .CD(n646), .Q(n1448) );
  CFD2QXL \LCD_reg_crsrcfg_reg[5]  ( .D(n1075), .CP(HCLK), .CD(n646), .Q(n1450) );
  CFD2QXL \LCD_reg_crsrcfg_reg[4]  ( .D(n1073), .CP(HCLK), .CD(n646), .Q(n1452) );
  CFD2QXL \LCD_reg_crsrcfg_reg[3]  ( .D(n1071), .CP(HCLK), .CD(n646), .Q(n1454) );
  CFD2QXL \LCD_reg_crsrcfg_reg[2]  ( .D(n1069), .CP(HCLK), .CD(n646), .Q(n1456) );
  CFD2QXL \LCD_reg_crsrcfg_reg[1]  ( .D(n1067), .CP(HCLK), .CD(n646), .Q(n1458) );
  CFD2QXL \LCD_reg_crsrcfg_reg[0]  ( .D(n1065), .CP(HCLK), .CD(n646), .Q(n1460) );
  CFD2QXL \LCD_reg_xy_reg[30]  ( .D(n933), .CP(HCLK), .CD(n654), .Q(n1592) );
  CFD2QXL \LCD_reg_xy_reg[29]  ( .D(n931), .CP(HCLK), .CD(n658), .Q(n1594) );
  CFD2QXL \LCD_reg_xy_reg[28]  ( .D(n929), .CP(HCLK), .CD(n7), .Q(n1596) );
  CFD2QXL \LCD_reg_xy_reg[27]  ( .D(n927), .CP(HCLK), .CD(n7), .Q(n1598) );
  CFD2QXL \LCD_reg_xy_reg[26]  ( .D(n925), .CP(HCLK), .CD(n640), .Q(n1600) );
  CFD2QXL \LCD_reg_xy_reg[25]  ( .D(n923), .CP(HCLK), .CD(n7), .Q(n1602) );
  CFD2QXL \LCD_reg_xy_reg[24]  ( .D(n921), .CP(HCLK), .CD(n642), .Q(n1604) );
  CFD2QXL \LCD_reg_xy_reg[23]  ( .D(n919), .CP(HCLK), .CD(n7), .Q(n1606) );
  CFD2QXL \LCD_reg_xy_reg[22]  ( .D(n917), .CP(HCLK), .CD(n7), .Q(n1608) );
  CFD2QXL \LCD_reg_xy_reg[21]  ( .D(n915), .CP(HCLK), .CD(n7), .Q(n1610) );
  CFD2QXL \LCD_reg_xy_reg[20]  ( .D(n913), .CP(HCLK), .CD(n7), .Q(n1612) );
  CFD2QXL \LCD_reg_xy_reg[19]  ( .D(n911), .CP(HCLK), .CD(n7), .Q(n1614) );
  CFD2QXL \LCD_reg_xy_reg[18]  ( .D(n909), .CP(HCLK), .CD(n7), .Q(n1616) );
  CFD2QXL \LCD_reg_xy_reg[17]  ( .D(n907), .CP(HCLK), .CD(n7), .Q(n1618) );
  CFD2QXL \LCD_reg_xy_reg[16]  ( .D(n905), .CP(HCLK), .CD(n7), .Q(n1620) );
  CFD2QXL \LCD_reg_xy_reg[15]  ( .D(n903), .CP(HCLK), .CD(n7), .Q(n1622) );
  CFD2QXL \LCD_reg_xy_reg[14]  ( .D(n901), .CP(HCLK), .CD(n652), .Q(n1624) );
  CFD2QXL \LCD_reg_xy_reg[13]  ( .D(n899), .CP(HCLK), .CD(n652), .Q(n1626) );
  CFD2QXL \LCD_reg_xy_reg[12]  ( .D(n897), .CP(HCLK), .CD(n652), .Q(n1628) );
  CFD2QXL \LCD_reg_xy_reg[11]  ( .D(n895), .CP(HCLK), .CD(n652), .Q(n1630) );
  CFD2QXL \LCD_reg_xy_reg[10]  ( .D(n893), .CP(HCLK), .CD(n652), .Q(n1632) );
  CFD2QXL \LCD_reg_xy_reg[9]  ( .D(n891), .CP(HCLK), .CD(n652), .Q(n1634) );
  CFD2QXL \LCD_reg_xy_reg[8]  ( .D(n889), .CP(HCLK), .CD(n652), .Q(n1636) );
  CFD2QXL \LCD_reg_xy_reg[7]  ( .D(n887), .CP(HCLK), .CD(n652), .Q(n1638) );
  CFD2QXL \LCD_reg_xy_reg[6]  ( .D(n885), .CP(HCLK), .CD(n652), .Q(n1640) );
  CFD2QXL \LCD_reg_xy_reg[5]  ( .D(n883), .CP(HCLK), .CD(n650), .Q(n1642) );
  CFD2QXL \LCD_reg_xy_reg[4]  ( .D(n881), .CP(HCLK), .CD(n650), .Q(n1644) );
  CFD2QXL \LCD_reg_xy_reg[3]  ( .D(n879), .CP(HCLK), .CD(n650), .Q(n1646) );
  CFD2QXL \LCD_reg_xy_reg[2]  ( .D(n877), .CP(HCLK), .CD(n650), .Q(n1648) );
  CFD2QXL \LCD_reg_xy_reg[1]  ( .D(n875), .CP(HCLK), .CD(n650), .Q(n1650) );
  CFD2QXL \LCD_reg_xy_reg[0]  ( .D(n873), .CP(HCLK), .CD(n650), .Q(n1652) );
  CFD2QXL \LCD_reg_clip_reg[30]  ( .D(n869), .CP(HCLK), .CD(n650), .Q(n1656)
         );
  CFD2QXL \LCD_reg_clip_reg[29]  ( .D(n867), .CP(HCLK), .CD(n650), .Q(n1658)
         );
  CFD2QXL \LCD_reg_clip_reg[28]  ( .D(n865), .CP(HCLK), .CD(n644), .Q(n1660)
         );
  CFD2QXL \LCD_reg_clip_reg[27]  ( .D(n863), .CP(HCLK), .CD(n644), .Q(n1662)
         );
  CFD2QXL \LCD_reg_clip_reg[26]  ( .D(n861), .CP(HCLK), .CD(n644), .Q(n1664)
         );
  CFD2QXL \LCD_reg_clip_reg[25]  ( .D(n859), .CP(HCLK), .CD(n644), .Q(n1666)
         );
  CFD2QXL \LCD_reg_clip_reg[24]  ( .D(n857), .CP(HCLK), .CD(n644), .Q(n1668)
         );
  CFD2QXL \LCD_reg_clip_reg[23]  ( .D(n855), .CP(HCLK), .CD(n644), .Q(n1670)
         );
  CFD2QXL \LCD_reg_clip_reg[22]  ( .D(n853), .CP(HCLK), .CD(n644), .Q(n1672)
         );
  CFD2QXL \LCD_reg_clip_reg[21]  ( .D(n851), .CP(HCLK), .CD(n644), .Q(n1674)
         );
  CFD2QXL \LCD_reg_clip_reg[20]  ( .D(n849), .CP(HCLK), .CD(n644), .Q(n1676)
         );
  CFD2QXL \LCD_reg_clip_reg[19]  ( .D(n847), .CP(HCLK), .CD(n644), .Q(n1678)
         );
  CFD2QXL \LCD_reg_clip_reg[18]  ( .D(n845), .CP(HCLK), .CD(n652), .Q(n1680)
         );
  CFD2QXL \LCD_reg_clip_reg[17]  ( .D(n843), .CP(HCLK), .CD(n7), .Q(n1682) );
  CFD2QXL \LCD_reg_clip_reg[16]  ( .D(n841), .CP(HCLK), .CD(n646), .Q(n1684)
         );
  CFD2QXL \LCD_reg_clip_reg[15]  ( .D(n839), .CP(HCLK), .CD(n642), .Q(n1686)
         );
  CFD2QXL \LCD_reg_clip_reg[14]  ( .D(n837), .CP(HCLK), .CD(n7), .Q(n1688) );
  CFD2QXL \LCD_reg_clip_reg[13]  ( .D(n835), .CP(HCLK), .CD(n7), .Q(n1690) );
  CFD2QXL \LCD_reg_clip_reg[12]  ( .D(n833), .CP(HCLK), .CD(n7), .Q(n1692) );
  CFD2QXL \LCD_reg_clip_reg[11]  ( .D(n831), .CP(HCLK), .CD(n640), .Q(n1694)
         );
  CFD2QXL \LCD_reg_clip_reg[10]  ( .D(n829), .CP(HCLK), .CD(n642), .Q(n1696)
         );
  CFD2QXL \LCD_reg_clip_reg[9]  ( .D(n827), .CP(HCLK), .CD(n642), .Q(n1698) );
  CFD2QXL \LCD_reg_clip_reg[8]  ( .D(n825), .CP(HCLK), .CD(n642), .Q(n1700) );
  CFD2QXL \LCD_reg_clip_reg[7]  ( .D(n823), .CP(HCLK), .CD(n642), .Q(n1702) );
  CFD2QXL \LCD_reg_clip_reg[6]  ( .D(n821), .CP(HCLK), .CD(n642), .Q(n1704) );
  CFD2QXL \LCD_reg_clip_reg[5]  ( .D(n819), .CP(HCLK), .CD(n642), .Q(n1706) );
  CFD2QXL \LCD_reg_clip_reg[4]  ( .D(n817), .CP(HCLK), .CD(n642), .Q(n1708) );
  CFD2QXL \LCD_reg_clip_reg[3]  ( .D(n815), .CP(HCLK), .CD(n642), .Q(n1710) );
  CFD2QXL \LCD_reg_clip_reg[2]  ( .D(n813), .CP(HCLK), .CD(n642), .Q(n1712) );
  CFD2QXL \LCD_reg_clip_reg[1]  ( .D(n811), .CP(HCLK), .CD(n644), .Q(n1714) );
  CFD2QXL \LCD_reg_clip_reg[0]  ( .D(n809), .CP(HCLK), .CD(n7), .Q(n1716) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[30]  ( .D(n805), .CP(HCLK), .CD(n646), .Q(
        n1720) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[29]  ( .D(n803), .CP(HCLK), .CD(n656), .Q(
        n1722) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[28]  ( .D(n801), .CP(HCLK), .CD(n644), .Q(
        n1724) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[27]  ( .D(n799), .CP(HCLK), .CD(n648), .Q(
        n1726) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[26]  ( .D(n797), .CP(HCLK), .CD(n654), .Q(
        n1728) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[25]  ( .D(n795), .CP(HCLK), .CD(n658), .Q(
        n1730) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[24]  ( .D(n793), .CP(HCLK), .CD(n7), .Q(
        n1732) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[23]  ( .D(n791), .CP(HCLK), .CD(n646), .Q(
        n1734) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[22]  ( .D(n789), .CP(HCLK), .CD(n650), .Q(
        n1736) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[21]  ( .D(n787), .CP(HCLK), .CD(n638), .Q(
        n1738) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[20]  ( .D(n785), .CP(HCLK), .CD(n642), .Q(
        n1740) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[19]  ( .D(n783), .CP(HCLK), .CD(n642), .Q(
        n1742) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[18]  ( .D(n781), .CP(HCLK), .CD(n644), .Q(
        n1744) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[17]  ( .D(n779), .CP(HCLK), .CD(n652), .Q(
        n1746) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[16]  ( .D(n777), .CP(HCLK), .CD(n7), .Q(
        n1748) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[14]  ( .D(n773), .CP(HCLK), .CD(n640), .Q(
        n1752) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[13]  ( .D(n771), .CP(HCLK), .CD(n640), .Q(
        n1754) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[12]  ( .D(n769), .CP(HCLK), .CD(n640), .Q(
        n1756) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[11]  ( .D(n767), .CP(HCLK), .CD(n640), .Q(
        n1758) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[10]  ( .D(n765), .CP(HCLK), .CD(n640), .Q(
        n1760) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[9]  ( .D(n763), .CP(HCLK), .CD(n640), .Q(
        n1762) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[8]  ( .D(n761), .CP(HCLK), .CD(n640), .Q(
        n1764) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[7]  ( .D(n759), .CP(HCLK), .CD(n640), .Q(
        n1766) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[6]  ( .D(n757), .CP(HCLK), .CD(n7), .Q(n1768) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[5]  ( .D(n755), .CP(HCLK), .CD(n652), .Q(
        n1770) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[4]  ( .D(n753), .CP(HCLK), .CD(n644), .Q(
        n1772) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[3]  ( .D(n751), .CP(HCLK), .CD(n642), .Q(
        n1774) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[2]  ( .D(n749), .CP(HCLK), .CD(n7), .Q(n1776) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[1]  ( .D(n747), .CP(HCLK), .CD(n650), .Q(
        n1778) );
  CFD2QXL \LCD_reg_crsrintmsk_reg[0]  ( .D(n745), .CP(HCLK), .CD(n7), .Q(n1780) );
  CFD2QXL \LCD_reg_crsrintclr_reg[30]  ( .D(n741), .CP(HCLK), .CD(n638), .Q(
        n1784) );
  CFD2QXL \LCD_reg_crsrintclr_reg[29]  ( .D(n739), .CP(HCLK), .CD(n638), .Q(
        n1786) );
  CFD2QXL \LCD_reg_crsrintclr_reg[28]  ( .D(n737), .CP(HCLK), .CD(n7), .Q(
        n1788) );
  CFD2QXL \LCD_reg_crsrintclr_reg[27]  ( .D(n735), .CP(HCLK), .CD(n640), .Q(
        n1790) );
  CFD2QXL \LCD_reg_crsrintclr_reg[26]  ( .D(n733), .CP(HCLK), .CD(n646), .Q(
        n1792) );
  CFD2QXL \LCD_reg_crsrintclr_reg[25]  ( .D(n731), .CP(HCLK), .CD(n638), .Q(
        n1794) );
  CFD2QXL \LCD_reg_crsrintclr_reg[24]  ( .D(n729), .CP(HCLK), .CD(n644), .Q(
        n1796) );
  CFD2QXL \LCD_reg_crsrintclr_reg[23]  ( .D(n727), .CP(HCLK), .CD(n642), .Q(
        n1798) );
  CFD2QXL \LCD_reg_crsrintclr_reg[22]  ( .D(n725), .CP(HCLK), .CD(n652), .Q(
        n1800) );
  CFD2QXL \LCD_reg_crsrintclr_reg[21]  ( .D(n723), .CP(HCLK), .CD(n650), .Q(
        n1802) );
  CFD2QXL \LCD_reg_crsrintclr_reg[20]  ( .D(n721), .CP(HCLK), .CD(n644), .Q(
        n1804) );
  CFD2QXL \LCD_reg_crsrintclr_reg[19]  ( .D(n719), .CP(HCLK), .CD(n642), .Q(
        n1806) );
  CFD2QXL \LCD_reg_crsrintclr_reg[18]  ( .D(n717), .CP(HCLK), .CD(n642), .Q(
        n1808) );
  CFD2QXL \LCD_reg_crsrintclr_reg[17]  ( .D(n715), .CP(HCLK), .CD(n638), .Q(
        n1810) );
  CFD2QXL \LCD_reg_crsrintclr_reg[16]  ( .D(n713), .CP(HCLK), .CD(n638), .Q(
        n1812) );
  CFD2QXL \LCD_reg_crsrintclr_reg[15]  ( .D(n711), .CP(HCLK), .CD(n7), .Q(
        n1814) );
  CFD2QXL \LCD_reg_crsrintclr_reg[14]  ( .D(n709), .CP(HCLK), .CD(n640), .Q(
        n1816) );
  CFD2QXL \LCD_reg_crsrintclr_reg[13]  ( .D(n707), .CP(HCLK), .CD(n646), .Q(
        n1818) );
  CFD2QXL \LCD_reg_crsrintclr_reg[12]  ( .D(n705), .CP(HCLK), .CD(n644), .Q(
        n1820) );
  CFD2QXL \LCD_reg_crsrintclr_reg[11]  ( .D(n703), .CP(HCLK), .CD(n640), .Q(
        n1822) );
  CFD2QXL \LCD_reg_crsrintclr_reg[10]  ( .D(n701), .CP(HCLK), .CD(n656), .Q(
        n1824) );
  CFD2QXL \LCD_reg_crsrintclr_reg[9]  ( .D(n699), .CP(HCLK), .CD(n646), .Q(
        n1826) );
  CFD2QXL \LCD_reg_crsrintclr_reg[8]  ( .D(n697), .CP(HCLK), .CD(n7), .Q(n1828) );
  CFD2QXL \LCD_reg_crsrintclr_reg[7]  ( .D(n695), .CP(HCLK), .CD(n644), .Q(
        n1830) );
  CFD2QXL \LCD_reg_crsrintclr_reg[6]  ( .D(n693), .CP(HCLK), .CD(n642), .Q(
        n1832) );
  CFD2QXL \LCD_reg_crsrintclr_reg[5]  ( .D(n691), .CP(HCLK), .CD(n7), .Q(n1834) );
  CFD2QXL \LCD_reg_crsrintclr_reg[4]  ( .D(n689), .CP(HCLK), .CD(n638), .Q(
        n1836) );
  CFD2QXL \LCD_reg_crsrintclr_reg[3]  ( .D(n687), .CP(HCLK), .CD(n7), .Q(n1838) );
  CFD2QXL \LCD_reg_crsrintclr_reg[2]  ( .D(n685), .CP(HCLK), .CD(n650), .Q(
        n1840) );
  CFD2QXL \LCD_reg_crsrintclr_reg[1]  ( .D(n683), .CP(HCLK), .CD(n646), .Q(
        n1842) );
  CFD2QXL \LCD_reg_crsrintclr_reg[0]  ( .D(n681), .CP(HCLK), .CD(n638), .Q(
        n1844) );
  CFD2QXL \LCD_reg_crsrintstat_reg[31]  ( .D(n2151), .CP(HCLK), .CD(n658), .Q(
        n1910) );
  CFD2QXL \LCD_reg_cfg_reg[31]  ( .D(n2087), .CP(HCLK), .CD(n642), .Q(n660) );
  CFD2QXL \LCD_reg_lpbase_reg[31]  ( .D(n1703), .CP(HCLK), .CD(n652), .Q(n836)
         );
  CFD2QXL \LCD_reg_intstat_reg[31]  ( .D(n1447), .CP(HCLK), .CD(n7), .Q(n1078)
         );
  CFD2QXL \LCD_reg_upcurr_reg[31]  ( .D(n1319), .CP(HCLK), .CD(n646), .Q(n1206) );
  CFD2QXL \LCD_reg_crsrcfg_reg[31]  ( .D(n1127), .CP(HCLK), .CD(n638), .Q(
        n1398) );
  CFD2QXL \LCD_reg_xy_reg[31]  ( .D(n935), .CP(HCLK), .CD(n644), .Q(n1590) );
  CFD2QXL \LCD_reg_clip_reg[31]  ( .D(n871), .CP(HCLK), .CD(n650), .Q(n1654)
         );
  CFD2QXL \LCD_reg_crsrintmsk_reg[31]  ( .D(n807), .CP(HCLK), .CD(n652), .Q(
        n1718) );
  CFD2QXL \LCD_reg_crsrintclr_reg[31]  ( .D(n743), .CP(HCLK), .CD(n640), .Q(
        n1782) );
  CFD2QXL \LCD_reg_ctrl_reg[11]  ( .D(n1599), .CP(HCLK), .CD(n7), .Q(
        \lcd_ctrl[LCDPWR] ) );
  CFD2QXL \LCD_reg_timh_reg[28]  ( .D(n2017), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HBP][4] ) );
  CFD2QXL \LCD_reg_timh_reg[26]  ( .D(n2013), .CP(HCLK), .CD(n642), .Q(
        \lcd_timh[HBP][2] ) );
  CFD2QXL \LCD_reg_timv_reg[26]  ( .D(n1949), .CP(HCLK), .CD(n656), .Q(
        \lcd_timv[VBP][2] ) );
  CFD2QXL \LCD_reg_timv_reg[23]  ( .D(n1943), .CP(HCLK), .CD(n638), .Q(
        \lcd_timv[VFP][7] ) );
  CFD2QXL \LCD_reg_timv_reg[18]  ( .D(n1933), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VFP][2] ) );
  CFD2QXL \LCD_reg_timv_reg[15]  ( .D(n1927), .CP(HCLK), .CD(n648), .Q(
        \lcd_timv[VSW][5] ) );
  CFD2QXL \LCD_reg_timv_reg[13]  ( .D(n1923), .CP(HCLK), .CD(n656), .Q(
        \lcd_timv[VSW][3] ) );
  CFD2QXL \LCD_reg_timv_reg[12]  ( .D(n1921), .CP(HCLK), .CD(n658), .Q(
        \lcd_timv[VSW][2] ) );
  CFD2QXL \LCD_reg_timv_reg[8]  ( .D(n1913), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[LPP][8] ) );
  CFD2QXL \LCD_reg_timv_reg[7]  ( .D(n1911), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[LPP][7] ) );
  CFD2QXL \LCD_reg_timv_reg[2]  ( .D(n1901), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[LPP][2] ) );
  CFD2QXL \LCD_reg_timh_reg[29]  ( .D(n2019), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HBP][5] ) );
  CFD2QXL \LCD_reg_timh_reg[27]  ( .D(n2015), .CP(HCLK), .CD(n638), .Q(
        \lcd_timh[HBP][3] ) );
  CFD2QXL \LCD_reg_timh_reg[25]  ( .D(n2011), .CP(HCLK), .CD(n646), .Q(
        \lcd_timh[HBP][1] ) );
  CFD2QXL \LCD_reg_timh_reg[24]  ( .D(n2009), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HBP][0] ) );
  CFD2QXL \LCD_reg_timh_reg[11]  ( .D(n1983), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[HSW][3] ) );
  CFD2QXL \LCD_reg_timv_reg[29]  ( .D(n1955), .CP(HCLK), .CD(n646), .Q(
        \lcd_timv[VBP][5] ) );
  CFD2QXL \LCD_reg_timv_reg[27]  ( .D(n1951), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VBP][3] ) );
  CFD2QXL \LCD_reg_timv_reg[25]  ( .D(n1947), .CP(HCLK), .CD(n650), .Q(
        \lcd_timv[VBP][1] ) );
  CFD2QXL \LCD_reg_timv_reg[24]  ( .D(n1945), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VBP][0] ) );
  CFD2QXL \LCD_reg_timv_reg[21]  ( .D(n1939), .CP(HCLK), .CD(n642), .Q(
        \lcd_timv[VFP][5] ) );
  CFD2QXL \LCD_reg_timv_reg[19]  ( .D(n1935), .CP(HCLK), .CD(n644), .Q(
        \lcd_timv[VFP][3] ) );
  CFD2QXL \LCD_reg_timv_reg[17]  ( .D(n1931), .CP(HCLK), .CD(n652), .Q(
        \lcd_timv[VFP][1] ) );
  CFD2QXL \LCD_reg_timv_reg[16]  ( .D(n1929), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VFP][0] ) );
  CFD2QXL \LCD_reg_timv_reg[11]  ( .D(n1919), .CP(HCLK), .CD(n648), .Q(
        \lcd_timv[VSW][1] ) );
  CFD2QXL \LCD_reg_timv_reg[10]  ( .D(n1917), .CP(HCLK), .CD(n656), .Q(
        \lcd_timv[VSW][0] ) );
  CFD2QXL \LCD_reg_timv_reg[5]  ( .D(n1907), .CP(HCLK), .CD(n640), .Q(
        \lcd_timv[LPP][5] ) );
  CFD2QXL \LCD_reg_timv_reg[3]  ( .D(n1903), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[LPP][3] ) );
  CFD2QXL \LCD_reg_timv_reg[1]  ( .D(n1899), .CP(HCLK), .CD(n646), .Q(
        \lcd_timv[LPP][1] ) );
  CFD2QXL \LCD_reg_timh_reg[31]  ( .D(n2023), .CP(HCLK), .CD(n646), .Q(
        \lcd_timh[HBP][7] ) );
  CFD2QXL \LCD_reg_timv_reg[31]  ( .D(n1959), .CP(HCLK), .CD(n640), .Q(
        \lcd_timv[VBP][7] ) );
  CFD2QXL \LCD_reg_timh_reg[30]  ( .D(n2021), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HBP][6] ) );
  CFD2QXL \LCD_reg_timh_reg[15]  ( .D(n1991), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[HSW][7] ) );
  CFD2QXL \LCD_reg_timh_reg[13]  ( .D(n1987), .CP(HCLK), .CD(n646), .Q(
        \lcd_timh[HSW][5] ) );
  CFD2QXL \LCD_reg_timh_reg[9]  ( .D(n1979), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[HSW][1] ) );
  CFD2QXL \LCD_reg_timh_reg[8]  ( .D(n1977), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[HSW][0] ) );
  CFD2QXL \LCD_reg_timv_reg[30]  ( .D(n1957), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VBP][6] ) );
  CFD2QXL \LCD_reg_timv_reg[22]  ( .D(n1941), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VFP][6] ) );
  CFD2QXL \LCD_reg_timv_reg[4]  ( .D(n1905), .CP(HCLK), .CD(n656), .Q(
        \lcd_timv[LPP][4] ) );
  CFD2QXL \LCD_reg_timh_reg[14]  ( .D(n1989), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HSW][6] ) );
  CFD2QXL \LCD_reg_timh_reg[12]  ( .D(n1985), .CP(HCLK), .CD(n648), .Q(
        \lcd_timh[HSW][4] ) );
  CFD2QXL \LCD_reg_timh_reg[10]  ( .D(n1981), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[HSW][2] ) );
  CFD2QXL \LCD_reg_timv_reg[6]  ( .D(n1909), .CP(HCLK), .CD(n648), .Q(
        \lcd_timv[LPP][6] ) );
  CFD2QXL \LCD_reg_upbase_reg[31]  ( .D(n1767), .CP(HCLK), .CD(n650), .Q(
        \lcd_upbase[LCDUPBASE][28] ) );
  CFD2QXL \LCD_reg_upbase_reg[30]  ( .D(n1765), .CP(HCLK), .CD(n638), .Q(
        \lcd_upbase[LCDUPBASE][27] ) );
  CFD2QXL \LCD_reg_upbase_reg[29]  ( .D(n1763), .CP(HCLK), .CD(n644), .Q(
        \lcd_upbase[LCDUPBASE][26] ) );
  CFD2QXL \LCD_reg_upbase_reg[28]  ( .D(n1761), .CP(HCLK), .CD(n650), .Q(
        \lcd_upbase[LCDUPBASE][25] ) );
  CFD2QXL \LCD_reg_upbase_reg[27]  ( .D(n1759), .CP(HCLK), .CD(n642), .Q(
        \lcd_upbase[LCDUPBASE][24] ) );
  CFD2QXL \LCD_reg_upbase_reg[26]  ( .D(n1757), .CP(HCLK), .CD(n652), .Q(
        \lcd_upbase[LCDUPBASE][23] ) );
  CFD2QXL \LCD_reg_upbase_reg[25]  ( .D(n1755), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][22] ) );
  CFD2QXL \LCD_reg_upbase_reg[24]  ( .D(n1753), .CP(HCLK), .CD(n646), .Q(
        \lcd_upbase[LCDUPBASE][21] ) );
  CFD2QXL \LCD_reg_upbase_reg[23]  ( .D(n1751), .CP(HCLK), .CD(n650), .Q(
        \lcd_upbase[LCDUPBASE][20] ) );
  CFD2QXL \LCD_reg_upbase_reg[22]  ( .D(n1749), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][19] ) );
  CFD2QXL \LCD_reg_upbase_reg[21]  ( .D(n1747), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][18] ) );
  CFD2QXL \LCD_reg_upbase_reg[20]  ( .D(n1745), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][17] ) );
  CFD2QXL \LCD_reg_upbase_reg[19]  ( .D(n1743), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][16] ) );
  CFD2QXL \LCD_reg_upbase_reg[18]  ( .D(n1741), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][15] ) );
  CFD2QXL \LCD_reg_upbase_reg[17]  ( .D(n1739), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][14] ) );
  CFD2QXL \LCD_reg_upbase_reg[16]  ( .D(n1737), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][13] ) );
  CFD2QXL \LCD_reg_upbase_reg[15]  ( .D(n1735), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][12] ) );
  CFD2QXL \LCD_reg_upbase_reg[14]  ( .D(n1733), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][11] ) );
  CFD2QXL \LCD_reg_upbase_reg[13]  ( .D(n1731), .CP(HCLK), .CD(n654), .Q(
        \lcd_upbase[LCDUPBASE][10] ) );
  CFD2QXL \LCD_reg_upbase_reg[12]  ( .D(n1729), .CP(HCLK), .CD(n658), .Q(
        \lcd_upbase[LCDUPBASE][9] ) );
  CFD2QXL \LCD_reg_upbase_reg[11]  ( .D(n1727), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][8] ) );
  CFD2QXL \LCD_reg_upbase_reg[10]  ( .D(n1725), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][7] ) );
  CFD2QXL \LCD_reg_upbase_reg[9]  ( .D(n1723), .CP(HCLK), .CD(n640), .Q(
        \lcd_upbase[LCDUPBASE][6] ) );
  CFD2QXL \LCD_reg_upbase_reg[8]  ( .D(n1721), .CP(HCLK), .CD(n648), .Q(
        \lcd_upbase[LCDUPBASE][5] ) );
  CFD2QXL \LCD_reg_upbase_reg[7]  ( .D(n1719), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][4] ) );
  CFD2QXL \LCD_reg_upbase_reg[6]  ( .D(n1717), .CP(HCLK), .CD(n646), .Q(
        \lcd_upbase[LCDUPBASE][3] ) );
  CFD2QXL \LCD_reg_upbase_reg[5]  ( .D(n1715), .CP(HCLK), .CD(n656), .Q(
        \lcd_upbase[LCDUPBASE][2] ) );
  CFD2QXL \LCD_reg_upbase_reg[4]  ( .D(n1713), .CP(HCLK), .CD(n7), .Q(
        \lcd_upbase[LCDUPBASE][1] ) );
  CFD2QXL \LCD_reg_upbase_reg[3]  ( .D(n1711), .CP(HCLK), .CD(n650), .Q(
        \lcd_upbase[LCDUPBASE][0] ) );
  CFD2QXL \LCD_reg_timv_reg[0]  ( .D(n1897), .CP(HCLK), .CD(n654), .Q(
        \lcd_timv[LPP][0] ) );
  CFD2QXL \LCD_reg_le_reg[4]  ( .D(n1777), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][4] ) );
  CFD2QXL \LCD_reg_le_reg[2]  ( .D(n1773), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][2] ) );
  CFD2QXL \LCD_reg_timv_reg[28]  ( .D(n1953), .CP(HCLK), .CD(n7), .Q(
        \lcd_timv[VBP][4] ) );
  CFD2QXL \LCD_reg_timv_reg[20]  ( .D(n1937), .CP(HCLK), .CD(n646), .Q(
        \lcd_timv[VFP][4] ) );
  CFD2QXL \LCD_reg_timv_reg[9]  ( .D(n1915), .CP(HCLK), .CD(n654), .Q(
        \lcd_timv[LPP][9] ) );
  CFD2QXL \LCD_reg_timv_reg[14]  ( .D(n1925), .CP(HCLK), .CD(n658), .Q(
        \lcd_timv[VSW][4] ) );
  CFD2QXL \LCD_reg_le_reg[16]  ( .D(n1801), .CP(HCLK), .CD(n652), .Q(
        \lcd_le[LEE] ) );
  CFD2QXL \LCD_reg_le_reg[1]  ( .D(n1771), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][1] ) );
  CFD2QXL \LCD_reg_le_reg[5]  ( .D(n1779), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][5] ) );
  CFD2QXL \LCD_reg_le_reg[3]  ( .D(n1775), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][3] ) );
  CFD2QXL \LCD_reg_le_reg[6]  ( .D(n1781), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][6] ) );
  CFD2QXL \LCD_reg_le_reg[0]  ( .D(n1769), .CP(HCLK), .CD(n644), .Q(
        \lcd_le[LED][0] ) );
  CFD2QXL \LCD_reg_ctrl_reg[16]  ( .D(n1609), .CP(HCLK), .CD(n644), .Q(
        \lcd_ctrl[WATERMARK] ) );
  CFD2QXL \LCD_reg_pal1_reg[15]  ( .D(n967), .CP(HCLK), .CD(n646), .Q(n1558)
         );
  CFD2QXL \LCD_reg_crsrintmsk_reg[15]  ( .D(n775), .CP(HCLK), .CD(n640), .Q(
        n1750) );
  CFD2QXL \LCD_reg_timh_reg[7]  ( .D(n1975), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[PPL][5] ) );
  CFD2QXL \LCD_reg_timh_reg[6]  ( .D(n1973), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[PPL][4] ) );
  CFD2QXL \LCD_reg_timh_reg[22]  ( .D(n2005), .CP(HCLK), .CD(n652), .Q(
        \lcd_timh[HFP][6] ) );
  CFD2QXL \LCD_reg_timh_reg[21]  ( .D(n2003), .CP(HCLK), .CD(n644), .Q(
        \lcd_timh[HFP][5] ) );
  CFD2QXL \LCD_reg_timh_reg[18]  ( .D(n1997), .CP(HCLK), .CD(n640), .Q(
        \lcd_timh[HFP][2] ) );
  CFD2QXL \LCD_reg_timh_reg[23]  ( .D(n2007), .CP(HCLK), .CD(n642), .Q(
        \lcd_timh[HFP][7] ) );
  CFD2QXL \LCD_reg_timh_reg[19]  ( .D(n1999), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HFP][3] ) );
  CFD2QXL \LCD_reg_timh_reg[17]  ( .D(n1995), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[HFP][1] ) );
  CFD2QXL \LCD_reg_timh_reg[16]  ( .D(n1993), .CP(HCLK), .CD(n658), .Q(
        \lcd_timh[HFP][0] ) );
  CFD2QXL \LCD_reg_timh_reg[20]  ( .D(n2001), .CP(HCLK), .CD(n654), .Q(
        \lcd_timh[HFP][4] ) );
  CFD2QXL \LCD_reg_ctrl_reg[3]  ( .D(n1583), .CP(HCLK), .CD(n646), .Q(
        \lcd_ctrl[LCDBPP][2] ) );
  CFD2QXL \LCD_reg_ctrl_reg[1]  ( .D(n1579), .CP(HCLK), .CD(n656), .Q(
        \lcd_ctrl[LCDBPP][0] ) );
  CFD2QXL \LCD_reg_ctrl_reg[2]  ( .D(n1581), .CP(HCLK), .CD(n640), .Q(
        \lcd_ctrl[LCDBPP][1] ) );
  CFD2QXL \ahbs_addr_reg_reg[29]  ( .D(n2215), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[29]) );
  CFD2QXL \ahbs_addr_reg_reg[1]  ( .D(n2187), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[1]) );
  CFD2QXL \ahbs_addr_reg_reg[0]  ( .D(n2186), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[0]) );
  CFD2QXL \ahbs_addr_reg_reg[31]  ( .D(n2217), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[31]) );
  CFD2QXL \state_q_reg[1]  ( .D(state_ns[1]), .CP(HCLK), .CD(n638), .Q(
        state_q[1]) );
  CFD2QXL \ahbs_addr_reg_reg[17]  ( .D(n2203), .CP(HCLK), .CD(n644), .Q(
        ahbs_addr_reg[17]) );
  CFD2QXL \ahbs_addr_reg_reg[19]  ( .D(n2205), .CP(HCLK), .CD(n7), .Q(
        ahbs_addr_reg[19]) );
  CFD2QXL \ahbs_addr_reg_reg[15]  ( .D(n2201), .CP(HCLK), .CD(n640), .Q(
        ahbs_addr_reg[15]) );
  CFD2QXL \ahbs_addr_reg_reg[20]  ( .D(n2206), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[20]) );
  CFD2QXL \ahbs_addr_reg_reg[18]  ( .D(n2204), .CP(HCLK), .CD(n642), .Q(
        ahbs_addr_reg[18]) );
  CFD2QXL \ahbs_addr_reg_reg[14]  ( .D(n2200), .CP(HCLK), .CD(n644), .Q(
        ahbs_addr_reg[14]) );
  CFD2QXL \ahbs_addr_reg_reg[26]  ( .D(n2212), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[26]) );
  CFD2QXL \ahbs_addr_reg_reg[28]  ( .D(n2214), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[28]) );
  CFD2QXL \ahbs_addr_reg_reg[25]  ( .D(n2211), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[25]) );
  CFD2QXL \ahbs_addr_reg_reg[24]  ( .D(n2210), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[24]) );
  CFD2QXL \ahbs_addr_reg_reg[21]  ( .D(n2207), .CP(HCLK), .CD(n650), .Q(
        ahbs_addr_reg[21]) );
  CFD2QXL \ahbs_addr_reg_reg[22]  ( .D(n2208), .CP(HCLK), .CD(n646), .Q(
        ahbs_addr_reg[22]) );
  CFD2QXL \ahbs_addr_reg_reg[23]  ( .D(n2209), .CP(HCLK), .CD(n7), .Q(
        ahbs_addr_reg[23]) );
  CFD2QXL \ahbs_addr_reg_reg[27]  ( .D(n2213), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[27]) );
  CFD2QXL \ahbs_addr_reg_reg[16]  ( .D(n2202), .CP(HCLK), .CD(n652), .Q(
        ahbs_addr_reg[16]) );
  CFD2QXL \LCD_reg_timh_reg[5]  ( .D(n1971), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[PPL][3] ) );
  CFD2QXL \LCD_reg_timh_reg[4]  ( .D(n1969), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[PPL][2] ) );
  CFD2QXL \LCD_reg_timh_reg[3]  ( .D(n1967), .CP(HCLK), .CD(n656), .Q(
        \lcd_timh[PPL][1] ) );
  CFD2QXL \ahbs_addr_reg_reg[30]  ( .D(n2216), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[30]) );
  CFD2QXL \ahbs_addr_reg_reg[8]  ( .D(n2194), .CP(HCLK), .CD(n638), .Q(
        ahbs_addr_reg[8]) );
  CFD2QXL \ahbs_addr_reg_reg[7]  ( .D(n2193), .CP(HCLK), .CD(n642), .Q(
        ahbs_addr_reg[7]) );
  CFD2QXL \ahbs_addr_reg_reg[9]  ( .D(n2195), .CP(HCLK), .CD(n7), .Q(
        ahbs_addr_reg[9]) );
  CFD2QXL \LCD_reg_cfg_reg[4]  ( .D(n2033), .CP(HCLK), .CD(n7), .Q(
        \lcd_cfg[CLKDIV][4] ) );
  CFD2QXL \ahbs_addr_reg_reg[6]  ( .D(n2192), .CP(HCLK), .CD(n644), .Q(
        ahbs_addr_reg[6]) );
  CFD2QXL \LCD_reg_cfg_reg[0]  ( .D(n2025), .CP(HCLK), .CD(n7), .Q(
        \lcd_cfg[CLKDIV][0] ) );
  CFD2QXL \ahbs_addr_reg_reg[11]  ( .D(n2197), .CP(HCLK), .CD(n7), .Q(
        ahbs_addr_reg[11]) );
  CFD2QXL \ahbs_addr_reg_reg[4]  ( .D(n2190), .CP(HCLK), .CD(n658), .Q(
        ahbs_addr_reg[4]) );
  CFD2QXL \LCD_reg_cfg_reg[3]  ( .D(n2031), .CP(HCLK), .CD(n658), .Q(
        \lcd_cfg[CLKDIV][3] ) );
  CFD2QXL \LCD_reg_cfg_reg[1]  ( .D(n2027), .CP(HCLK), .CD(n654), .Q(
        \lcd_cfg[CLKDIV][1] ) );
  CFD2QXL \ahbs_addr_reg_reg[10]  ( .D(n2196), .CP(HCLK), .CD(n646), .Q(
        ahbs_addr_reg[10]) );
  CFD2QXL \LCD_reg_cfg_reg[2]  ( .D(n2029), .CP(HCLK), .CD(n648), .Q(
        \lcd_cfg[CLKDIV][2] ) );
  CFD2QXL \LCD_reg_ctrl_reg[5]  ( .D(n1587), .CP(HCLK), .CD(n648), .Q(
        \lcd_ctrl[LCDTFT] ) );
  CFD2QX1 \LCD_reg_timh_reg[2]  ( .D(n1965), .CP(HCLK), .CD(n7), .Q(
        \lcd_timh[PPL][0] ) );
  CFD2QXL \ahbs_addr_reg_reg[13]  ( .D(n8), .CP(HCLK), .CD(n648), .Q(
        ahbs_addr_reg[13]) );
  CFD2QXL \ahbs_addr_reg_reg[12]  ( .D(n2198), .CP(HCLK), .CD(n7), .Q(
        ahbs_addr_reg[12]) );
  CNR2X1 U3 ( .A(n283), .B(n282), .Z(n532) );
  CND2X1 U4 ( .A(n571), .B(n570), .Z(n586) );
  CND2X2 U5 ( .A(n28), .B(n25), .Z(n37) );
  CIVDX1 U6 ( .A(n597), .Z0(n461), .Z1(n511) );
  CNIVX2 U7 ( .A(n525), .Z(n610) );
  CNR2X2 U8 ( .A(n575), .B(n37), .Z(n598) );
  CNR2X2 U9 ( .A(n23), .B(n587), .Z(n594) );
  CND2X1 U10 ( .A(n12), .B(n265), .Z(n27) );
  CND2X1 U11 ( .A(n551), .B(n570), .Z(n555) );
  CND2X1 U12 ( .A(n25), .B(n570), .Z(n564) );
  CND3XL U13 ( .A(ahbs_addr_reg[9]), .B(ahbs_addr_reg[16]), .C(n275), .Z(n282)
         );
  CNIVX2 U14 ( .A(n24), .Z(n596) );
  CNR2X2 U15 ( .A(n573), .B(n37), .Z(n611) );
  CIVX2 U16 ( .A(n19), .Z(n592) );
  CIVX2 U17 ( .A(n14), .Z(n590) );
  CNR2X2 U18 ( .A(n572), .B(n586), .Z(n580) );
  CNR2X2 U19 ( .A(n578), .B(n555), .Z(n556) );
  CNR2X2 U20 ( .A(n562), .B(n561), .Z(n563) );
  CNR2X2 U21 ( .A(n572), .B(n555), .Z(n554) );
  CIVX2 U22 ( .A(n588), .Z(n589) );
  CNR2X2 U23 ( .A(n578), .B(n586), .Z(n584) );
  CNR2X2 U24 ( .A(n572), .B(n564), .Z(n567) );
  CNR2X2 U25 ( .A(n573), .B(n586), .Z(n582) );
  CNR2X2 U26 ( .A(n587), .B(n555), .Z(n557) );
  CNR2X2 U27 ( .A(n573), .B(n564), .Z(n568) );
  CNR2X2 U28 ( .A(n574), .B(n555), .Z(n559) );
  CNR2X2 U29 ( .A(n575), .B(n555), .Z(n560) );
  CNR2X2 U30 ( .A(n576), .B(n555), .Z(n552) );
  CNR2X2 U31 ( .A(n573), .B(n555), .Z(n553) );
  CNR2X2 U32 ( .A(n574), .B(n586), .Z(n581) );
  CNR2X2 U33 ( .A(n575), .B(n564), .Z(n565) );
  CNR2X2 U34 ( .A(n575), .B(n586), .Z(n579) );
  CNR2X2 U35 ( .A(n576), .B(n586), .Z(n583) );
  CNR2X2 U36 ( .A(n564), .B(n576), .Z(n569) );
  CMX2X1 U37 ( .A0(ahbs_addr_reg[12]), .A1(HADDR[12]), .S(n277), .Z(n2198) );
  CAN4X1 U38 ( .A(ahbs_addr_reg[14]), .B(ahbs_addr_reg[15]), .C(
        ahbs_addr_reg[18]), .D(ahbs_addr_reg[20]), .Z(n1) );
  CAN4X1 U39 ( .A(ahbs_addr_reg[17]), .B(n1), .C(ahbs_addr_reg[8]), .D(
        ahbs_addr_reg[7]), .Z(n2) );
  CND2X1 U40 ( .A(n30), .B(n2), .Z(n3) );
  CNR3XL U41 ( .A(n26), .B(ahbs_addr_reg[22]), .C(n3), .Z(n4) );
  CNR8X1 U42 ( .A(ahbs_addr_reg[21]), .B(ahbs_addr_reg[28]), .C(
        ahbs_addr_reg[24]), .D(ahbs_addr_reg[27]), .E(ahbs_addr_reg[25]), .F(
        ahbs_addr_reg[26]), .G(ahbs_addr_reg[23]), .H(n36), .Z(n5) );
  CND4X1 U43 ( .A(ahbs_addr_reg[19]), .B(n265), .C(n4), .D(n5), .Z(n545) );
  CNR2IX1 U44 ( .B(n1558), .A(n461), .Z(n6) );
  CANR1XL U45 ( .A(n596), .B(n1750), .C(n6), .Z(n468) );
  CMX2X1 U46 ( .A0(\lcd_ctrl[LCDEN] ), .A1(HWDATA[0]), .S(n569), .Z(n1577) );
  CNR2X4 U47 ( .A(n576), .B(n39), .Z(n474) );
  CNR2X4 U48 ( .A(n283), .B(n545), .Z(n531) );
  CNR2X4 U49 ( .A(n587), .B(n39), .Z(n530) );
  CNR2X4 U50 ( .A(n578), .B(n39), .Z(n29) );
  CNR2X4 U51 ( .A(n283), .B(n562), .Z(n524) );
  CNR2X4 U52 ( .A(n283), .B(n548), .Z(n146) );
  CNR2X2 U53 ( .A(n576), .B(n37), .Z(n609) );
  CIVX8 U54 ( .A(HRESET), .Z(n7) );
  CNIVX2 U55 ( .A(n638), .Z(n642) );
  CNIVX2 U56 ( .A(n646), .Z(n650) );
  CNIVX2 U57 ( .A(n646), .Z(n644) );
  CNIVX2 U58 ( .A(n654), .Z(n640) );
  CNIVX2 U59 ( .A(n650), .Z(n652) );
  CIVXL U60 ( .A(state_q[0]), .Z(n636) );
  CND2IX1 U61 ( .B(HTRANS[0]), .A(HTRANS[1]), .Z(n276) );
  CMXI2X2 U62 ( .A0(n636), .A1(n276), .S(state_q[1]), .Z(n277) );
  CMX2XL U63 ( .A0(ahbs_addr_reg[13]), .A1(HADDR[13]), .S(n277), .Z(n8) );
  CIVX2 U64 ( .A(ahbs_addr_reg[4]), .Z(n36) );
  CND8X1 U65 ( .A(ahbs_addr_reg[26]), .B(ahbs_addr_reg[25]), .C(
        ahbs_addr_reg[23]), .D(ahbs_addr_reg[21]), .E(ahbs_addr_reg[28]), .F(
        ahbs_addr_reg[24]), .G(ahbs_addr_reg[27]), .H(ahbs_addr_reg[22]), .Z(
        n271) );
  CIVX2 U66 ( .A(n271), .Z(n11) );
  COR6X1 U67 ( .A(ahbs_addr_reg[18]), .B(ahbs_addr_reg[19]), .C(
        ahbs_addr_reg[17]), .D(ahbs_addr_reg[14]), .E(ahbs_addr_reg[15]), .F(
        ahbs_addr_reg[20]), .Z(n268) );
  CNR2X1 U68 ( .A(ahbs_addr_reg[0]), .B(ahbs_addr_reg[1]), .Z(n264) );
  CND2X1 U69 ( .A(ahbs_addr_reg[29]), .B(ahbs_addr_reg[31]), .Z(n270) );
  COR2X1 U70 ( .A(ahbs_addr_reg[12]), .B(ahbs_addr_reg[13]), .Z(n267) );
  CNR4X2 U71 ( .A(ahbs_addr_reg[6]), .B(ahbs_addr_reg[9]), .C(n270), .D(n267), 
        .Z(n9) );
  CND4X1 U72 ( .A(n264), .B(ahbs_addr_reg[30]), .C(ahbs_addr_reg[16]), .D(n9), 
        .Z(n26) );
  COR4X1 U73 ( .A(ahbs_addr_reg[7]), .B(ahbs_addr_reg[8]), .C(n268), .D(n26), 
        .Z(n10) );
  CNR2IX2 U74 ( .B(n11), .A(n10), .Z(n12) );
  CNR2X1 U75 ( .A(ahbs_addr_reg[11]), .B(ahbs_addr_reg[10]), .Z(n265) );
  CNR2X2 U76 ( .A(n36), .B(n27), .Z(n25) );
  CIVX2 U77 ( .A(state_q[1]), .Z(n632) );
  CNR2X1 U78 ( .A(state_q[0]), .B(n632), .Z(n570) );
  CIVX2 U79 ( .A(ahbs_addr_reg[5]), .Z(n16) );
  CAN2X1 U80 ( .A(ahbs_addr_reg[3]), .B(n16), .Z(n21) );
  CIVX2 U81 ( .A(ahbs_addr_reg[2]), .Z(n20) );
  CND2X1 U82 ( .A(n21), .B(n20), .Z(n576) );
  CNIVX2 U83 ( .A(n7), .Z(n638) );
  CMX2XL U84 ( .A0(ahbs_addr_reg[9]), .A1(HADDR[9]), .S(n277), .Z(n2195) );
  CMX2XL U85 ( .A0(ahbs_addr_reg[31]), .A1(HADDR[31]), .S(n277), .Z(n2217) );
  CNIVX1 U86 ( .A(n7), .Z(n654) );
  CND3X1 U87 ( .A(n12), .B(ahbs_addr_reg[11]), .C(ahbs_addr_reg[10]), .Z(n35)
         );
  CNR2IX1 U88 ( .B(n36), .A(n35), .Z(n551) );
  CNR2X1 U89 ( .A(n636), .B(n632), .Z(n28) );
  CND2X2 U90 ( .A(n551), .B(n28), .Z(n23) );
  CNR2X2 U91 ( .A(n23), .B(n576), .Z(n591) );
  CNR2X1 U92 ( .A(ahbs_addr_reg[3]), .B(n20), .Z(n17) );
  CND2X1 U93 ( .A(ahbs_addr_reg[5]), .B(n17), .Z(n578) );
  CIVXL U94 ( .A(n578), .Z(n13) );
  CND2IX1 U95 ( .B(n23), .A(n13), .Z(n14) );
  CANR2X1 U96 ( .A(n591), .B(n1482), .C(n590), .D(n1802), .Z(n51) );
  CNR2X1 U97 ( .A(ahbs_addr_reg[2]), .B(ahbs_addr_reg[3]), .Z(n22) );
  CND2X1 U98 ( .A(n22), .B(n16), .Z(n573) );
  CIVXL U99 ( .A(n573), .Z(n15) );
  CNR2IX2 U100 ( .B(n15), .A(n23), .Z(n593) );
  CND2X1 U101 ( .A(n17), .B(n16), .Z(n572) );
  CIVXL U102 ( .A(n572), .Z(n18) );
  CND2IX1 U103 ( .B(n23), .A(n18), .Z(n19) );
  CANR2X1 U104 ( .A(n593), .B(n1354), .C(n592), .D(n1418), .Z(n50) );
  CND3XL U105 ( .A(ahbs_addr_reg[5]), .B(ahbs_addr_reg[3]), .C(n20), .Z(n574)
         );
  CNR2X2 U106 ( .A(n23), .B(n574), .Z(n595) );
  CND3XL U107 ( .A(ahbs_addr_reg[5]), .B(ahbs_addr_reg[2]), .C(
        ahbs_addr_reg[3]), .Z(n587) );
  CANR2XL U108 ( .A(n595), .B(n1866), .C(n594), .D(n1930), .Z(n48) );
  CND2X1 U109 ( .A(ahbs_addr_reg[2]), .B(n21), .Z(n575) );
  CNR2X2 U110 ( .A(n23), .B(n575), .Z(n597) );
  CND2X1 U111 ( .A(ahbs_addr_reg[5]), .B(n22), .Z(n577) );
  CNR2X1 U112 ( .A(n23), .B(n577), .Z(n24) );
  CANR2X1 U113 ( .A(n511), .B(n1546), .C(n596), .D(n1738), .Z(n47) );
  CIVX1 U114 ( .A(n28), .Z(n283) );
  CIVX1 U115 ( .A(n574), .Z(n30) );
  CANR2X1 U116 ( .A(n598), .B(n970), .C(n531), .D(n680), .Z(n34) );
  CNR2IX1 U117 ( .B(n36), .A(n27), .Z(n571) );
  CND2X2 U118 ( .A(n571), .B(n28), .Z(n39) );
  CNR2X4 U119 ( .A(n577), .B(n39), .Z(n599) );
  CANR2X1 U120 ( .A(n599), .B(n1034), .C(n29), .D(n1098), .Z(n33) );
  CNR2IX4 U121 ( .B(n30), .A(n39), .Z(n600) );
  CANR2X1 U122 ( .A(n600), .B(n1162), .C(n530), .D(n1226), .Z(n32) );
  CNR2X2 U123 ( .A(n577), .B(n37), .Z(n602) );
  CNR2X4 U124 ( .A(n573), .B(n39), .Z(n601) );
  CANR2X1 U125 ( .A(n602), .B(n1290), .C(n601), .D(\lcd_timh[HFP][5] ), .Z(n31) );
  CAN4X1 U126 ( .A(n34), .B(n33), .C(n32), .D(n31), .Z(n46) );
  CNR2X1 U127 ( .A(n572), .B(n37), .Z(n525) );
  CANR2X1 U128 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][18] ), .C(n610), .D(n856), 
        .Z(n44) );
  CNR2X1 U129 ( .A(n575), .B(n39), .Z(n408) );
  CNIVX3 U130 ( .A(n408), .Z(n607) );
  CNR2X1 U131 ( .A(n36), .B(n35), .Z(n40) );
  CND2IX1 U132 ( .B(n572), .A(n40), .Z(n562) );
  CANR2X1 U133 ( .A(n607), .B(n802), .C(n524), .D(n1674), .Z(n43) );
  CNR2X1 U134 ( .A(n572), .B(n39), .Z(n38) );
  CNIVX3 U135 ( .A(n38), .Z(n608) );
  CANR2X1 U136 ( .A(n609), .B(n920), .C(n608), .D(\lcd_timv[VFP][5] ), .Z(n42)
         );
  CND2IX1 U137 ( .B(n573), .A(n40), .Z(n548) );
  CANR2X1 U138 ( .A(n474), .B(n738), .C(n146), .D(n1610), .Z(n41) );
  CAN4X1 U139 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n45) );
  CAN4X1 U140 ( .A(n48), .B(n47), .C(n46), .D(n45), .Z(n49) );
  CND3XL U141 ( .A(n51), .B(n50), .C(n49), .Z(HRDATA[21]) );
  CANR2X1 U142 ( .A(n591), .B(n1472), .C(n590), .D(n1792), .Z(n66) );
  CANR2X1 U143 ( .A(n593), .B(n1344), .C(n592), .D(n1408), .Z(n65) );
  CANR2X1 U144 ( .A(n511), .B(n1536), .C(n596), .D(n1728), .Z(n63) );
  CANR2XL U145 ( .A(n595), .B(n1856), .C(n594), .D(n1920), .Z(n62) );
  CANR2X1 U146 ( .A(n598), .B(n960), .C(n531), .D(n670), .Z(n55) );
  CANR2X1 U147 ( .A(n599), .B(n1024), .C(n29), .D(n1088), .Z(n54) );
  CANR2X1 U148 ( .A(n600), .B(n1152), .C(n530), .D(n1216), .Z(n53) );
  CANR2X1 U149 ( .A(n602), .B(n1280), .C(n601), .D(\lcd_timh[HBP][2] ), .Z(n52) );
  CAN4X1 U150 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n61) );
  CANR2X1 U151 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][23] ), .C(n610), .D(n846), 
        .Z(n59) );
  CANR2X1 U152 ( .A(n607), .B(n792), .C(n524), .D(n1664), .Z(n58) );
  CANR2X1 U153 ( .A(n609), .B(n910), .C(n608), .D(\lcd_timv[VBP][2] ), .Z(n57)
         );
  CANR2X1 U154 ( .A(n474), .B(n728), .C(n146), .D(n1600), .Z(n56) );
  CAN4X1 U155 ( .A(n59), .B(n58), .C(n57), .D(n56), .Z(n60) );
  CAN4X1 U156 ( .A(n63), .B(n62), .C(n61), .D(n60), .Z(n64) );
  CND3XL U157 ( .A(n66), .B(n65), .C(n64), .Z(HRDATA[26]) );
  CANR2X1 U158 ( .A(n591), .B(n1480), .C(n590), .D(n1800), .Z(n81) );
  CANR2X1 U159 ( .A(n593), .B(n1352), .C(n592), .D(n1416), .Z(n80) );
  CANR2XL U160 ( .A(n595), .B(n1864), .C(n594), .D(n1928), .Z(n78) );
  CANR2X1 U161 ( .A(n511), .B(n1544), .C(n596), .D(n1736), .Z(n77) );
  CANR2X1 U162 ( .A(n598), .B(n968), .C(n531), .D(n678), .Z(n70) );
  CANR2X1 U163 ( .A(n599), .B(n1032), .C(n29), .D(n1096), .Z(n69) );
  CANR2X1 U164 ( .A(n600), .B(n1160), .C(n530), .D(n1224), .Z(n68) );
  CANR2X1 U165 ( .A(n602), .B(n1288), .C(n601), .D(\lcd_timh[HFP][6] ), .Z(n67) );
  CAN4X1 U166 ( .A(n70), .B(n69), .C(n68), .D(n67), .Z(n76) );
  CANR2X1 U167 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][19] ), .C(n610), .D(n854), 
        .Z(n74) );
  CANR2X1 U168 ( .A(n607), .B(n800), .C(n524), .D(n1672), .Z(n73) );
  CANR2X1 U169 ( .A(n609), .B(n918), .C(n608), .D(\lcd_timv[VFP][6] ), .Z(n72)
         );
  CANR2X1 U170 ( .A(n474), .B(n736), .C(n146), .D(n1608), .Z(n71) );
  CAN4X1 U171 ( .A(n74), .B(n73), .C(n72), .D(n71), .Z(n75) );
  CAN4X1 U172 ( .A(n78), .B(n77), .C(n76), .D(n75), .Z(n79) );
  CND3XL U173 ( .A(n81), .B(n80), .C(n79), .Z(HRDATA[22]) );
  CANR2X1 U174 ( .A(n591), .B(n1476), .C(n590), .D(n1796), .Z(n96) );
  CANR2X1 U175 ( .A(n593), .B(n1348), .C(n592), .D(n1412), .Z(n95) );
  CANR2X1 U176 ( .A(n511), .B(n1540), .C(n596), .D(n1732), .Z(n93) );
  CANR2XL U177 ( .A(n595), .B(n1860), .C(n594), .D(n1924), .Z(n92) );
  CANR2X1 U178 ( .A(n598), .B(n964), .C(n531), .D(n674), .Z(n85) );
  CANR2X1 U179 ( .A(n599), .B(n1028), .C(n29), .D(n1092), .Z(n84) );
  CANR2X1 U180 ( .A(n600), .B(n1156), .C(n530), .D(n1220), .Z(n83) );
  CANR2X1 U181 ( .A(n602), .B(n1284), .C(n601), .D(\lcd_timh[HBP][0] ), .Z(n82) );
  CAN4X1 U182 ( .A(n85), .B(n84), .C(n83), .D(n82), .Z(n91) );
  CANR2X1 U183 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][21] ), .C(n610), .D(n850), 
        .Z(n89) );
  CANR2X1 U184 ( .A(n607), .B(n796), .C(n524), .D(n1668), .Z(n88) );
  CANR2X1 U185 ( .A(n609), .B(n914), .C(n608), .D(\lcd_timv[VBP][0] ), .Z(n87)
         );
  CANR2X1 U186 ( .A(n474), .B(n732), .C(n146), .D(n1604), .Z(n86) );
  CAN4X1 U187 ( .A(n89), .B(n88), .C(n87), .D(n86), .Z(n90) );
  CAN4X1 U188 ( .A(n93), .B(n92), .C(n91), .D(n90), .Z(n94) );
  CND3XL U189 ( .A(n96), .B(n95), .C(n94), .Z(HRDATA[24]) );
  CANR2X1 U190 ( .A(n591), .B(n1474), .C(n590), .D(n1794), .Z(n111) );
  CANR2X1 U191 ( .A(n593), .B(n1346), .C(n592), .D(n1410), .Z(n110) );
  CANR2X1 U192 ( .A(n511), .B(n1538), .C(n596), .D(n1730), .Z(n108) );
  CANR2XL U193 ( .A(n595), .B(n1858), .C(n594), .D(n1922), .Z(n107) );
  CANR2X1 U194 ( .A(n598), .B(n962), .C(n531), .D(n672), .Z(n100) );
  CANR2X1 U195 ( .A(n599), .B(n1026), .C(n29), .D(n1090), .Z(n99) );
  CANR2X1 U196 ( .A(n600), .B(n1154), .C(n530), .D(n1218), .Z(n98) );
  CANR2X1 U197 ( .A(n602), .B(n1282), .C(n601), .D(\lcd_timh[HBP][1] ), .Z(n97) );
  CAN4X1 U198 ( .A(n100), .B(n99), .C(n98), .D(n97), .Z(n106) );
  CANR2X1 U199 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][22] ), .C(n610), .D(n848), 
        .Z(n104) );
  CANR2X1 U200 ( .A(n607), .B(n794), .C(n524), .D(n1666), .Z(n103) );
  CANR2X1 U201 ( .A(n609), .B(n912), .C(n608), .D(\lcd_timv[VBP][1] ), .Z(n102) );
  CANR2X1 U202 ( .A(n474), .B(n730), .C(n146), .D(n1602), .Z(n101) );
  CAN4X1 U203 ( .A(n104), .B(n103), .C(n102), .D(n101), .Z(n105) );
  CAN4X1 U204 ( .A(n108), .B(n107), .C(n106), .D(n105), .Z(n109) );
  CND3XL U205 ( .A(n111), .B(n110), .C(n109), .Z(HRDATA[25]) );
  CANR2X1 U206 ( .A(n591), .B(n1486), .C(n590), .D(n1806), .Z(n126) );
  CANR2X1 U207 ( .A(n593), .B(n1358), .C(n592), .D(n1422), .Z(n125) );
  CANR2XL U208 ( .A(n595), .B(n1870), .C(n594), .D(n1934), .Z(n123) );
  CANR2X1 U209 ( .A(n511), .B(n1550), .C(n596), .D(n1742), .Z(n122) );
  CANR2X1 U210 ( .A(n598), .B(n974), .C(n531), .D(n684), .Z(n115) );
  CANR2X1 U211 ( .A(n599), .B(n1038), .C(n29), .D(n1102), .Z(n114) );
  CANR2X1 U212 ( .A(n600), .B(n1166), .C(n530), .D(n1230), .Z(n113) );
  CANR2X1 U213 ( .A(n602), .B(n1294), .C(n601), .D(\lcd_timh[HFP][3] ), .Z(
        n112) );
  CAN4X1 U214 ( .A(n115), .B(n114), .C(n113), .D(n112), .Z(n121) );
  CANR2X1 U215 ( .A(n474), .B(n742), .C(n146), .D(n1614), .Z(n119) );
  CANR2X1 U216 ( .A(n607), .B(n806), .C(n524), .D(n1678), .Z(n118) );
  CANR2X1 U217 ( .A(n609), .B(n924), .C(n608), .D(\lcd_timv[VFP][3] ), .Z(n117) );
  CANR2X1 U218 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][16] ), .C(n610), .D(n860), 
        .Z(n116) );
  CAN4X1 U219 ( .A(n119), .B(n118), .C(n117), .D(n116), .Z(n120) );
  CAN4X1 U220 ( .A(n123), .B(n122), .C(n121), .D(n120), .Z(n124) );
  CND3XL U221 ( .A(n126), .B(n125), .C(n124), .Z(HRDATA[19]) );
  CANR2X1 U222 ( .A(n591), .B(n1478), .C(n590), .D(n1798), .Z(n141) );
  CANR2X1 U223 ( .A(n593), .B(n1350), .C(n592), .D(n1414), .Z(n140) );
  CANR2XL U224 ( .A(n595), .B(n1862), .C(n594), .D(n1926), .Z(n138) );
  CANR2X1 U225 ( .A(n511), .B(n1542), .C(n596), .D(n1734), .Z(n137) );
  CANR2X1 U226 ( .A(n598), .B(n966), .C(n531), .D(n676), .Z(n130) );
  CANR2X1 U227 ( .A(n599), .B(n1030), .C(n29), .D(n1094), .Z(n129) );
  CANR2X1 U228 ( .A(n600), .B(n1158), .C(n530), .D(n1222), .Z(n128) );
  CANR2X1 U229 ( .A(n602), .B(n1286), .C(n601), .D(\lcd_timh[HFP][7] ), .Z(
        n127) );
  CAN4X1 U230 ( .A(n130), .B(n129), .C(n128), .D(n127), .Z(n136) );
  CANR2X1 U231 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][20] ), .C(n610), .D(n852), 
        .Z(n134) );
  CANR2X1 U232 ( .A(n607), .B(n798), .C(n524), .D(n1670), .Z(n133) );
  CANR2X1 U233 ( .A(n609), .B(n916), .C(n608), .D(\lcd_timv[VFP][7] ), .Z(n132) );
  CANR2X1 U234 ( .A(n474), .B(n734), .C(n146), .D(n1606), .Z(n131) );
  CAN4X1 U235 ( .A(n134), .B(n133), .C(n132), .D(n131), .Z(n135) );
  CAN4X1 U236 ( .A(n138), .B(n137), .C(n136), .D(n135), .Z(n139) );
  CND3XL U237 ( .A(n141), .B(n140), .C(n139), .Z(HRDATA[23]) );
  CANR2X1 U238 ( .A(n591), .B(n1470), .C(n590), .D(n1790), .Z(n157) );
  CANR2X1 U239 ( .A(n593), .B(n1342), .C(n592), .D(n1406), .Z(n156) );
  CANR2XL U240 ( .A(n595), .B(n1854), .C(n594), .D(n1918), .Z(n154) );
  CANR2X1 U241 ( .A(n511), .B(n1534), .C(n596), .D(n1726), .Z(n153) );
  CANR2X1 U242 ( .A(n598), .B(n958), .C(n531), .D(n668), .Z(n145) );
  CANR2X1 U243 ( .A(n599), .B(n1022), .C(n29), .D(n1086), .Z(n144) );
  CANR2X1 U244 ( .A(n600), .B(n1150), .C(n530), .D(n1214), .Z(n143) );
  CANR2X1 U245 ( .A(n602), .B(n1278), .C(n601), .D(\lcd_timh[HBP][3] ), .Z(
        n142) );
  CAN4X1 U246 ( .A(n145), .B(n144), .C(n143), .D(n142), .Z(n152) );
  CANR2X1 U247 ( .A(n474), .B(n726), .C(n146), .D(n1598), .Z(n150) );
  CANR2X1 U248 ( .A(n607), .B(n790), .C(n524), .D(n1662), .Z(n149) );
  CANR2X1 U249 ( .A(n609), .B(n908), .C(n608), .D(\lcd_timv[VBP][3] ), .Z(n148) );
  CANR2X1 U250 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][24] ), .C(n610), .D(n844), 
        .Z(n147) );
  CAN4X1 U251 ( .A(n150), .B(n149), .C(n148), .D(n147), .Z(n151) );
  CAN4X1 U252 ( .A(n154), .B(n153), .C(n152), .D(n151), .Z(n155) );
  CND3XL U253 ( .A(n157), .B(n156), .C(n155), .Z(HRDATA[27]) );
  CANR2X1 U254 ( .A(n591), .B(n1488), .C(n590), .D(n1808), .Z(n172) );
  CANR2X1 U255 ( .A(n593), .B(n1360), .C(n592), .D(n1424), .Z(n171) );
  CANR2XL U256 ( .A(n595), .B(n1872), .C(n594), .D(n1936), .Z(n169) );
  CANR2X1 U257 ( .A(n511), .B(n1552), .C(n596), .D(n1744), .Z(n168) );
  CANR2X1 U258 ( .A(n598), .B(n976), .C(n531), .D(n686), .Z(n161) );
  CANR2X1 U259 ( .A(n599), .B(n1040), .C(n29), .D(n1104), .Z(n160) );
  CANR2X1 U260 ( .A(n600), .B(n1168), .C(n530), .D(n1232), .Z(n159) );
  CANR2X1 U261 ( .A(n602), .B(n1296), .C(n601), .D(\lcd_timh[HFP][2] ), .Z(
        n158) );
  CAN4X1 U262 ( .A(n161), .B(n160), .C(n159), .D(n158), .Z(n167) );
  CANR2X1 U263 ( .A(n474), .B(n744), .C(n146), .D(n1616), .Z(n165) );
  CANR2X1 U264 ( .A(n607), .B(n808), .C(n524), .D(n1680), .Z(n164) );
  CANR2X1 U265 ( .A(n609), .B(n926), .C(n608), .D(\lcd_timv[VFP][2] ), .Z(n163) );
  CANR2X1 U266 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][15] ), .C(n610), .D(n862), 
        .Z(n162) );
  CAN4X1 U267 ( .A(n165), .B(n164), .C(n163), .D(n162), .Z(n166) );
  CAN4X1 U268 ( .A(n169), .B(n168), .C(n167), .D(n166), .Z(n170) );
  CND3XL U269 ( .A(n172), .B(n171), .C(n170), .Z(HRDATA[18]) );
  CANR2X1 U270 ( .A(n591), .B(n1484), .C(n590), .D(n1804), .Z(n187) );
  CANR2X1 U271 ( .A(n593), .B(n1356), .C(n592), .D(n1420), .Z(n186) );
  CANR2XL U272 ( .A(n595), .B(n1868), .C(n594), .D(n1932), .Z(n184) );
  CANR2X1 U273 ( .A(n511), .B(n1548), .C(n596), .D(n1740), .Z(n183) );
  CANR2X1 U274 ( .A(n598), .B(n972), .C(n531), .D(n682), .Z(n176) );
  CANR2X1 U275 ( .A(n599), .B(n1036), .C(n29), .D(n1100), .Z(n175) );
  CANR2X1 U276 ( .A(n600), .B(n1164), .C(n530), .D(n1228), .Z(n174) );
  CANR2X1 U277 ( .A(n602), .B(n1292), .C(n601), .D(\lcd_timh[HFP][4] ), .Z(
        n173) );
  CAN4X1 U278 ( .A(n176), .B(n175), .C(n174), .D(n173), .Z(n182) );
  CANR2X1 U279 ( .A(n474), .B(n740), .C(n146), .D(n1612), .Z(n180) );
  CANR2X1 U280 ( .A(n607), .B(n804), .C(n524), .D(n1676), .Z(n179) );
  CANR2X1 U281 ( .A(n609), .B(n922), .C(n608), .D(\lcd_timv[VFP][4] ), .Z(n178) );
  CANR2X1 U282 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][17] ), .C(n610), .D(n858), 
        .Z(n177) );
  CAN4X1 U283 ( .A(n180), .B(n179), .C(n178), .D(n177), .Z(n181) );
  CAN4X1 U284 ( .A(n184), .B(n183), .C(n182), .D(n181), .Z(n185) );
  CND3XL U285 ( .A(n187), .B(n186), .C(n185), .Z(HRDATA[20]) );
  CANR2X1 U286 ( .A(n591), .B(n1468), .C(n590), .D(n1788), .Z(n202) );
  CANR2X1 U287 ( .A(n593), .B(n1340), .C(n592), .D(n1404), .Z(n201) );
  CANR2X1 U288 ( .A(n511), .B(n1532), .C(n596), .D(n1724), .Z(n199) );
  CANR2XL U289 ( .A(n595), .B(n1852), .C(n594), .D(n1916), .Z(n198) );
  CANR2X1 U290 ( .A(n598), .B(n956), .C(n531), .D(n666), .Z(n191) );
  CANR2X1 U291 ( .A(n599), .B(n1020), .C(n29), .D(n1084), .Z(n190) );
  CANR2X1 U292 ( .A(n600), .B(n1148), .C(n530), .D(n1212), .Z(n189) );
  CANR2X1 U293 ( .A(n602), .B(n1276), .C(n601), .D(\lcd_timh[HBP][4] ), .Z(
        n188) );
  CAN4X1 U294 ( .A(n191), .B(n190), .C(n189), .D(n188), .Z(n197) );
  CANR2X1 U295 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][25] ), .C(n610), .D(n842), 
        .Z(n195) );
  CANR2X1 U296 ( .A(n607), .B(n788), .C(n524), .D(n1660), .Z(n194) );
  CANR2X1 U297 ( .A(n609), .B(n906), .C(n608), .D(\lcd_timv[VBP][4] ), .Z(n193) );
  CANR2X1 U298 ( .A(n474), .B(n724), .C(n146), .D(n1596), .Z(n192) );
  CAN4X1 U299 ( .A(n195), .B(n194), .C(n193), .D(n192), .Z(n196) );
  CAN4X1 U300 ( .A(n199), .B(n198), .C(n197), .D(n196), .Z(n200) );
  CND3XL U301 ( .A(n202), .B(n201), .C(n200), .Z(HRDATA[28]) );
  CANR2X1 U302 ( .A(n591), .B(n1492), .C(n590), .D(n1812), .Z(n217) );
  CANR2X1 U303 ( .A(n593), .B(n1364), .C(n592), .D(n1428), .Z(n216) );
  CANR2XL U304 ( .A(n595), .B(n1876), .C(n594), .D(n1940), .Z(n214) );
  CANR2X1 U305 ( .A(n511), .B(n1556), .C(n596), .D(n1748), .Z(n213) );
  CANR2X1 U306 ( .A(n598), .B(n980), .C(n531), .D(n690), .Z(n206) );
  CANR2X1 U307 ( .A(n599), .B(n1044), .C(n29), .D(n1108), .Z(n205) );
  CANR2X1 U308 ( .A(n600), .B(n1172), .C(n530), .D(n1236), .Z(n204) );
  CANR2X1 U309 ( .A(n602), .B(n1300), .C(n601), .D(\lcd_timh[HFP][0] ), .Z(
        n203) );
  CAN4X1 U310 ( .A(n206), .B(n205), .C(n204), .D(n203), .Z(n212) );
  CANR2X1 U311 ( .A(n474), .B(n748), .C(n146), .D(n1620), .Z(n210) );
  CANR2X1 U312 ( .A(n607), .B(\lcd_le[LEE] ), .C(n524), .D(n1684), .Z(n209) );
  CANR2X1 U313 ( .A(n609), .B(\lcd_ctrl[WATERMARK] ), .C(n608), .D(
        \lcd_timv[VFP][0] ), .Z(n208) );
  CANR2X1 U314 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][13] ), .C(n610), .D(n866), 
        .Z(n207) );
  CAN4X1 U315 ( .A(n210), .B(n209), .C(n208), .D(n207), .Z(n211) );
  CAN4X1 U316 ( .A(n214), .B(n213), .C(n212), .D(n211), .Z(n215) );
  CND3XL U317 ( .A(n217), .B(n216), .C(n215), .Z(HRDATA[16]) );
  CANR2X1 U318 ( .A(n591), .B(n1464), .C(n590), .D(n1784), .Z(n232) );
  CANR2X1 U319 ( .A(n593), .B(n1336), .C(n592), .D(n1400), .Z(n231) );
  CANR2XL U320 ( .A(n595), .B(n1848), .C(n594), .D(n1912), .Z(n229) );
  CANR2X1 U321 ( .A(n511), .B(n1528), .C(n596), .D(n1720), .Z(n228) );
  CANR2X1 U322 ( .A(n598), .B(n952), .C(n531), .D(n662), .Z(n221) );
  CANR2X1 U323 ( .A(n599), .B(n1016), .C(n29), .D(n1080), .Z(n220) );
  CANR2X1 U324 ( .A(n600), .B(n1144), .C(n530), .D(n1208), .Z(n219) );
  CANR2X1 U325 ( .A(n602), .B(n1272), .C(n601), .D(\lcd_timh[HBP][6] ), .Z(
        n218) );
  CAN4X1 U326 ( .A(n221), .B(n220), .C(n219), .D(n218), .Z(n227) );
  CANR2X1 U327 ( .A(n474), .B(n720), .C(n146), .D(n1592), .Z(n225) );
  CANR2X1 U328 ( .A(n607), .B(n784), .C(n524), .D(n1656), .Z(n224) );
  CANR2X1 U329 ( .A(n609), .B(n902), .C(n608), .D(\lcd_timv[VBP][6] ), .Z(n223) );
  CANR2X1 U330 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][27] ), .C(n610), .D(n838), 
        .Z(n222) );
  CAN4X1 U331 ( .A(n225), .B(n224), .C(n223), .D(n222), .Z(n226) );
  CAN4X1 U332 ( .A(n229), .B(n228), .C(n227), .D(n226), .Z(n230) );
  CND3XL U333 ( .A(n232), .B(n231), .C(n230), .Z(HRDATA[30]) );
  CANR2X1 U334 ( .A(n591), .B(n1466), .C(n590), .D(n1786), .Z(n247) );
  CANR2X1 U335 ( .A(n593), .B(n1338), .C(n592), .D(n1402), .Z(n246) );
  CANR2X1 U336 ( .A(n511), .B(n1530), .C(n596), .D(n1722), .Z(n244) );
  CANR2XL U337 ( .A(n595), .B(n1850), .C(n594), .D(n1914), .Z(n243) );
  CANR2X1 U338 ( .A(n598), .B(n954), .C(n531), .D(n664), .Z(n236) );
  CANR2X1 U339 ( .A(n599), .B(n1018), .C(n29), .D(n1082), .Z(n235) );
  CANR2XL U340 ( .A(n600), .B(n1146), .C(n530), .D(n1210), .Z(n234) );
  CANR2X1 U341 ( .A(n602), .B(n1274), .C(n601), .D(\lcd_timh[HBP][5] ), .Z(
        n233) );
  CAN4X1 U342 ( .A(n236), .B(n235), .C(n234), .D(n233), .Z(n242) );
  CANR2X1 U343 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][26] ), .C(n610), .D(n840), 
        .Z(n240) );
  CANR2X1 U344 ( .A(n607), .B(n786), .C(n524), .D(n1658), .Z(n239) );
  CANR2X1 U345 ( .A(n609), .B(n904), .C(n608), .D(\lcd_timv[VBP][5] ), .Z(n238) );
  CANR2X1 U346 ( .A(n474), .B(n722), .C(n146), .D(n1594), .Z(n237) );
  CAN4X1 U347 ( .A(n240), .B(n239), .C(n238), .D(n237), .Z(n241) );
  CAN4X1 U348 ( .A(n244), .B(n243), .C(n242), .D(n241), .Z(n245) );
  CND3XL U349 ( .A(n247), .B(n246), .C(n245), .Z(HRDATA[29]) );
  CANR2X1 U350 ( .A(n591), .B(n1490), .C(n590), .D(n1810), .Z(n262) );
  CANR2X1 U351 ( .A(n593), .B(n1362), .C(n592), .D(n1426), .Z(n261) );
  CANR2XL U352 ( .A(n595), .B(n1874), .C(n594), .D(n1938), .Z(n259) );
  CANR2X1 U353 ( .A(n511), .B(n1554), .C(n596), .D(n1746), .Z(n258) );
  CANR2X1 U354 ( .A(n598), .B(n978), .C(n531), .D(n688), .Z(n251) );
  CANR2X1 U355 ( .A(n599), .B(n1042), .C(n29), .D(n1106), .Z(n250) );
  CANR2X1 U356 ( .A(n600), .B(n1170), .C(n530), .D(n1234), .Z(n249) );
  CANR2X1 U357 ( .A(n602), .B(n1298), .C(n601), .D(\lcd_timh[HFP][1] ), .Z(
        n248) );
  CAN4X1 U358 ( .A(n251), .B(n250), .C(n249), .D(n248), .Z(n257) );
  CANR2X1 U359 ( .A(n474), .B(n746), .C(n146), .D(n1618), .Z(n255) );
  CANR2X1 U360 ( .A(n607), .B(n810), .C(n524), .D(n1682), .Z(n254) );
  CANR2X1 U361 ( .A(n609), .B(n928), .C(n608), .D(\lcd_timv[VFP][1] ), .Z(n253) );
  CANR2X1 U362 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][14] ), .C(n610), .D(n864), 
        .Z(n252) );
  CAN4X1 U363 ( .A(n255), .B(n254), .C(n253), .D(n252), .Z(n256) );
  CAN4X1 U364 ( .A(n259), .B(n258), .C(n257), .D(n256), .Z(n260) );
  CND3XL U365 ( .A(n262), .B(n261), .C(n260), .Z(HRDATA[17]) );
  CNIVX2 U366 ( .A(n7), .Z(n646) );
  CND4XL U367 ( .A(ahbs_addr_reg[4]), .B(ahbs_addr_reg[6]), .C(
        ahbs_addr_reg[7]), .D(ahbs_addr_reg[8]), .Z(n263) );
  CNR3XL U368 ( .A(n264), .B(n587), .C(n263), .Z(n269) );
  CIVXL U369 ( .A(n265), .Z(n266) );
  COR4X1 U370 ( .A(n269), .B(n268), .C(n267), .D(n266), .Z(n274) );
  CNR2XL U371 ( .A(n271), .B(n270), .Z(n272) );
  CND2X1 U372 ( .A(ahbs_addr_reg[30]), .B(n272), .Z(n273) );
  CNR2X1 U373 ( .A(n274), .B(n273), .Z(n275) );
  CIVX1 U374 ( .A(n570), .Z(n561) );
  CNR2X1 U375 ( .A(n282), .B(n561), .Z(N46) );
  CNIVX2 U376 ( .A(N46), .Z(n630) );
  CAN2XL U377 ( .A(HWDATA[0]), .B(n630), .Z(data_slave_rampal[0]) );
  CAN2XL U378 ( .A(HWDATA[1]), .B(n630), .Z(data_slave_rampal[1]) );
  CAN2XL U379 ( .A(HWDATA[2]), .B(n630), .Z(data_slave_rampal[2]) );
  CAN2XL U380 ( .A(HWDATA[3]), .B(n630), .Z(data_slave_rampal[3]) );
  CAN2XL U381 ( .A(HWDATA[4]), .B(n630), .Z(data_slave_rampal[4]) );
  CAN2XL U382 ( .A(HWDATA[5]), .B(n630), .Z(data_slave_rampal[5]) );
  CAN2XL U383 ( .A(HWDATA[6]), .B(n630), .Z(data_slave_rampal[6]) );
  CAN2XL U384 ( .A(HWDATA[7]), .B(n630), .Z(data_slave_rampal[7]) );
  CAN2XL U385 ( .A(HWDATA[8]), .B(n630), .Z(data_slave_rampal[8]) );
  CAN2XL U386 ( .A(HWDATA[9]), .B(n630), .Z(data_slave_rampal[9]) );
  CAN2XL U387 ( .A(HWDATA[10]), .B(n630), .Z(data_slave_rampal[10]) );
  CAN2XL U388 ( .A(HWDATA[11]), .B(n630), .Z(data_slave_rampal[11]) );
  CAN2XL U389 ( .A(HWDATA[12]), .B(n630), .Z(data_slave_rampal[12]) );
  CAN2XL U390 ( .A(HWDATA[13]), .B(n630), .Z(data_slave_rampal[13]) );
  CAN2XL U391 ( .A(HWDATA[14]), .B(n630), .Z(data_slave_rampal[14]) );
  CAN2XL U392 ( .A(HWDATA[15]), .B(n630), .Z(data_slave_rampal[15]) );
  CAN2XL U393 ( .A(HWDATA[16]), .B(n630), .Z(data_slave_rampal[16]) );
  CAN2XL U394 ( .A(HWDATA[22]), .B(n630), .Z(data_slave_rampal[22]) );
  CAN2XL U395 ( .A(HWDATA[17]), .B(n630), .Z(data_slave_rampal[17]) );
  CAN2XL U396 ( .A(HWDATA[31]), .B(n630), .Z(data_slave_rampal[31]) );
  CAN2XL U397 ( .A(HWDATA[18]), .B(n630), .Z(data_slave_rampal[18]) );
  CAN2XL U398 ( .A(HWDATA[19]), .B(n630), .Z(data_slave_rampal[19]) );
  CAN2XL U399 ( .A(HWDATA[30]), .B(n630), .Z(data_slave_rampal[30]) );
  CAN2XL U400 ( .A(HWDATA[20]), .B(n630), .Z(data_slave_rampal[20]) );
  CAN2XL U401 ( .A(HWDATA[25]), .B(n630), .Z(data_slave_rampal[25]) );
  CAN2XL U402 ( .A(HWDATA[21]), .B(n630), .Z(data_slave_rampal[21]) );
  CAN2XL U403 ( .A(HWDATA[29]), .B(n630), .Z(data_slave_rampal[29]) );
  CAN2XL U404 ( .A(HWDATA[27]), .B(n630), .Z(data_slave_rampal[27]) );
  CAN2XL U405 ( .A(HWDATA[24]), .B(n630), .Z(data_slave_rampal[24]) );
  CAN2XL U406 ( .A(HWDATA[23]), .B(n630), .Z(data_slave_rampal[23]) );
  CAN2XL U407 ( .A(HWDATA[28]), .B(n630), .Z(data_slave_rampal[28]) );
  CAN2XL U408 ( .A(HWDATA[26]), .B(n630), .Z(data_slave_rampal[26]) );
  CMX2XL U409 ( .A0(ahbs_addr_reg[27]), .A1(HADDR[27]), .S(n277), .Z(n2213) );
  CMX2XL U410 ( .A0(ahbs_addr_reg[17]), .A1(HADDR[17]), .S(n277), .Z(n2203) );
  CMX2XL U411 ( .A0(ahbs_addr_reg[23]), .A1(HADDR[23]), .S(n277), .Z(n2209) );
  CMX2XL U412 ( .A0(ahbs_addr_reg[15]), .A1(HADDR[15]), .S(n277), .Z(n2201) );
  CMX2XL U413 ( .A0(ahbs_addr_reg[19]), .A1(HADDR[19]), .S(n277), .Z(n2205) );
  CMX2XL U414 ( .A0(ahbs_addr_reg[20]), .A1(HADDR[20]), .S(n277), .Z(n2206) );
  CMX2XL U415 ( .A0(ahbs_addr_reg[18]), .A1(HADDR[18]), .S(n277), .Z(n2204) );
  CMX2XL U416 ( .A0(ahbs_addr_reg[22]), .A1(HADDR[22]), .S(n277), .Z(n2208) );
  CMX2XL U417 ( .A0(ahbs_addr_reg[21]), .A1(HADDR[21]), .S(n277), .Z(n2207) );
  CMX2XL U418 ( .A0(ahbs_addr_reg[14]), .A1(HADDR[14]), .S(n277), .Z(n2200) );
  CMX2XL U419 ( .A0(ahbs_addr_reg[26]), .A1(HADDR[26]), .S(n277), .Z(n2212) );
  CMX2XL U420 ( .A0(ahbs_addr_reg[24]), .A1(HADDR[24]), .S(n277), .Z(n2210) );
  CND2IX1 U421 ( .B(n276), .A(HSEL), .Z(n634) );
  CANR1XL U422 ( .A(n636), .B(n632), .C(n634), .Z(state_ns[1]) );
  CND2XL U423 ( .A(state_ns[1]), .B(HWRITE), .Z(state_ns[0]) );
  CMX2XL U424 ( .A0(ahbs_addr_reg[28]), .A1(HADDR[28]), .S(n277), .Z(n2214) );
  CMX2XL U425 ( .A0(ahbs_addr_reg[25]), .A1(HADDR[25]), .S(n277), .Z(n2211) );
  CMX2XL U426 ( .A0(ahbs_addr_reg[7]), .A1(HADDR[7]), .S(n277), .Z(n2193) );
  CMX2XL U427 ( .A0(ahbs_addr_reg[8]), .A1(HADDR[8]), .S(n277), .Z(n2194) );
  CMX2XL U428 ( .A0(ahbs_addr_reg[29]), .A1(HADDR[29]), .S(n277), .Z(n2215) );
  CMX2XL U429 ( .A0(ahbs_addr_reg[30]), .A1(HADDR[30]), .S(n277), .Z(n2216) );
  CMX2XL U430 ( .A0(ahbs_addr_reg[6]), .A1(HADDR[6]), .S(n277), .Z(n2192) );
  CMX2XL U431 ( .A0(ahbs_addr_reg[1]), .A1(HADDR[1]), .S(n277), .Z(n2187) );
  CMX2XL U432 ( .A0(ahbs_addr_reg[0]), .A1(HADDR[0]), .S(n277), .Z(n2186) );
  CMX2XL U433 ( .A0(ahbs_addr_reg[16]), .A1(HADDR[16]), .S(n277), .Z(n2202) );
  CNIVX1 U434 ( .A(n640), .Z(n648) );
  CNIVX1 U435 ( .A(n7), .Z(n658) );
  CNIVX1 U436 ( .A(n640), .Z(n656) );
  CMX2XL U437 ( .A0(ahbs_addr_reg[10]), .A1(HADDR[10]), .S(n277), .Z(n2196) );
  CMX2XL U438 ( .A0(ahbs_addr_reg[4]), .A1(HADDR[4]), .S(n277), .Z(n2190) );
  CMX2XL U439 ( .A0(ahbs_addr_reg[11]), .A1(HADDR[11]), .S(n277), .Z(n2197) );
  CMX2XL U440 ( .A0(ahbs_addr_reg[5]), .A1(HADDR[5]), .S(n277), .Z(n2191) );
  CMX2XL U441 ( .A0(ahbs_addr_reg[3]), .A1(HADDR[3]), .S(n277), .Z(n2189) );
  CMX2XL U442 ( .A0(ahbs_addr_reg[2]), .A1(HADDR[2]), .S(n277), .Z(n2188) );
  CMX2XL U443 ( .A0(\lcd_ctrl[LCDBPP][0] ), .A1(HWDATA[1]), .S(n569), .Z(n1579) );
  CMX2XL U444 ( .A0(\lcd_ctrl[LCDBPP][1] ), .A1(HWDATA[2]), .S(n569), .Z(n1581) );
  CANR2X1 U445 ( .A(n591), .B(n1502), .C(n590), .D(n1822), .Z(n295) );
  CANR2X1 U446 ( .A(n593), .B(n1374), .C(n592), .D(n1438), .Z(n294) );
  CANR2X1 U447 ( .A(n474), .B(n758), .C(n146), .D(n1630), .Z(n281) );
  CANR2X1 U448 ( .A(n607), .B(n820), .C(n524), .D(n1694), .Z(n280) );
  CANR2X1 U449 ( .A(n609), .B(\lcd_ctrl[LCDPWR] ), .C(n608), .D(
        \lcd_timv[VSW][1] ), .Z(n279) );
  CANR2X1 U450 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][8] ), .C(n610), .D(n876), 
        .Z(n278) );
  CAN4X1 U451 ( .A(n281), .B(n280), .C(n279), .D(n278), .Z(n293) );
  CANR2XL U452 ( .A(n595), .B(n1886), .C(n594), .D(n1950), .Z(n291) );
  CANR2XL U453 ( .A(n597), .B(n1566), .C(n596), .D(n1758), .Z(n290) );
  CANR2X1 U454 ( .A(n598), .B(n990), .C(n29), .D(n1118), .Z(n289) );
  CANR2X1 U455 ( .A(n602), .B(n1310), .C(n601), .D(\lcd_timh[HSW][3] ), .Z(
        n287) );
  CANR2XL U456 ( .A(n600), .B(n1182), .C(n530), .D(n1246), .Z(n286) );
  CANR2X1 U457 ( .A(n531), .B(n700), .C(n599), .D(n1054), .Z(n285) );
  CND2X1 U458 ( .A(n532), .B(rdata_rpal_slave[11]), .Z(n284) );
  CAN4X1 U459 ( .A(n287), .B(n286), .C(n285), .D(n284), .Z(n288) );
  CAN4X1 U460 ( .A(n291), .B(n290), .C(n289), .D(n288), .Z(n292) );
  CND4X1 U461 ( .A(n295), .B(n294), .C(n293), .D(n292), .Z(HRDATA[11]) );
  CANR2X1 U462 ( .A(n591), .B(n1518), .C(n590), .D(n1838), .Z(n311) );
  CANR2X1 U463 ( .A(n593), .B(n1390), .C(n592), .D(n1454), .Z(n310) );
  CANR2X1 U464 ( .A(n474), .B(n774), .C(n146), .D(n1646), .Z(n299) );
  CANR2XL U465 ( .A(n408), .B(\lcd_le[LED][3] ), .C(n524), .D(n1710), .Z(n298)
         );
  CANR2XL U466 ( .A(n609), .B(\lcd_ctrl[LCDBPP][2] ), .C(n608), .D(
        \lcd_timv[LPP][3] ), .Z(n297) );
  CANR2X1 U467 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][0] ), .C(n525), .D(n892), 
        .Z(n296) );
  CAN4X1 U468 ( .A(n299), .B(n298), .C(n297), .D(n296), .Z(n309) );
  CANR2XL U469 ( .A(n595), .B(n1902), .C(n594), .D(n1966), .Z(n307) );
  CANR2XL U470 ( .A(n597), .B(n1582), .C(n596), .D(n1774), .Z(n306) );
  CANR2X1 U471 ( .A(n598), .B(n1006), .C(n29), .D(n1134), .Z(n305) );
  CANR2X1 U472 ( .A(n602), .B(n1326), .C(n601), .D(\lcd_timh[PPL][1] ), .Z(
        n303) );
  CANR2X1 U473 ( .A(n600), .B(n1198), .C(n530), .D(n1262), .Z(n302) );
  CANR2X1 U474 ( .A(n531), .B(\lcd_cfg[CLKDIV][3] ), .C(n599), .D(n1070), .Z(
        n301) );
  CND2X1 U475 ( .A(n532), .B(rdata_rpal_slave[3]), .Z(n300) );
  CAN4X1 U476 ( .A(n303), .B(n302), .C(n301), .D(n300), .Z(n304) );
  CAN4X1 U477 ( .A(n307), .B(n306), .C(n305), .D(n304), .Z(n308) );
  CND4X1 U478 ( .A(n311), .B(n310), .C(n309), .D(n308), .Z(HRDATA[3]) );
  CANR2X1 U479 ( .A(n591), .B(n1504), .C(n590), .D(n1824), .Z(n327) );
  CANR2X1 U480 ( .A(n593), .B(n1376), .C(n592), .D(n1440), .Z(n326) );
  CANR2X1 U481 ( .A(n474), .B(n760), .C(n146), .D(n1632), .Z(n315) );
  CANR2X1 U482 ( .A(n607), .B(n822), .C(n524), .D(n1696), .Z(n314) );
  CANR2X1 U483 ( .A(n609), .B(n938), .C(n608), .D(\lcd_timv[VSW][0] ), .Z(n313) );
  CANR2X1 U484 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][7] ), .C(n525), .D(n878), 
        .Z(n312) );
  CAN4X1 U485 ( .A(n315), .B(n314), .C(n313), .D(n312), .Z(n325) );
  CANR2XL U486 ( .A(n595), .B(n1888), .C(n594), .D(n1952), .Z(n323) );
  CANR2XL U487 ( .A(n597), .B(n1568), .C(n596), .D(n1760), .Z(n322) );
  CANR2X1 U488 ( .A(n598), .B(n992), .C(n29), .D(n1120), .Z(n321) );
  CANR2X1 U489 ( .A(n602), .B(n1312), .C(n601), .D(\lcd_timh[HSW][2] ), .Z(
        n319) );
  CANR2XL U490 ( .A(n600), .B(n1184), .C(n530), .D(n1248), .Z(n318) );
  CANR2X1 U491 ( .A(n531), .B(n702), .C(n599), .D(n1056), .Z(n317) );
  CND2X1 U492 ( .A(n532), .B(rdata_rpal_slave[10]), .Z(n316) );
  CAN4X1 U493 ( .A(n319), .B(n318), .C(n317), .D(n316), .Z(n320) );
  CAN4X1 U494 ( .A(n323), .B(n322), .C(n321), .D(n320), .Z(n324) );
  CND4X1 U495 ( .A(n327), .B(n326), .C(n325), .D(n324), .Z(HRDATA[10]) );
  CANR2X1 U496 ( .A(n591), .B(n1514), .C(n590), .D(n1834), .Z(n343) );
  CANR2X1 U497 ( .A(n593), .B(n1386), .C(n592), .D(n1450), .Z(n342) );
  CANR2X1 U498 ( .A(n474), .B(n770), .C(n146), .D(n1642), .Z(n331) );
  CANR2X1 U499 ( .A(n607), .B(\lcd_le[LED][5] ), .C(n524), .D(n1706), .Z(n330)
         );
  CANR2XL U500 ( .A(n609), .B(\lcd_ctrl[LCDTFT] ), .C(n608), .D(
        \lcd_timv[LPP][5] ), .Z(n329) );
  CANR2X1 U501 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][2] ), .C(n610), .D(n888), 
        .Z(n328) );
  CAN4X1 U502 ( .A(n331), .B(n330), .C(n329), .D(n328), .Z(n341) );
  CANR2XL U503 ( .A(n595), .B(n1898), .C(n594), .D(n1962), .Z(n339) );
  CANR2XL U504 ( .A(n597), .B(n1578), .C(n596), .D(n1770), .Z(n338) );
  CANR2X1 U505 ( .A(n598), .B(n1002), .C(n29), .D(n1130), .Z(n337) );
  CANR2X1 U506 ( .A(n602), .B(n1322), .C(n601), .D(\lcd_timh[PPL][3] ), .Z(
        n335) );
  CANR2X1 U507 ( .A(n600), .B(n1194), .C(n530), .D(n1258), .Z(n334) );
  CANR2X1 U508 ( .A(n531), .B(n712), .C(n599), .D(n1066), .Z(n333) );
  CND2X1 U509 ( .A(n532), .B(rdata_rpal_slave[5]), .Z(n332) );
  CAN4X1 U510 ( .A(n335), .B(n334), .C(n333), .D(n332), .Z(n336) );
  CAN4X1 U511 ( .A(n339), .B(n338), .C(n337), .D(n336), .Z(n340) );
  CND4X1 U512 ( .A(n343), .B(n342), .C(n341), .D(n340), .Z(HRDATA[5]) );
  CANR2X1 U513 ( .A(n591), .B(n1500), .C(n590), .D(n1820), .Z(n359) );
  CANR2X1 U514 ( .A(n593), .B(n1372), .C(n592), .D(n1436), .Z(n358) );
  CANR2X1 U515 ( .A(n474), .B(n756), .C(n146), .D(n1628), .Z(n347) );
  CANR2X1 U516 ( .A(n607), .B(n818), .C(n524), .D(n1692), .Z(n346) );
  CANR2X1 U517 ( .A(n609), .B(n936), .C(n608), .D(\lcd_timv[VSW][2] ), .Z(n345) );
  CANR2X1 U518 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][9] ), .C(n610), .D(n874), 
        .Z(n344) );
  CAN4X1 U519 ( .A(n347), .B(n346), .C(n345), .D(n344), .Z(n357) );
  CANR2XL U520 ( .A(n595), .B(n1884), .C(n594), .D(n1948), .Z(n355) );
  CANR2X1 U521 ( .A(n511), .B(n1564), .C(n596), .D(n1756), .Z(n354) );
  CANR2X1 U522 ( .A(n598), .B(n988), .C(n29), .D(n1116), .Z(n353) );
  CANR2X1 U523 ( .A(n602), .B(n1308), .C(n601), .D(\lcd_timh[HSW][4] ), .Z(
        n351) );
  CANR2X1 U524 ( .A(n600), .B(n1180), .C(n530), .D(n1244), .Z(n350) );
  CANR2X1 U525 ( .A(n531), .B(n698), .C(n599), .D(n1052), .Z(n349) );
  CND2X1 U526 ( .A(n532), .B(rdata_rpal_slave[12]), .Z(n348) );
  CAN4X1 U527 ( .A(n351), .B(n350), .C(n349), .D(n348), .Z(n352) );
  CAN4X1 U528 ( .A(n355), .B(n354), .C(n353), .D(n352), .Z(n356) );
  CND4X1 U529 ( .A(n359), .B(n358), .C(n357), .D(n356), .Z(HRDATA[12]) );
  CANR2X1 U530 ( .A(n591), .B(n1508), .C(n590), .D(n1828), .Z(n375) );
  CANR2X1 U531 ( .A(n593), .B(n1380), .C(n592), .D(n1444), .Z(n374) );
  CANR2X1 U532 ( .A(n474), .B(n764), .C(n146), .D(n1636), .Z(n363) );
  CANR2X1 U533 ( .A(n607), .B(n826), .C(n524), .D(n1700), .Z(n362) );
  CANR2X1 U534 ( .A(n609), .B(n942), .C(n608), .D(\lcd_timv[LPP][8] ), .Z(n361) );
  CANR2X1 U535 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][5] ), .C(n610), .D(n882), 
        .Z(n360) );
  CAN4X1 U536 ( .A(n363), .B(n362), .C(n361), .D(n360), .Z(n373) );
  CANR2XL U537 ( .A(n595), .B(n1892), .C(n594), .D(n1956), .Z(n371) );
  CANR2XL U538 ( .A(n597), .B(n1572), .C(n596), .D(n1764), .Z(n370) );
  CANR2X1 U539 ( .A(n598), .B(n996), .C(n29), .D(n1124), .Z(n369) );
  CANR2X1 U540 ( .A(n602), .B(n1316), .C(n601), .D(\lcd_timh[HSW][0] ), .Z(
        n367) );
  CANR2XL U541 ( .A(n600), .B(n1188), .C(n530), .D(n1252), .Z(n366) );
  CANR2X1 U542 ( .A(n531), .B(n706), .C(n599), .D(n1060), .Z(n365) );
  CND2X1 U543 ( .A(n532), .B(rdata_rpal_slave[8]), .Z(n364) );
  CAN4X1 U544 ( .A(n367), .B(n366), .C(n365), .D(n364), .Z(n368) );
  CAN4X1 U545 ( .A(n371), .B(n370), .C(n369), .D(n368), .Z(n372) );
  CND4X1 U546 ( .A(n375), .B(n374), .C(n373), .D(n372), .Z(HRDATA[8]) );
  CANR2X1 U547 ( .A(n591), .B(n1520), .C(n590), .D(n1840), .Z(n391) );
  CANR2X1 U548 ( .A(n593), .B(n1392), .C(n592), .D(n1456), .Z(n390) );
  CANR2X1 U549 ( .A(n474), .B(n776), .C(n146), .D(n1648), .Z(n379) );
  CANR2XL U550 ( .A(n408), .B(\lcd_le[LED][2] ), .C(n524), .D(n1712), .Z(n378)
         );
  CANR2XL U551 ( .A(n609), .B(\lcd_ctrl[LCDBPP][1] ), .C(n608), .D(
        \lcd_timv[LPP][2] ), .Z(n377) );
  CANR2X1 U552 ( .A(n611), .B(n830), .C(n610), .D(n894), .Z(n376) );
  CAN4X1 U553 ( .A(n379), .B(n378), .C(n377), .D(n376), .Z(n389) );
  CANR2XL U554 ( .A(n595), .B(n1904), .C(n594), .D(n1968), .Z(n387) );
  CANR2XL U555 ( .A(n597), .B(n1584), .C(n596), .D(n1776), .Z(n386) );
  CANR2X1 U556 ( .A(n598), .B(n1008), .C(n29), .D(n1136), .Z(n385) );
  CANR2X1 U557 ( .A(n602), .B(n1328), .C(n601), .D(\lcd_timh[PPL][0] ), .Z(
        n383) );
  CANR2X1 U558 ( .A(n600), .B(n1200), .C(n530), .D(n1264), .Z(n382) );
  CANR2XL U559 ( .A(n531), .B(\lcd_cfg[CLKDIV][2] ), .C(n599), .D(n1072), .Z(
        n381) );
  CND2X1 U560 ( .A(n532), .B(rdata_rpal_slave[2]), .Z(n380) );
  CAN4X1 U561 ( .A(n383), .B(n382), .C(n381), .D(n380), .Z(n384) );
  CAN4X1 U562 ( .A(n387), .B(n386), .C(n385), .D(n384), .Z(n388) );
  CND4X1 U563 ( .A(n391), .B(n390), .C(n389), .D(n388), .Z(HRDATA[2]) );
  CANR2X1 U564 ( .A(n591), .B(n1522), .C(n590), .D(n1842), .Z(n407) );
  CANR2X1 U565 ( .A(n593), .B(n1394), .C(n592), .D(n1458), .Z(n406) );
  CANR2X1 U566 ( .A(n474), .B(n778), .C(n146), .D(n1650), .Z(n395) );
  CANR2XL U567 ( .A(n408), .B(\lcd_le[LED][1] ), .C(n524), .D(n1714), .Z(n394)
         );
  CANR2XL U568 ( .A(n609), .B(\lcd_ctrl[LCDBPP][0] ), .C(n608), .D(
        \lcd_timv[LPP][1] ), .Z(n393) );
  CANR2X1 U569 ( .A(n611), .B(n832), .C(n610), .D(n896), .Z(n392) );
  CAN4X1 U570 ( .A(n395), .B(n394), .C(n393), .D(n392), .Z(n405) );
  CANR2XL U571 ( .A(n595), .B(n1906), .C(n594), .D(n1970), .Z(n403) );
  CANR2XL U572 ( .A(n597), .B(n1586), .C(n596), .D(n1778), .Z(n402) );
  CANR2X1 U573 ( .A(n598), .B(n1010), .C(n29), .D(n1138), .Z(n401) );
  CANR2X1 U574 ( .A(n602), .B(n1330), .C(n601), .D(n714), .Z(n399) );
  CANR2X1 U575 ( .A(n600), .B(n1202), .C(n530), .D(n1266), .Z(n398) );
  CANR2X1 U576 ( .A(n531), .B(\lcd_cfg[CLKDIV][1] ), .C(n599), .D(n1074), .Z(
        n397) );
  CND2X1 U577 ( .A(n532), .B(rdata_rpal_slave[1]), .Z(n396) );
  CAN4X1 U578 ( .A(n399), .B(n398), .C(n397), .D(n396), .Z(n400) );
  CAN4X1 U579 ( .A(n403), .B(n402), .C(n401), .D(n400), .Z(n404) );
  CND4X1 U580 ( .A(n407), .B(n406), .C(n405), .D(n404), .Z(HRDATA[1]) );
  CANR2X1 U581 ( .A(n591), .B(n1524), .C(n590), .D(n1844), .Z(n424) );
  CANR2X1 U582 ( .A(n593), .B(n1396), .C(n592), .D(n1460), .Z(n423) );
  CANR2XL U583 ( .A(n408), .B(\lcd_le[LED][0] ), .C(n524), .D(n1716), .Z(n412)
         );
  CANR2X1 U584 ( .A(n474), .B(n780), .C(n146), .D(n1652), .Z(n411) );
  CANR2X1 U585 ( .A(n611), .B(n834), .C(n610), .D(n898), .Z(n410) );
  CANR2XL U586 ( .A(\lcd_timv[LPP][0] ), .B(n608), .C(\lcd_ctrl[LCDEN] ), .D(
        n609), .Z(n409) );
  CAN4X1 U587 ( .A(n412), .B(n411), .C(n410), .D(n409), .Z(n422) );
  CANR2XL U588 ( .A(n595), .B(n1908), .C(n594), .D(n1972), .Z(n420) );
  CANR2XL U589 ( .A(n597), .B(n1588), .C(n596), .D(n1780), .Z(n419) );
  CANR2X1 U590 ( .A(n598), .B(n1012), .C(n29), .D(n1140), .Z(n418) );
  CANR2X1 U591 ( .A(n602), .B(n1332), .C(n601), .D(n716), .Z(n416) );
  CANR2X1 U592 ( .A(n600), .B(n1204), .C(n530), .D(n1268), .Z(n415) );
  CANR2X1 U593 ( .A(n531), .B(\lcd_cfg[CLKDIV][0] ), .C(n599), .D(n1076), .Z(
        n414) );
  CND2X1 U594 ( .A(n532), .B(rdata_rpal_slave[0]), .Z(n413) );
  CAN4X1 U595 ( .A(n416), .B(n415), .C(n414), .D(n413), .Z(n417) );
  CAN4X1 U596 ( .A(n420), .B(n419), .C(n418), .D(n417), .Z(n421) );
  CND4X1 U597 ( .A(n424), .B(n423), .C(n422), .D(n421), .Z(HRDATA[0]) );
  CANR2X1 U598 ( .A(n591), .B(n1506), .C(n590), .D(n1826), .Z(n440) );
  CANR2X1 U599 ( .A(n593), .B(n1378), .C(n592), .D(n1442), .Z(n439) );
  CANR2X1 U600 ( .A(n474), .B(n762), .C(n146), .D(n1634), .Z(n428) );
  CANR2X1 U601 ( .A(n607), .B(n824), .C(n524), .D(n1698), .Z(n427) );
  CANR2X1 U602 ( .A(n609), .B(n940), .C(n608), .D(\lcd_timv[LPP][9] ), .Z(n426) );
  CANR2X1 U603 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][6] ), .C(n610), .D(n880), 
        .Z(n425) );
  CAN4X1 U604 ( .A(n428), .B(n427), .C(n426), .D(n425), .Z(n438) );
  CANR2XL U605 ( .A(n595), .B(n1890), .C(n594), .D(n1954), .Z(n436) );
  CANR2XL U606 ( .A(n597), .B(n1570), .C(n596), .D(n1762), .Z(n435) );
  CANR2X1 U607 ( .A(n598), .B(n994), .C(n29), .D(n1122), .Z(n434) );
  CANR2X1 U608 ( .A(n602), .B(n1314), .C(n601), .D(\lcd_timh[HSW][1] ), .Z(
        n432) );
  CANR2XL U609 ( .A(n600), .B(n1186), .C(n530), .D(n1250), .Z(n431) );
  CANR2X1 U610 ( .A(n531), .B(n704), .C(n599), .D(n1058), .Z(n430) );
  CND2X1 U611 ( .A(n532), .B(rdata_rpal_slave[9]), .Z(n429) );
  CAN4X1 U612 ( .A(n432), .B(n431), .C(n430), .D(n429), .Z(n433) );
  CAN4X1 U613 ( .A(n436), .B(n435), .C(n434), .D(n433), .Z(n437) );
  CND4X1 U614 ( .A(n440), .B(n439), .C(n438), .D(n437), .Z(HRDATA[9]) );
  CANR2X1 U615 ( .A(n591), .B(n1512), .C(n590), .D(n1832), .Z(n456) );
  CANR2X1 U616 ( .A(n593), .B(n1384), .C(n592), .D(n1448), .Z(n455) );
  CANR2X1 U617 ( .A(n474), .B(n768), .C(n146), .D(n1640), .Z(n444) );
  CANR2X1 U618 ( .A(n607), .B(\lcd_le[LED][6] ), .C(n524), .D(n1704), .Z(n443)
         );
  CANR2X1 U619 ( .A(n609), .B(n946), .C(n608), .D(\lcd_timv[LPP][6] ), .Z(n442) );
  CANR2X1 U620 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][3] ), .C(n610), .D(n886), 
        .Z(n441) );
  CAN4X1 U621 ( .A(n444), .B(n443), .C(n442), .D(n441), .Z(n454) );
  CANR2XL U622 ( .A(n595), .B(n1896), .C(n594), .D(n1960), .Z(n452) );
  CANR2XL U623 ( .A(n597), .B(n1576), .C(n596), .D(n1768), .Z(n451) );
  CANR2X1 U624 ( .A(n598), .B(n1000), .C(n29), .D(n1128), .Z(n450) );
  CANR2X1 U625 ( .A(n602), .B(n1320), .C(n601), .D(\lcd_timh[PPL][4] ), .Z(
        n448) );
  CANR2X1 U626 ( .A(n600), .B(n1192), .C(n530), .D(n1256), .Z(n447) );
  CANR2X1 U627 ( .A(n531), .B(n710), .C(n599), .D(n1064), .Z(n446) );
  CND2X1 U628 ( .A(n532), .B(rdata_rpal_slave[6]), .Z(n445) );
  CAN4X1 U629 ( .A(n448), .B(n447), .C(n446), .D(n445), .Z(n449) );
  CAN4X1 U630 ( .A(n452), .B(n451), .C(n450), .D(n449), .Z(n453) );
  CND4X1 U631 ( .A(n456), .B(n455), .C(n454), .D(n453), .Z(HRDATA[6]) );
  CANR2X1 U632 ( .A(n591), .B(n1494), .C(n590), .D(n1814), .Z(n473) );
  CANR2X1 U633 ( .A(n593), .B(n1366), .C(n592), .D(n1430), .Z(n472) );
  CANR2X1 U634 ( .A(n474), .B(n750), .C(n146), .D(n1622), .Z(n460) );
  CANR2X1 U635 ( .A(n607), .B(n812), .C(n524), .D(n1686), .Z(n459) );
  CANR2X1 U636 ( .A(n609), .B(n930), .C(n608), .D(\lcd_timv[VSW][5] ), .Z(n458) );
  CANR2X1 U637 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][12] ), .C(n610), .D(n868), 
        .Z(n457) );
  CAN4X1 U638 ( .A(n460), .B(n459), .C(n458), .D(n457), .Z(n471) );
  CANR2XL U639 ( .A(n595), .B(n1878), .C(n594), .D(n1942), .Z(n469) );
  CANR2X1 U640 ( .A(n598), .B(n982), .C(n29), .D(n1110), .Z(n467) );
  CANR2X1 U641 ( .A(n602), .B(n1302), .C(n601), .D(\lcd_timh[HSW][7] ), .Z(
        n465) );
  CANR2X1 U642 ( .A(n531), .B(n692), .C(n599), .D(n1046), .Z(n464) );
  CANR2X1 U643 ( .A(n600), .B(n1174), .C(n530), .D(n1238), .Z(n463) );
  CND2X1 U644 ( .A(n532), .B(rdata_rpal_slave[15]), .Z(n462) );
  CAN4X1 U645 ( .A(n465), .B(n464), .C(n463), .D(n462), .Z(n466) );
  CAN4X1 U646 ( .A(n469), .B(n468), .C(n467), .D(n466), .Z(n470) );
  CND4X1 U647 ( .A(n473), .B(n472), .C(n471), .D(n470), .Z(HRDATA[15]) );
  CANR2X1 U648 ( .A(n591), .B(n1516), .C(n590), .D(n1836), .Z(n490) );
  CANR2X1 U649 ( .A(n593), .B(n1388), .C(n592), .D(n1452), .Z(n489) );
  CANR2X1 U650 ( .A(n474), .B(n772), .C(n146), .D(n1644), .Z(n478) );
  CANR2XL U651 ( .A(n607), .B(\lcd_le[LED][4] ), .C(n524), .D(n1708), .Z(n477)
         );
  CANR2X1 U652 ( .A(n609), .B(n948), .C(n608), .D(\lcd_timv[LPP][4] ), .Z(n476) );
  CANR2X1 U653 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][1] ), .C(n610), .D(n890), 
        .Z(n475) );
  CAN4X1 U654 ( .A(n478), .B(n477), .C(n476), .D(n475), .Z(n488) );
  CANR2XL U655 ( .A(n595), .B(n1900), .C(n594), .D(n1964), .Z(n486) );
  CANR2XL U656 ( .A(n597), .B(n1580), .C(n596), .D(n1772), .Z(n485) );
  CANR2X1 U657 ( .A(n598), .B(n1004), .C(n29), .D(n1132), .Z(n484) );
  CANR2X1 U658 ( .A(n602), .B(n1324), .C(n601), .D(\lcd_timh[PPL][2] ), .Z(
        n482) );
  CANR2X1 U659 ( .A(n600), .B(n1196), .C(n530), .D(n1260), .Z(n481) );
  CANR2X1 U660 ( .A(n531), .B(\lcd_cfg[CLKDIV][4] ), .C(n599), .D(n1068), .Z(
        n480) );
  CND2X1 U661 ( .A(n532), .B(rdata_rpal_slave[4]), .Z(n479) );
  CAN4X1 U662 ( .A(n482), .B(n481), .C(n480), .D(n479), .Z(n483) );
  CAN4X1 U663 ( .A(n486), .B(n485), .C(n484), .D(n483), .Z(n487) );
  CND4X1 U664 ( .A(n490), .B(n489), .C(n488), .D(n487), .Z(HRDATA[4]) );
  CANR2X1 U665 ( .A(n591), .B(n1496), .C(n590), .D(n1816), .Z(n506) );
  CANR2X1 U666 ( .A(n593), .B(n1368), .C(n592), .D(n1432), .Z(n505) );
  CANR2X1 U667 ( .A(n474), .B(n752), .C(n146), .D(n1624), .Z(n494) );
  CANR2X1 U668 ( .A(n607), .B(n814), .C(n524), .D(n1688), .Z(n493) );
  CANR2X1 U669 ( .A(n609), .B(n932), .C(n608), .D(\lcd_timv[VSW][4] ), .Z(n492) );
  CANR2X1 U670 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][11] ), .C(n610), .D(n870), 
        .Z(n491) );
  CAN4X1 U671 ( .A(n494), .B(n493), .C(n492), .D(n491), .Z(n504) );
  CANR2XL U672 ( .A(n595), .B(n1880), .C(n594), .D(n1944), .Z(n502) );
  CANR2X1 U673 ( .A(n511), .B(n1560), .C(n596), .D(n1752), .Z(n501) );
  CANR2X1 U674 ( .A(n598), .B(n984), .C(n29), .D(n1112), .Z(n500) );
  CANR2X1 U675 ( .A(n602), .B(n1304), .C(n601), .D(\lcd_timh[HSW][6] ), .Z(
        n498) );
  CANR2X1 U676 ( .A(n531), .B(n694), .C(n599), .D(n1048), .Z(n497) );
  CANR2X1 U677 ( .A(n600), .B(n1176), .C(n530), .D(n1240), .Z(n496) );
  CND2X1 U678 ( .A(n532), .B(rdata_rpal_slave[14]), .Z(n495) );
  CAN4X1 U679 ( .A(n498), .B(n497), .C(n496), .D(n495), .Z(n499) );
  CAN4X1 U680 ( .A(n502), .B(n501), .C(n500), .D(n499), .Z(n503) );
  CND4X1 U681 ( .A(n506), .B(n505), .C(n504), .D(n503), .Z(HRDATA[14]) );
  CANR2X1 U682 ( .A(n591), .B(n1498), .C(n590), .D(n1818), .Z(n523) );
  CANR2X1 U683 ( .A(n593), .B(n1370), .C(n592), .D(n1434), .Z(n522) );
  CANR2X1 U684 ( .A(n474), .B(n754), .C(n146), .D(n1626), .Z(n510) );
  CANR2X1 U685 ( .A(n607), .B(n816), .C(n524), .D(n1690), .Z(n509) );
  CANR2X1 U686 ( .A(n609), .B(n934), .C(n608), .D(\lcd_timv[VSW][3] ), .Z(n508) );
  CANR2X1 U687 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][10] ), .C(n525), .D(n872), 
        .Z(n507) );
  CAN4X1 U688 ( .A(n510), .B(n509), .C(n508), .D(n507), .Z(n521) );
  CANR2XL U689 ( .A(n595), .B(n1882), .C(n594), .D(n1946), .Z(n519) );
  CANR2X1 U690 ( .A(n511), .B(n1562), .C(n596), .D(n1754), .Z(n518) );
  CANR2X1 U691 ( .A(n598), .B(n986), .C(n29), .D(n1114), .Z(n517) );
  CANR2X1 U692 ( .A(n602), .B(n1306), .C(n601), .D(\lcd_timh[HSW][5] ), .Z(
        n515) );
  CANR2X1 U693 ( .A(n600), .B(n1178), .C(n530), .D(n1242), .Z(n514) );
  CANR2X1 U694 ( .A(n531), .B(n696), .C(n599), .D(n1050), .Z(n513) );
  CND2X1 U695 ( .A(n532), .B(rdata_rpal_slave[13]), .Z(n512) );
  CAN4X1 U696 ( .A(n515), .B(n514), .C(n513), .D(n512), .Z(n516) );
  CAN4X1 U697 ( .A(n519), .B(n518), .C(n517), .D(n516), .Z(n520) );
  CND4X1 U698 ( .A(n523), .B(n522), .C(n521), .D(n520), .Z(HRDATA[13]) );
  CANR2X1 U699 ( .A(n591), .B(n1510), .C(n590), .D(n1830), .Z(n544) );
  CANR2X1 U700 ( .A(n593), .B(n1382), .C(n592), .D(n1446), .Z(n543) );
  CANR2X1 U701 ( .A(n474), .B(n766), .C(n146), .D(n1638), .Z(n529) );
  CANR2X1 U702 ( .A(n607), .B(n828), .C(n524), .D(n1702), .Z(n528) );
  CANR2X1 U703 ( .A(n609), .B(n944), .C(n608), .D(\lcd_timv[LPP][7] ), .Z(n527) );
  CANR2XL U704 ( .A(n611), .B(\lcd_upbase[LCDUPBASE][4] ), .C(n525), .D(n884), 
        .Z(n526) );
  CAN4X1 U705 ( .A(n529), .B(n528), .C(n527), .D(n526), .Z(n542) );
  CANR2XL U706 ( .A(n595), .B(n1894), .C(n594), .D(n1958), .Z(n540) );
  CANR2XL U707 ( .A(n597), .B(n1574), .C(n596), .D(n1766), .Z(n539) );
  CANR2X1 U708 ( .A(n598), .B(n998), .C(n29), .D(n1126), .Z(n538) );
  CANR2X1 U709 ( .A(n602), .B(n1318), .C(n601), .D(\lcd_timh[PPL][5] ), .Z(
        n536) );
  CANR2XL U710 ( .A(n600), .B(n1190), .C(n530), .D(n1254), .Z(n535) );
  CANR2X1 U711 ( .A(n531), .B(n708), .C(n599), .D(n1062), .Z(n534) );
  CND2X1 U712 ( .A(n532), .B(rdata_rpal_slave[7]), .Z(n533) );
  CAN4X1 U713 ( .A(n536), .B(n535), .C(n534), .D(n533), .Z(n537) );
  CAN4X1 U714 ( .A(n540), .B(n539), .C(n538), .D(n537), .Z(n541) );
  CND4X1 U715 ( .A(n544), .B(n543), .C(n542), .D(n541), .Z(HRDATA[7]) );
  CND2IX1 U716 ( .B(n545), .A(n570), .Z(n546) );
  CIVX2 U717 ( .A(n546), .Z(n547) );
  CMX2XL U718 ( .A0(n708), .A1(HWDATA[7]), .S(n547), .Z(n2039) );
  CMX2XL U719 ( .A0(n662), .A1(HWDATA[30]), .S(n547), .Z(n2085) );
  CMX2XL U720 ( .A0(n664), .A1(HWDATA[29]), .S(n547), .Z(n2083) );
  CMX2XL U721 ( .A0(n666), .A1(HWDATA[28]), .S(n547), .Z(n2081) );
  CMX2XL U722 ( .A0(n668), .A1(HWDATA[27]), .S(n547), .Z(n2079) );
  CMX2XL U723 ( .A0(n670), .A1(HWDATA[26]), .S(n547), .Z(n2077) );
  CMX2XL U724 ( .A0(n672), .A1(HWDATA[25]), .S(n547), .Z(n2075) );
  CMX2XL U725 ( .A0(n674), .A1(HWDATA[24]), .S(n547), .Z(n2073) );
  CMX2XL U726 ( .A0(n676), .A1(HWDATA[23]), .S(n547), .Z(n2071) );
  CMX2XL U727 ( .A0(n678), .A1(HWDATA[22]), .S(n547), .Z(n2069) );
  CMX2XL U728 ( .A0(n680), .A1(HWDATA[21]), .S(n547), .Z(n2067) );
  CMX2XL U729 ( .A0(n682), .A1(HWDATA[20]), .S(n547), .Z(n2065) );
  CMX2XL U730 ( .A0(n684), .A1(HWDATA[19]), .S(n547), .Z(n2063) );
  CMX2XL U731 ( .A0(n686), .A1(HWDATA[18]), .S(n547), .Z(n2061) );
  CMX2XL U732 ( .A0(n688), .A1(HWDATA[17]), .S(n547), .Z(n2059) );
  CMX2XL U733 ( .A0(n690), .A1(HWDATA[16]), .S(n547), .Z(n2057) );
  CMX2XL U734 ( .A0(\lcd_cfg[CLKDIV][4] ), .A1(HWDATA[4]), .S(n547), .Z(n2033)
         );
  CMX2XL U735 ( .A0(n660), .A1(HWDATA[31]), .S(n547), .Z(n2087) );
  CMX2XL U736 ( .A0(n702), .A1(HWDATA[10]), .S(n547), .Z(n2045) );
  CMX2XL U737 ( .A0(\lcd_cfg[CLKDIV][0] ), .A1(HWDATA[0]), .S(n547), .Z(n2025)
         );
  CMX2XL U738 ( .A0(n698), .A1(HWDATA[12]), .S(n547), .Z(n2049) );
  CMX2XL U739 ( .A0(\lcd_cfg[CLKDIV][3] ), .A1(HWDATA[3]), .S(n547), .Z(n2031)
         );
  CMX2XL U740 ( .A0(n706), .A1(HWDATA[8]), .S(n547), .Z(n2041) );
  CMX2XL U741 ( .A0(\lcd_cfg[CLKDIV][1] ), .A1(HWDATA[1]), .S(n547), .Z(n2027)
         );
  CMX2XL U742 ( .A0(n694), .A1(HWDATA[14]), .S(n547), .Z(n2053) );
  CMX2XL U743 ( .A0(\lcd_cfg[CLKDIV][2] ), .A1(HWDATA[2]), .S(n547), .Z(n2029)
         );
  CMX2XL U744 ( .A0(n712), .A1(HWDATA[5]), .S(n547), .Z(n2035) );
  CMX2XL U745 ( .A0(n704), .A1(HWDATA[9]), .S(n547), .Z(n2043) );
  CMX2XL U746 ( .A0(n692), .A1(HWDATA[15]), .S(n547), .Z(n2055) );
  CMX2XL U747 ( .A0(n696), .A1(HWDATA[13]), .S(n547), .Z(n2051) );
  CMX2XL U748 ( .A0(n700), .A1(HWDATA[11]), .S(n547), .Z(n2047) );
  CMX2XL U749 ( .A0(n710), .A1(HWDATA[6]), .S(n547), .Z(n2037) );
  CND2IX1 U750 ( .B(n548), .A(n570), .Z(n549) );
  CIVX2 U751 ( .A(n549), .Z(n550) );
  CMX2XL U752 ( .A0(n1590), .A1(HWDATA[31]), .S(n550), .Z(n935) );
  CMX2XL U753 ( .A0(n1610), .A1(HWDATA[21]), .S(n550), .Z(n915) );
  CMX2XL U754 ( .A0(n1604), .A1(HWDATA[24]), .S(n550), .Z(n921) );
  CMX2XL U755 ( .A0(n1616), .A1(HWDATA[18]), .S(n550), .Z(n909) );
  CMX2XL U756 ( .A0(n1598), .A1(HWDATA[27]), .S(n550), .Z(n927) );
  CMX2XL U757 ( .A0(n1594), .A1(HWDATA[29]), .S(n550), .Z(n931) );
  CMX2XL U758 ( .A0(n1612), .A1(HWDATA[20]), .S(n550), .Z(n913) );
  CMX2XL U759 ( .A0(n1622), .A1(HWDATA[15]), .S(n550), .Z(n903) );
  CMX2XL U760 ( .A0(n1614), .A1(HWDATA[19]), .S(n550), .Z(n911) );
  CMX2XL U761 ( .A0(n1592), .A1(HWDATA[30]), .S(n550), .Z(n933) );
  CMX2XL U762 ( .A0(n1608), .A1(HWDATA[22]), .S(n550), .Z(n917) );
  CMX2XL U763 ( .A0(n1620), .A1(HWDATA[16]), .S(n550), .Z(n905) );
  CMX2XL U764 ( .A0(n1624), .A1(HWDATA[14]), .S(n550), .Z(n901) );
  CMX2XL U765 ( .A0(n1626), .A1(HWDATA[13]), .S(n550), .Z(n899) );
  CMX2XL U766 ( .A0(n1596), .A1(HWDATA[28]), .S(n550), .Z(n929) );
  CMX2XL U767 ( .A0(n1628), .A1(HWDATA[12]), .S(n550), .Z(n897) );
  CMX2XL U768 ( .A0(n1630), .A1(HWDATA[11]), .S(n550), .Z(n895) );
  CMX2XL U769 ( .A0(n1600), .A1(HWDATA[26]), .S(n550), .Z(n925) );
  CMX2XL U770 ( .A0(n1618), .A1(HWDATA[17]), .S(n550), .Z(n907) );
  CMX2XL U771 ( .A0(n1606), .A1(HWDATA[23]), .S(n550), .Z(n919) );
  CMX2XL U772 ( .A0(n1632), .A1(HWDATA[10]), .S(n550), .Z(n893) );
  CMX2XL U773 ( .A0(n1602), .A1(HWDATA[25]), .S(n550), .Z(n923) );
  CMX2XL U774 ( .A0(n1642), .A1(HWDATA[5]), .S(n550), .Z(n883) );
  CMX2XL U775 ( .A0(n1652), .A1(HWDATA[0]), .S(n550), .Z(n873) );
  CMX2XL U776 ( .A0(n1648), .A1(HWDATA[2]), .S(n550), .Z(n877) );
  CMX2XL U777 ( .A0(n1650), .A1(HWDATA[1]), .S(n550), .Z(n875) );
  CMX2XL U778 ( .A0(n1634), .A1(HWDATA[9]), .S(n550), .Z(n891) );
  CMX2XL U779 ( .A0(n1644), .A1(HWDATA[4]), .S(n550), .Z(n881) );
  CMX2XL U780 ( .A0(n1646), .A1(HWDATA[3]), .S(n550), .Z(n879) );
  CMX2XL U781 ( .A0(n1636), .A1(HWDATA[8]), .S(n550), .Z(n889) );
  CMX2XL U782 ( .A0(n1640), .A1(HWDATA[6]), .S(n550), .Z(n885) );
  CMX2XL U783 ( .A0(n1638), .A1(HWDATA[7]), .S(n550), .Z(n887) );
  CMX2XL U784 ( .A0(n1510), .A1(HWDATA[7]), .S(n552), .Z(n1015) );
  CMX2XL U785 ( .A0(n1524), .A1(HWDATA[0]), .S(n552), .Z(n1001) );
  CMX2XL U786 ( .A0(n1508), .A1(HWDATA[8]), .S(n552), .Z(n1017) );
  CMX2XL U787 ( .A0(n1516), .A1(HWDATA[4]), .S(n552), .Z(n1009) );
  CMX2XL U788 ( .A0(n1530), .A1(HWDATA[29]), .S(n560), .Z(n995) );
  CMX2XL U789 ( .A0(n1512), .A1(HWDATA[6]), .S(n552), .Z(n1013) );
  CMX2XL U790 ( .A0(n1518), .A1(HWDATA[3]), .S(n552), .Z(n1007) );
  CMX2XL U791 ( .A0(n1534), .A1(HWDATA[27]), .S(n560), .Z(n991) );
  CMX2XL U792 ( .A0(n1500), .A1(HWDATA[12]), .S(n552), .Z(n1025) );
  CMX2XL U793 ( .A0(n1498), .A1(HWDATA[13]), .S(n552), .Z(n1027) );
  CMX2XL U794 ( .A0(n1520), .A1(HWDATA[2]), .S(n552), .Z(n1005) );
  CMX2XL U795 ( .A0(n1492), .A1(HWDATA[16]), .S(n552), .Z(n1033) );
  CMX2XL U796 ( .A0(n1536), .A1(HWDATA[26]), .S(n560), .Z(n989) );
  CMX2XL U797 ( .A0(n1538), .A1(HWDATA[25]), .S(n560), .Z(n987) );
  CMX2XL U798 ( .A0(n1506), .A1(HWDATA[9]), .S(n552), .Z(n1019) );
  CMX2XL U799 ( .A0(n1532), .A1(HWDATA[28]), .S(n560), .Z(n993) );
  CMX2XL U800 ( .A0(n1496), .A1(HWDATA[14]), .S(n552), .Z(n1029) );
  CMX2XL U801 ( .A0(n1494), .A1(HWDATA[15]), .S(n552), .Z(n1031) );
  CMX2XL U802 ( .A0(n1522), .A1(HWDATA[1]), .S(n552), .Z(n1003) );
  CMX2XL U803 ( .A0(n1540), .A1(HWDATA[24]), .S(n560), .Z(n985) );
  CMX2XL U804 ( .A0(n1542), .A1(HWDATA[23]), .S(n560), .Z(n983) );
  CMX2XL U805 ( .A0(n1504), .A1(HWDATA[10]), .S(n552), .Z(n1021) );
  CMX2XL U806 ( .A0(n1514), .A1(HWDATA[5]), .S(n552), .Z(n1011) );
  CMX2XL U807 ( .A0(n1528), .A1(HWDATA[30]), .S(n560), .Z(n997) );
  CMX2XL U808 ( .A0(n1336), .A1(HWDATA[30]), .S(n553), .Z(n1189) );
  CMX2XL U809 ( .A0(n1502), .A1(HWDATA[11]), .S(n552), .Z(n1023) );
  CMX2XL U810 ( .A0(n1490), .A1(HWDATA[17]), .S(n552), .Z(n1035) );
  CMX2XL U811 ( .A0(n1488), .A1(HWDATA[18]), .S(n552), .Z(n1037) );
  CMX2XL U812 ( .A0(n1486), .A1(HWDATA[19]), .S(n552), .Z(n1039) );
  CMX2XL U813 ( .A0(n1484), .A1(HWDATA[20]), .S(n552), .Z(n1041) );
  CMX2XL U814 ( .A0(n1482), .A1(HWDATA[21]), .S(n552), .Z(n1043) );
  CMX2XL U815 ( .A0(n1480), .A1(HWDATA[22]), .S(n552), .Z(n1045) );
  CMX2XL U816 ( .A0(n1478), .A1(HWDATA[23]), .S(n552), .Z(n1047) );
  CMX2XL U817 ( .A0(n1476), .A1(HWDATA[24]), .S(n552), .Z(n1049) );
  CMX2XL U818 ( .A0(n1474), .A1(HWDATA[25]), .S(n552), .Z(n1051) );
  CMX2XL U819 ( .A0(n1472), .A1(HWDATA[26]), .S(n552), .Z(n1053) );
  CMX2XL U820 ( .A0(n1470), .A1(HWDATA[27]), .S(n552), .Z(n1055) );
  CMX2XL U821 ( .A0(n1468), .A1(HWDATA[28]), .S(n552), .Z(n1057) );
  CMX2XL U822 ( .A0(n1466), .A1(HWDATA[29]), .S(n552), .Z(n1059) );
  CMX2XL U823 ( .A0(n1464), .A1(HWDATA[30]), .S(n552), .Z(n1061) );
  CMX2XL U824 ( .A0(n1396), .A1(HWDATA[0]), .S(n553), .Z(n1129) );
  CMX2XL U825 ( .A0(n1394), .A1(HWDATA[1]), .S(n553), .Z(n1131) );
  CMX2XL U826 ( .A0(n1392), .A1(HWDATA[2]), .S(n553), .Z(n1133) );
  CMX2XL U827 ( .A0(n1390), .A1(HWDATA[3]), .S(n553), .Z(n1135) );
  CMX2XL U828 ( .A0(n1388), .A1(HWDATA[4]), .S(n553), .Z(n1137) );
  CMX2XL U829 ( .A0(n1386), .A1(HWDATA[5]), .S(n553), .Z(n1139) );
  CMX2XL U830 ( .A0(n1384), .A1(HWDATA[6]), .S(n553), .Z(n1141) );
  CMX2XL U831 ( .A0(n1382), .A1(HWDATA[7]), .S(n553), .Z(n1143) );
  CMX2XL U832 ( .A0(n1380), .A1(HWDATA[8]), .S(n553), .Z(n1145) );
  CMX2XL U833 ( .A0(n1378), .A1(HWDATA[9]), .S(n553), .Z(n1147) );
  CMX2XL U834 ( .A0(n1376), .A1(HWDATA[10]), .S(n553), .Z(n1149) );
  CMX2XL U835 ( .A0(n1334), .A1(HWDATA[31]), .S(n553), .Z(n1191) );
  CMX2XL U836 ( .A0(n1462), .A1(HWDATA[31]), .S(n552), .Z(n1063) );
  CMX2XL U837 ( .A0(n1374), .A1(HWDATA[11]), .S(n553), .Z(n1151) );
  CMX2XL U838 ( .A0(n1372), .A1(HWDATA[12]), .S(n553), .Z(n1153) );
  CMX2XL U839 ( .A0(n1526), .A1(HWDATA[31]), .S(n560), .Z(n999) );
  CMX2XL U840 ( .A0(n1846), .A1(HWDATA[31]), .S(n559), .Z(n679) );
  CMX2XL U841 ( .A0(n1370), .A1(HWDATA[13]), .S(n553), .Z(n1155) );
  CMX2XL U842 ( .A0(n1368), .A1(HWDATA[14]), .S(n553), .Z(n1157) );
  CMX2XL U843 ( .A0(n1366), .A1(HWDATA[15]), .S(n553), .Z(n1159) );
  CMX2XL U844 ( .A0(n1364), .A1(HWDATA[16]), .S(n553), .Z(n1161) );
  CMX2XL U845 ( .A0(n1362), .A1(HWDATA[17]), .S(n553), .Z(n1163) );
  CMX2XL U846 ( .A0(n1558), .A1(HWDATA[15]), .S(n560), .Z(n967) );
  CMX2XL U847 ( .A0(n1360), .A1(HWDATA[18]), .S(n553), .Z(n1165) );
  CMX2XL U848 ( .A0(n1358), .A1(HWDATA[19]), .S(n553), .Z(n1167) );
  CNR2X2 U849 ( .A(n577), .B(n555), .Z(n558) );
  CMX2XL U850 ( .A0(n1750), .A1(HWDATA[15]), .S(n558), .Z(n775) );
  CMX2XL U851 ( .A0(n1356), .A1(HWDATA[20]), .S(n553), .Z(n1169) );
  CMX2XL U852 ( .A0(n1354), .A1(HWDATA[21]), .S(n553), .Z(n1171) );
  CMX2XL U853 ( .A0(n1544), .A1(HWDATA[22]), .S(n560), .Z(n981) );
  CMX2XL U854 ( .A0(n1352), .A1(HWDATA[22]), .S(n553), .Z(n1173) );
  CMX2XL U855 ( .A0(n1350), .A1(HWDATA[23]), .S(n553), .Z(n1175) );
  CMX2XL U856 ( .A0(n1348), .A1(HWDATA[24]), .S(n553), .Z(n1177) );
  CMX2XL U857 ( .A0(n1346), .A1(HWDATA[25]), .S(n553), .Z(n1179) );
  CMX2XL U858 ( .A0(n1344), .A1(HWDATA[26]), .S(n553), .Z(n1181) );
  CMX2XL U859 ( .A0(n1342), .A1(HWDATA[27]), .S(n553), .Z(n1183) );
  CMX2XL U860 ( .A0(n1340), .A1(HWDATA[28]), .S(n553), .Z(n1185) );
  CMX2XL U861 ( .A0(n1338), .A1(HWDATA[29]), .S(n553), .Z(n1187) );
  CMX2XL U862 ( .A0(n1398), .A1(HWDATA[31]), .S(n554), .Z(n1127) );
  CMX2XL U863 ( .A0(n1924), .A1(HWDATA[24]), .S(n557), .Z(n2137) );
  CMX2XL U864 ( .A0(n1926), .A1(HWDATA[23]), .S(n557), .Z(n2135) );
  CMX2XL U865 ( .A0(n1928), .A1(HWDATA[22]), .S(n557), .Z(n2133) );
  CMX2XL U866 ( .A0(n1930), .A1(HWDATA[21]), .S(n557), .Z(n2131) );
  CMX2XL U867 ( .A0(n1732), .A1(HWDATA[24]), .S(n558), .Z(n793) );
  CMX2XL U868 ( .A0(n1734), .A1(HWDATA[23]), .S(n558), .Z(n791) );
  CMX2XL U869 ( .A0(n1932), .A1(HWDATA[20]), .S(n557), .Z(n2129) );
  CMX2XL U870 ( .A0(n1934), .A1(HWDATA[19]), .S(n557), .Z(n2127) );
  CMX2XL U871 ( .A0(n1936), .A1(HWDATA[18]), .S(n557), .Z(n2125) );
  CMX2XL U872 ( .A0(n1938), .A1(HWDATA[17]), .S(n557), .Z(n2123) );
  CMX2XL U873 ( .A0(n1736), .A1(HWDATA[22]), .S(n558), .Z(n789) );
  CMX2XL U874 ( .A0(n1940), .A1(HWDATA[16]), .S(n557), .Z(n2121) );
  CMX2XL U875 ( .A0(n1942), .A1(HWDATA[15]), .S(n557), .Z(n2119) );
  CMX2XL U876 ( .A0(n1944), .A1(HWDATA[14]), .S(n557), .Z(n2117) );
  CMX2XL U877 ( .A0(n1946), .A1(HWDATA[13]), .S(n557), .Z(n2115) );
  CMX2XL U878 ( .A0(n1738), .A1(HWDATA[21]), .S(n558), .Z(n787) );
  CMX2XL U879 ( .A0(n1948), .A1(HWDATA[12]), .S(n557), .Z(n2113) );
  CMX2XL U880 ( .A0(n1950), .A1(HWDATA[11]), .S(n557), .Z(n2111) );
  CMX2XL U881 ( .A0(n1460), .A1(HWDATA[0]), .S(n554), .Z(n1065) );
  CMX2XL U882 ( .A0(n1458), .A1(HWDATA[1]), .S(n554), .Z(n1067) );
  CMX2XL U883 ( .A0(n1740), .A1(HWDATA[20]), .S(n558), .Z(n785) );
  CMX2XL U884 ( .A0(n1456), .A1(HWDATA[2]), .S(n554), .Z(n1069) );
  CMX2XL U885 ( .A0(n1952), .A1(HWDATA[10]), .S(n557), .Z(n2109) );
  CMX2XL U886 ( .A0(n1454), .A1(HWDATA[3]), .S(n554), .Z(n1071) );
  CMX2XL U887 ( .A0(n1742), .A1(HWDATA[19]), .S(n558), .Z(n783) );
  CMX2XL U888 ( .A0(n1954), .A1(HWDATA[9]), .S(n557), .Z(n2107) );
  CMX2XL U889 ( .A0(n1452), .A1(HWDATA[4]), .S(n554), .Z(n1073) );
  CMX2XL U890 ( .A0(n1450), .A1(HWDATA[5]), .S(n554), .Z(n1075) );
  CMX2XL U891 ( .A0(n1744), .A1(HWDATA[18]), .S(n558), .Z(n781) );
  CMX2XL U892 ( .A0(n1448), .A1(HWDATA[6]), .S(n554), .Z(n1077) );
  CMX2XL U893 ( .A0(n1956), .A1(HWDATA[8]), .S(n557), .Z(n2105) );
  CMX2XL U894 ( .A0(n1446), .A1(HWDATA[7]), .S(n554), .Z(n1079) );
  CMX2XL U895 ( .A0(n1746), .A1(HWDATA[17]), .S(n558), .Z(n779) );
  CMX2XL U896 ( .A0(n1958), .A1(HWDATA[7]), .S(n557), .Z(n2103) );
  CMX2XL U897 ( .A0(n1444), .A1(HWDATA[8]), .S(n554), .Z(n1081) );
  CMX2XL U898 ( .A0(n1442), .A1(HWDATA[9]), .S(n554), .Z(n1083) );
  CMX2XL U899 ( .A0(n1748), .A1(HWDATA[16]), .S(n558), .Z(n777) );
  CMX2XL U900 ( .A0(n1440), .A1(HWDATA[10]), .S(n554), .Z(n1085) );
  CMX2XL U901 ( .A0(n1438), .A1(HWDATA[11]), .S(n554), .Z(n1087) );
  CMX2XL U902 ( .A0(n1752), .A1(HWDATA[14]), .S(n558), .Z(n773) );
  CMX2XL U903 ( .A0(n1436), .A1(HWDATA[12]), .S(n554), .Z(n1089) );
  CMX2XL U904 ( .A0(n1960), .A1(HWDATA[6]), .S(n557), .Z(n2101) );
  CMX2XL U905 ( .A0(n1434), .A1(HWDATA[13]), .S(n554), .Z(n1091) );
  CMX2XL U906 ( .A0(n1962), .A1(HWDATA[5]), .S(n557), .Z(n2099) );
  CMX2XL U907 ( .A0(n1754), .A1(HWDATA[13]), .S(n558), .Z(n771) );
  CMX2XL U908 ( .A0(n1432), .A1(HWDATA[14]), .S(n554), .Z(n1093) );
  CMX2XL U909 ( .A0(n1430), .A1(HWDATA[15]), .S(n554), .Z(n1095) );
  CMX2XL U910 ( .A0(n1964), .A1(HWDATA[4]), .S(n557), .Z(n2097) );
  CMX2XL U911 ( .A0(n1756), .A1(HWDATA[12]), .S(n558), .Z(n769) );
  CMX2XL U912 ( .A0(n1966), .A1(HWDATA[3]), .S(n557), .Z(n2095) );
  CMX2XL U913 ( .A0(n1428), .A1(HWDATA[16]), .S(n554), .Z(n1097) );
  CMX2XL U914 ( .A0(n1426), .A1(HWDATA[17]), .S(n554), .Z(n1099) );
  CMX2XL U915 ( .A0(n1758), .A1(HWDATA[11]), .S(n558), .Z(n767) );
  CMX2XL U916 ( .A0(n1968), .A1(HWDATA[2]), .S(n557), .Z(n2093) );
  CMX2XL U917 ( .A0(n1424), .A1(HWDATA[18]), .S(n554), .Z(n1101) );
  CMX2XL U918 ( .A0(n1970), .A1(HWDATA[1]), .S(n557), .Z(n2091) );
  CMX2XL U919 ( .A0(n1422), .A1(HWDATA[19]), .S(n554), .Z(n1103) );
  CMX2XL U920 ( .A0(n1730), .A1(HWDATA[25]), .S(n558), .Z(n795) );
  CMX2XL U921 ( .A0(n1760), .A1(HWDATA[10]), .S(n558), .Z(n765) );
  CMX2XL U922 ( .A0(n1420), .A1(HWDATA[20]), .S(n554), .Z(n1105) );
  CMX2XL U923 ( .A0(n1972), .A1(HWDATA[0]), .S(n557), .Z(n2089) );
  CMX2XL U924 ( .A0(n1418), .A1(HWDATA[21]), .S(n554), .Z(n1107) );
  CMX2XL U925 ( .A0(n1762), .A1(HWDATA[9]), .S(n558), .Z(n763) );
  CMX2XL U926 ( .A0(n1416), .A1(HWDATA[22]), .S(n554), .Z(n1109) );
  CMX2XL U927 ( .A0(n1414), .A1(HWDATA[23]), .S(n554), .Z(n1111) );
  CMX2XL U928 ( .A0(n1764), .A1(HWDATA[8]), .S(n558), .Z(n761) );
  CMX2XL U929 ( .A0(n1412), .A1(HWDATA[24]), .S(n554), .Z(n1113) );
  CMX2XL U930 ( .A0(n1410), .A1(HWDATA[25]), .S(n554), .Z(n1115) );
  CMX2XL U931 ( .A0(n1766), .A1(HWDATA[7]), .S(n558), .Z(n759) );
  CMX2XL U932 ( .A0(n1408), .A1(HWDATA[26]), .S(n554), .Z(n1117) );
  CMX2XL U933 ( .A0(n1406), .A1(HWDATA[27]), .S(n554), .Z(n1119) );
  CMX2XL U934 ( .A0(n1768), .A1(HWDATA[6]), .S(n558), .Z(n757) );
  CMX2XL U935 ( .A0(n1404), .A1(HWDATA[28]), .S(n554), .Z(n1121) );
  CMX2XL U936 ( .A0(n1402), .A1(HWDATA[29]), .S(n554), .Z(n1123) );
  CMX2XL U937 ( .A0(n1770), .A1(HWDATA[5]), .S(n558), .Z(n755) );
  CMX2XL U938 ( .A0(n1400), .A1(HWDATA[30]), .S(n554), .Z(n1125) );
  CMX2XL U939 ( .A0(n1772), .A1(HWDATA[4]), .S(n558), .Z(n753) );
  CMX2XL U940 ( .A0(n1774), .A1(HWDATA[3]), .S(n558), .Z(n751) );
  CMX2XL U941 ( .A0(n1776), .A1(HWDATA[2]), .S(n558), .Z(n749) );
  CMX2XL U942 ( .A0(n1778), .A1(HWDATA[1]), .S(n558), .Z(n747) );
  CMX2XL U943 ( .A0(n1780), .A1(HWDATA[0]), .S(n558), .Z(n745) );
  CMX2XL U944 ( .A0(n1784), .A1(HWDATA[30]), .S(n556), .Z(n741) );
  CMX2XL U945 ( .A0(n1786), .A1(HWDATA[29]), .S(n556), .Z(n739) );
  CMX2XL U946 ( .A0(n1788), .A1(HWDATA[28]), .S(n556), .Z(n737) );
  CMX2XL U947 ( .A0(n1790), .A1(HWDATA[27]), .S(n556), .Z(n735) );
  CMX2XL U948 ( .A0(n1792), .A1(HWDATA[26]), .S(n556), .Z(n733) );
  CMX2XL U949 ( .A0(n1794), .A1(HWDATA[25]), .S(n556), .Z(n731) );
  CMX2XL U950 ( .A0(n1796), .A1(HWDATA[24]), .S(n556), .Z(n729) );
  CMX2XL U951 ( .A0(n1798), .A1(HWDATA[23]), .S(n556), .Z(n727) );
  CMX2XL U952 ( .A0(n1800), .A1(HWDATA[22]), .S(n556), .Z(n725) );
  CMX2XL U953 ( .A0(n1802), .A1(HWDATA[21]), .S(n556), .Z(n723) );
  CMX2XL U954 ( .A0(n1804), .A1(HWDATA[20]), .S(n556), .Z(n721) );
  CMX2XL U955 ( .A0(n1806), .A1(HWDATA[19]), .S(n556), .Z(n719) );
  CMX2XL U956 ( .A0(n1808), .A1(HWDATA[18]), .S(n556), .Z(n717) );
  CMX2XL U957 ( .A0(n1810), .A1(HWDATA[17]), .S(n556), .Z(n715) );
  CMX2XL U958 ( .A0(n1812), .A1(HWDATA[16]), .S(n556), .Z(n713) );
  CMX2XL U959 ( .A0(n1814), .A1(HWDATA[15]), .S(n556), .Z(n711) );
  CMX2XL U960 ( .A0(n1816), .A1(HWDATA[14]), .S(n556), .Z(n709) );
  CMX2XL U961 ( .A0(n1818), .A1(HWDATA[13]), .S(n556), .Z(n707) );
  CMX2XL U962 ( .A0(n1820), .A1(HWDATA[12]), .S(n556), .Z(n705) );
  CMX2XL U963 ( .A0(n1822), .A1(HWDATA[11]), .S(n556), .Z(n703) );
  CMX2XL U964 ( .A0(n1824), .A1(HWDATA[10]), .S(n556), .Z(n701) );
  CMX2XL U965 ( .A0(n1826), .A1(HWDATA[9]), .S(n556), .Z(n699) );
  CMX2XL U966 ( .A0(n1828), .A1(HWDATA[8]), .S(n556), .Z(n697) );
  CMX2XL U967 ( .A0(n1830), .A1(HWDATA[7]), .S(n556), .Z(n695) );
  CMX2XL U968 ( .A0(n1832), .A1(HWDATA[6]), .S(n556), .Z(n693) );
  CMX2XL U969 ( .A0(n1834), .A1(HWDATA[5]), .S(n556), .Z(n691) );
  CMX2XL U970 ( .A0(n1836), .A1(HWDATA[4]), .S(n556), .Z(n689) );
  CMX2XL U971 ( .A0(n1838), .A1(HWDATA[3]), .S(n556), .Z(n687) );
  CMX2XL U972 ( .A0(n1840), .A1(HWDATA[2]), .S(n556), .Z(n685) );
  CMX2XL U973 ( .A0(n1842), .A1(HWDATA[1]), .S(n556), .Z(n683) );
  CMX2XL U974 ( .A0(n1844), .A1(HWDATA[0]), .S(n556), .Z(n681) );
  CMX2XL U975 ( .A0(n1910), .A1(HWDATA[31]), .S(n557), .Z(n2151) );
  CMX2XL U976 ( .A0(n1782), .A1(HWDATA[31]), .S(n556), .Z(n743) );
  CMX2XL U977 ( .A0(n1718), .A1(HWDATA[31]), .S(n558), .Z(n807) );
  CMX2XL U978 ( .A0(n1862), .A1(HWDATA[23]), .S(n559), .Z(n663) );
  CMX2XL U979 ( .A0(n1922), .A1(HWDATA[25]), .S(n557), .Z(n2139) );
  CMX2XL U980 ( .A0(n1920), .A1(HWDATA[26]), .S(n557), .Z(n2141) );
  CMX2XL U981 ( .A0(n1890), .A1(HWDATA[9]), .S(n559), .Z(n635) );
  CMX2XL U982 ( .A0(n1728), .A1(HWDATA[26]), .S(n558), .Z(n797) );
  CMX2XL U983 ( .A0(n1918), .A1(HWDATA[27]), .S(n557), .Z(n2143) );
  CMX2XL U984 ( .A0(n1726), .A1(HWDATA[27]), .S(n558), .Z(n799) );
  CMX2XL U985 ( .A0(n1916), .A1(HWDATA[28]), .S(n557), .Z(n2145) );
  CMX2XL U986 ( .A0(n1886), .A1(HWDATA[11]), .S(n559), .Z(n639) );
  CMX2XL U987 ( .A0(n1914), .A1(HWDATA[29]), .S(n557), .Z(n2147) );
  CMX2XL U988 ( .A0(n1884), .A1(HWDATA[12]), .S(n559), .Z(n641) );
  CMX2XL U989 ( .A0(n1552), .A1(HWDATA[18]), .S(n560), .Z(n973) );
  CMX2XL U990 ( .A0(n1546), .A1(HWDATA[21]), .S(n560), .Z(n979) );
  CMX2XL U991 ( .A0(n1912), .A1(HWDATA[30]), .S(n557), .Z(n2149) );
  CMX2XL U992 ( .A0(n1880), .A1(HWDATA[14]), .S(n559), .Z(n645) );
  CMX2XL U993 ( .A0(n1722), .A1(HWDATA[29]), .S(n558), .Z(n803) );
  CMX2XL U994 ( .A0(n1908), .A1(HWDATA[0]), .S(n559), .Z(n617) );
  CMX2XL U995 ( .A0(n1724), .A1(HWDATA[28]), .S(n558), .Z(n801) );
  CMX2XL U996 ( .A0(n1876), .A1(HWDATA[16]), .S(n559), .Z(n649) );
  CMX2XL U997 ( .A0(n1566), .A1(HWDATA[11]), .S(n560), .Z(n959) );
  CMX2XL U998 ( .A0(n1906), .A1(HWDATA[1]), .S(n559), .Z(n619) );
  CMX2XL U999 ( .A0(n1556), .A1(HWDATA[16]), .S(n560), .Z(n969) );
  CMX2XL U1000 ( .A0(n1548), .A1(HWDATA[20]), .S(n560), .Z(n977) );
  CMX2XL U1001 ( .A0(n1904), .A1(HWDATA[2]), .S(n559), .Z(n621) );
  CMX2XL U1002 ( .A0(n1870), .A1(HWDATA[19]), .S(n559), .Z(n655) );
  CMX2XL U1003 ( .A0(n1902), .A1(HWDATA[3]), .S(n559), .Z(n623) );
  CMX2XL U1004 ( .A0(n1550), .A1(HWDATA[19]), .S(n560), .Z(n975) );
  CMX2XL U1005 ( .A0(n1570), .A1(HWDATA[9]), .S(n560), .Z(n955) );
  CMX2XL U1006 ( .A0(n1866), .A1(HWDATA[21]), .S(n559), .Z(n659) );
  CMX2XL U1007 ( .A0(n1888), .A1(HWDATA[10]), .S(n559), .Z(n637) );
  CMX2XL U1008 ( .A0(n1900), .A1(HWDATA[4]), .S(n559), .Z(n625) );
  CMX2XL U1009 ( .A0(n1574), .A1(HWDATA[7]), .S(n560), .Z(n951) );
  CMX2XL U1010 ( .A0(n1898), .A1(HWDATA[5]), .S(n559), .Z(n627) );
  CMX2XL U1011 ( .A0(n1586), .A1(HWDATA[1]), .S(n560), .Z(n939) );
  CMX2XL U1012 ( .A0(n1896), .A1(HWDATA[6]), .S(n559), .Z(n629) );
  CMX2XL U1013 ( .A0(n1882), .A1(HWDATA[13]), .S(n559), .Z(n643) );
  CMX2XL U1014 ( .A0(n1554), .A1(HWDATA[17]), .S(n560), .Z(n971) );
  CMX2XL U1015 ( .A0(n1894), .A1(HWDATA[7]), .S(n559), .Z(n631) );
  CMX2XL U1016 ( .A0(n1856), .A1(HWDATA[26]), .S(n559), .Z(n669) );
  CMX2XL U1017 ( .A0(n1878), .A1(HWDATA[15]), .S(n559), .Z(n647) );
  CMX2XL U1018 ( .A0(n1854), .A1(HWDATA[27]), .S(n559), .Z(n671) );
  CMX2XL U1019 ( .A0(n1580), .A1(HWDATA[4]), .S(n560), .Z(n945) );
  CMX2XL U1020 ( .A0(n1892), .A1(HWDATA[8]), .S(n559), .Z(n633) );
  CMX2XL U1021 ( .A0(n1874), .A1(HWDATA[17]), .S(n559), .Z(n651) );
  CMX2XL U1022 ( .A0(n1850), .A1(HWDATA[29]), .S(n559), .Z(n675) );
  CMX2XL U1023 ( .A0(n1582), .A1(HWDATA[3]), .S(n560), .Z(n943) );
  CMX2XL U1024 ( .A0(n1568), .A1(HWDATA[10]), .S(n560), .Z(n957) );
  CMX2XL U1025 ( .A0(n1852), .A1(HWDATA[28]), .S(n559), .Z(n673) );
  CMX2XL U1026 ( .A0(n1720), .A1(HWDATA[30]), .S(n558), .Z(n805) );
  CMX2XL U1027 ( .A0(n1588), .A1(HWDATA[0]), .S(n560), .Z(n937) );
  CMX2XL U1028 ( .A0(n1560), .A1(HWDATA[14]), .S(n560), .Z(n965) );
  CMX2XL U1029 ( .A0(n1858), .A1(HWDATA[25]), .S(n559), .Z(n667) );
  CMX2XL U1030 ( .A0(n1572), .A1(HWDATA[8]), .S(n560), .Z(n953) );
  CMX2XL U1031 ( .A0(n1864), .A1(HWDATA[22]), .S(n559), .Z(n661) );
  CMX2XL U1032 ( .A0(n1562), .A1(HWDATA[13]), .S(n560), .Z(n963) );
  CMX2XL U1033 ( .A0(n1872), .A1(HWDATA[18]), .S(n559), .Z(n653) );
  CMX2XL U1034 ( .A0(n1576), .A1(HWDATA[6]), .S(n560), .Z(n949) );
  CMX2XL U1035 ( .A0(n1860), .A1(HWDATA[24]), .S(n559), .Z(n665) );
  CMX2XL U1036 ( .A0(n1564), .A1(HWDATA[12]), .S(n560), .Z(n961) );
  CMX2XL U1037 ( .A0(n1868), .A1(HWDATA[20]), .S(n559), .Z(n657) );
  CMX2XL U1038 ( .A0(n1578), .A1(HWDATA[5]), .S(n560), .Z(n947) );
  CMX2XL U1039 ( .A0(n1848), .A1(HWDATA[30]), .S(n559), .Z(n677) );
  CMX2XL U1040 ( .A0(n1584), .A1(HWDATA[2]), .S(n560), .Z(n941) );
  CMX2XL U1041 ( .A0(n1694), .A1(HWDATA[11]), .S(n563), .Z(n831) );
  CMX2XL U1042 ( .A0(n1672), .A1(HWDATA[22]), .S(n563), .Z(n853) );
  CMX2XL U1043 ( .A0(n1670), .A1(HWDATA[23]), .S(n563), .Z(n855) );
  CMX2XL U1044 ( .A0(n1686), .A1(HWDATA[15]), .S(n563), .Z(n839) );
  CMX2XL U1045 ( .A0(n1676), .A1(HWDATA[20]), .S(n563), .Z(n849) );
  CMX2XL U1046 ( .A0(n1690), .A1(HWDATA[13]), .S(n563), .Z(n835) );
  CMX2XL U1047 ( .A0(n1698), .A1(HWDATA[9]), .S(n563), .Z(n827) );
  CMX2XL U1048 ( .A0(n1654), .A1(HWDATA[31]), .S(n563), .Z(n871) );
  CMX2XL U1049 ( .A0(n1684), .A1(HWDATA[16]), .S(n563), .Z(n841) );
  CMX2XL U1050 ( .A0(n1668), .A1(HWDATA[24]), .S(n563), .Z(n857) );
  CMX2XL U1051 ( .A0(n1680), .A1(HWDATA[18]), .S(n563), .Z(n845) );
  CMX2XL U1052 ( .A0(n1682), .A1(HWDATA[17]), .S(n563), .Z(n843) );
  CMX2XL U1053 ( .A0(n1692), .A1(HWDATA[12]), .S(n563), .Z(n833) );
  CMX2XL U1054 ( .A0(n1696), .A1(HWDATA[10]), .S(n563), .Z(n829) );
  CMX2XL U1055 ( .A0(n1678), .A1(HWDATA[19]), .S(n563), .Z(n847) );
  CMX2XL U1056 ( .A0(n1658), .A1(HWDATA[29]), .S(n563), .Z(n867) );
  CMX2XL U1057 ( .A0(n1674), .A1(HWDATA[21]), .S(n563), .Z(n851) );
  CMX2XL U1058 ( .A0(n1666), .A1(HWDATA[25]), .S(n563), .Z(n859) );
  CMX2XL U1059 ( .A0(n1700), .A1(HWDATA[8]), .S(n563), .Z(n825) );
  CMX2XL U1060 ( .A0(n1688), .A1(HWDATA[14]), .S(n563), .Z(n837) );
  CMX2XL U1061 ( .A0(n1656), .A1(HWDATA[30]), .S(n563), .Z(n869) );
  CMX2XL U1062 ( .A0(n1664), .A1(HWDATA[26]), .S(n563), .Z(n861) );
  CMX2XL U1063 ( .A0(n1712), .A1(HWDATA[2]), .S(n563), .Z(n813) );
  CMX2XL U1064 ( .A0(n1714), .A1(HWDATA[1]), .S(n563), .Z(n811) );
  CMX2XL U1065 ( .A0(n1708), .A1(HWDATA[4]), .S(n563), .Z(n817) );
  CMX2XL U1066 ( .A0(n1710), .A1(HWDATA[3]), .S(n563), .Z(n815) );
  CMX2XL U1067 ( .A0(n1662), .A1(HWDATA[27]), .S(n563), .Z(n863) );
  CMX2XL U1068 ( .A0(n1702), .A1(HWDATA[7]), .S(n563), .Z(n823) );
  CMX2XL U1069 ( .A0(n1660), .A1(HWDATA[28]), .S(n563), .Z(n865) );
  CMX2XL U1070 ( .A0(n1706), .A1(HWDATA[5]), .S(n563), .Z(n819) );
  CMX2XL U1071 ( .A0(n1716), .A1(HWDATA[0]), .S(n563), .Z(n809) );
  CMX2XL U1072 ( .A0(n1704), .A1(HWDATA[6]), .S(n563), .Z(n821) );
  CNR2X2 U1073 ( .A(n577), .B(n564), .Z(n566) );
  CMX2XL U1074 ( .A0(n1270), .A1(HWDATA[31]), .S(n566), .Z(n1255) );
  CMX2XL U1075 ( .A0(n888), .A1(HWDATA[5]), .S(n567), .Z(n1651) );
  CMX2XL U1076 ( .A0(n834), .A1(HWDATA[0]), .S(n568), .Z(n1705) );
  CMX2XL U1077 ( .A0(n962), .A1(HWDATA[25]), .S(n565), .Z(n1563) );
  CMX2XL U1078 ( .A0(n952), .A1(HWDATA[30]), .S(n565), .Z(n1573) );
  CMX2XL U1079 ( .A0(n960), .A1(HWDATA[26]), .S(n565), .Z(n1565) );
  CMX2XL U1080 ( .A0(n950), .A1(HWDATA[31]), .S(n565), .Z(n1575) );
  CMX2XL U1081 ( .A0(n968), .A1(HWDATA[22]), .S(n565), .Z(n1557) );
  CMX2XL U1082 ( .A0(n958), .A1(HWDATA[27]), .S(n565), .Z(n1567) );
  CMX2XL U1083 ( .A0(n970), .A1(HWDATA[21]), .S(n565), .Z(n1555) );
  CMX2XL U1084 ( .A0(n972), .A1(HWDATA[20]), .S(n565), .Z(n1553) );
  CMX2XL U1085 ( .A0(n974), .A1(HWDATA[19]), .S(n565), .Z(n1551) );
  CMX2XL U1086 ( .A0(n964), .A1(HWDATA[24]), .S(n565), .Z(n1561) );
  CMX2XL U1087 ( .A0(n976), .A1(HWDATA[18]), .S(n565), .Z(n1549) );
  CMX2XL U1088 ( .A0(n954), .A1(HWDATA[29]), .S(n565), .Z(n1571) );
  CMX2XL U1089 ( .A0(n980), .A1(HWDATA[16]), .S(n565), .Z(n1545) );
  CMX2XL U1090 ( .A0(n956), .A1(HWDATA[28]), .S(n565), .Z(n1569) );
  CMX2XL U1091 ( .A0(n982), .A1(HWDATA[15]), .S(n565), .Z(n1543) );
  CMX2XL U1092 ( .A0(n984), .A1(HWDATA[14]), .S(n565), .Z(n1541) );
  CMX2XL U1093 ( .A0(n986), .A1(HWDATA[13]), .S(n565), .Z(n1539) );
  CMX2XL U1094 ( .A0(n832), .A1(HWDATA[1]), .S(n568), .Z(n1707) );
  CMX2XL U1095 ( .A0(n990), .A1(HWDATA[11]), .S(n565), .Z(n1535) );
  CMX2XL U1096 ( .A0(n992), .A1(HWDATA[10]), .S(n565), .Z(n1533) );
  CMX2XL U1097 ( .A0(n994), .A1(HWDATA[9]), .S(n565), .Z(n1531) );
  CMX2XL U1098 ( .A0(n830), .A1(HWDATA[2]), .S(n568), .Z(n1709) );
  CMX2XL U1099 ( .A0(n836), .A1(HWDATA[31]), .S(n567), .Z(n1703) );
  CMX2XL U1100 ( .A0(n996), .A1(HWDATA[8]), .S(n565), .Z(n1529) );
  CMX2XL U1101 ( .A0(n998), .A1(HWDATA[7]), .S(n565), .Z(n1527) );
  CMX2XL U1102 ( .A0(n898), .A1(HWDATA[0]), .S(n567), .Z(n1641) );
  CMX2XL U1103 ( .A0(n1000), .A1(HWDATA[6]), .S(n565), .Z(n1525) );
  CMX2XL U1104 ( .A0(n978), .A1(HWDATA[17]), .S(n565), .Z(n1547) );
  CMX2XL U1105 ( .A0(n1002), .A1(HWDATA[5]), .S(n565), .Z(n1523) );
  CMX2XL U1106 ( .A0(n896), .A1(HWDATA[1]), .S(n567), .Z(n1643) );
  CMX2XL U1107 ( .A0(n1004), .A1(HWDATA[4]), .S(n565), .Z(n1521) );
  CMX2XL U1108 ( .A0(n894), .A1(HWDATA[2]), .S(n567), .Z(n1645) );
  CMX2XL U1109 ( .A0(n1006), .A1(HWDATA[3]), .S(n565), .Z(n1519) );
  CMX2XL U1110 ( .A0(n988), .A1(HWDATA[12]), .S(n565), .Z(n1537) );
  CMX2XL U1111 ( .A0(n1008), .A1(HWDATA[2]), .S(n565), .Z(n1517) );
  CMX2XL U1112 ( .A0(n892), .A1(HWDATA[3]), .S(n567), .Z(n1647) );
  CMX2XL U1113 ( .A0(n1010), .A1(HWDATA[1]), .S(n565), .Z(n1515) );
  CMX2XL U1114 ( .A0(n890), .A1(HWDATA[4]), .S(n567), .Z(n1649) );
  CMX2XL U1115 ( .A0(n1012), .A1(HWDATA[0]), .S(n565), .Z(n1513) );
  CMX2XL U1116 ( .A0(\lcd_upbase[LCDUPBASE][14] ), .A1(HWDATA[17]), .S(n568), 
        .Z(n1739) );
  CMX2XL U1117 ( .A0(n966), .A1(HWDATA[23]), .S(n565), .Z(n1559) );
  CMX2XL U1118 ( .A0(n1272), .A1(HWDATA[30]), .S(n566), .Z(n1253) );
  CMX2XL U1119 ( .A0(n1320), .A1(HWDATA[6]), .S(n566), .Z(n1205) );
  CMX2XL U1120 ( .A0(n1324), .A1(HWDATA[4]), .S(n566), .Z(n1201) );
  CMX2XL U1121 ( .A0(n1318), .A1(HWDATA[7]), .S(n566), .Z(n1207) );
  CMX2XL U1122 ( .A0(n1326), .A1(HWDATA[3]), .S(n566), .Z(n1199) );
  CMX2XL U1123 ( .A0(n852), .A1(HWDATA[23]), .S(n567), .Z(n1687) );
  CMX2XL U1124 ( .A0(n1316), .A1(HWDATA[8]), .S(n566), .Z(n1209) );
  CMX2XL U1125 ( .A0(n1314), .A1(HWDATA[9]), .S(n566), .Z(n1211) );
  CMX2XL U1126 ( .A0(n1328), .A1(HWDATA[2]), .S(n566), .Z(n1197) );
  CMX2XL U1127 ( .A0(n1312), .A1(HWDATA[10]), .S(n566), .Z(n1213) );
  CMX2XL U1128 ( .A0(n1330), .A1(HWDATA[1]), .S(n566), .Z(n1195) );
  CMX2XL U1129 ( .A0(n1332), .A1(HWDATA[0]), .S(n566), .Z(n1193) );
  CMX2XL U1130 ( .A0(n1310), .A1(HWDATA[11]), .S(n566), .Z(n1215) );
  CMX2XL U1131 ( .A0(n1322), .A1(HWDATA[5]), .S(n566), .Z(n1203) );
  CMX2XL U1132 ( .A0(n850), .A1(HWDATA[24]), .S(n567), .Z(n1689) );
  CMX2XL U1133 ( .A0(n1306), .A1(HWDATA[13]), .S(n566), .Z(n1219) );
  CMX2XL U1134 ( .A0(n1304), .A1(HWDATA[14]), .S(n566), .Z(n1221) );
  CMX2XL U1135 ( .A0(n1302), .A1(HWDATA[15]), .S(n566), .Z(n1223) );
  CMX2XL U1136 ( .A0(n854), .A1(HWDATA[22]), .S(n567), .Z(n1685) );
  CMX2XL U1137 ( .A0(n1300), .A1(HWDATA[16]), .S(n566), .Z(n1225) );
  CMX2XL U1138 ( .A0(n1298), .A1(HWDATA[17]), .S(n566), .Z(n1227) );
  CMX2XL U1139 ( .A0(n1296), .A1(HWDATA[18]), .S(n566), .Z(n1229) );
  CMX2XL U1140 ( .A0(n1294), .A1(HWDATA[19]), .S(n566), .Z(n1231) );
  CMX2XL U1141 ( .A0(n856), .A1(HWDATA[21]), .S(n567), .Z(n1683) );
  CMX2XL U1142 ( .A0(n1292), .A1(HWDATA[20]), .S(n566), .Z(n1233) );
  CMX2XL U1143 ( .A0(n1290), .A1(HWDATA[21]), .S(n566), .Z(n1235) );
  CMX2XL U1144 ( .A0(n1288), .A1(HWDATA[22]), .S(n566), .Z(n1237) );
  CMX2XL U1145 ( .A0(n1286), .A1(HWDATA[23]), .S(n566), .Z(n1239) );
  CMX2XL U1146 ( .A0(n1284), .A1(HWDATA[24]), .S(n566), .Z(n1241) );
  CMX2XL U1147 ( .A0(n1282), .A1(HWDATA[25]), .S(n566), .Z(n1243) );
  CMX2XL U1148 ( .A0(n1280), .A1(HWDATA[26]), .S(n566), .Z(n1245) );
  CMX2XL U1149 ( .A0(n858), .A1(HWDATA[20]), .S(n567), .Z(n1681) );
  CMX2XL U1150 ( .A0(n1278), .A1(HWDATA[27]), .S(n566), .Z(n1247) );
  CMX2XL U1151 ( .A0(\lcd_upbase[LCDUPBASE][13] ), .A1(HWDATA[16]), .S(n568), 
        .Z(n1737) );
  CMX2XL U1152 ( .A0(n1276), .A1(HWDATA[28]), .S(n566), .Z(n1249) );
  CMX2XL U1153 ( .A0(n860), .A1(HWDATA[19]), .S(n567), .Z(n1679) );
  CMX2XL U1154 ( .A0(n1274), .A1(HWDATA[29]), .S(n566), .Z(n1251) );
  CMX2XL U1155 ( .A0(n862), .A1(HWDATA[18]), .S(n567), .Z(n1677) );
  CMX2XL U1156 ( .A0(n848), .A1(HWDATA[25]), .S(n567), .Z(n1691) );
  CMX2XL U1157 ( .A0(n864), .A1(HWDATA[17]), .S(n567), .Z(n1675) );
  CMX2XL U1158 ( .A0(n838), .A1(HWDATA[30]), .S(n567), .Z(n1701) );
  CMX2XL U1159 ( .A0(n840), .A1(HWDATA[29]), .S(n567), .Z(n1699) );
  CMX2XL U1160 ( .A0(n846), .A1(HWDATA[26]), .S(n567), .Z(n1693) );
  CMX2XL U1161 ( .A0(n842), .A1(HWDATA[28]), .S(n567), .Z(n1697) );
  CMX2XL U1162 ( .A0(n1308), .A1(HWDATA[12]), .S(n566), .Z(n1217) );
  CMX2XL U1163 ( .A0(n882), .A1(HWDATA[8]), .S(n567), .Z(n1657) );
  CMX2XL U1164 ( .A0(\lcd_upbase[LCDUPBASE][16] ), .A1(HWDATA[19]), .S(n568), 
        .Z(n1743) );
  CMX2XL U1165 ( .A0(n884), .A1(HWDATA[7]), .S(n567), .Z(n1655) );
  CMX2XL U1166 ( .A0(\lcd_upbase[LCDUPBASE][23] ), .A1(HWDATA[26]), .S(n568), 
        .Z(n1757) );
  CMX2XL U1167 ( .A0(n886), .A1(HWDATA[6]), .S(n567), .Z(n1653) );
  CMX2XL U1168 ( .A0(\lcd_upbase[LCDUPBASE][20] ), .A1(HWDATA[23]), .S(n568), 
        .Z(n1751) );
  CMX2XL U1169 ( .A0(n866), .A1(HWDATA[16]), .S(n567), .Z(n1673) );
  CMX2XL U1170 ( .A0(n872), .A1(HWDATA[13]), .S(n567), .Z(n1667) );
  CMX2XL U1171 ( .A0(\lcd_upbase[LCDUPBASE][28] ), .A1(HWDATA[31]), .S(n568), 
        .Z(n1767) );
  CMX2XL U1172 ( .A0(\lcd_upbase[LCDUPBASE][5] ), .A1(HWDATA[8]), .S(n568), 
        .Z(n1721) );
  CMX2XL U1173 ( .A0(n868), .A1(HWDATA[15]), .S(n567), .Z(n1671) );
  CMX2XL U1174 ( .A0(\lcd_upbase[LCDUPBASE][0] ), .A1(HWDATA[3]), .S(n568), 
        .Z(n1711) );
  CMX2XL U1175 ( .A0(\lcd_upbase[LCDUPBASE][27] ), .A1(HWDATA[30]), .S(n568), 
        .Z(n1765) );
  CMX2XL U1176 ( .A0(\lcd_upbase[LCDUPBASE][6] ), .A1(HWDATA[9]), .S(n568), 
        .Z(n1723) );
  CMX2XL U1177 ( .A0(\lcd_upbase[LCDUPBASE][4] ), .A1(HWDATA[7]), .S(n568), 
        .Z(n1719) );
  CMX2XL U1178 ( .A0(\lcd_upbase[LCDUPBASE][9] ), .A1(HWDATA[12]), .S(n568), 
        .Z(n1729) );
  CMX2XL U1179 ( .A0(\lcd_upbase[LCDUPBASE][1] ), .A1(HWDATA[4]), .S(n568), 
        .Z(n1713) );
  CMX2XL U1180 ( .A0(n870), .A1(HWDATA[14]), .S(n567), .Z(n1669) );
  CMX2XL U1181 ( .A0(\lcd_upbase[LCDUPBASE][26] ), .A1(HWDATA[29]), .S(n568), 
        .Z(n1763) );
  CMX2XL U1182 ( .A0(n876), .A1(HWDATA[11]), .S(n567), .Z(n1663) );
  CMX2XL U1183 ( .A0(n880), .A1(HWDATA[9]), .S(n567), .Z(n1659) );
  CMX2XL U1184 ( .A0(\lcd_upbase[LCDUPBASE][2] ), .A1(HWDATA[5]), .S(n568), 
        .Z(n1715) );
  CMX2XL U1185 ( .A0(\lcd_upbase[LCDUPBASE][17] ), .A1(HWDATA[20]), .S(n568), 
        .Z(n1745) );
  CMX2XL U1186 ( .A0(\lcd_upbase[LCDUPBASE][19] ), .A1(HWDATA[22]), .S(n568), 
        .Z(n1749) );
  CMX2XL U1187 ( .A0(\lcd_upbase[LCDUPBASE][7] ), .A1(HWDATA[10]), .S(n568), 
        .Z(n1725) );
  CMX2XL U1188 ( .A0(n874), .A1(HWDATA[12]), .S(n567), .Z(n1665) );
  CMX2XL U1189 ( .A0(\lcd_upbase[LCDUPBASE][22] ), .A1(HWDATA[25]), .S(n568), 
        .Z(n1755) );
  CMX2XL U1190 ( .A0(\lcd_upbase[LCDUPBASE][12] ), .A1(HWDATA[15]), .S(n568), 
        .Z(n1735) );
  CMX2XL U1191 ( .A0(\lcd_upbase[LCDUPBASE][10] ), .A1(HWDATA[13]), .S(n568), 
        .Z(n1731) );
  CMX2XL U1192 ( .A0(\lcd_upbase[LCDUPBASE][25] ), .A1(HWDATA[28]), .S(n568), 
        .Z(n1761) );
  CMX2XL U1193 ( .A0(\lcd_upbase[LCDUPBASE][24] ), .A1(HWDATA[27]), .S(n568), 
        .Z(n1759) );
  CMX2XL U1194 ( .A0(\lcd_upbase[LCDUPBASE][3] ), .A1(HWDATA[6]), .S(n568), 
        .Z(n1717) );
  CMX2XL U1195 ( .A0(n878), .A1(HWDATA[10]), .S(n567), .Z(n1661) );
  CMX2XL U1196 ( .A0(\lcd_upbase[LCDUPBASE][8] ), .A1(HWDATA[11]), .S(n568), 
        .Z(n1727) );
  CMX2XL U1197 ( .A0(\lcd_upbase[LCDUPBASE][21] ), .A1(HWDATA[24]), .S(n568), 
        .Z(n1753) );
  CMX2XL U1198 ( .A0(n844), .A1(HWDATA[27]), .S(n567), .Z(n1695) );
  CMX2XL U1199 ( .A0(\lcd_upbase[LCDUPBASE][18] ), .A1(HWDATA[21]), .S(n568), 
        .Z(n1747) );
  CMX2XL U1200 ( .A0(\lcd_upbase[LCDUPBASE][11] ), .A1(HWDATA[14]), .S(n568), 
        .Z(n1733) );
  CMX2XL U1201 ( .A0(\lcd_upbase[LCDUPBASE][15] ), .A1(HWDATA[18]), .S(n568), 
        .Z(n1741) );
  CMX2XL U1202 ( .A0(n914), .A1(HWDATA[24]), .S(n569), .Z(n1625) );
  CMX2XL U1203 ( .A0(n922), .A1(HWDATA[20]), .S(n569), .Z(n1617) );
  CMX2XL U1204 ( .A0(n938), .A1(HWDATA[10]), .S(n569), .Z(n1597) );
  CMX2XL U1205 ( .A0(n948), .A1(HWDATA[4]), .S(n569), .Z(n1585) );
  CMX2XL U1206 ( .A0(n910), .A1(HWDATA[26]), .S(n569), .Z(n1629) );
  CMX2XL U1207 ( .A0(n930), .A1(HWDATA[15]), .S(n569), .Z(n1607) );
  CMX2XL U1208 ( .A0(n942), .A1(HWDATA[8]), .S(n569), .Z(n1593) );
  CMX2XL U1209 ( .A0(\lcd_ctrl[LCDPWR] ), .A1(HWDATA[11]), .S(n569), .Z(n1599)
         );
  CMX2XL U1210 ( .A0(n918), .A1(HWDATA[22]), .S(n569), .Z(n1621) );
  CMX2XL U1211 ( .A0(n946), .A1(HWDATA[6]), .S(n569), .Z(n1589) );
  CMX2XL U1212 ( .A0(n920), .A1(HWDATA[21]), .S(n569), .Z(n1619) );
  CMX2XL U1213 ( .A0(n900), .A1(HWDATA[31]), .S(n569), .Z(n1639) );
  CMX2XL U1214 ( .A0(n940), .A1(HWDATA[9]), .S(n569), .Z(n1595) );
  CMX2XL U1215 ( .A0(n904), .A1(HWDATA[29]), .S(n569), .Z(n1635) );
  CMX2XL U1216 ( .A0(n912), .A1(HWDATA[25]), .S(n569), .Z(n1627) );
  CMX2XL U1217 ( .A0(n902), .A1(HWDATA[30]), .S(n569), .Z(n1637) );
  CMX2XL U1218 ( .A0(n936), .A1(HWDATA[12]), .S(n569), .Z(n1601) );
  CMX2XL U1219 ( .A0(n944), .A1(HWDATA[7]), .S(n569), .Z(n1591) );
  CMX2XL U1220 ( .A0(n908), .A1(HWDATA[27]), .S(n569), .Z(n1631) );
  CMX2XL U1221 ( .A0(n934), .A1(HWDATA[13]), .S(n569), .Z(n1603) );
  CMX2XL U1222 ( .A0(\lcd_ctrl[LCDTFT] ), .A1(HWDATA[5]), .S(n569), .Z(n1587)
         );
  CMX2XL U1223 ( .A0(n906), .A1(HWDATA[28]), .S(n569), .Z(n1633) );
  CMX2XL U1224 ( .A0(\lcd_ctrl[LCDBPP][2] ), .A1(HWDATA[3]), .S(n569), .Z(
        n1583) );
  CMX2XL U1225 ( .A0(\lcd_ctrl[WATERMARK] ), .A1(HWDATA[16]), .S(n569), .Z(
        n1609) );
  CMX2XL U1226 ( .A0(n928), .A1(HWDATA[17]), .S(n569), .Z(n1611) );
  CMX2XL U1227 ( .A0(n924), .A1(HWDATA[19]), .S(n569), .Z(n1615) );
  CMX2XL U1228 ( .A0(n926), .A1(HWDATA[18]), .S(n569), .Z(n1613) );
  CMX2XL U1229 ( .A0(n916), .A1(HWDATA[23]), .S(n569), .Z(n1623) );
  CMX2XL U1230 ( .A0(n932), .A1(HWDATA[14]), .S(n569), .Z(n1605) );
  CMX2XL U1231 ( .A0(\lcd_timv[VFP][3] ), .A1(HWDATA[19]), .S(n580), .Z(n1935)
         );
  CMX2XL U1232 ( .A0(\lcd_timh[HFP][2] ), .A1(HWDATA[18]), .S(n582), .Z(n1997)
         );
  CMX2XL U1233 ( .A0(\lcd_timv[VSW][1] ), .A1(HWDATA[11]), .S(n580), .Z(n1919)
         );
  CMX2XL U1234 ( .A0(n1184), .A1(HWDATA[10]), .S(n581), .Z(n1341) );
  CMX2XL U1235 ( .A0(\lcd_timv[VFP][1] ), .A1(HWDATA[17]), .S(n580), .Z(n1931)
         );
  CMX2XL U1236 ( .A0(\lcd_timh[HFP][5] ), .A1(HWDATA[21]), .S(n582), .Z(n2003)
         );
  CMX2XL U1237 ( .A0(\lcd_timh[HFP][0] ), .A1(HWDATA[16]), .S(n582), .Z(n1993)
         );
  CMX2XL U1238 ( .A0(\lcd_timh[HFP][4] ), .A1(HWDATA[20]), .S(n582), .Z(n2001)
         );
  CMX2XL U1239 ( .A0(\lcd_timh[HFP][6] ), .A1(HWDATA[22]), .S(n582), .Z(n2005)
         );
  CMX2XL U1240 ( .A0(\lcd_timv[VBP][0] ), .A1(HWDATA[24]), .S(n580), .Z(n1945)
         );
  CMX2XL U1241 ( .A0(\lcd_timv[VBP][1] ), .A1(HWDATA[25]), .S(n580), .Z(n1947)
         );
  CMX2XL U1242 ( .A0(\lcd_timh[PPL][4] ), .A1(HWDATA[6]), .S(n582), .Z(n1973)
         );
  CMX2XL U1243 ( .A0(\lcd_timh[HFP][7] ), .A1(HWDATA[23]), .S(n582), .Z(n2007)
         );
  CMX2XL U1244 ( .A0(\lcd_timv[LPP][5] ), .A1(HWDATA[5]), .S(n580), .Z(n1907)
         );
  CMX2XL U1245 ( .A0(\lcd_timv[VSW][0] ), .A1(HWDATA[10]), .S(n580), .Z(n1917)
         );
  CMX2XL U1246 ( .A0(\lcd_timv[LPP][3] ), .A1(HWDATA[3]), .S(n580), .Z(n1903)
         );
  CMX2XL U1247 ( .A0(\lcd_timv[VBP][3] ), .A1(HWDATA[27]), .S(n580), .Z(n1951)
         );
  CMX2XL U1248 ( .A0(\lcd_timh[PPL][5] ), .A1(HWDATA[7]), .S(n582), .Z(n1975)
         );
  CMX2XL U1249 ( .A0(\lcd_timh[HBP][7] ), .A1(HWDATA[31]), .S(n582), .Z(n2023)
         );
  CMX2XL U1250 ( .A0(\lcd_timv[VBP][7] ), .A1(HWDATA[31]), .S(n580), .Z(n1959)
         );
  CMX2XL U1251 ( .A0(\lcd_le[LED][0] ), .A1(HWDATA[0]), .S(n579), .Z(n1769) );
  CMX2XL U1252 ( .A0(\lcd_timv[VBP][5] ), .A1(HWDATA[29]), .S(n580), .Z(n1955)
         );
  CMX2XL U1253 ( .A0(\lcd_timh[HBP][6] ), .A1(HWDATA[30]), .S(n582), .Z(n2021)
         );
  CMX2XL U1254 ( .A0(\lcd_timv[VFP][5] ), .A1(HWDATA[21]), .S(n580), .Z(n1939)
         );
  CMX2XL U1255 ( .A0(\lcd_le[LED][6] ), .A1(HWDATA[6]), .S(n579), .Z(n1781) );
  CMX2XL U1256 ( .A0(\lcd_timv[VFP][0] ), .A1(HWDATA[16]), .S(n580), .Z(n1929)
         );
  CMX2XL U1257 ( .A0(\lcd_timh[HSW][7] ), .A1(HWDATA[15]), .S(n582), .Z(n1991)
         );
  CMX2XL U1258 ( .A0(\lcd_timh[HFP][1] ), .A1(HWDATA[17]), .S(n582), .Z(n1995)
         );
  CMX2XL U1259 ( .A0(\lcd_timh[HBP][0] ), .A1(HWDATA[24]), .S(n582), .Z(n2009)
         );
  CMX2XL U1260 ( .A0(\lcd_timh[HSW][5] ), .A1(HWDATA[13]), .S(n582), .Z(n1987)
         );
  CMX2XL U1261 ( .A0(\lcd_timh[HBP][1] ), .A1(HWDATA[25]), .S(n582), .Z(n2011)
         );
  CMX2XL U1262 ( .A0(\lcd_le[LED][5] ), .A1(HWDATA[5]), .S(n579), .Z(n1779) );
  CMX2XL U1263 ( .A0(\lcd_timh[HFP][3] ), .A1(HWDATA[19]), .S(n582), .Z(n1999)
         );
  CMX2XL U1264 ( .A0(\lcd_timh[HSW][3] ), .A1(HWDATA[11]), .S(n582), .Z(n1983)
         );
  CMX2XL U1265 ( .A0(\lcd_timh[HBP][3] ), .A1(HWDATA[27]), .S(n582), .Z(n2015)
         );
  CMX2XL U1266 ( .A0(\lcd_le[LED][1] ), .A1(HWDATA[1]), .S(n579), .Z(n1771) );
  CMX2XL U1267 ( .A0(\lcd_timv[LPP][1] ), .A1(HWDATA[1]), .S(n580), .Z(n1899)
         );
  CMX2XL U1268 ( .A0(\lcd_timh[HBP][5] ), .A1(HWDATA[29]), .S(n582), .Z(n2019)
         );
  CMX2XL U1269 ( .A0(\lcd_le[LEE] ), .A1(HWDATA[16]), .S(n579), .Z(n1801) );
  CMX2XL U1270 ( .A0(\lcd_timv[VBP][6] ), .A1(HWDATA[30]), .S(n580), .Z(n1957)
         );
  CMX2XL U1271 ( .A0(\lcd_timv[LPP][2] ), .A1(HWDATA[2]), .S(n580), .Z(n1901)
         );
  CMX2XL U1272 ( .A0(n1204), .A1(HWDATA[0]), .S(n581), .Z(n1321) );
  CMX2XL U1273 ( .A0(\lcd_timv[LPP][7] ), .A1(HWDATA[7]), .S(n580), .Z(n1911)
         );
  CMX2XL U1274 ( .A0(\lcd_timv[VSW][4] ), .A1(HWDATA[14]), .S(n580), .Z(n1925)
         );
  CMX2XL U1275 ( .A0(n1202), .A1(HWDATA[1]), .S(n581), .Z(n1323) );
  CMX2XL U1276 ( .A0(\lcd_timv[VFP][6] ), .A1(HWDATA[22]), .S(n580), .Z(n1941)
         );
  CMX2XL U1277 ( .A0(\lcd_timv[LPP][8] ), .A1(HWDATA[8]), .S(n580), .Z(n1913)
         );
  CMX2XL U1278 ( .A0(\lcd_timv[LPP][9] ), .A1(HWDATA[9]), .S(n580), .Z(n1915)
         );
  CMX2XL U1279 ( .A0(n1200), .A1(HWDATA[2]), .S(n581), .Z(n1325) );
  CMX2XL U1280 ( .A0(n714), .A1(HWDATA[1]), .S(n582), .Z(n1963) );
  CMX2XL U1281 ( .A0(n1198), .A1(HWDATA[3]), .S(n581), .Z(n1327) );
  CMX2XL U1282 ( .A0(\lcd_timv[LPP][4] ), .A1(HWDATA[4]), .S(n580), .Z(n1905)
         );
  CMX2XL U1283 ( .A0(n716), .A1(HWDATA[0]), .S(n582), .Z(n1961) );
  CMX2XL U1284 ( .A0(n1196), .A1(HWDATA[4]), .S(n581), .Z(n1329) );
  CMX2XL U1285 ( .A0(\lcd_timv[VSW][2] ), .A1(HWDATA[12]), .S(n580), .Z(n1921)
         );
  CMX2XL U1286 ( .A0(\lcd_timh[HSW][0] ), .A1(HWDATA[8]), .S(n582), .Z(n1977)
         );
  CMX2XL U1287 ( .A0(n1194), .A1(HWDATA[5]), .S(n581), .Z(n1331) );
  CMX2XL U1288 ( .A0(\lcd_timv[VFP][4] ), .A1(HWDATA[20]), .S(n580), .Z(n1937)
         );
  CMX2XL U1289 ( .A0(n1192), .A1(HWDATA[6]), .S(n581), .Z(n1333) );
  CMX2XL U1290 ( .A0(\lcd_timh[HSW][6] ), .A1(HWDATA[14]), .S(n582), .Z(n1989)
         );
  CMX2XL U1291 ( .A0(\lcd_timv[VBP][4] ), .A1(HWDATA[28]), .S(n580), .Z(n1953)
         );
  CMX2XL U1292 ( .A0(n718), .A1(HWDATA[31]), .S(n583), .Z(n1895) );
  CMX2XL U1293 ( .A0(\lcd_timh[HSW][4] ), .A1(HWDATA[12]), .S(n582), .Z(n1985)
         );
  CMX2XL U1294 ( .A0(\lcd_le[LED][2] ), .A1(HWDATA[2]), .S(n579), .Z(n1773) );
  CMX2XL U1295 ( .A0(n782), .A1(HWDATA[31]), .S(n579), .Z(n1831) );
  CMX2XL U1296 ( .A0(\lcd_timh[HSW][2] ), .A1(HWDATA[10]), .S(n582), .Z(n1981)
         );
  CMX2XL U1297 ( .A0(\lcd_le[LED][4] ), .A1(HWDATA[4]), .S(n579), .Z(n1777) );
  CMX2XL U1298 ( .A0(n1190), .A1(HWDATA[7]), .S(n581), .Z(n1335) );
  CMX2XL U1299 ( .A0(\lcd_timv[VSW][3] ), .A1(HWDATA[13]), .S(n580), .Z(n1923)
         );
  CNR2X2 U1300 ( .A(n577), .B(n586), .Z(n585) );
  CMX2XL U1301 ( .A0(n1014), .A1(HWDATA[31]), .S(n585), .Z(n1511) );
  CMX2XL U1302 ( .A0(\lcd_le[LED][3] ), .A1(HWDATA[3]), .S(n579), .Z(n1775) );
  CMX2XL U1303 ( .A0(n1142), .A1(HWDATA[31]), .S(n581), .Z(n1383) );
  CMX2XL U1304 ( .A0(n1188), .A1(HWDATA[8]), .S(n581), .Z(n1337) );
  CMX2XL U1305 ( .A0(\lcd_timv[LPP][6] ), .A1(HWDATA[6]), .S(n580), .Z(n1909)
         );
  CMX2XL U1306 ( .A0(n1186), .A1(HWDATA[9]), .S(n581), .Z(n1339) );
  CMX2XL U1307 ( .A0(\lcd_timh[HSW][1] ), .A1(HWDATA[9]), .S(n582), .Z(n1979)
         );
  CMX2XL U1308 ( .A0(\lcd_timv[LPP][0] ), .A1(HWDATA[0]), .S(n580), .Z(n1897)
         );
  CMX2XL U1309 ( .A0(n1016), .A1(HWDATA[30]), .S(n585), .Z(n1509) );
  CMX2XL U1310 ( .A0(n1172), .A1(HWDATA[16]), .S(n581), .Z(n1353) );
  CMX2XL U1311 ( .A0(n824), .A1(HWDATA[9]), .S(n579), .Z(n1787) );
  CMX2XL U1312 ( .A0(n822), .A1(HWDATA[10]), .S(n579), .Z(n1789) );
  CMX2XL U1313 ( .A0(n1106), .A1(HWDATA[17]), .S(n584), .Z(n1419) );
  CMX2XL U1314 ( .A0(n820), .A1(HWDATA[11]), .S(n579), .Z(n1791) );
  CMX2XL U1315 ( .A0(n818), .A1(HWDATA[12]), .S(n579), .Z(n1793) );
  CMX2XL U1316 ( .A0(n1108), .A1(HWDATA[16]), .S(n584), .Z(n1417) );
  CMX2XL U1317 ( .A0(n816), .A1(HWDATA[13]), .S(n579), .Z(n1795) );
  CMX2XL U1318 ( .A0(n814), .A1(HWDATA[14]), .S(n579), .Z(n1797) );
  CMX2XL U1319 ( .A0(n812), .A1(HWDATA[15]), .S(n579), .Z(n1799) );
  CMX2XL U1320 ( .A0(n810), .A1(HWDATA[17]), .S(n579), .Z(n1803) );
  CMX2XL U1321 ( .A0(n1110), .A1(HWDATA[15]), .S(n584), .Z(n1415) );
  CMX2XL U1322 ( .A0(n808), .A1(HWDATA[18]), .S(n579), .Z(n1805) );
  CMX2XL U1323 ( .A0(n806), .A1(HWDATA[19]), .S(n579), .Z(n1807) );
  CMX2XL U1324 ( .A0(n1112), .A1(HWDATA[14]), .S(n584), .Z(n1413) );
  CMX2XL U1325 ( .A0(n804), .A1(HWDATA[20]), .S(n579), .Z(n1809) );
  CMX2XL U1326 ( .A0(n826), .A1(HWDATA[8]), .S(n579), .Z(n1785) );
  CMX2XL U1327 ( .A0(n802), .A1(HWDATA[21]), .S(n579), .Z(n1811) );
  CMX2XL U1328 ( .A0(n1174), .A1(HWDATA[15]), .S(n581), .Z(n1351) );
  CMX2XL U1329 ( .A0(n800), .A1(HWDATA[22]), .S(n579), .Z(n1813) );
  CMX2XL U1330 ( .A0(n798), .A1(HWDATA[23]), .S(n579), .Z(n1815) );
  CMX2XL U1331 ( .A0(n1114), .A1(HWDATA[13]), .S(n584), .Z(n1411) );
  CMX2XL U1332 ( .A0(n796), .A1(HWDATA[24]), .S(n579), .Z(n1817) );
  CMX2XL U1333 ( .A0(n794), .A1(HWDATA[25]), .S(n579), .Z(n1819) );
  CMX2XL U1334 ( .A0(n1116), .A1(HWDATA[12]), .S(n584), .Z(n1409) );
  CMX2XL U1335 ( .A0(n792), .A1(HWDATA[26]), .S(n579), .Z(n1821) );
  CMX2XL U1336 ( .A0(n790), .A1(HWDATA[27]), .S(n579), .Z(n1823) );
  CMX2XL U1337 ( .A0(n828), .A1(HWDATA[7]), .S(n579), .Z(n1783) );
  CMX2XL U1338 ( .A0(n788), .A1(HWDATA[28]), .S(n579), .Z(n1825) );
  CMX2XL U1339 ( .A0(n1104), .A1(HWDATA[18]), .S(n584), .Z(n1421) );
  CMX2XL U1340 ( .A0(n786), .A1(HWDATA[29]), .S(n579), .Z(n1827) );
  CMX2XL U1341 ( .A0(\lcd_timv[VFP][7] ), .A1(HWDATA[23]), .S(n580), .Z(n1943)
         );
  CMX2XL U1342 ( .A0(n1118), .A1(HWDATA[11]), .S(n584), .Z(n1407) );
  CMX2XL U1343 ( .A0(n1170), .A1(HWDATA[17]), .S(n581), .Z(n1355) );
  CMX2XL U1344 ( .A0(n784), .A1(HWDATA[30]), .S(n579), .Z(n1829) );
  CMX2XL U1345 ( .A0(n1102), .A1(HWDATA[19]), .S(n584), .Z(n1423) );
  CMX2XL U1346 ( .A0(n780), .A1(HWDATA[0]), .S(n583), .Z(n1833) );
  CMX2XL U1347 ( .A0(n1120), .A1(HWDATA[10]), .S(n584), .Z(n1405) );
  CMX2XL U1348 ( .A0(n778), .A1(HWDATA[1]), .S(n583), .Z(n1835) );
  CMX2XL U1349 ( .A0(n776), .A1(HWDATA[2]), .S(n583), .Z(n1837) );
  CMX2XL U1350 ( .A0(n1176), .A1(HWDATA[14]), .S(n581), .Z(n1349) );
  CMX2XL U1351 ( .A0(n774), .A1(HWDATA[3]), .S(n583), .Z(n1839) );
  CMX2XL U1352 ( .A0(n772), .A1(HWDATA[4]), .S(n583), .Z(n1841) );
  CMX2XL U1353 ( .A0(n1122), .A1(HWDATA[9]), .S(n584), .Z(n1403) );
  CMX2XL U1354 ( .A0(n770), .A1(HWDATA[5]), .S(n583), .Z(n1843) );
  CMX2XL U1355 ( .A0(n768), .A1(HWDATA[6]), .S(n583), .Z(n1845) );
  CMX2XL U1356 ( .A0(n1124), .A1(HWDATA[8]), .S(n584), .Z(n1401) );
  CMX2XL U1357 ( .A0(n766), .A1(HWDATA[7]), .S(n583), .Z(n1847) );
  CMX2XL U1358 ( .A0(n764), .A1(HWDATA[8]), .S(n583), .Z(n1849) );
  CMX2XL U1359 ( .A0(\lcd_timv[VFP][2] ), .A1(HWDATA[18]), .S(n580), .Z(n1933)
         );
  CMX2XL U1360 ( .A0(n762), .A1(HWDATA[9]), .S(n583), .Z(n1851) );
  CMX2XL U1361 ( .A0(n760), .A1(HWDATA[10]), .S(n583), .Z(n1853) );
  CMX2XL U1362 ( .A0(n1126), .A1(HWDATA[7]), .S(n584), .Z(n1399) );
  CMX2XL U1363 ( .A0(n1168), .A1(HWDATA[18]), .S(n581), .Z(n1357) );
  CMX2XL U1364 ( .A0(n758), .A1(HWDATA[11]), .S(n583), .Z(n1855) );
  CMX2XL U1365 ( .A0(n1100), .A1(HWDATA[20]), .S(n584), .Z(n1425) );
  CMX2XL U1366 ( .A0(n1098), .A1(HWDATA[21]), .S(n584), .Z(n1427) );
  CMX2XL U1367 ( .A0(n1128), .A1(HWDATA[6]), .S(n584), .Z(n1397) );
  CMX2XL U1368 ( .A0(n1096), .A1(HWDATA[22]), .S(n584), .Z(n1429) );
  CMX2XL U1369 ( .A0(n754), .A1(HWDATA[13]), .S(n583), .Z(n1859) );
  CMX2XL U1370 ( .A0(n1094), .A1(HWDATA[23]), .S(n584), .Z(n1431) );
  CMX2XL U1371 ( .A0(n1178), .A1(HWDATA[13]), .S(n581), .Z(n1347) );
  CMX2XL U1372 ( .A0(n1166), .A1(HWDATA[19]), .S(n581), .Z(n1359) );
  CMX2XL U1373 ( .A0(n750), .A1(HWDATA[15]), .S(n583), .Z(n1863) );
  CMX2XL U1374 ( .A0(n1092), .A1(HWDATA[24]), .S(n584), .Z(n1433) );
  CMX2XL U1375 ( .A0(n748), .A1(HWDATA[16]), .S(n583), .Z(n1865) );
  CMX2XL U1376 ( .A0(n1090), .A1(HWDATA[25]), .S(n584), .Z(n1435) );
  CMX2XL U1377 ( .A0(n1130), .A1(HWDATA[5]), .S(n584), .Z(n1395) );
  CMX2XL U1378 ( .A0(\lcd_timv[VBP][2] ), .A1(HWDATA[26]), .S(n580), .Z(n1949)
         );
  CMX2XL U1379 ( .A0(n746), .A1(HWDATA[17]), .S(n583), .Z(n1867) );
  CMX2XL U1380 ( .A0(n1088), .A1(HWDATA[26]), .S(n584), .Z(n1437) );
  CMX2XL U1381 ( .A0(n744), .A1(HWDATA[18]), .S(n583), .Z(n1869) );
  CMX2XL U1382 ( .A0(n1086), .A1(HWDATA[27]), .S(n584), .Z(n1439) );
  CMX2XL U1383 ( .A0(n1132), .A1(HWDATA[4]), .S(n584), .Z(n1393) );
  CMX2XL U1384 ( .A0(n742), .A1(HWDATA[19]), .S(n583), .Z(n1871) );
  CMX2XL U1385 ( .A0(n1164), .A1(HWDATA[20]), .S(n581), .Z(n1361) );
  CMX2XL U1386 ( .A0(n756), .A1(HWDATA[12]), .S(n583), .Z(n1857) );
  CMX2XL U1387 ( .A0(n740), .A1(HWDATA[20]), .S(n583), .Z(n1873) );
  CMX2XL U1388 ( .A0(\lcd_timh[PPL][1] ), .A1(HWDATA[3]), .S(n582), .Z(n1967)
         );
  CMX2XL U1389 ( .A0(n1084), .A1(HWDATA[28]), .S(n584), .Z(n1441) );
  CMX2XL U1390 ( .A0(n738), .A1(HWDATA[21]), .S(n583), .Z(n1875) );
  CMX2XL U1391 ( .A0(n1082), .A1(HWDATA[29]), .S(n584), .Z(n1443) );
  CMX2XL U1392 ( .A0(n736), .A1(HWDATA[22]), .S(n583), .Z(n1877) );
  CMX2XL U1393 ( .A0(n1080), .A1(HWDATA[30]), .S(n584), .Z(n1445) );
  CMX2XL U1394 ( .A0(n1134), .A1(HWDATA[3]), .S(n584), .Z(n1391) );
  CMX2XL U1395 ( .A0(n1076), .A1(HWDATA[0]), .S(n585), .Z(n1449) );
  CMX2XL U1396 ( .A0(n1162), .A1(HWDATA[21]), .S(n581), .Z(n1363) );
  CMX2XL U1397 ( .A0(n1074), .A1(HWDATA[1]), .S(n585), .Z(n1451) );
  CMX2XL U1398 ( .A0(n734), .A1(HWDATA[23]), .S(n583), .Z(n1879) );
  CMX2XL U1399 ( .A0(n1072), .A1(HWDATA[2]), .S(n585), .Z(n1453) );
  CMX2XL U1400 ( .A0(n1160), .A1(HWDATA[22]), .S(n581), .Z(n1365) );
  CMX2XL U1401 ( .A0(\lcd_timh[HBP][2] ), .A1(HWDATA[26]), .S(n582), .Z(n2013)
         );
  CMX2XL U1402 ( .A0(n1158), .A1(HWDATA[23]), .S(n581), .Z(n1367) );
  CMX2XL U1403 ( .A0(n1070), .A1(HWDATA[3]), .S(n585), .Z(n1455) );
  CMX2XL U1404 ( .A0(n732), .A1(HWDATA[24]), .S(n583), .Z(n1881) );
  CMX2XL U1405 ( .A0(n1068), .A1(HWDATA[4]), .S(n585), .Z(n1457) );
  CMX2XL U1406 ( .A0(n1156), .A1(HWDATA[24]), .S(n581), .Z(n1369) );
  CMX2XL U1407 ( .A0(n1040), .A1(HWDATA[18]), .S(n585), .Z(n1485) );
  CMX2XL U1408 ( .A0(n1154), .A1(HWDATA[25]), .S(n581), .Z(n1371) );
  CMX2XL U1409 ( .A0(n1136), .A1(HWDATA[2]), .S(n584), .Z(n1389) );
  CMX2XL U1410 ( .A0(\lcd_timh[PPL][3] ), .A1(HWDATA[5]), .S(n582), .Z(n1971)
         );
  CMX2XL U1411 ( .A0(n1066), .A1(HWDATA[5]), .S(n585), .Z(n1459) );
  CMX2XL U1412 ( .A0(n1152), .A1(HWDATA[26]), .S(n581), .Z(n1373) );
  CMX2XL U1413 ( .A0(n1064), .A1(HWDATA[6]), .S(n585), .Z(n1461) );
  CMX2XL U1414 ( .A0(\lcd_timh[HBP][4] ), .A1(HWDATA[28]), .S(n582), .Z(n2017)
         );
  CMX2XL U1415 ( .A0(n730), .A1(HWDATA[25]), .S(n583), .Z(n1883) );
  CMX2XL U1416 ( .A0(n1150), .A1(HWDATA[27]), .S(n581), .Z(n1375) );
  CMX2XL U1417 ( .A0(\lcd_timh[PPL][2] ), .A1(HWDATA[4]), .S(n582), .Z(n1969)
         );
  CMX2XL U1418 ( .A0(n1062), .A1(HWDATA[7]), .S(n585), .Z(n1463) );
  CMX2XL U1419 ( .A0(n1148), .A1(HWDATA[28]), .S(n581), .Z(n1377) );
  CMX2XL U1420 ( .A0(n728), .A1(HWDATA[26]), .S(n583), .Z(n1885) );
  CMX2XL U1421 ( .A0(n1060), .A1(HWDATA[8]), .S(n585), .Z(n1465) );
  CMX2XL U1422 ( .A0(n1146), .A1(HWDATA[29]), .S(n581), .Z(n1379) );
  CMX2XL U1423 ( .A0(n1180), .A1(HWDATA[12]), .S(n581), .Z(n1345) );
  CMX2XL U1424 ( .A0(n1026), .A1(HWDATA[25]), .S(n585), .Z(n1499) );
  CMX2XL U1425 ( .A0(n1058), .A1(HWDATA[9]), .S(n585), .Z(n1467) );
  CMX2XL U1426 ( .A0(n726), .A1(HWDATA[27]), .S(n583), .Z(n1887) );
  CMX2XL U1427 ( .A0(n1144), .A1(HWDATA[30]), .S(n581), .Z(n1381) );
  CMX2XL U1428 ( .A0(n1056), .A1(HWDATA[10]), .S(n585), .Z(n1469) );
  CMX2XL U1429 ( .A0(n724), .A1(HWDATA[28]), .S(n583), .Z(n1889) );
  CMX2XL U1430 ( .A0(n1018), .A1(HWDATA[29]), .S(n585), .Z(n1507) );
  CMX2XL U1431 ( .A0(n1044), .A1(HWDATA[16]), .S(n585), .Z(n1481) );
  CMX2XL U1432 ( .A0(n1138), .A1(HWDATA[1]), .S(n584), .Z(n1387) );
  CMX2XL U1433 ( .A0(n1048), .A1(HWDATA[14]), .S(n585), .Z(n1477) );
  CMX2XL U1434 ( .A0(n722), .A1(HWDATA[29]), .S(n583), .Z(n1891) );
  CMX2XL U1435 ( .A0(n720), .A1(HWDATA[30]), .S(n583), .Z(n1893) );
  CMX2XL U1436 ( .A0(n1140), .A1(HWDATA[0]), .S(n584), .Z(n1385) );
  CMX2XL U1437 ( .A0(\lcd_timv[VSW][5] ), .A1(HWDATA[15]), .S(n580), .Z(n1927)
         );
  CMX2XL U1438 ( .A0(n1032), .A1(HWDATA[22]), .S(n585), .Z(n1493) );
  CMX2XL U1439 ( .A0(n1030), .A1(HWDATA[23]), .S(n585), .Z(n1495) );
  CMX2XL U1440 ( .A0(n1054), .A1(HWDATA[11]), .S(n585), .Z(n1471) );
  CMX2XL U1441 ( .A0(n1042), .A1(HWDATA[17]), .S(n585), .Z(n1483) );
  CMX2XL U1442 ( .A0(n1052), .A1(HWDATA[12]), .S(n585), .Z(n1473) );
  CMX2XL U1443 ( .A0(n1028), .A1(HWDATA[24]), .S(n585), .Z(n1497) );
  CMX2XL U1444 ( .A0(n1182), .A1(HWDATA[11]), .S(n581), .Z(n1343) );
  CMX2XL U1445 ( .A0(\lcd_timh[PPL][0] ), .A1(HWDATA[2]), .S(n582), .Z(n1965)
         );
  CMX2XL U1446 ( .A0(n752), .A1(HWDATA[14]), .S(n583), .Z(n1861) );
  CMX2XL U1447 ( .A0(n1050), .A1(HWDATA[13]), .S(n585), .Z(n1475) );
  CMX2XL U1448 ( .A0(n1038), .A1(HWDATA[19]), .S(n585), .Z(n1487) );
  CMX2XL U1449 ( .A0(n1046), .A1(HWDATA[15]), .S(n585), .Z(n1479) );
  CMX2XL U1450 ( .A0(n1036), .A1(HWDATA[20]), .S(n585), .Z(n1489) );
  CMX2XL U1451 ( .A0(n1034), .A1(HWDATA[21]), .S(n585), .Z(n1491) );
  CMX2XL U1452 ( .A0(n1078), .A1(HWDATA[31]), .S(n584), .Z(n1447) );
  CMX2XL U1453 ( .A0(n1022), .A1(HWDATA[27]), .S(n585), .Z(n1503) );
  CMX2XL U1454 ( .A0(n1024), .A1(HWDATA[26]), .S(n585), .Z(n1501) );
  CMX2XL U1455 ( .A0(n1020), .A1(HWDATA[28]), .S(n585), .Z(n1505) );
  COR2X1 U1456 ( .A(n587), .B(n586), .Z(n588) );
  CMX2XL U1457 ( .A0(n1206), .A1(HWDATA[31]), .S(n589), .Z(n1319) );
  CMX2XL U1458 ( .A0(n1218), .A1(HWDATA[25]), .S(n589), .Z(n1307) );
  CMX2XL U1459 ( .A0(n1238), .A1(HWDATA[15]), .S(n589), .Z(n1287) );
  CMX2XL U1460 ( .A0(n1222), .A1(HWDATA[23]), .S(n589), .Z(n1303) );
  CMX2XL U1461 ( .A0(n1264), .A1(HWDATA[2]), .S(n589), .Z(n1261) );
  CMX2XL U1462 ( .A0(n1220), .A1(HWDATA[24]), .S(n589), .Z(n1305) );
  CMX2XL U1463 ( .A0(n1228), .A1(HWDATA[20]), .S(n589), .Z(n1297) );
  CMX2XL U1464 ( .A0(n1262), .A1(HWDATA[3]), .S(n589), .Z(n1263) );
  CMX2XL U1465 ( .A0(n1260), .A1(HWDATA[4]), .S(n589), .Z(n1265) );
  CMX2XL U1466 ( .A0(n1212), .A1(HWDATA[28]), .S(n589), .Z(n1313) );
  CMX2XL U1467 ( .A0(n1258), .A1(HWDATA[5]), .S(n589), .Z(n1267) );
  CMX2XL U1468 ( .A0(n1246), .A1(HWDATA[11]), .S(n589), .Z(n1279) );
  CMX2XL U1469 ( .A0(n1256), .A1(HWDATA[6]), .S(n589), .Z(n1269) );
  CMX2XL U1470 ( .A0(n1244), .A1(HWDATA[12]), .S(n589), .Z(n1281) );
  CMX2XL U1471 ( .A0(n1230), .A1(HWDATA[19]), .S(n589), .Z(n1295) );
  CMX2XL U1472 ( .A0(n1254), .A1(HWDATA[7]), .S(n589), .Z(n1271) );
  CMX2XL U1473 ( .A0(n1214), .A1(HWDATA[27]), .S(n589), .Z(n1311) );
  CMX2XL U1474 ( .A0(n1232), .A1(HWDATA[18]), .S(n589), .Z(n1293) );
  CMX2XL U1475 ( .A0(n1216), .A1(HWDATA[26]), .S(n589), .Z(n1309) );
  CMX2XL U1476 ( .A0(n1224), .A1(HWDATA[22]), .S(n589), .Z(n1301) );
  CMX2XL U1477 ( .A0(n1266), .A1(HWDATA[1]), .S(n589), .Z(n1259) );
  CMX2XL U1478 ( .A0(n1250), .A1(HWDATA[9]), .S(n589), .Z(n1275) );
  CMX2XL U1479 ( .A0(n1210), .A1(HWDATA[29]), .S(n589), .Z(n1315) );
  CMX2XL U1480 ( .A0(n1248), .A1(HWDATA[10]), .S(n589), .Z(n1277) );
  CMX2XL U1481 ( .A0(n1234), .A1(HWDATA[17]), .S(n589), .Z(n1291) );
  CMX2XL U1482 ( .A0(n1208), .A1(HWDATA[30]), .S(n589), .Z(n1317) );
  CMX2XL U1483 ( .A0(n1242), .A1(HWDATA[13]), .S(n589), .Z(n1283) );
  CMX2XL U1484 ( .A0(n1268), .A1(HWDATA[0]), .S(n589), .Z(n1257) );
  CMX2XL U1485 ( .A0(n1236), .A1(HWDATA[16]), .S(n589), .Z(n1289) );
  CMX2XL U1486 ( .A0(n1226), .A1(HWDATA[21]), .S(n589), .Z(n1299) );
  CMX2XL U1487 ( .A0(n1252), .A1(HWDATA[8]), .S(n589), .Z(n1273) );
  CMX2XL U1488 ( .A0(n1240), .A1(HWDATA[14]), .S(n589), .Z(n1285) );
  CANR2XL U1489 ( .A(n1462), .B(n591), .C(n1782), .D(n590), .Z(n628) );
  CANR2XL U1490 ( .A(n1334), .B(n593), .C(n1398), .D(n592), .Z(n626) );
  CANR2XL U1491 ( .A(n1846), .B(n595), .C(n1910), .D(n594), .Z(n622) );
  CANR2XL U1492 ( .A(n1526), .B(n597), .C(n1718), .D(n596), .Z(n620) );
  CANR2X1 U1493 ( .A(n950), .B(n598), .C(n660), .D(n531), .Z(n606) );
  CANR2X1 U1494 ( .A(n1014), .B(n599), .C(n1078), .D(n29), .Z(n605) );
  CANR2X1 U1495 ( .A(n1142), .B(n600), .C(n1206), .D(n530), .Z(n604) );
  CANR2X1 U1496 ( .A(n1270), .B(n602), .C(\lcd_timh[HBP][7] ), .D(n601), .Z(
        n603) );
  CAN4X1 U1497 ( .A(n606), .B(n605), .C(n604), .D(n603), .Z(n618) );
  CANR2X1 U1498 ( .A(n718), .B(n474), .C(n1590), .D(n146), .Z(n615) );
  CANR2X1 U1499 ( .A(n782), .B(n607), .C(n1654), .D(n524), .Z(n614) );
  CANR2X1 U1500 ( .A(n900), .B(n609), .C(\lcd_timv[VBP][7] ), .D(n608), .Z(
        n613) );
  CANR2X1 U1501 ( .A(\lcd_upbase[LCDUPBASE][28] ), .B(n611), .C(n836), .D(n610), .Z(n612) );
  CAN4X1 U1502 ( .A(n615), .B(n614), .C(n613), .D(n612), .Z(n616) );
  CAN4X1 U1503 ( .A(n622), .B(n620), .C(n618), .D(n616), .Z(n624) );
  CND3XL U1504 ( .A(n628), .B(n626), .C(n624), .Z(HRDATA[31]) );
  CAN2X1 U1505 ( .A(HADDR[2]), .B(n630), .Z(addr_slave_rampal[0]) );
  CAN2X1 U1506 ( .A(n630), .B(HADDR[3]), .Z(addr_slave_rampal[1]) );
  CAN2X1 U1507 ( .A(n630), .B(HADDR[4]), .Z(addr_slave_rampal[2]) );
  CAN2X1 U1508 ( .A(n630), .B(HADDR[5]), .Z(addr_slave_rampal[3]) );
  CAN2X1 U1509 ( .A(n630), .B(HADDR[6]), .Z(addr_slave_rampal[4]) );
  CAN2X1 U1510 ( .A(n630), .B(HADDR[7]), .Z(addr_slave_rampal[5]) );
  CAN2X1 U1511 ( .A(n630), .B(HADDR[8]), .Z(addr_slave_rampal[6]) );
  COND1XL U1512 ( .A(n636), .B(n634), .C(n632), .Z(HREADY) );
endmodule


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
  wire   n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266;
  wire   [3:0] vstate;
  wire   [11:0] counter_clicks;
  wire   [2:0] vnxtstate;
  wire   [11:0] counter_clicks_nxt;
  wire   [11:0] line_count;
  wire   [3:0] linestate;
  wire   [11:0] line_count_nxt;
  wire   [3:0] nxtlinestate;
  wire   [31:0] lcdle_cur_state;
  wire   [31:0] lcdle_nxt_state;
  wire   [6:0] lcdle_delay_count;
  wire   [2:0] lcdle_hold_count;
  tri   LCDPWR;
  tri   pixel_clk;
  tri   LCDFP;
  tri   LCDLE;
  tri   LCDLP;
  tri   Lcdena_lcdm;
  assign LCDDCLK = pixel_clk;
  assign fp_pulse = LCDFP;
  assign LCDENA_LCDM = Lcdena_lcdm;

  CFD4QXL \line_count_reg[0]  ( .D(line_count_nxt[0]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[0]) );
  CFD4QXL \line_count_reg[1]  ( .D(line_count_nxt[1]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[1]) );
  CFD4QXL \line_count_reg[2]  ( .D(line_count_nxt[2]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[2]) );
  CFD4QXL \line_count_reg[3]  ( .D(line_count_nxt[3]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[3]) );
  CFD4QXL \line_count_reg[4]  ( .D(line_count_nxt[4]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[4]) );
  CFD4QXL \line_count_reg[5]  ( .D(line_count_nxt[5]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[5]) );
  CFD4QXL \line_count_reg[6]  ( .D(line_count_nxt[6]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[6]) );
  CFD4QXL \line_count_reg[7]  ( .D(line_count_nxt[7]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[7]) );
  CFD4QXL \line_count_reg[8]  ( .D(line_count_nxt[8]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[8]) );
  CFD4QXL \line_count_reg[9]  ( .D(line_count_nxt[9]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[9]) );
  CFD4QXL \line_count_reg[10]  ( .D(line_count_nxt[10]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[10]) );
  CFD4QXL \line_count_reg[11]  ( .D(line_count_nxt[11]), .CP(pixel_clk), .SD(
        n266), .Q(line_count[11]) );
  CFD4QXL \counter_clicks_reg[11]  ( .D(counter_clicks_nxt[11]), .CP(n265), 
        .SD(n266), .Q(counter_clicks[11]) );
  CFD4QXL \counter_clicks_reg[0]  ( .D(counter_clicks_nxt[0]), .CP(n265), .SD(
        n266), .Q(counter_clicks[0]) );
  CFD4QXL \counter_clicks_reg[1]  ( .D(counter_clicks_nxt[1]), .CP(n265), .SD(
        n266), .Q(counter_clicks[1]) );
  CFD4QXL \counter_clicks_reg[2]  ( .D(counter_clicks_nxt[2]), .CP(n265), .SD(
        n266), .Q(counter_clicks[2]) );
  CFD4QXL \counter_clicks_reg[3]  ( .D(counter_clicks_nxt[3]), .CP(n265), .SD(
        n266), .Q(counter_clicks[3]) );
  CFD4QXL \counter_clicks_reg[4]  ( .D(counter_clicks_nxt[4]), .CP(n265), .SD(
        n266), .Q(counter_clicks[4]) );
  CFD4QXL \counter_clicks_reg[5]  ( .D(counter_clicks_nxt[5]), .CP(n265), .SD(
        n266), .Q(counter_clicks[5]) );
  CFD4QXL \counter_clicks_reg[6]  ( .D(counter_clicks_nxt[6]), .CP(n265), .SD(
        n266), .Q(counter_clicks[6]) );
  CFD4QXL \counter_clicks_reg[7]  ( .D(counter_clicks_nxt[7]), .CP(n265), .SD(
        n266), .Q(counter_clicks[7]) );
  CFD4QXL \counter_clicks_reg[8]  ( .D(counter_clicks_nxt[8]), .CP(n265), .SD(
        n266), .Q(counter_clicks[8]) );
  CFD4QXL \counter_clicks_reg[9]  ( .D(counter_clicks_nxt[9]), .CP(n265), .SD(
        n266), .Q(counter_clicks[9]) );
  CFD4QXL \counter_clicks_reg[10]  ( .D(counter_clicks_nxt[10]), .CP(n265), 
        .SD(n266), .Q(counter_clicks[10]) );
  CFD4QXL \lcdle_hold_count_reg[0]  ( .D(n164), .CP(cclk), .SD(n266), .Q(
        lcdle_hold_count[0]) );
  CFD4QXL \lcdle_hold_count_reg[1]  ( .D(n163), .CP(cclk), .SD(n266), .Q(
        lcdle_hold_count[1]) );
  CFD2QXL \vstate_reg[2]  ( .D(n264), .CP(n265), .CD(n266), .Q(vstate[2]) );
  CFD2QXL \vstate_reg[0]  ( .D(vnxtstate[0]), .CP(n265), .CD(n266), .Q(
        vstate[0]) );
  CFD2QXL \linestate_reg[1]  ( .D(nxtlinestate[1]), .CP(pixel_clk), .CD(n266), 
        .Q(linestate[1]) );
  CFD2QXL \linestate_reg[0]  ( .D(nxtlinestate[0]), .CP(pixel_clk), .CD(n266), 
        .Q(linestate[0]) );
  CFD2QXL \vstate_reg[1]  ( .D(vnxtstate[1]), .CP(n265), .CD(n266), .Q(
        vstate[1]) );
  CFD2QXL \linestate_reg[2]  ( .D(nxtlinestate[2]), .CP(pixel_clk), .CD(n266), 
        .Q(linestate[2]) );
  CFD2QXL \lcdle_hold_count_reg[2]  ( .D(n162), .CP(cclk), .CD(n266), .Q(
        lcdle_hold_count[2]) );
  CFD2QXL \lcdle_cur_state_reg[0]  ( .D(lcdle_nxt_state[0]), .CP(cclk), .CD(
        n266), .Q(lcdle_cur_state[0]) );
  CFD3QXL \lcdle_delay_count_reg[6]  ( .D(n165), .CP(cclk), .CD(n185), .SD(
        n184), .Q(lcdle_delay_count[6]) );
  CFD3QXL \lcdle_delay_count_reg[4]  ( .D(n167), .CP(cclk), .CD(n181), .SD(
        n180), .Q(lcdle_delay_count[4]) );
  CFD2QXL \lcdle_cur_state_reg[1]  ( .D(lcdle_nxt_state[1]), .CP(cclk), .CD(
        n266), .Q(lcdle_cur_state[1]) );
  CFD3QXL \lcdle_delay_count_reg[5]  ( .D(n166), .CP(cclk), .CD(n183), .SD(
        n182), .Q(lcdle_delay_count[5]) );
  CFD3QXL \lcdle_delay_count_reg[3]  ( .D(n168), .CP(cclk), .CD(n179), .SD(
        n178), .Q(lcdle_delay_count[3]) );
  CFD3QXL \lcdle_delay_count_reg[2]  ( .D(n169), .CP(cclk), .CD(n177), .SD(
        n176), .Q(lcdle_delay_count[2]) );
  CFD3QXL \lcdle_delay_count_reg[0]  ( .D(n171), .CP(cclk), .CD(n173), .SD(
        n172), .Q(lcdle_delay_count[0]) );
  CFD3QXL \lcdle_delay_count_reg[1]  ( .D(n170), .CP(cclk), .CD(n175), .SD(
        n174), .Q(lcdle_delay_count[1]) );
  CENX1 U3 ( .A(line_count[2]), .B(\lcd_timh[HBP][2] ), .Z(n1) );
  CENX1 U4 ( .A(line_count[4]), .B(\lcd_timh[HBP][4] ), .Z(n2) );
  CENX1 U5 ( .A(line_count[6]), .B(\lcd_timh[HBP][6] ), .Z(n3) );
  CEOX1 U6 ( .A(n186), .B(\lcd_timh[HBP][5] ), .Z(n4) );
  CEOX1 U7 ( .A(n196), .B(\lcd_timh[HBP][0] ), .Z(n5) );
  CEOX1 U8 ( .A(n197), .B(\lcd_timh[HBP][1] ), .Z(n6) );
  CEOX1 U9 ( .A(n188), .B(\lcd_timh[HBP][3] ), .Z(n7) );
  CAN8X1 U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .E(n5), .F(n6), .G(n7), .H(n140), .Z(n8) );
  COND1XL U11 ( .A(n202), .B(\lcd_timh[HBP][7] ), .C(n8), .Z(n9) );
  CANR1XL U12 ( .A(n202), .B(\lcd_timh[HBP][7] ), .C(n9), .Z(n234) );
  CENX1 U13 ( .A(counter_clicks[2]), .B(\lcd_timv[VFP][2] ), .Z(n10) );
  CENX1 U14 ( .A(counter_clicks[4]), .B(\lcd_timv[VFP][4] ), .Z(n11) );
  CENX1 U15 ( .A(counter_clicks[6]), .B(\lcd_timv[VFP][6] ), .Z(n12) );
  CEOX1 U16 ( .A(n157), .B(\lcd_timv[VFP][5] ), .Z(n13) );
  CEOX1 U17 ( .A(n212), .B(\lcd_timv[VFP][0] ), .Z(n14) );
  CEOX1 U18 ( .A(n211), .B(\lcd_timv[VFP][1] ), .Z(n15) );
  CEOX1 U19 ( .A(n216), .B(\lcd_timv[VFP][3] ), .Z(n16) );
  CAN8X1 U20 ( .A(n10), .B(n11), .C(n12), .D(n13), .E(n14), .F(n15), .G(n16), 
        .H(n128), .Z(n17) );
  COND1XL U21 ( .A(n192), .B(\lcd_timv[VFP][7] ), .C(n17), .Z(n18) );
  CANR1XL U22 ( .A(n192), .B(\lcd_timv[VFP][7] ), .C(n18), .Z(n132) );
  CENX1 U23 ( .A(line_count[2]), .B(\lcd_timh[HFP][2] ), .Z(n19) );
  CENX1 U24 ( .A(line_count[6]), .B(\lcd_timh[HFP][6] ), .Z(n20) );
  CENX1 U25 ( .A(\lcd_timh[HFP][4] ), .B(line_count[4]), .Z(n21) );
  CEOX1 U26 ( .A(n202), .B(\lcd_timh[HFP][7] ), .Z(n22) );
  CEOX1 U27 ( .A(n197), .B(\lcd_timh[HFP][1] ), .Z(n23) );
  CEOX1 U28 ( .A(n196), .B(\lcd_timh[HFP][0] ), .Z(n24) );
  CEOX1 U29 ( .A(n188), .B(\lcd_timh[HFP][3] ), .Z(n25) );
  CAN8X1 U30 ( .A(n19), .B(n20), .C(n21), .D(n22), .E(n23), .F(n24), .G(n140), 
        .H(n25), .Z(n26) );
  COND1XL U31 ( .A(n186), .B(\lcd_timh[HFP][5] ), .C(n26), .Z(n27) );
  CANR1XL U32 ( .A(n186), .B(\lcd_timh[HFP][5] ), .C(n27), .Z(n237) );
  CENX1 U33 ( .A(counter_clicks[2]), .B(\lcd_timv[VBP][2] ), .Z(n28) );
  CENX1 U34 ( .A(counter_clicks[4]), .B(\lcd_timv[VBP][4] ), .Z(n29) );
  CENX1 U35 ( .A(counter_clicks[6]), .B(\lcd_timv[VBP][6] ), .Z(n30) );
  CEOX1 U36 ( .A(n157), .B(\lcd_timv[VBP][5] ), .Z(n31) );
  CEOX1 U37 ( .A(n212), .B(\lcd_timv[VBP][0] ), .Z(n32) );
  CEOX1 U38 ( .A(n211), .B(\lcd_timv[VBP][1] ), .Z(n33) );
  CEOX1 U39 ( .A(n216), .B(\lcd_timv[VBP][3] ), .Z(n34) );
  CAN8X1 U40 ( .A(n28), .B(n29), .C(n30), .D(n31), .E(n32), .F(n33), .G(n34), 
        .H(n128), .Z(n35) );
  COND1XL U41 ( .A(n192), .B(\lcd_timv[VBP][7] ), .C(n35), .Z(n36) );
  CANR1XL U42 ( .A(n192), .B(\lcd_timv[VBP][7] ), .C(n36), .Z(n247) );
  CIVX1 U43 ( .A(n235), .Z(n37) );
  CANR1XL U44 ( .A(n238), .B(n237), .C(n236), .Z(n38) );
  COND2X1 U45 ( .A(n239), .B(n37), .C(n244), .D(n38), .Z(n39) );
  CENX1 U46 ( .A(n243), .B(linestate[0]), .Z(n40) );
  CANR4CX1 U47 ( .A(linestate[0]), .B(n234), .C(n40), .D(n39), .Z(n41) );
  COND1XL U48 ( .A(linestate[2]), .B(n240), .C(n41), .Z(nxtlinestate[0]) );
  CENX1 U49 ( .A(line_count[4]), .B(\lcd_timh[HSW][4] ), .Z(n42) );
  CENX1 U50 ( .A(n202), .B(\lcd_timh[HSW][7] ), .Z(n43) );
  CENX1 U51 ( .A(n186), .B(\lcd_timh[HSW][5] ), .Z(n44) );
  CNR2X1 U52 ( .A(n43), .B(n44), .Z(n45) );
  CEOX1 U53 ( .A(n197), .B(\lcd_timh[HSW][1] ), .Z(n46) );
  CENX1 U54 ( .A(line_count[2]), .B(\lcd_timh[HSW][2] ), .Z(n47) );
  CENX1 U55 ( .A(line_count[6]), .B(\lcd_timh[HSW][6] ), .Z(n48) );
  CEOX1 U56 ( .A(n196), .B(\lcd_timh[HSW][0] ), .Z(n49) );
  CEOX1 U57 ( .A(n188), .B(\lcd_timh[HSW][3] ), .Z(n50) );
  CND8X1 U58 ( .A(n42), .B(n140), .C(n45), .D(n46), .E(n47), .F(n48), .G(n49), 
        .H(n50), .Z(n235) );
  CENX1 U59 ( .A(n157), .B(\lcd_timv[LPP][5] ), .Z(n51) );
  CENX1 U60 ( .A(n211), .B(\lcd_timv[LPP][1] ), .Z(n52) );
  CENX1 U61 ( .A(n216), .B(\lcd_timv[LPP][3] ), .Z(n53) );
  CENX1 U62 ( .A(n212), .B(\lcd_timv[LPP][0] ), .Z(n54) );
  CEOX1 U63 ( .A(counter_clicks[2]), .B(\lcd_timv[LPP][2] ), .Z(n55) );
  CEOX1 U64 ( .A(counter_clicks[8]), .B(\lcd_timv[LPP][8] ), .Z(n56) );
  COR8X1 U65 ( .A(n51), .B(n52), .C(n53), .D(n54), .E(counter_clicks[11]), .F(
        n55), .G(n56), .H(counter_clicks[10]), .Z(n57) );
  CEOX1 U66 ( .A(counter_clicks[9]), .B(\lcd_timv[LPP][9] ), .Z(n58) );
  CEOX1 U67 ( .A(counter_clicks[4]), .B(\lcd_timv[LPP][4] ), .Z(n59) );
  CNR3XL U68 ( .A(n59), .B(n57), .C(n58), .Z(n60) );
  CEOX1 U69 ( .A(n192), .B(\lcd_timv[LPP][7] ), .Z(n61) );
  CENX1 U70 ( .A(counter_clicks[6]), .B(\lcd_timv[LPP][6] ), .Z(n62) );
  CND3XL U71 ( .A(n61), .B(n60), .C(n62), .Z(n113) );
  COND1XL U72 ( .A(lcdle_hold_count[0]), .B(n244), .C(lcdle_hold_count[1]), 
        .Z(n63) );
  CND3XL U73 ( .A(n219), .B(n127), .C(n63), .Z(n163) );
  CENX1 U74 ( .A(line_count[7]), .B(n86), .Z(n64) );
  CENX1 U75 ( .A(line_count[8]), .B(n93), .Z(n65) );
  CENX1 U76 ( .A(\lcd_timh[PPL][0] ), .B(line_count[4]), .Z(n66) );
  CND8X1 U77 ( .A(n64), .B(n90), .C(line_count[3]), .D(line_count[1]), .E(n65), 
        .F(n66), .G(line_count[2]), .H(line_count[0]), .Z(n67) );
  CEOX1 U78 ( .A(\lcd_timh[PPL][0] ), .B(line_count[5]), .Z(n68) );
  CENX1 U79 ( .A(n83), .B(n68), .Z(n69) );
  CENX1 U80 ( .A(line_count[6]), .B(n82), .Z(n70) );
  CND3XL U81 ( .A(n79), .B(n69), .C(n70), .Z(n71) );
  CNR3XL U82 ( .A(line_count[11]), .B(n67), .C(n71), .Z(n137) );
  CIVXL U83 ( .A(linestate[2]), .Z(n224) );
  CND2X1 U84 ( .A(lcd_en), .B(n224), .Z(n243) );
  CND2X1 U85 ( .A(linestate[0]), .B(linestate[1]), .Z(n242) );
  CIVX2 U86 ( .A(n72), .Z(n78) );
  CHA1X1 U87 ( .A(\lcd_timh[PPL][5] ), .B(n73), .CO(n72), .S(n88) );
  CHA1X1 U88 ( .A(\lcd_timh[PPL][4] ), .B(n74), .CO(n73), .S(n92) );
  CHA1X1 U89 ( .A(\lcd_timh[PPL][3] ), .B(n75), .CO(n74), .S(n85) );
  CHA1X1 U90 ( .A(\lcd_timh[PPL][2] ), .B(n76), .CO(n75), .S(n81) );
  CHA1X1 U91 ( .A(\lcd_timh[PPL][1] ), .B(\lcd_timh[PPL][0] ), .CO(n76), .S(
        n83) );
  CNR2IX1 U92 ( .B(\lcd_timh[PPL][0] ), .A(n83), .Z(n80) );
  CND2IX1 U93 ( .B(n81), .A(n80), .Z(n84) );
  CNR2X1 U94 ( .A(n85), .B(n84), .Z(n91) );
  CND2IX1 U95 ( .B(n92), .A(n91), .Z(n87) );
  CNR2X1 U96 ( .A(n88), .B(n87), .Z(n77) );
  CANR5CXL U97 ( .A(n78), .B(line_count[10]), .C(n77), .Z(n79) );
  CEOX1 U98 ( .A(n81), .B(n80), .Z(n82) );
  CENX1 U99 ( .A(n85), .B(n84), .Z(n86) );
  CEOX1 U100 ( .A(n88), .B(n87), .Z(n89) );
  CEOX1 U101 ( .A(line_count[9]), .B(n89), .Z(n90) );
  CEOX1 U102 ( .A(n92), .B(n91), .Z(n93) );
  CIVX2 U103 ( .A(n137), .Z(n95) );
  CNR2XL U104 ( .A(linestate[0]), .B(linestate[1]), .Z(n238) );
  CND2X1 U105 ( .A(lcd_en), .B(n238), .Z(n240) );
  CNR4X1 U106 ( .A(line_count[11]), .B(line_count[8]), .C(line_count[9]), .D(
        line_count[10]), .Z(n140) );
  CIVXL U107 ( .A(line_count[0]), .Z(n196) );
  CIVX1 U108 ( .A(line_count[1]), .Z(n197) );
  CIVX1 U109 ( .A(line_count[7]), .Z(n202) );
  CIVX1 U110 ( .A(line_count[3]), .Z(n188) );
  CIVX2 U111 ( .A(line_count[5]), .Z(n186) );
  CNR2IX1 U112 ( .B(linestate[2]), .A(n237), .Z(n148) );
  CANR1XL U113 ( .A(linestate[2]), .B(n240), .C(n148), .Z(n94) );
  COND11X1 U114 ( .A(n243), .B(n242), .C(n95), .D(n94), .Z(nxtlinestate[2]) );
  CNR3XL U115 ( .A(lcdle_delay_count[0]), .B(lcdle_delay_count[2]), .C(
        lcdle_delay_count[1]), .Z(n109) );
  CNR2X1 U116 ( .A(lcdle_delay_count[4]), .B(lcdle_delay_count[3]), .Z(n96) );
  CND2X1 U117 ( .A(n109), .B(n96), .Z(n97) );
  CNR3XL U118 ( .A(lcdle_delay_count[5]), .B(lcdle_delay_count[6]), .C(n97), 
        .Z(n233) );
  CIVX2 U119 ( .A(lcdle_cur_state[0]), .Z(n102) );
  CNR2X1 U120 ( .A(lcdle_cur_state[1]), .B(n102), .Z(n228) );
  CND2XL U121 ( .A(lcd_en), .B(n228), .Z(n232) );
  CIVX2 U122 ( .A(n232), .Z(n110) );
  CIVX2 U123 ( .A(n228), .Z(n105) );
  CND2X1 U124 ( .A(n105), .B(lcd_en), .Z(n112) );
  CIVX2 U125 ( .A(n112), .Z(n260) );
  CANR2XL U126 ( .A(n233), .B(n110), .C(n260), .D(\lcd_le[LED][6] ), .Z(n99)
         );
  CIVX1 U127 ( .A(n97), .Z(n106) );
  COND1XL U128 ( .A(n106), .B(n105), .C(lcd_en), .Z(n261) );
  COND4CXL U129 ( .A(lcdle_delay_count[5]), .B(n228), .C(n261), .D(
        lcdle_delay_count[6]), .Z(n98) );
  CND2XL U130 ( .A(n99), .B(n98), .Z(n165) );
  CIVX1 U131 ( .A(lcdle_delay_count[0]), .Z(n101) );
  CND2X1 U132 ( .A(n260), .B(\lcd_le[LED][0] ), .Z(n100) );
  CND2X1 U133 ( .A(n110), .B(n101), .Z(n222) );
  COND3XL U134 ( .A(lcd_en), .B(n101), .C(n100), .D(n222), .Z(n171) );
  CIVX1 U135 ( .A(lcd_en), .Z(n244) );
  CND2X1 U136 ( .A(lcdle_cur_state[1]), .B(n102), .Z(n225) );
  CND2X1 U137 ( .A(lcd_en), .B(n225), .Z(n219) );
  CNR2X1 U138 ( .A(lcdle_hold_count[1]), .B(lcdle_hold_count[0]), .Z(n245) );
  CND2XL U139 ( .A(lcd_en), .B(n245), .Z(n127) );
  CNR4X1 U140 ( .A(counter_clicks[9]), .B(counter_clicks[11]), .C(
        counter_clicks[10]), .D(counter_clicks[8]), .Z(n128) );
  CIVX2 U141 ( .A(counter_clicks[3]), .Z(n216) );
  CIVX2 U142 ( .A(counter_clicks[1]), .Z(n211) );
  CIVXL U143 ( .A(counter_clicks[0]), .Z(n212) );
  CIVX2 U144 ( .A(counter_clicks[5]), .Z(n157) );
  CIVX2 U145 ( .A(counter_clicks[7]), .Z(n192) );
  CND2X1 U146 ( .A(vstate[2]), .B(n132), .Z(n250) );
  CIVXL U147 ( .A(vstate[0]), .Z(n252) );
  CND2X1 U148 ( .A(n250), .B(n252), .Z(n103) );
  CIVXL U149 ( .A(vstate[2]), .Z(n131) );
  CND2XL U150 ( .A(vstate[1]), .B(n131), .Z(n248) );
  CNR2X1 U151 ( .A(n252), .B(n248), .Z(n114) );
  CIVX2 U152 ( .A(n114), .Z(n241) );
  COND2XL U153 ( .A(vstate[1]), .B(n103), .C(n113), .D(n241), .Z(n104) );
  CAN2XL U154 ( .A(lcd_en), .B(n104), .Z(n264) );
  CIVX2 U155 ( .A(vstate[1]), .Z(n124) );
  CND2X1 U156 ( .A(n131), .B(lcd_en), .Z(n125) );
  CIVX2 U157 ( .A(n125), .Z(n129) );
  CND3XL U158 ( .A(n124), .B(vstate[0]), .C(n129), .Z(n255) );
  CIVX2 U159 ( .A(n255), .Z(LCDFP) );
  CIVXL U160 ( .A(linestate[0]), .Z(n142) );
  CNR3X1 U161 ( .A(linestate[2]), .B(linestate[1]), .C(n142), .Z(n265) );
  CND2X1 U162 ( .A(n265), .B(lcd_en), .Z(n239) );
  CIVX1 U163 ( .A(n239), .Z(LCDLP) );
  CIVXL U164 ( .A(\lcd_le[LED][4] ), .Z(n218) );
  COND1XL U165 ( .A(n109), .B(n105), .C(lcd_en), .Z(n257) );
  COND4CXL U166 ( .A(n228), .B(lcdle_delay_count[3]), .C(n257), .D(
        lcdle_delay_count[4]), .Z(n107) );
  CND2X1 U167 ( .A(n106), .B(n110), .Z(n263) );
  COND3XL U168 ( .A(n112), .B(n218), .C(n107), .D(n263), .Z(n167) );
  CIVXL U169 ( .A(\lcd_le[LED][2] ), .Z(n217) );
  CANR1XL U170 ( .A(lcdle_delay_count[0]), .B(n228), .C(n244), .Z(n221) );
  CIVXL U171 ( .A(n221), .Z(n108) );
  COND4CXL U172 ( .A(n228), .B(lcdle_delay_count[1]), .C(n108), .D(
        lcdle_delay_count[2]), .Z(n111) );
  CND2XL U173 ( .A(n110), .B(n109), .Z(n259) );
  COND3XL U174 ( .A(n112), .B(n217), .C(n111), .D(n259), .Z(n169) );
  CND2X1 U175 ( .A(n114), .B(n113), .Z(n130) );
  CIVX2 U176 ( .A(n130), .Z(n251) );
  CEOX1 U177 ( .A(counter_clicks[4]), .B(\lcd_timv[VSW][4] ), .Z(n122) );
  CENX1 U178 ( .A(n157), .B(\lcd_timv[VSW][5] ), .Z(n119) );
  CEOX1 U179 ( .A(n211), .B(\lcd_timv[VSW][1] ), .Z(n117) );
  CENX1 U180 ( .A(counter_clicks[2]), .B(\lcd_timv[VSW][2] ), .Z(n116) );
  CEOX1 U181 ( .A(n212), .B(\lcd_timv[VSW][0] ), .Z(n115) );
  CND4X1 U182 ( .A(n128), .B(n117), .C(n116), .D(n115), .Z(n118) );
  COR4X1 U183 ( .A(counter_clicks[6]), .B(counter_clicks[7]), .C(n119), .D(
        n118), .Z(n121) );
  CENX1 U184 ( .A(n216), .B(\lcd_timv[VSW][3] ), .Z(n120) );
  CNR3XL U185 ( .A(n122), .B(n121), .C(n120), .Z(n256) );
  CANR2XL U186 ( .A(lcd_en), .B(n251), .C(n256), .D(LCDFP), .Z(n123) );
  COND11XL U187 ( .A(vstate[0]), .B(n125), .C(n124), .D(n123), .Z(vnxtstate[1]) );
  CIVX1 U188 ( .A(lcdle_hold_count[2]), .Z(n226) );
  COND1XL U189 ( .A(n226), .B(n127), .C(n219), .Z(n126) );
  CANR1XL U190 ( .A(n226), .B(n127), .C(n126), .Z(n162) );
  CND2X1 U191 ( .A(\lcd_le[LED][6] ), .B(rst), .Z(n184) );
  CND2X1 U192 ( .A(\lcd_le[LED][4] ), .B(rst), .Z(n180) );
  CND2X1 U193 ( .A(\lcd_le[LED][5] ), .B(rst), .Z(n182) );
  CND2X1 U194 ( .A(\lcd_le[LED][3] ), .B(rst), .Z(n178) );
  CND2X1 U195 ( .A(\lcd_le[LED][2] ), .B(rst), .Z(n176) );
  CND2X1 U196 ( .A(\lcd_le[LED][0] ), .B(rst), .Z(n172) );
  CND2X1 U197 ( .A(\lcd_le[LED][1] ), .B(rst), .Z(n174) );
  CIVX2 U198 ( .A(rst), .Z(n266) );
  COND1XL U199 ( .A(vstate[0]), .B(n247), .C(n129), .Z(n135) );
  CANR4CXL U200 ( .A(vstate[1]), .B(n256), .C(n129), .D(n252), .Z(n134) );
  COND4CXL U201 ( .A(lcd_en), .B(n132), .C(n131), .D(n130), .Z(n133) );
  CANR3X1 U202 ( .A(vstate[1]), .B(n135), .C(n134), .D(n133), .Z(n213) );
  CNR2X1 U203 ( .A(n212), .B(n211), .Z(n210) );
  CND2X1 U204 ( .A(counter_clicks[2]), .B(n210), .Z(n215) );
  CNR2X1 U205 ( .A(n216), .B(n215), .Z(n214) );
  CND2X1 U206 ( .A(counter_clicks[4]), .B(n214), .Z(n203) );
  CNR2X1 U207 ( .A(n157), .B(n203), .Z(n156) );
  CND2X1 U208 ( .A(counter_clicks[6]), .B(n156), .Z(n191) );
  COND1XL U209 ( .A(counter_clicks[6]), .B(n156), .C(n191), .Z(n136) );
  CNR2X1 U210 ( .A(n213), .B(n136), .Z(counter_clicks_nxt[6]) );
  CNR2X1 U211 ( .A(n137), .B(n242), .Z(n236) );
  CIVX2 U212 ( .A(n236), .Z(n145) );
  COND1XL U213 ( .A(n243), .B(n142), .C(linestate[1]), .Z(n138) );
  COND3X1 U214 ( .A(n239), .B(n235), .C(n145), .D(n138), .Z(nxtlinestate[1])
         );
  CIVX2 U215 ( .A(counter_clicks[9]), .Z(n200) );
  CNR2X1 U216 ( .A(n192), .B(n191), .Z(n193) );
  CND2X1 U217 ( .A(counter_clicks[8]), .B(n193), .Z(n199) );
  CNR2X1 U218 ( .A(n200), .B(n199), .Z(n198) );
  CND2X1 U219 ( .A(counter_clicks[10]), .B(n198), .Z(n150) );
  CEOX1 U220 ( .A(counter_clicks[11]), .B(n150), .Z(n139) );
  CNR2X1 U221 ( .A(n213), .B(n139), .Z(counter_clicks_nxt[11]) );
  CIVX2 U222 ( .A(line_count[9]), .Z(n149) );
  CNR2X1 U223 ( .A(n197), .B(n196), .Z(n195) );
  CND2X1 U224 ( .A(line_count[2]), .B(n195), .Z(n189) );
  CNR2X1 U225 ( .A(n188), .B(n189), .Z(n187) );
  CND2X1 U226 ( .A(line_count[4]), .B(n187), .Z(n161) );
  CNR2X1 U227 ( .A(n186), .B(n161), .Z(n206) );
  CND2X1 U228 ( .A(line_count[6]), .B(n206), .Z(n205) );
  CNR2X1 U229 ( .A(n202), .B(n205), .Z(n201) );
  CND2X1 U230 ( .A(line_count[8]), .B(n201), .Z(n154) );
  CNR2X1 U231 ( .A(n149), .B(n154), .Z(n152) );
  CIVXL U232 ( .A(linestate[1]), .Z(n141) );
  CANR4CXL U233 ( .A(linestate[0]), .B(n234), .C(lcd_en), .D(n141), .Z(n144)
         );
  CNR2XL U234 ( .A(lcd_en), .B(n142), .Z(n143) );
  CANR4CXL U235 ( .A(linestate[2]), .B(n144), .C(n240), .D(n143), .Z(n146) );
  COND3XL U236 ( .A(linestate[2]), .B(n240), .C(n146), .D(n145), .Z(n147) );
  CANR3X1 U237 ( .A(n265), .B(n235), .C(n148), .D(n147), .Z(n208) );
  CANR3X1 U238 ( .A(n149), .B(n154), .C(n152), .D(n208), .Z(line_count_nxt[9])
         );
  CNR2X1 U239 ( .A(counter_clicks[0]), .B(n213), .Z(counter_clicks_nxt[0]) );
  COND1XL U240 ( .A(counter_clicks[10]), .B(n198), .C(n150), .Z(n151) );
  CNR2X1 U241 ( .A(n213), .B(n151), .Z(counter_clicks_nxt[10]) );
  CND2X1 U242 ( .A(line_count[10]), .B(n152), .Z(n158) );
  COND1XL U243 ( .A(line_count[10]), .B(n152), .C(n158), .Z(n153) );
  CNR2X1 U244 ( .A(n208), .B(n153), .Z(line_count_nxt[10]) );
  COND1XL U245 ( .A(line_count[8]), .B(n201), .C(n154), .Z(n155) );
  CNR2X1 U246 ( .A(n208), .B(n155), .Z(line_count_nxt[8]) );
  CANR3X1 U247 ( .A(n157), .B(n203), .C(n156), .D(n213), .Z(
        counter_clicks_nxt[5]) );
  CEOX1 U248 ( .A(line_count[11]), .B(n158), .Z(n159) );
  CNR2X1 U249 ( .A(n208), .B(n159), .Z(line_count_nxt[11]) );
  COND1XL U250 ( .A(line_count[4]), .B(n187), .C(n161), .Z(n160) );
  CNR2X1 U251 ( .A(n208), .B(n160), .Z(line_count_nxt[4]) );
  CANR3X1 U252 ( .A(n186), .B(n161), .C(n206), .D(n208), .Z(line_count_nxt[5])
         );
  CANR3X1 U253 ( .A(n188), .B(n189), .C(n187), .D(n208), .Z(line_count_nxt[3])
         );
  COND1XL U254 ( .A(line_count[2]), .B(n195), .C(n189), .Z(n190) );
  CNR2X1 U255 ( .A(n208), .B(n190), .Z(line_count_nxt[2]) );
  CANR3X1 U256 ( .A(n192), .B(n191), .C(n193), .D(n213), .Z(
        counter_clicks_nxt[7]) );
  COND1XL U257 ( .A(counter_clicks[8]), .B(n193), .C(n199), .Z(n194) );
  CNR2X1 U258 ( .A(n213), .B(n194), .Z(counter_clicks_nxt[8]) );
  CANR3X1 U259 ( .A(n197), .B(n196), .C(n195), .D(n208), .Z(line_count_nxt[1])
         );
  CANR3X1 U260 ( .A(n200), .B(n199), .C(n198), .D(n213), .Z(
        counter_clicks_nxt[9]) );
  CANR3X1 U261 ( .A(n202), .B(n205), .C(n201), .D(n208), .Z(line_count_nxt[7])
         );
  CNR2X1 U262 ( .A(line_count[0]), .B(n208), .Z(line_count_nxt[0]) );
  COND1XL U263 ( .A(counter_clicks[4]), .B(n214), .C(n203), .Z(n204) );
  CNR2X1 U264 ( .A(n213), .B(n204), .Z(counter_clicks_nxt[4]) );
  COND1XL U265 ( .A(line_count[6]), .B(n206), .C(n205), .Z(n207) );
  CNR2X1 U266 ( .A(n208), .B(n207), .Z(line_count_nxt[6]) );
  COND1XL U267 ( .A(counter_clicks[2]), .B(n210), .C(n215), .Z(n209) );
  CNR2X1 U268 ( .A(n213), .B(n209), .Z(counter_clicks_nxt[2]) );
  CANR3X1 U269 ( .A(n212), .B(n211), .C(n210), .D(n213), .Z(
        counter_clicks_nxt[1]) );
  CANR3X1 U270 ( .A(n216), .B(n215), .C(n214), .D(n213), .Z(
        counter_clicks_nxt[3]) );
  CND2IX1 U271 ( .B(\lcd_le[LED][1] ), .A(rst), .Z(n175) );
  CND2IX1 U272 ( .B(\lcd_le[LED][0] ), .A(rst), .Z(n173) );
  CND2X1 U273 ( .A(rst), .B(n217), .Z(n177) );
  CND2IX1 U274 ( .B(\lcd_le[LED][3] ), .A(rst), .Z(n179) );
  CND2IX1 U275 ( .B(\lcd_le[LED][5] ), .A(rst), .Z(n183) );
  CND2X1 U276 ( .A(rst), .B(n218), .Z(n181) );
  CND2IX1 U277 ( .B(\lcd_le[LED][6] ), .A(rst), .Z(n185) );
  CENX1 U278 ( .A(lcd_en), .B(lcdle_hold_count[0]), .Z(n220) );
  CND2X1 U279 ( .A(n220), .B(n219), .Z(n164) );
  CMXI2X1 U280 ( .A0(n222), .A1(n221), .S(lcdle_delay_count[1]), .Z(n223) );
  CAOR1X1 U281 ( .A(\lcd_le[LED][1] ), .B(n260), .C(n223), .Z(n170) );
  COR4X1 U282 ( .A(lcdle_cur_state[1]), .B(lcdle_cur_state[0]), .C(n224), .D(
        nxtlinestate[2]), .Z(n231) );
  CANR1XL U283 ( .A(n245), .B(n226), .C(n225), .Z(n227) );
  CANR1XL U284 ( .A(n228), .B(n233), .C(n227), .Z(n229) );
  CANR4CX1 U285 ( .A(\lcd_le[LEE] ), .B(n231), .C(n229), .D(n244), .Z(
        lcdle_nxt_state[1]) );
  CIVX1 U286 ( .A(\lcd_le[LEE] ), .Z(n230) );
  COND2X1 U287 ( .A(n233), .B(n232), .C(n231), .D(n230), .Z(lcdle_nxt_state[0]) );
  CNR3X1 U288 ( .A(n243), .B(n242), .C(n241), .Z(Lcdena_lcdm) );
  COR4X1 U289 ( .A(n245), .B(rst), .C(lcdle_hold_count[2]), .D(n244), .Z(n246)
         );
  CANR1XL U290 ( .A(lcdle_hold_count[0]), .B(lcdle_hold_count[1]), .C(n246), 
        .Z(LCDLE) );
  CNR2IX1 U291 ( .B(lcd_pwr), .A(rst), .Z(LCDPWR) );
  CIVX2 U292 ( .A(n247), .Z(n249) );
  COND2XL U293 ( .A(vstate[1]), .B(n250), .C(n249), .D(n248), .Z(n253) );
  COND4CXL U294 ( .A(n253), .B(n252), .C(n251), .D(lcd_en), .Z(n254) );
  COND1XL U295 ( .A(n256), .B(n255), .C(n254), .Z(vnxtstate[0]) );
  CANR2XL U296 ( .A(lcdle_delay_count[3]), .B(n257), .C(n260), .D(
        \lcd_le[LED][3] ), .Z(n258) );
  COND1XL U297 ( .A(lcdle_delay_count[3]), .B(n259), .C(n258), .Z(n168) );
  CANR2XL U298 ( .A(lcdle_delay_count[5]), .B(n261), .C(n260), .D(
        \lcd_le[LED][5] ), .Z(n262) );
  COND1XL U299 ( .A(lcdle_delay_count[5]), .B(n263), .C(n262), .Z(n166) );
endmodule


module pixel_serializer ( hclk, clk, lcdena_lcdm, rst, bepo, bebo, bgr, lcdtft, 
        data_in_fifo, lcdbpp, pull, lcddvd, pixel_clk_phaseshift, addr_to_rpal, 
        rpal_datain );
  input [31:0] data_in_fifo;
  input [2:0] lcdbpp;
  output [23:0] lcddvd;
  output [7:0] addr_to_rpal;
  input [15:0] rpal_datain;
  input hclk, clk, lcdena_lcdm, rst, bepo, bebo, bgr, lcdtft,
         pixel_clk_phaseshift;
  output pull;
  wire   \pixel_counter[4] , N105, N111, N117, N123, n417, n418, n419, n420,
         n421, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354;
  wire   [31:0] data_reg;
  tri   clk;
  tri   lcdena_lcdm;
  tri   [23:0] lcddvd;
  tri   [7:0] addr_to_rpal;
  tri   [15:0] rpal_datain;

  CFD2QXL \pixel_counter_reg[0]  ( .D(n417), .CP(clk), .CD(n354), .Q(N105) );
  CFD2QXL \pixel_counter_reg[1]  ( .D(n418), .CP(clk), .CD(n354), .Q(N111) );
  CFD2QXL \pixel_counter_reg[4]  ( .D(n421), .CP(clk), .CD(n354), .Q(
        \pixel_counter[4] ) );
  CFD2QXL \pixel_counter_reg[3]  ( .D(n420), .CP(clk), .CD(n354), .Q(N123) );
  CFD2QXL \pixel_counter_reg[2]  ( .D(n419), .CP(clk), .CD(n354), .Q(N117) );
  CFD2QXL \data_reg_reg[31]  ( .D(data_in_fifo[31]), .CP(hclk), .CD(n354), .Q(
        data_reg[31]) );
  CFD2QXL \data_reg_reg[27]  ( .D(data_in_fifo[27]), .CP(hclk), .CD(n354), .Q(
        data_reg[27]) );
  CFD2QXL \data_reg_reg[7]  ( .D(data_in_fifo[7]), .CP(hclk), .CD(n354), .Q(
        data_reg[7]) );
  CFD2QXL \data_reg_reg[15]  ( .D(data_in_fifo[15]), .CP(hclk), .CD(n354), .Q(
        data_reg[15]) );
  CFD2QXL \data_reg_reg[29]  ( .D(data_in_fifo[29]), .CP(hclk), .CD(n354), .Q(
        data_reg[29]) );
  CFD2QXL \data_reg_reg[2]  ( .D(data_in_fifo[2]), .CP(hclk), .CD(n354), .Q(
        data_reg[2]) );
  CFD2QXL \data_reg_reg[17]  ( .D(data_in_fifo[17]), .CP(hclk), .CD(n354), .Q(
        data_reg[17]) );
  CFD2QXL \data_reg_reg[13]  ( .D(data_in_fifo[13]), .CP(hclk), .CD(n354), .Q(
        data_reg[13]) );
  CFD2QXL \data_reg_reg[18]  ( .D(data_in_fifo[18]), .CP(hclk), .CD(n354), .Q(
        data_reg[18]) );
  CFD2QXL \data_reg_reg[9]  ( .D(data_in_fifo[9]), .CP(hclk), .CD(n354), .Q(
        data_reg[9]) );
  CFD2QXL \data_reg_reg[23]  ( .D(data_in_fifo[23]), .CP(hclk), .CD(n354), .Q(
        data_reg[23]) );
  CFD2QXL \data_reg_reg[25]  ( .D(data_in_fifo[25]), .CP(hclk), .CD(n354), .Q(
        data_reg[25]) );
  CFD2QXL \data_reg_reg[1]  ( .D(data_in_fifo[1]), .CP(hclk), .CD(n354), .Q(
        data_reg[1]) );
  CFD2QXL \data_reg_reg[28]  ( .D(data_in_fifo[28]), .CP(hclk), .CD(n354), .Q(
        data_reg[28]) );
  CFD2QXL \data_reg_reg[5]  ( .D(data_in_fifo[5]), .CP(hclk), .CD(n354), .Q(
        data_reg[5]) );
  CFD2QXL \data_reg_reg[22]  ( .D(data_in_fifo[22]), .CP(hclk), .CD(n354), .Q(
        data_reg[22]) );
  CFD2QXL \data_reg_reg[19]  ( .D(data_in_fifo[19]), .CP(hclk), .CD(n354), .Q(
        data_reg[19]) );
  CFD2QXL \data_reg_reg[26]  ( .D(data_in_fifo[26]), .CP(hclk), .CD(n354), .Q(
        data_reg[26]) );
  CFD2QXL \data_reg_reg[30]  ( .D(data_in_fifo[30]), .CP(hclk), .CD(n354), .Q(
        data_reg[30]) );
  CFD2QXL \data_reg_reg[24]  ( .D(data_in_fifo[24]), .CP(hclk), .CD(n354), .Q(
        data_reg[24]) );
  CFD2QXL \data_reg_reg[8]  ( .D(data_in_fifo[8]), .CP(hclk), .CD(n354), .Q(
        data_reg[8]) );
  CFD2QXL \data_reg_reg[16]  ( .D(data_in_fifo[16]), .CP(hclk), .CD(n354), .Q(
        data_reg[16]) );
  CFD2QXL \data_reg_reg[0]  ( .D(data_in_fifo[0]), .CP(hclk), .CD(n354), .Q(
        data_reg[0]) );
  CFD2QXL \data_reg_reg[20]  ( .D(data_in_fifo[20]), .CP(hclk), .CD(n354), .Q(
        data_reg[20]) );
  CFD2QXL \data_reg_reg[3]  ( .D(data_in_fifo[3]), .CP(hclk), .CD(n354), .Q(
        data_reg[3]) );
  CFD2QXL \data_reg_reg[11]  ( .D(data_in_fifo[11]), .CP(hclk), .CD(n354), .Q(
        data_reg[11]) );
  CFD2QXL \data_reg_reg[10]  ( .D(data_in_fifo[10]), .CP(hclk), .CD(n354), .Q(
        data_reg[10]) );
  CFD2QXL \data_reg_reg[4]  ( .D(data_in_fifo[4]), .CP(hclk), .CD(n354), .Q(
        data_reg[4]) );
  CFD2QXL \data_reg_reg[12]  ( .D(data_in_fifo[12]), .CP(hclk), .CD(n354), .Q(
        data_reg[12]) );
  CFD2QXL \data_reg_reg[6]  ( .D(data_in_fifo[6]), .CP(hclk), .CD(n354), .Q(
        data_reg[6]) );
  CFD2QXL \data_reg_reg[21]  ( .D(data_in_fifo[21]), .CP(hclk), .CD(n354), .Q(
        data_reg[21]) );
  CFD2QXL \data_reg_reg[14]  ( .D(data_in_fifo[14]), .CP(hclk), .CD(n354), .Q(
        data_reg[14]) );
  CAOR2X1 U3 ( .A(n310), .B(data_reg[24]), .C(data_reg[8]), .D(n290), .Z(n329)
         );
  CANR2X1 U4 ( .A(data_reg[25]), .B(\pixel_counter[4] ), .C(data_reg[9]), .D(
        n290), .Z(n353) );
  CAOR2X1 U5 ( .A(n310), .B(data_reg[26]), .C(data_reg[10]), .D(n290), .Z(n338) );
  CANR1XL U6 ( .A(lcdbpp[0]), .B(n121), .C(n290), .Z(n1) );
  CND2IX1 U7 ( .B(n232), .A(n1), .Z(n87) );
  CAOR2X1 U8 ( .A(\pixel_counter[4] ), .B(data_reg[27]), .C(data_reg[11]), .D(
        n290), .Z(n337) );
  CANR2X1 U9 ( .A(data_reg[14]), .B(n290), .C(data_reg[30]), .D(n310), .Z(n136) );
  CIVX1 U10 ( .A(n174), .Z(n2) );
  CND2X1 U11 ( .A(N123), .B(n126), .Z(n3) );
  COND1XL U12 ( .A(n100), .B(N123), .C(n3), .Z(n4) );
  CANR1XL U13 ( .A(n158), .B(n124), .C(n4), .Z(n5) );
  CND2X1 U14 ( .A(n237), .B(n114), .Z(n6) );
  COND3X1 U15 ( .A(n162), .B(n2), .C(n5), .D(n6), .Z(n420) );
  CND2X1 U16 ( .A(lcdena_lcdm), .B(lcdbpp[2]), .Z(n10) );
  CND2XL U17 ( .A(lcdbpp[0]), .B(lcdbpp[1]), .Z(n7) );
  CNR2X1 U18 ( .A(n10), .B(n7), .Z(n313) );
  CIVX2 U19 ( .A(n313), .Z(n352) );
  CIVX2 U20 ( .A(data_reg[7]), .Z(n226) );
  CND2X1 U21 ( .A(n226), .B(n290), .Z(n9) );
  CIVX2 U22 ( .A(data_reg[23]), .Z(n133) );
  CND2X1 U23 ( .A(n133), .B(\pixel_counter[4] ), .Z(n8) );
  CND2X1 U24 ( .A(n9), .B(n8), .Z(n323) );
  CNR2X1 U25 ( .A(n10), .B(lcdbpp[0]), .Z(n306) );
  CND2X1 U26 ( .A(n306), .B(lcdbpp[1]), .Z(n341) );
  CIVX2 U27 ( .A(n341), .Z(n349) );
  CIVDX1 U28 ( .A(\pixel_counter[4] ), .Z0(n290), .Z1(n310) );
  CND2X1 U29 ( .A(n349), .B(n338), .Z(n16) );
  CNR2IX1 U30 ( .B(lcdbpp[0]), .A(lcdbpp[1]), .Z(n99) );
  CNR2IX2 U31 ( .B(n99), .A(n10), .Z(n344) );
  CNR2XL U32 ( .A(lcdbpp[1]), .B(lcdbpp[0]), .Z(n11) );
  CND2XL U33 ( .A(lcdbpp[2]), .B(n11), .Z(n299) );
  CIVX1 U34 ( .A(n299), .Z(n12) );
  CND2X1 U35 ( .A(lcdena_lcdm), .B(n12), .Z(n135) );
  CIVX2 U36 ( .A(lcdbpp[2]), .Z(n302) );
  CND2X1 U37 ( .A(lcdena_lcdm), .B(n302), .Z(n102) );
  CIVX2 U38 ( .A(n102), .Z(n343) );
  CND2X1 U39 ( .A(n343), .B(rpal_datain[9]), .Z(n13) );
  COND1XL U40 ( .A(n353), .B(n135), .C(n13), .Z(n14) );
  CANR1XL U41 ( .A(n344), .B(data_reg[15]), .C(n14), .Z(n15) );
  COND3XL U42 ( .A(n352), .B(n323), .C(n16), .D(n15), .Z(lcddvd[15]) );
  CIVXL U43 ( .A(data_reg[11]), .Z(n23) );
  CIVX2 U44 ( .A(n344), .Z(n335) );
  CND2X1 U45 ( .A(data_reg[22]), .B(\pixel_counter[4] ), .Z(n18) );
  CND2X1 U46 ( .A(data_reg[6]), .B(n290), .Z(n17) );
  CND2X1 U47 ( .A(n18), .B(n17), .Z(n324) );
  CND2X1 U48 ( .A(n349), .B(n324), .Z(n22) );
  CND2X1 U49 ( .A(data_reg[5]), .B(n290), .Z(n20) );
  CND2X1 U50 ( .A(data_reg[21]), .B(\pixel_counter[4] ), .Z(n19) );
  CND2X1 U51 ( .A(n20), .B(n19), .Z(n321) );
  CIVX2 U52 ( .A(n135), .Z(n347) );
  CANR2X1 U53 ( .A(n343), .B(rpal_datain[5]), .C(n321), .D(n347), .Z(n21) );
  COND3XL U54 ( .A(n23), .B(n335), .C(n22), .D(n21), .Z(lcddvd[11]) );
  CANR2X1 U55 ( .A(n344), .B(data_reg[14]), .C(rpal_datain[8]), .D(n343), .Z(
        n25) );
  CANR2X1 U56 ( .A(n313), .B(n324), .C(n329), .D(n347), .Z(n24) );
  COND3XL U57 ( .A(n353), .B(n341), .C(n25), .D(n24), .Z(lcddvd[14]) );
  CMXI2X1 U58 ( .A0(data_reg[3]), .A1(data_reg[19]), .S(n310), .Z(n311) );
  CIVXL U59 ( .A(n306), .Z(n318) );
  CANR2X1 U60 ( .A(n344), .B(data_reg[6]), .C(rpal_datain[3]), .D(n343), .Z(
        n27) );
  CIVX2 U61 ( .A(data_reg[2]), .Z(n303) );
  CIVX1 U62 ( .A(data_reg[18]), .Z(n336) );
  CMXI2X1 U63 ( .A0(n303), .A1(n336), .S(n310), .Z(n28) );
  CND2X1 U64 ( .A(n313), .B(n28), .Z(n26) );
  COND3XL U65 ( .A(n311), .B(n318), .C(n27), .D(n26), .Z(lcddvd[6]) );
  CANR2X1 U66 ( .A(n344), .B(data_reg[5]), .C(rpal_datain[2]), .D(n343), .Z(
        n30) );
  CIVX2 U67 ( .A(data_reg[1]), .Z(n298) );
  CIVX2 U68 ( .A(data_reg[17]), .Z(n333) );
  CMXI2X1 U69 ( .A0(n298), .A1(n333), .S(n310), .Z(n305) );
  CANR2XL U70 ( .A(n306), .B(n28), .C(n313), .D(n305), .Z(n29) );
  CND2XL U71 ( .A(n30), .B(n29), .Z(lcddvd[5]) );
  CANR2X1 U72 ( .A(n344), .B(data_reg[22]), .C(rpal_datain[13]), .D(n343), .Z(
        n32) );
  CIVX2 U73 ( .A(data_reg[13]), .Z(n241) );
  CIVX2 U74 ( .A(data_reg[29]), .Z(n244) );
  CMXI2X1 U75 ( .A0(n241), .A1(n244), .S(n310), .Z(n348) );
  CANR2X1 U76 ( .A(n313), .B(n338), .C(n348), .D(n347), .Z(n31) );
  COND3XL U77 ( .A(n136), .B(n341), .C(n32), .D(n31), .Z(lcddvd[22]) );
  CIVXL U78 ( .A(N105), .Z(n198) );
  CNR2X2 U79 ( .A(N111), .B(n198), .Z(n283) );
  CND2XL U80 ( .A(N105), .B(N111), .Z(n227) );
  CIVX2 U81 ( .A(N111), .Z(n121) );
  COR2XL U82 ( .A(N105), .B(n121), .Z(n257) );
  CIVX2 U83 ( .A(n257), .Z(n205) );
  COR2XL U84 ( .A(N105), .B(N111), .Z(n194) );
  CIVX2 U85 ( .A(n194), .Z(n204) );
  CANR2XL U86 ( .A(n205), .B(data_reg[16]), .C(n204), .D(data_reg[18]), .Z(n33) );
  COND1XL U87 ( .A(n227), .B(n333), .C(n33), .Z(n34) );
  CANR1XL U88 ( .A(n283), .B(data_reg[19]), .C(n34), .Z(n166) );
  CIVXL U89 ( .A(data_reg[22]), .Z(n183) );
  CIVX2 U90 ( .A(n227), .Z(n206) );
  CANR2XL U91 ( .A(n206), .B(data_reg[21]), .C(data_reg[20]), .D(n205), .Z(n35) );
  COND1XL U92 ( .A(n183), .B(n194), .C(n35), .Z(n36) );
  CANR1XL U93 ( .A(n283), .B(data_reg[23]), .C(n36), .Z(n167) );
  CANR2XL U94 ( .A(n206), .B(data_reg[1]), .C(n205), .D(data_reg[0]), .Z(n37)
         );
  COND1XL U95 ( .A(n194), .B(n303), .C(n37), .Z(n38) );
  CANR1XL U96 ( .A(n283), .B(data_reg[3]), .C(n38), .Z(n164) );
  CIVX1 U97 ( .A(data_reg[5]), .Z(n187) );
  CANR2XL U98 ( .A(n205), .B(data_reg[4]), .C(n204), .D(data_reg[6]), .Z(n39)
         );
  COND1XL U99 ( .A(n227), .B(n187), .C(n39), .Z(n40) );
  CANR1XL U100 ( .A(n283), .B(data_reg[7]), .C(n40), .Z(n165) );
  CNR2XL U101 ( .A(N117), .B(N111), .Z(n86) );
  CAOR1XL U102 ( .A(N117), .B(N111), .C(n86), .Z(n169) );
  CIVX1 U103 ( .A(N123), .Z(n238) );
  CNR2X1 U104 ( .A(n86), .B(n238), .Z(n51) );
  CNR2X1 U105 ( .A(n51), .B(n290), .Z(n50) );
  CANR1XL U106 ( .A(n51), .B(n290), .C(n50), .Z(n41) );
  CMX4XL U107 ( .A0(n166), .A1(n167), .A2(n164), .A3(n165), .S0(n169), .S1(n41), .Z(n54) );
  CIVX2 U108 ( .A(data_reg[9]), .Z(n320) );
  CANR2XL U109 ( .A(n205), .B(data_reg[8]), .C(n204), .D(data_reg[10]), .Z(n42) );
  COND1XL U110 ( .A(n227), .B(n320), .C(n42), .Z(n43) );
  CANR1XL U111 ( .A(n283), .B(data_reg[11]), .C(n43), .Z(n172) );
  CANR2XL U112 ( .A(n205), .B(data_reg[12]), .C(n204), .D(data_reg[14]), .Z(
        n44) );
  COND1XL U113 ( .A(n227), .B(n241), .C(n44), .Z(n45) );
  CANR1XL U114 ( .A(n283), .B(data_reg[15]), .C(n45), .Z(n173) );
  CIVXL U115 ( .A(data_reg[25]), .Z(n62) );
  CANR2XL U116 ( .A(n205), .B(data_reg[24]), .C(n204), .D(data_reg[26]), .Z(
        n46) );
  COND1XL U117 ( .A(n227), .B(n62), .C(n46), .Z(n47) );
  CANR1XL U118 ( .A(n283), .B(data_reg[27]), .C(n47), .Z(n170) );
  CANR2XL U119 ( .A(n205), .B(data_reg[28]), .C(n204), .D(data_reg[30]), .Z(
        n48) );
  COND1XL U120 ( .A(n227), .B(n244), .C(n48), .Z(n49) );
  CANR1XL U121 ( .A(n283), .B(data_reg[31]), .C(n49), .Z(n171) );
  CMX4XL U122 ( .A0(n172), .A1(n173), .A2(n170), .A3(n171), .S0(n169), .S1(n50), .Z(n53) );
  CANR1XL U123 ( .A(n86), .B(n238), .C(n51), .Z(n52) );
  CMXI2X1 U124 ( .A0(n54), .A1(n53), .S(n52), .Z(n55) );
  CND3XL U125 ( .A(lcdbpp[1]), .B(lcdbpp[0]), .C(n302), .Z(n113) );
  CIVX1 U126 ( .A(n113), .Z(n116) );
  CND2X1 U127 ( .A(lcdena_lcdm), .B(n116), .Z(n100) );
  CIVX2 U128 ( .A(n100), .Z(n293) );
  CAN2XL U129 ( .A(n55), .B(n293), .Z(addr_to_rpal[6]) );
  CIVXL U130 ( .A(data_reg[10]), .Z(n196) );
  CANR2XL U131 ( .A(n206), .B(data_reg[11]), .C(n204), .D(data_reg[8]), .Z(n56) );
  COND1XL U132 ( .A(n257), .B(n196), .C(n56), .Z(n57) );
  CANR1XL U133 ( .A(n283), .B(data_reg[9]), .C(n57), .Z(n220) );
  CIVX1 U134 ( .A(n283), .Z(n197) );
  CANR2XL U135 ( .A(n205), .B(data_reg[14]), .C(n204), .D(data_reg[12]), .Z(
        n58) );
  COND1XL U136 ( .A(n197), .B(n241), .C(n58), .Z(n59) );
  CANR1XL U137 ( .A(n206), .B(data_reg[15]), .C(n59), .Z(n221) );
  CMXI2XL U138 ( .A0(n220), .A1(n221), .S(N117), .Z(n60) );
  CANR1XL U139 ( .A(n290), .B(n60), .C(n238), .Z(n80) );
  CANR2XL U140 ( .A(n205), .B(data_reg[26]), .C(n204), .D(data_reg[24]), .Z(
        n61) );
  COND1XL U141 ( .A(n197), .B(n62), .C(n61), .Z(n63) );
  CANR1XL U142 ( .A(n206), .B(data_reg[27]), .C(n63), .Z(n218) );
  CANR2XL U143 ( .A(n205), .B(data_reg[30]), .C(n204), .D(data_reg[28]), .Z(
        n64) );
  COND1XL U144 ( .A(n197), .B(n244), .C(n64), .Z(n65) );
  CANR1XL U145 ( .A(n206), .B(data_reg[31]), .C(n65), .Z(n219) );
  CMXI2X1 U146 ( .A0(n218), .A1(n219), .S(N117), .Z(n66) );
  CND2X1 U147 ( .A(n66), .B(\pixel_counter[4] ), .Z(n79) );
  CANR2XL U148 ( .A(n205), .B(data_reg[18]), .C(n204), .D(data_reg[16]), .Z(
        n67) );
  COND1XL U149 ( .A(n197), .B(n333), .C(n67), .Z(n68) );
  CANR1XL U150 ( .A(n206), .B(data_reg[19]), .C(n68), .Z(n223) );
  CANR2XL U151 ( .A(n283), .B(data_reg[21]), .C(data_reg[20]), .D(n204), .Z(
        n69) );
  COND1XL U152 ( .A(n183), .B(n257), .C(n69), .Z(n70) );
  CANR1XL U153 ( .A(n206), .B(data_reg[23]), .C(n70), .Z(n233) );
  CMXI2X1 U154 ( .A0(n223), .A1(n233), .S(N117), .Z(n77) );
  CANR2XL U155 ( .A(n205), .B(data_reg[6]), .C(n204), .D(data_reg[4]), .Z(n71)
         );
  COND1XL U156 ( .A(n197), .B(n187), .C(n71), .Z(n229) );
  CANR2XL U157 ( .A(n206), .B(data_reg[3]), .C(n204), .D(data_reg[0]), .Z(n72)
         );
  COND1XL U158 ( .A(n257), .B(n303), .C(n72), .Z(n73) );
  CANR1XL U159 ( .A(n283), .B(data_reg[1]), .C(n73), .Z(n224) );
  CIVXL U160 ( .A(N117), .Z(n232) );
  CNR2X1 U161 ( .A(n227), .B(n232), .Z(n108) );
  CIVXL U162 ( .A(n108), .Z(n98) );
  COND2X1 U163 ( .A(N117), .B(n224), .C(n98), .D(n226), .Z(n74) );
  CANR1XL U164 ( .A(N117), .B(n229), .C(n74), .Z(n75) );
  COND1XL U165 ( .A(n75), .B(n310), .C(n238), .Z(n76) );
  CANR1XL U166 ( .A(n310), .B(n77), .C(n76), .Z(n78) );
  CANR3XL U167 ( .A(n80), .B(n79), .C(n78), .D(n102), .Z(addr_to_rpal[0]) );
  CIVX1 U168 ( .A(lcdena_lcdm), .Z(n96) );
  CNR2X1 U169 ( .A(n99), .B(\pixel_counter[4] ), .Z(n111) );
  CIVX1 U170 ( .A(lcdbpp[1]), .Z(n101) );
  CND2X1 U171 ( .A(n101), .B(n302), .Z(n85) );
  CANR1XL U172 ( .A(N111), .B(lcdbpp[1]), .C(rst), .Z(n82) );
  CIVXL U173 ( .A(lcdbpp[0]), .Z(n103) );
  CND3XL U174 ( .A(n87), .B(n103), .C(n302), .Z(n81) );
  COND3X1 U175 ( .A(n85), .B(N111), .C(n82), .D(n81), .Z(n84) );
  CENX1 U176 ( .A(N123), .B(lcdbpp[2]), .Z(n83) );
  CNR3XL U177 ( .A(n111), .B(n84), .C(n83), .Z(n93) );
  CNR2X1 U178 ( .A(n85), .B(lcdbpp[0]), .Z(n110) );
  CENX1 U179 ( .A(N105), .B(n110), .Z(n92) );
  CIVX2 U180 ( .A(n86), .Z(n90) );
  CIVX2 U181 ( .A(n87), .Z(n88) );
  CND2X1 U182 ( .A(n88), .B(n302), .Z(n89) );
  COND4CX1 U183 ( .A(\pixel_counter[4] ), .B(n99), .C(n90), .D(n89), .Z(n91)
         );
  CND4X2 U184 ( .A(pixel_clk_phaseshift), .B(n93), .C(n92), .D(n91), .Z(n94)
         );
  CIVX2 U185 ( .A(n94), .Z(n95) );
  CND2IX4 U186 ( .B(n96), .A(n95), .Z(n97) );
  CIVX8 U187 ( .A(n97), .Z(pull) );
  CIVX2 U188 ( .A(rst), .Z(n354) );
  CND2X1 U189 ( .A(n343), .B(n99), .Z(n162) );
  CND2X1 U190 ( .A(N117), .B(N123), .Z(n104) );
  CNR2X1 U191 ( .A(n121), .B(n104), .Z(n107) );
  CANR4CX1 U192 ( .A(n232), .B(n121), .C(n238), .D(n107), .Z(n174) );
  CND2X1 U193 ( .A(lcdena_lcdm), .B(n110), .Z(n128) );
  CIVX2 U194 ( .A(n128), .Z(n124) );
  CENX1 U195 ( .A(N123), .B(n98), .Z(n158) );
  COND1XL U196 ( .A(n99), .B(n302), .C(lcdena_lcdm), .Z(n126) );
  CNR2X1 U197 ( .A(n102), .B(n101), .Z(n212) );
  CAN2X1 U198 ( .A(n212), .B(n103), .Z(n114) );
  CIVX2 U199 ( .A(n104), .Z(n190) );
  CANR1XL U200 ( .A(n238), .B(n232), .C(n190), .Z(n237) );
  CNR2XL U201 ( .A(n206), .B(N117), .Z(n239) );
  CNR2X1 U202 ( .A(n108), .B(n239), .Z(n261) );
  CANR2X1 U203 ( .A(n124), .B(n261), .C(n114), .D(n232), .Z(n106) );
  COND1XL U204 ( .A(n126), .B(n293), .C(N117), .Z(n105) );
  COND3X1 U205 ( .A(n169), .B(n162), .C(n106), .D(n105), .Z(n419) );
  CNR2X1 U206 ( .A(n107), .B(n290), .Z(n168) );
  CANR1XL U207 ( .A(n107), .B(n290), .C(n168), .Z(n163) );
  CND2XL U208 ( .A(N123), .B(n108), .Z(n109) );
  CENX1 U209 ( .A(n310), .B(n109), .Z(n155) );
  CANR2XL U210 ( .A(lcdbpp[2]), .B(n111), .C(n155), .D(n110), .Z(n112) );
  COND11XL U211 ( .A(n310), .B(n113), .C(n238), .D(n112), .Z(n115) );
  CNR2X1 U212 ( .A(n190), .B(n290), .Z(n217) );
  CANR1XL U213 ( .A(n290), .B(n190), .C(n217), .Z(n225) );
  CIVX2 U214 ( .A(n225), .Z(n222) );
  CANR2XL U215 ( .A(lcdena_lcdm), .B(n115), .C(n114), .D(n222), .Z(n120) );
  CND2X1 U216 ( .A(n116), .B(n238), .Z(n117) );
  CND2XL U217 ( .A(lcdena_lcdm), .B(n117), .Z(n118) );
  CND2XL U218 ( .A(n118), .B(\pixel_counter[4] ), .Z(n119) );
  COND3X1 U219 ( .A(n163), .B(n162), .C(n120), .D(n119), .Z(n421) );
  CNR2XL U220 ( .A(lcdbpp[1]), .B(n126), .Z(n122) );
  CNR2X1 U221 ( .A(n122), .B(n121), .Z(n123) );
  CANR4CX1 U222 ( .A(n283), .B(n205), .C(n124), .D(n123), .Z(n125) );
  COND1XL U223 ( .A(N111), .B(n162), .C(n125), .Z(n418) );
  CANR3XL U224 ( .A(lcdbpp[0]), .B(n302), .C(n126), .D(lcdbpp[1]), .Z(n127) );
  CMXI2XL U225 ( .A0(n128), .A1(n127), .S(N105), .Z(n417) );
  CMXI2X1 U226 ( .A0(data_reg[12]), .A1(data_reg[28]), .S(n310), .Z(n345) );
  CIVXL U227 ( .A(data_reg[20]), .Z(n130) );
  CANR2X1 U228 ( .A(n343), .B(rpal_datain[11]), .C(n337), .D(n347), .Z(n129)
         );
  COND1XL U229 ( .A(n130), .B(n335), .C(n129), .Z(n131) );
  CANR1XL U230 ( .A(n313), .B(n329), .C(n131), .Z(n132) );
  COND1XL U231 ( .A(n345), .B(n341), .C(n132), .Z(lcddvd[20]) );
  CMXI2X1 U232 ( .A0(data_reg[15]), .A1(data_reg[31]), .S(n310), .Z(n300) );
  CNR2X1 U233 ( .A(n335), .B(n133), .Z(n138) );
  CND2X1 U234 ( .A(n343), .B(rpal_datain[14]), .Z(n134) );
  COND1XL U235 ( .A(n136), .B(n135), .C(n134), .Z(n137) );
  CANR3X1 U236 ( .A(n313), .B(n337), .C(n138), .D(n137), .Z(n139) );
  COND1XL U237 ( .A(n300), .B(n341), .C(n139), .Z(lcddvd[23]) );
  CNR2IX1 U238 ( .B(data_reg[0]), .A(n335), .Z(lcddvd[0]) );
  CIVX1 U239 ( .A(n212), .Z(n178) );
  CANR2XL U240 ( .A(n206), .B(data_reg[0]), .C(n205), .D(data_reg[3]), .Z(n141) );
  CANR2XL U241 ( .A(n283), .B(data_reg[2]), .C(n204), .D(data_reg[1]), .Z(n140) );
  CND2X1 U242 ( .A(n141), .B(n140), .Z(n262) );
  CANR2X1 U243 ( .A(n206), .B(data_reg[4]), .C(n283), .D(data_reg[6]), .Z(n258) );
  CND2X1 U244 ( .A(n205), .B(data_reg[7]), .Z(n260) );
  COND3X1 U245 ( .A(n187), .B(n194), .C(n258), .D(n260), .Z(n142) );
  CMXI2X1 U246 ( .A0(n262), .A1(n142), .S(n261), .Z(n148) );
  CND2XL U247 ( .A(N105), .B(data_reg[18]), .Z(n180) );
  CANR2XL U248 ( .A(n206), .B(data_reg[16]), .C(n205), .D(data_reg[19]), .Z(
        n144) );
  CND2XL U249 ( .A(n204), .B(data_reg[17]), .Z(n143) );
  COND3X1 U250 ( .A(N111), .B(n180), .C(n144), .D(n143), .Z(n255) );
  CANR2XL U251 ( .A(n205), .B(data_reg[23]), .C(data_reg[21]), .D(n204), .Z(
        n146) );
  CANR2XL U252 ( .A(n206), .B(data_reg[20]), .C(data_reg[22]), .D(n283), .Z(
        n145) );
  CND2X1 U253 ( .A(n146), .B(n145), .Z(n256) );
  CMXI2X1 U254 ( .A0(n255), .A1(n256), .S(n261), .Z(n147) );
  CMXI2X1 U255 ( .A0(n148), .A1(n147), .S(n155), .Z(n160) );
  CANR2XL U256 ( .A(n206), .B(data_reg[8]), .C(n205), .D(data_reg[11]), .Z(
        n150) );
  CANR2XL U257 ( .A(n283), .B(data_reg[10]), .C(n204), .D(data_reg[9]), .Z(
        n149) );
  CND2X1 U258 ( .A(n150), .B(n149), .Z(n251) );
  CANR2X1 U259 ( .A(n206), .B(data_reg[12]), .C(n283), .D(data_reg[14]), .Z(
        n249) );
  CND2XL U260 ( .A(n205), .B(data_reg[15]), .Z(n240) );
  COND3X1 U261 ( .A(n241), .B(n194), .C(n249), .D(n240), .Z(n151) );
  CMXI2X1 U262 ( .A0(n251), .A1(n151), .S(n261), .Z(n157) );
  CANR2XL U263 ( .A(n206), .B(data_reg[24]), .C(n205), .D(data_reg[27]), .Z(
        n153) );
  CANR2XL U264 ( .A(n283), .B(data_reg[26]), .C(n204), .D(data_reg[25]), .Z(
        n152) );
  CND2X1 U265 ( .A(n153), .B(n152), .Z(n250) );
  CANR2X1 U266 ( .A(n206), .B(data_reg[28]), .C(n283), .D(data_reg[30]), .Z(
        n247) );
  CND2XL U267 ( .A(n205), .B(data_reg[31]), .Z(n243) );
  COND3X1 U268 ( .A(n244), .B(n194), .C(n247), .D(n243), .Z(n154) );
  CMXI2X1 U269 ( .A0(n250), .A1(n154), .S(n261), .Z(n156) );
  CMXI2X1 U270 ( .A0(n157), .A1(n156), .S(n155), .Z(n159) );
  CMXI2X1 U271 ( .A0(n160), .A1(n159), .S(n158), .Z(n161) );
  CANR1XL U272 ( .A(n162), .B(n178), .C(n161), .Z(addr_to_rpal[1]) );
  CMX4XL U273 ( .A0(n167), .A1(n166), .A2(n165), .A3(n164), .S0(n169), .S1(
        n163), .Z(n176) );
  CMX4XL U274 ( .A0(n173), .A1(n172), .A2(n171), .A3(n170), .S0(n169), .S1(
        n168), .Z(n175) );
  CMX2X1 U275 ( .A0(n176), .A1(n175), .S(n174), .Z(n177) );
  CNR2X1 U276 ( .A(n178), .B(n177), .Z(addr_to_rpal[2]) );
  CANR2XL U277 ( .A(n205), .B(data_reg[17]), .C(n204), .D(data_reg[19]), .Z(
        n179) );
  COND1XL U278 ( .A(n180), .B(n283), .C(n179), .Z(n181) );
  CANR1XL U279 ( .A(n283), .B(data_reg[16]), .C(n181), .Z(n275) );
  CANR2XL U280 ( .A(n205), .B(data_reg[21]), .C(data_reg[23]), .D(n204), .Z(
        n182) );
  COND1XL U281 ( .A(n227), .B(n183), .C(n182), .Z(n184) );
  CANR1XL U282 ( .A(n283), .B(data_reg[20]), .C(n184), .Z(n277) );
  CANR2XL U283 ( .A(n205), .B(data_reg[1]), .C(n204), .D(data_reg[3]), .Z(n185) );
  COND1XL U284 ( .A(n227), .B(n303), .C(n185), .Z(n186) );
  CANR1XL U285 ( .A(n283), .B(data_reg[0]), .C(n186), .Z(n274) );
  CMXI2XL U286 ( .A0(data_reg[6]), .A1(data_reg[4]), .S(n283), .Z(n188) );
  COND2X1 U287 ( .A(n198), .B(n188), .C(n257), .D(n187), .Z(n189) );
  CANR1XL U288 ( .A(n204), .B(data_reg[7]), .C(n189), .Z(n276) );
  CND2X1 U289 ( .A(n204), .B(n232), .Z(n279) );
  COAN1X1 U290 ( .A(n232), .B(n204), .C(n279), .Z(n285) );
  CND2X1 U291 ( .A(n194), .B(n190), .Z(n193) );
  CIVX2 U292 ( .A(n193), .Z(n191) );
  CNR2X1 U293 ( .A(n191), .B(n290), .Z(n209) );
  CANR1XL U294 ( .A(n191), .B(n290), .C(n209), .Z(n192) );
  CMX4XL U295 ( .A0(n275), .A1(n277), .A2(n274), .A3(n276), .S0(n285), .S1(
        n192), .Z(n216) );
  COND4CXL U296 ( .A(N117), .B(n194), .C(N123), .D(n193), .Z(n215) );
  CIVX1 U297 ( .A(data_reg[8]), .Z(n319) );
  COND2XL U298 ( .A(n197), .B(n319), .C(n257), .D(n320), .Z(n195) );
  CANR1XL U299 ( .A(n204), .B(data_reg[11]), .C(n195), .Z(n286) );
  COND1XL U300 ( .A(n227), .B(n196), .C(n286), .Z(n201) );
  CND2X1 U301 ( .A(n283), .B(data_reg[12]), .Z(n284) );
  CND2XL U302 ( .A(data_reg[14]), .B(n197), .Z(n199) );
  CANR2X1 U303 ( .A(n205), .B(data_reg[13]), .C(n204), .D(data_reg[15]), .Z(
        n287) );
  COND4CX1 U304 ( .A(n284), .B(n199), .C(n198), .D(n287), .Z(n200) );
  CMXI2X1 U305 ( .A0(n201), .A1(n200), .S(n285), .Z(n211) );
  CANR2XL U306 ( .A(n205), .B(data_reg[25]), .C(n204), .D(data_reg[27]), .Z(
        n203) );
  CANR2XL U307 ( .A(n206), .B(data_reg[26]), .C(n283), .D(data_reg[24]), .Z(
        n202) );
  CND2X1 U308 ( .A(n203), .B(n202), .Z(n280) );
  CANR2XL U309 ( .A(n205), .B(data_reg[29]), .C(n204), .D(data_reg[31]), .Z(
        n208) );
  CANR2XL U310 ( .A(n206), .B(data_reg[30]), .C(n283), .D(data_reg[28]), .Z(
        n207) );
  CND2X1 U311 ( .A(n208), .B(n207), .Z(n281) );
  CMXI2X1 U312 ( .A0(n280), .A1(n281), .S(n285), .Z(n210) );
  CMXI2X1 U313 ( .A0(n211), .A1(n210), .S(n209), .Z(n213) );
  COND1XL U314 ( .A(n213), .B(n215), .C(n212), .Z(n214) );
  CANR1XL U315 ( .A(n216), .B(n215), .C(n214), .Z(addr_to_rpal[3]) );
  CMX4XL U316 ( .A0(n221), .A1(n220), .A2(n219), .A3(n218), .S0(N117), .S1(
        n217), .Z(n236) );
  CMXI2XL U317 ( .A0(n224), .A1(n223), .S(n222), .Z(n230) );
  COND3X1 U318 ( .A(n227), .B(n226), .C(n225), .D(n232), .Z(n228) );
  COND2X1 U319 ( .A(n232), .B(n230), .C(n229), .D(n228), .Z(n231) );
  CANR11X1 U320 ( .A(n310), .B(n233), .C(n232), .D(n231), .Z(n234) );
  COND1XL U321 ( .A(n234), .B(n237), .C(n293), .Z(n235) );
  CANR1XL U322 ( .A(n237), .B(n236), .C(n235), .Z(addr_to_rpal[4]) );
  CNR2X1 U323 ( .A(n239), .B(n238), .Z(n265) );
  CANR1XL U324 ( .A(n239), .B(n238), .C(n265), .Z(n272) );
  CNR2X1 U325 ( .A(n265), .B(n290), .Z(n264) );
  CANR4CXL U326 ( .A(N111), .B(n241), .C(n240), .D(N105), .Z(n242) );
  CNR2X1 U327 ( .A(n264), .B(n242), .Z(n248) );
  CANR4CXL U328 ( .A(N111), .B(n244), .C(n243), .D(N105), .Z(n245) );
  CNR2IX1 U329 ( .B(n264), .A(n245), .Z(n246) );
  CANR2X1 U330 ( .A(n249), .B(n248), .C(n247), .D(n246), .Z(n254) );
  CMXI2X1 U331 ( .A0(n251), .A1(n250), .S(n264), .Z(n252) );
  CND2X1 U332 ( .A(n261), .B(n252), .Z(n253) );
  COND1XL U333 ( .A(n261), .B(n254), .C(n253), .Z(n271) );
  CMXI2X1 U334 ( .A0(n256), .A1(n255), .S(n261), .Z(n268) );
  CND2XL U335 ( .A(data_reg[5]), .B(n257), .Z(n259) );
  COND4CX1 U336 ( .A(n260), .B(n259), .C(N105), .D(n258), .Z(n263) );
  CMXI2X1 U337 ( .A0(n263), .A1(n262), .S(n261), .Z(n267) );
  CANR1XL U338 ( .A(n265), .B(n290), .C(n264), .Z(n266) );
  CMXI2X1 U339 ( .A0(n268), .A1(n267), .S(n266), .Z(n269) );
  COND1XL U340 ( .A(n269), .B(n272), .C(n293), .Z(n270) );
  CANR1XL U341 ( .A(n272), .B(n271), .C(n270), .Z(addr_to_rpal[5]) );
  CND2XL U342 ( .A(N123), .B(n279), .Z(n278) );
  CEOX1 U343 ( .A(n310), .B(n278), .Z(n273) );
  CMX4XL U344 ( .A0(n277), .A1(n276), .A2(n275), .A3(n274), .S0(n273), .S1(
        n285), .Z(n297) );
  COND1XL U345 ( .A(N123), .B(n279), .C(n278), .Z(n296) );
  CMXI2X1 U346 ( .A0(n281), .A1(n280), .S(n285), .Z(n292) );
  CMXI2XL U347 ( .A0(data_reg[14]), .A1(data_reg[10]), .S(n285), .Z(n282) );
  COND2X1 U348 ( .A(n285), .B(n284), .C(n283), .D(n282), .Z(n289) );
  CMXI2X1 U349 ( .A0(n287), .A1(n286), .S(n285), .Z(n288) );
  CANR1XL U350 ( .A(N105), .B(n289), .C(n288), .Z(n291) );
  CMXI2X1 U351 ( .A0(n292), .A1(n291), .S(n290), .Z(n294) );
  COND1XL U352 ( .A(n294), .B(n296), .C(n293), .Z(n295) );
  CANR1XL U353 ( .A(n297), .B(n296), .C(n295), .Z(addr_to_rpal[7]) );
  CNR2X1 U354 ( .A(n298), .B(n335), .Z(lcddvd[1]) );
  CNR2X1 U355 ( .A(n300), .B(n299), .Z(n301) );
  COND4CX1 U356 ( .A(rpal_datain[15]), .B(n302), .C(n301), .D(lcdena_lcdm), 
        .Z(n334) );
  COND1XL U357 ( .A(n303), .B(n335), .C(n334), .Z(lcddvd[2]) );
  CMXI2X1 U358 ( .A0(data_reg[0]), .A1(data_reg[16]), .S(n310), .Z(n309) );
  CANR2X1 U359 ( .A(n344), .B(data_reg[3]), .C(rpal_datain[0]), .D(n343), .Z(
        n304) );
  COND1XL U360 ( .A(n309), .B(n318), .C(n304), .Z(lcddvd[3]) );
  CANR2X1 U361 ( .A(n344), .B(data_reg[4]), .C(rpal_datain[1]), .D(n343), .Z(
        n308) );
  CND2XL U362 ( .A(n306), .B(n305), .Z(n307) );
  COND3X1 U363 ( .A(n309), .B(n352), .C(n308), .D(n307), .Z(lcddvd[4]) );
  CMXI2X1 U364 ( .A0(data_reg[4]), .A1(data_reg[20]), .S(n310), .Z(n327) );
  CIVX1 U365 ( .A(n311), .Z(n312) );
  CND2X1 U366 ( .A(n313), .B(n312), .Z(n316) );
  CND2X1 U367 ( .A(n344), .B(data_reg[7]), .Z(n315) );
  CND2X1 U368 ( .A(n343), .B(rpal_datain[4]), .Z(n314) );
  CAN3X1 U369 ( .A(n316), .B(n315), .C(n314), .Z(n317) );
  COND1XL U370 ( .A(n327), .B(n318), .C(n317), .Z(lcddvd[7]) );
  CNR2X1 U371 ( .A(n319), .B(n335), .Z(lcddvd[8]) );
  CNR2X1 U372 ( .A(n320), .B(n335), .Z(lcddvd[9]) );
  CIVX2 U373 ( .A(n321), .Z(n332) );
  CND2X1 U374 ( .A(data_reg[10]), .B(n344), .Z(n322) );
  COND3X1 U375 ( .A(n332), .B(n341), .C(n334), .D(n322), .Z(lcddvd[10]) );
  CANR2X1 U376 ( .A(n344), .B(data_reg[12]), .C(rpal_datain[6]), .D(n343), .Z(
        n326) );
  CIVX2 U377 ( .A(n323), .Z(n328) );
  CANR2X1 U378 ( .A(n349), .B(n328), .C(n347), .D(n324), .Z(n325) );
  COND3X1 U379 ( .A(n327), .B(n352), .C(n326), .D(n325), .Z(lcddvd[12]) );
  CANR2X1 U380 ( .A(n344), .B(data_reg[13]), .C(rpal_datain[7]), .D(n343), .Z(
        n331) );
  CANR2X1 U381 ( .A(n349), .B(n329), .C(n347), .D(n328), .Z(n330) );
  COND3X1 U382 ( .A(n332), .B(n352), .C(n331), .D(n330), .Z(lcddvd[13]) );
  CNR2IX1 U383 ( .B(data_reg[16]), .A(n335), .Z(lcddvd[16]) );
  CNR2X1 U384 ( .A(n333), .B(n335), .Z(lcddvd[17]) );
  COND1XL U385 ( .A(n336), .B(n335), .C(n334), .Z(lcddvd[18]) );
  CIVX1 U386 ( .A(n337), .Z(n342) );
  CANR2X1 U387 ( .A(n343), .B(rpal_datain[10]), .C(n338), .D(n347), .Z(n340)
         );
  CND2X1 U388 ( .A(data_reg[19]), .B(n344), .Z(n339) );
  COND3X1 U389 ( .A(n342), .B(n341), .C(n340), .D(n339), .Z(lcddvd[19]) );
  CANR2X1 U390 ( .A(n344), .B(data_reg[21]), .C(rpal_datain[12]), .D(n343), 
        .Z(n351) );
  CIVX1 U391 ( .A(n345), .Z(n346) );
  CANR2X1 U392 ( .A(n349), .B(n348), .C(n347), .D(n346), .Z(n350) );
  COND3X1 U393 ( .A(n353), .B(n352), .C(n351), .D(n350), .Z(lcddvd[21]) );
endmodule


module lcd ( \clock.HCLK , \clock.HRESET , \master.mHGRANT , \master.mHBUSREQ , 
        \master.mHREADY , \master.mHRESP , \master.mHRDATA , \master.mHTRANS , 
        \master.mHADDR , \master.mHWRITE , \master.mHSIZE , \master.mHBURST , 
        \slave.HSEL , \slave.HADDR , \slave.HWRITE , \slave.HTRANS , 
        \slave.HSIZE , \slave.HBURST , \slave.HWDATA , \slave.HREADY , 
        \slave.HRESP , \slave.HRDATA , \memif0.f0_waddr , \memif0.f0_wdata , 
        \memif0.f0_write , \memif0.f0_raddr , \memif0.f0_rdata , 
        \memif1.f0_waddr , \memif1.f0_wdata , \memif1.f0_write , 
        \memif1.f0_raddr , \memif1.f0_rdata , \cpal.waddr , \cpal.write , 
        \cpal.wdata , \cpal.raddr , \cpal.raddr1 , \cpal.rdata , \cpal.rdata1 , 
        \crsr.raddr , \crsr.raddr1 , \crsr.waddr , \crsr.write , \crsr.clk , 
        \crsr.rdata , \crsr.rdata1 , \crsr.wdata , \lcdoutif.LCDPWR , 
        \lcdoutif.LCDDCLK , \lcdoutif.LCDENA_LCDM , \lcdoutif.LCDFP , 
        \lcdoutif.LCDLE , \lcdoutif.LCDLP , \lcdoutif.LCDVD , 
        \lcdoutif.lcd_frame  );
  input [1:0] \master.mHRESP ;
  input [31:0] \master.mHRDATA ;
  output [1:0] \master.mHTRANS ;
  output [31:0] \master.mHADDR ;
  output [2:0] \master.mHSIZE ;
  output [2:0] \master.mHBURST ;
  input [31:0] \slave.HADDR ;
  input [1:0] \slave.HTRANS ;
  input [2:0] \slave.HSIZE ;
  input [2:0] \slave.HBURST ;
  input [31:0] \slave.HWDATA ;
  output [1:0] \slave.HRESP ;
  output [31:0] \slave.HRDATA ;
  inout [4:0] \memif0.f0_waddr ;
  inout [31:0] \memif0.f0_wdata ;
  inout [4:0] \memif0.f0_raddr ;
  inout [31:0] \memif0.f0_rdata ;
  inout [4:0] \memif1.f0_waddr ;
  inout [31:0] \memif1.f0_wdata ;
  inout [4:0] \memif1.f0_raddr ;
  inout [31:0] \memif1.f0_rdata ;
  inout [6:0] \cpal.waddr ;
  inout [31:0] \cpal.wdata ;
  inout [7:0] \cpal.raddr ;
  inout [7:0] \cpal.raddr1 ;
  inout [15:0] \cpal.rdata ;
  inout [15:0] \cpal.rdata1 ;
  inout [7:0] \crsr.raddr ;
  inout [7:0] \crsr.raddr1 ;
  inout [7:0] \crsr.waddr ;
  inout [31:0] \crsr.rdata ;
  inout [31:0] \crsr.rdata1 ;
  inout [31:0] \crsr.wdata ;
  inout [23:0] \lcdoutif.LCDVD ;
  inout [3:0] \lcdoutif.lcd_frame ;
  input \clock.HCLK , \clock.HRESET , \master.mHGRANT , \master.mHREADY ,
         \slave.HSEL , \slave.HWRITE ;
  output \master.mHBUSREQ , \master.mHWRITE , \slave.HREADY ;
  inout \memif0.f0_write ,  \memif1.f0_write ,  \cpal.write ,  \crsr.write , 
     \crsr.clk ,  \lcdoutif.LCDPWR ,  \lcdoutif.LCDDCLK , 
     \lcdoutif.LCDENA_LCDM ,  \lcdoutif.LCDFP ,  \lcdoutif.LCDLE , 
     \lcdoutif.LCDLP ;
  wire   N1, \lcd_reg0[CLKDIV][4] , \lcd_reg0[CLKDIV][3] ,
         \lcd_reg0[CLKDIV][2] , \lcd_reg0[CLKDIV][1] , \lcd_reg0[CLKDIV][0] ,
         \lcd_reg1[HBP][7] , \lcd_reg1[HBP][6] , \lcd_reg1[HBP][5] ,
         \lcd_reg1[HBP][4] , \lcd_reg1[HBP][3] , \lcd_reg1[HBP][2] ,
         \lcd_reg1[HBP][1] , \lcd_reg1[HBP][0] , \lcd_reg1[HFP][7] ,
         \lcd_reg1[HFP][6] , \lcd_reg1[HFP][5] , \lcd_reg1[HFP][4] ,
         \lcd_reg1[HFP][3] , \lcd_reg1[HFP][2] , \lcd_reg1[HFP][1] ,
         \lcd_reg1[HFP][0] , \lcd_reg1[HSW][7] , \lcd_reg1[HSW][6] ,
         \lcd_reg1[HSW][5] , \lcd_reg1[HSW][4] , \lcd_reg1[HSW][3] ,
         \lcd_reg1[HSW][2] , \lcd_reg1[HSW][1] , \lcd_reg1[HSW][0] ,
         \lcd_reg1[PPL][5] , \lcd_reg1[PPL][4] , \lcd_reg1[PPL][3] ,
         \lcd_reg1[PPL][2] , \lcd_reg1[PPL][1] , \lcd_reg1[PPL][0] ,
         \lcd_reg2[VBP][7] , \lcd_reg2[VBP][6] , \lcd_reg2[VBP][5] ,
         \lcd_reg2[VBP][4] , \lcd_reg2[VBP][3] , \lcd_reg2[VBP][2] ,
         \lcd_reg2[VBP][1] , \lcd_reg2[VBP][0] , \lcd_reg2[VFP][7] ,
         \lcd_reg2[VFP][6] , \lcd_reg2[VFP][5] , \lcd_reg2[VFP][4] ,
         \lcd_reg2[VFP][3] , \lcd_reg2[VFP][2] , \lcd_reg2[VFP][1] ,
         \lcd_reg2[VFP][0] , \lcd_reg2[VSW][5] , \lcd_reg2[VSW][4] ,
         \lcd_reg2[VSW][3] , \lcd_reg2[VSW][2] , \lcd_reg2[VSW][1] ,
         \lcd_reg2[VSW][0] , \lcd_reg2[LPP][9] , \lcd_reg2[LPP][8] ,
         \lcd_reg2[LPP][7] , \lcd_reg2[LPP][6] , \lcd_reg2[LPP][5] ,
         \lcd_reg2[LPP][4] , \lcd_reg2[LPP][3] , \lcd_reg2[LPP][2] ,
         \lcd_reg2[LPP][1] , \lcd_reg2[LPP][0] , \lcd_reg4[LEE] ,
         \lcd_reg4[LED][6] , \lcd_reg4[LED][5] , \lcd_reg4[LED][4] ,
         \lcd_reg4[LED][3] , \lcd_reg4[LED][2] , \lcd_reg4[LED][1] ,
         \lcd_reg4[LED][0] , \lcd_reg5[LCDUPBASE][28] ,
         \lcd_reg5[LCDUPBASE][27] , \lcd_reg5[LCDUPBASE][26] ,
         \lcd_reg5[LCDUPBASE][25] , \lcd_reg5[LCDUPBASE][24] ,
         \lcd_reg5[LCDUPBASE][23] , \lcd_reg5[LCDUPBASE][22] ,
         \lcd_reg5[LCDUPBASE][21] , \lcd_reg5[LCDUPBASE][20] ,
         \lcd_reg5[LCDUPBASE][19] , \lcd_reg5[LCDUPBASE][18] ,
         \lcd_reg5[LCDUPBASE][17] , \lcd_reg5[LCDUPBASE][16] ,
         \lcd_reg5[LCDUPBASE][15] , \lcd_reg5[LCDUPBASE][14] ,
         \lcd_reg5[LCDUPBASE][13] , \lcd_reg5[LCDUPBASE][12] ,
         \lcd_reg5[LCDUPBASE][11] , \lcd_reg5[LCDUPBASE][10] ,
         \lcd_reg5[LCDUPBASE][9] , \lcd_reg5[LCDUPBASE][8] ,
         \lcd_reg5[LCDUPBASE][7] , \lcd_reg5[LCDUPBASE][6] ,
         \lcd_reg5[LCDUPBASE][5] , \lcd_reg5[LCDUPBASE][4] ,
         \lcd_reg5[LCDUPBASE][3] , \lcd_reg5[LCDUPBASE][2] ,
         \lcd_reg5[LCDUPBASE][1] , \lcd_reg5[LCDUPBASE][0] ,
         \lcd_reg7[WATERMARK] , \lcd_reg7[LCDPWR] , \lcd_reg7[LCDTFT] ,
         \lcd_reg7[LCDBPP][2] , \lcd_reg7[LCDBPP][1] , \lcd_reg7[LCDBPP][0] ,
         \lcd_reg7[LCDEN] , fifo_push, _5_net_, pull_from_pixelserial,
         \LCD_master_inst/FIFO_push , \LCD_master_inst/count_w[2] ,
         \LCD_master_inst/count_w[4] , \LCD_master_inst/count_w[5] ,
         \LCD_master_inst/count_w[6] , \LCD_master_inst/count_w[7] ,
         \LCD_master_inst/count_w[8] , \LCD_master_inst/count_w[9] ,
         \LCD_master_inst/count_w[10] , \LCD_master_inst/count[2] ,
         \LCD_master_inst/count[3] , \LCD_master_inst/count[4] ,
         \LCD_master_inst/count[5] , \LCD_master_inst/count[6] ,
         \LCD_master_inst/count[7] , \LCD_master_inst/count[8] ,
         \LCD_master_inst/count[9] , \LCD_master_inst/count[10] ,
         \LCD_master_inst/state_q[0] , \LCD_master_inst/state_q[1] ,
         \LCD_master_inst/state_q[2] , \clk_div/N29 , \clk_div/N28 ,
         \clk_div/N27 , \clk_div/N26 , \clk_div/N25 ,
         \clk_div/temp_count_phaseshift[0] ,
         \clk_div/temp_count_phaseshift[1] ,
         \clk_div/temp_count_phaseshift[2] ,
         \clk_div/temp_count_phaseshift[3] ,
         \clk_div/temp_count_phaseshift[4] , \clk_div/N15 , \clk_div/N14 ,
         \clk_div/N13 , \clk_div/N12 , \clk_div/N11 , \clk_div/temp_count[0] ,
         \clk_div/temp_count[1] , \clk_div/temp_count[2] ,
         \clk_div/temp_count[3] , \clk_div/temp_count[4] , n66, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n154, n155, n156, n157, n158, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n194,
         \dma_logic/n99 , \dma_logic/n98 , \dma_logic/n97 , \dma_logic/n96 ,
         \dma_logic/n95 , \dma_logic/n94 , \dma_logic/n93 , \dma_logic/n92 ,
         \dma_logic/n91 , \dma_logic/n90 , \dma_logic/n89 , \dma_logic/n88 ,
         \dma_logic/n87 , \dma_logic/n85 , \dma_logic/n84 , \dma_logic/n83 ,
         \dma_logic/n82 , \dma_logic/n81 , \dma_logic/n80 , \dma_logic/n79 ,
         \dma_logic/n78 , \dma_logic/n77 , \dma_logic/n76 , \dma_logic/n74 ,
         \dma_logic/n73 , \dma_logic/n72 , \dma_logic/n71 , \dma_logic/n70 ,
         \dma_logic/n69 , \dma_logic/n68 , \dma_logic/n67 , \dma_logic/n66 ,
         \dma_logic/n65 , \dma_logic/n64 , \dma_logic/n63 , \dma_logic/n62 ,
         \dma_logic/n61 , \dma_logic/n60 , \dma_logic/n58 , \dma_logic/n57 ,
         \dma_logic/n56 , \dma_logic/n55 , \dma_logic/n54 ,
         \dma_logic/mod2_pull , \dma_logic/mod2_push , \dma_logic/w_ptr[0] ,
         \dma_logic/w_ptr[1] , \dma_logic/w_ptr[2] , \dma_logic/w_ptr[3] ,
         \dma_logic/w_ptr[4] , \dma_logic/w_ptr[5] , \dma_logic/r_ptr[0] ,
         \dma_logic/r_ptr[1] , \dma_logic/r_ptr[2] , \dma_logic/r_ptr[3] ,
         \dma_logic/r_ptr[4] , \dma_logic/r_ptr[5] ,
         \dma_logic/depth_left_bottom[0] , \dma_logic/depth_left_bottom[1] ,
         \dma_logic/depth_left_bottom[2] , \dma_logic/depth_left_bottom[3] ,
         \dma_logic/depth_left_bottom[4] , \dma_logic/depth_left_bottom[5] ,
         \dma_logic/depth_left_top[0] , \dma_logic/depth_left_top[1] ,
         \dma_logic/depth_left_top[2] , \dma_logic/depth_left_top[3] ,
         \dma_logic/depth_left_top[4] , \dma_logic/depth_left_top[5] , n197,
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
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n675, n676;
  wire   [31:0] data_out;
  wire   [2:0] \LCD_master_inst/state_ns ;
  tri   [4:0] \memif0.f0_waddr ;
  tri   \memif0.f0_write ;
  tri   [4:0] \memif0.f0_raddr ;
  tri   [31:0] \memif0.f0_rdata ;
  tri   [4:0] \memif1.f0_waddr ;
  tri   \memif1.f0_write ;
  tri   [4:0] \memif1.f0_raddr ;
  tri   [31:0] \memif1.f0_rdata ;
  tri   [6:0] \cpal.waddr ;
  tri   \cpal.write ;
  tri   [31:0] \cpal.wdata ;
  tri   [7:0] \cpal.raddr ;
  tri   \cpal.raddr1[6] ;
  tri   \cpal.raddr1[5] ;
  tri   \cpal.raddr1[4] ;
  tri   \cpal.raddr1[3] ;
  tri   \cpal.raddr1[2] ;
  tri   \cpal.raddr1[1] ;
  tri   \cpal.raddr1[0] ;
  tri   [15:0] \cpal.rdata ;
  tri   [15:0] \cpal.rdata1 ;
  tri   \lcdoutif.LCDPWR ;
  tri   \lcdoutif.LCDDCLK ;
  tri   \lcdoutif.LCDENA_LCDM ;
  tri   \lcdoutif.LCDFP ;
  tri   \lcdoutif.LCDLE ;
  tri   \lcdoutif.LCDLP ;
  tri   [23:0] \lcdoutif.LCDVD ;
  tri   [31:0] data_from_ahbmaster;
  tri   fp_pulse;
  tri   lcdena_lcdm;
  tri   n195;
  tri   \cpal.raddr1[7] ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80;
  assign data_from_ahbmaster[31] = \master.mHRDATA  [31];
  tran( data_from_ahbmaster[31], \memif1.f0_wdata  [31]);
  tran( data_from_ahbmaster[31], \memif0.f0_wdata  [31]);
  assign data_from_ahbmaster[30] = \master.mHRDATA  [30];
  tran( data_from_ahbmaster[30], \memif1.f0_wdata  [30]);
  tran( data_from_ahbmaster[30], \memif0.f0_wdata  [30]);
  assign data_from_ahbmaster[29] = \master.mHRDATA  [29];
  tran( data_from_ahbmaster[29], \memif1.f0_wdata  [29]);
  tran( data_from_ahbmaster[29], \memif0.f0_wdata  [29]);
  assign data_from_ahbmaster[28] = \master.mHRDATA  [28];
  tran( data_from_ahbmaster[28], \memif1.f0_wdata  [28]);
  tran( data_from_ahbmaster[28], \memif0.f0_wdata  [28]);
  assign data_from_ahbmaster[27] = \master.mHRDATA  [27];
  tran( data_from_ahbmaster[27], \memif1.f0_wdata  [27]);
  tran( data_from_ahbmaster[27], \memif0.f0_wdata  [27]);
  assign data_from_ahbmaster[26] = \master.mHRDATA  [26];
  tran( data_from_ahbmaster[26], \memif1.f0_wdata  [26]);
  tran( data_from_ahbmaster[26], \memif0.f0_wdata  [26]);
  assign data_from_ahbmaster[25] = \master.mHRDATA  [25];
  tran( data_from_ahbmaster[25], \memif1.f0_wdata  [25]);
  tran( data_from_ahbmaster[25], \memif0.f0_wdata  [25]);
  assign data_from_ahbmaster[24] = \master.mHRDATA  [24];
  tran( data_from_ahbmaster[24], \memif1.f0_wdata  [24]);
  tran( data_from_ahbmaster[24], \memif0.f0_wdata  [24]);
  assign data_from_ahbmaster[23] = \master.mHRDATA  [23];
  tran( data_from_ahbmaster[23], \memif1.f0_wdata  [23]);
  tran( data_from_ahbmaster[23], \memif0.f0_wdata  [23]);
  assign data_from_ahbmaster[22] = \master.mHRDATA  [22];
  tran( data_from_ahbmaster[22], \memif1.f0_wdata  [22]);
  tran( data_from_ahbmaster[22], \memif0.f0_wdata  [22]);
  assign data_from_ahbmaster[21] = \master.mHRDATA  [21];
  tran( data_from_ahbmaster[21], \memif1.f0_wdata  [21]);
  tran( data_from_ahbmaster[21], \memif0.f0_wdata  [21]);
  assign data_from_ahbmaster[20] = \master.mHRDATA  [20];
  tran( data_from_ahbmaster[20], \memif1.f0_wdata  [20]);
  tran( data_from_ahbmaster[20], \memif0.f0_wdata  [20]);
  assign data_from_ahbmaster[19] = \master.mHRDATA  [19];
  tran( data_from_ahbmaster[19], \memif1.f0_wdata  [19]);
  tran( data_from_ahbmaster[19], \memif0.f0_wdata  [19]);
  assign data_from_ahbmaster[18] = \master.mHRDATA  [18];
  tran( data_from_ahbmaster[18], \memif1.f0_wdata  [18]);
  tran( data_from_ahbmaster[18], \memif0.f0_wdata  [18]);
  assign data_from_ahbmaster[17] = \master.mHRDATA  [17];
  tran( data_from_ahbmaster[17], \memif1.f0_wdata  [17]);
  tran( data_from_ahbmaster[17], \memif0.f0_wdata  [17]);
  assign data_from_ahbmaster[16] = \master.mHRDATA  [16];
  tran( data_from_ahbmaster[16], \memif1.f0_wdata  [16]);
  tran( data_from_ahbmaster[16], \memif0.f0_wdata  [16]);
  assign data_from_ahbmaster[15] = \master.mHRDATA  [15];
  tran( data_from_ahbmaster[15], \memif1.f0_wdata  [15]);
  tran( data_from_ahbmaster[15], \memif0.f0_wdata  [15]);
  assign data_from_ahbmaster[14] = \master.mHRDATA  [14];
  tran( data_from_ahbmaster[14], \memif1.f0_wdata  [14]);
  tran( data_from_ahbmaster[14], \memif0.f0_wdata  [14]);
  assign data_from_ahbmaster[13] = \master.mHRDATA  [13];
  tran( data_from_ahbmaster[13], \memif1.f0_wdata  [13]);
  tran( data_from_ahbmaster[13], \memif0.f0_wdata  [13]);
  assign data_from_ahbmaster[12] = \master.mHRDATA  [12];
  tran( data_from_ahbmaster[12], \memif1.f0_wdata  [12]);
  tran( data_from_ahbmaster[12], \memif0.f0_wdata  [12]);
  assign data_from_ahbmaster[11] = \master.mHRDATA  [11];
  tran( data_from_ahbmaster[11], \memif1.f0_wdata  [11]);
  tran( data_from_ahbmaster[11], \memif0.f0_wdata  [11]);
  assign data_from_ahbmaster[10] = \master.mHRDATA  [10];
  tran( data_from_ahbmaster[10], \memif1.f0_wdata  [10]);
  tran( data_from_ahbmaster[10], \memif0.f0_wdata  [10]);
  assign data_from_ahbmaster[9] = \master.mHRDATA  [9];
  tran( data_from_ahbmaster[9], \memif1.f0_wdata  [9]);
  tran( data_from_ahbmaster[9], \memif0.f0_wdata  [9]);
  assign data_from_ahbmaster[8] = \master.mHRDATA  [8];
  tran( data_from_ahbmaster[8], \memif1.f0_wdata  [8]);
  tran( data_from_ahbmaster[8], \memif0.f0_wdata  [8]);
  assign data_from_ahbmaster[7] = \master.mHRDATA  [7];
  tran( data_from_ahbmaster[7], \memif1.f0_wdata  [7]);
  tran( data_from_ahbmaster[7], \memif0.f0_wdata  [7]);
  assign data_from_ahbmaster[6] = \master.mHRDATA  [6];
  tran( data_from_ahbmaster[6], \memif1.f0_wdata  [6]);
  tran( data_from_ahbmaster[6], \memif0.f0_wdata  [6]);
  assign data_from_ahbmaster[5] = \master.mHRDATA  [5];
  tran( data_from_ahbmaster[5], \memif1.f0_wdata  [5]);
  tran( data_from_ahbmaster[5], \memif0.f0_wdata  [5]);
  assign data_from_ahbmaster[4] = \master.mHRDATA  [4];
  tran( data_from_ahbmaster[4], \memif1.f0_wdata  [4]);
  tran( data_from_ahbmaster[4], \memif0.f0_wdata  [4]);
  assign data_from_ahbmaster[3] = \master.mHRDATA  [3];
  tran( data_from_ahbmaster[3], \memif1.f0_wdata  [3]);
  tran( data_from_ahbmaster[3], \memif0.f0_wdata  [3]);
  assign data_from_ahbmaster[2] = \master.mHRDATA  [2];
  tran( data_from_ahbmaster[2], \memif1.f0_wdata  [2]);
  tran( data_from_ahbmaster[2], \memif0.f0_wdata  [2]);
  assign data_from_ahbmaster[1] = \master.mHRDATA  [1];
  tran( data_from_ahbmaster[1], \memif1.f0_wdata  [1]);
  tran( data_from_ahbmaster[1], \memif0.f0_wdata  [1]);
  assign data_from_ahbmaster[0] = \master.mHRDATA  [0];
  tran( data_from_ahbmaster[0], \memif1.f0_wdata  [0]);
  tran( data_from_ahbmaster[0], \memif0.f0_wdata  [0]);
  assign \master.mHBURST  [0] = 1'b1;
  assign \master.mHSIZE  [1] = 1'b1;
  assign \cpal.raddr1  [7] = 1'b0;
  assign \master.mHWRITE  = 1'b0;
  assign \master.mHSIZE  [2] = 1'b0;
  assign \master.mHSIZE  [0] = 1'b0;
  assign \master.mHBURST  [2] = 1'b0;
  assign \master.mHBURST  [1] = 1'b0;
  assign \slave.HRESP  [1] = 1'b0;
  assign \slave.HRESP  [0] = 1'b0;

  LCD_slave LCD_slave_inst ( .HCLK(\clock.HCLK ), .HRESET(\clock.HRESET ), 
        .HSEL(\slave.HSEL ), .HADDR(\slave.HADDR ), .HWDATA(\slave.HWDATA ), 
        .HWRITE(\slave.HWRITE ), .HTRANS(\slave.HTRANS ), .HSIZE({1'b0, 1'b0, 
        1'b0}), .HBURST({1'b0, 1'b0, 1'b0}), .HRDATA(\slave.HRDATA ), .HREADY(
        \slave.HREADY ), .lcd_cfg({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        \lcd_reg0[CLKDIV][4] , \lcd_reg0[CLKDIV][3] , \lcd_reg0[CLKDIV][2] , 
        \lcd_reg0[CLKDIV][1] , \lcd_reg0[CLKDIV][0] }), .lcd_timh({
        \lcd_reg1[HBP][7] , \lcd_reg1[HBP][6] , \lcd_reg1[HBP][5] , 
        \lcd_reg1[HBP][4] , \lcd_reg1[HBP][3] , \lcd_reg1[HBP][2] , 
        \lcd_reg1[HBP][1] , \lcd_reg1[HBP][0] , \lcd_reg1[HFP][7] , 
        \lcd_reg1[HFP][6] , \lcd_reg1[HFP][5] , \lcd_reg1[HFP][4] , 
        \lcd_reg1[HFP][3] , \lcd_reg1[HFP][2] , \lcd_reg1[HFP][1] , 
        \lcd_reg1[HFP][0] , \lcd_reg1[HSW][7] , \lcd_reg1[HSW][6] , 
        \lcd_reg1[HSW][5] , \lcd_reg1[HSW][4] , \lcd_reg1[HSW][3] , 
        \lcd_reg1[HSW][2] , \lcd_reg1[HSW][1] , \lcd_reg1[HSW][0] , 
        \lcd_reg1[PPL][5] , \lcd_reg1[PPL][4] , \lcd_reg1[PPL][3] , 
        \lcd_reg1[PPL][2] , \lcd_reg1[PPL][1] , \lcd_reg1[PPL][0] , 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28}), .lcd_timv({
        \lcd_reg2[VBP][7] , \lcd_reg2[VBP][6] , \lcd_reg2[VBP][5] , 
        \lcd_reg2[VBP][4] , \lcd_reg2[VBP][3] , \lcd_reg2[VBP][2] , 
        \lcd_reg2[VBP][1] , \lcd_reg2[VBP][0] , \lcd_reg2[VFP][7] , 
        \lcd_reg2[VFP][6] , \lcd_reg2[VFP][5] , \lcd_reg2[VFP][4] , 
        \lcd_reg2[VFP][3] , \lcd_reg2[VFP][2] , \lcd_reg2[VFP][1] , 
        \lcd_reg2[VFP][0] , \lcd_reg2[VSW][5] , \lcd_reg2[VSW][4] , 
        \lcd_reg2[VSW][3] , \lcd_reg2[VSW][2] , \lcd_reg2[VSW][1] , 
        \lcd_reg2[VSW][0] , \lcd_reg2[LPP][9] , \lcd_reg2[LPP][8] , 
        \lcd_reg2[LPP][7] , \lcd_reg2[LPP][6] , \lcd_reg2[LPP][5] , 
        \lcd_reg2[LPP][4] , \lcd_reg2[LPP][3] , \lcd_reg2[LPP][2] , 
        \lcd_reg2[LPP][1] , \lcd_reg2[LPP][0] }), .lcd_le({
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, \lcd_reg4[LEE] , SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, \lcd_reg4[LED][6] , 
        \lcd_reg4[LED][5] , \lcd_reg4[LED][4] , \lcd_reg4[LED][3] , 
        \lcd_reg4[LED][2] , \lcd_reg4[LED][1] , \lcd_reg4[LED][0] }), 
        .lcd_upbase({\lcd_reg5[LCDUPBASE][28] , \lcd_reg5[LCDUPBASE][27] , 
        \lcd_reg5[LCDUPBASE][26] , \lcd_reg5[LCDUPBASE][25] , 
        \lcd_reg5[LCDUPBASE][24] , \lcd_reg5[LCDUPBASE][23] , 
        \lcd_reg5[LCDUPBASE][22] , \lcd_reg5[LCDUPBASE][21] , 
        \lcd_reg5[LCDUPBASE][20] , \lcd_reg5[LCDUPBASE][19] , 
        \lcd_reg5[LCDUPBASE][18] , \lcd_reg5[LCDUPBASE][17] , 
        \lcd_reg5[LCDUPBASE][16] , \lcd_reg5[LCDUPBASE][15] , 
        \lcd_reg5[LCDUPBASE][14] , \lcd_reg5[LCDUPBASE][13] , 
        \lcd_reg5[LCDUPBASE][12] , \lcd_reg5[LCDUPBASE][11] , 
        \lcd_reg5[LCDUPBASE][10] , \lcd_reg5[LCDUPBASE][9] , 
        \lcd_reg5[LCDUPBASE][8] , \lcd_reg5[LCDUPBASE][7] , 
        \lcd_reg5[LCDUPBASE][6] , \lcd_reg5[LCDUPBASE][5] , 
        \lcd_reg5[LCDUPBASE][4] , \lcd_reg5[LCDUPBASE][3] , 
        \lcd_reg5[LCDUPBASE][2] , \lcd_reg5[LCDUPBASE][1] , 
        \lcd_reg5[LCDUPBASE][0] , SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55}), .lcd_ctrl({
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, \lcd_reg7[WATERMARK] , 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, \lcd_reg7[LCDPWR] , 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, \lcd_reg7[LCDTFT] , SYNOPSYS_UNCONNECTED__80, 
        \lcd_reg7[LCDBPP][2] , \lcd_reg7[LCDBPP][1] , \lcd_reg7[LCDBPP][0] , 
        \lcd_reg7[LCDEN] }), .rdata_rpal_slave({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \cpal.rdata1 }), .write_slave_rampal(\cpal.write ), 
        .data_slave_rampal(\cpal.wdata ), .addr_slave_rampal(\cpal.waddr ) );
  timing_control time_ctrl ( .pixel_clk(n195), .rst(\clock.HRESET ), .cclk(
        \clock.HCLK ), .lcd_timh({\lcd_reg1[HBP][7] , \lcd_reg1[HBP][6] , 
        \lcd_reg1[HBP][5] , \lcd_reg1[HBP][4] , \lcd_reg1[HBP][3] , 
        \lcd_reg1[HBP][2] , \lcd_reg1[HBP][1] , \lcd_reg1[HBP][0] , 
        \lcd_reg1[HFP][7] , \lcd_reg1[HFP][6] , \lcd_reg1[HFP][5] , 
        \lcd_reg1[HFP][4] , \lcd_reg1[HFP][3] , \lcd_reg1[HFP][2] , 
        \lcd_reg1[HFP][1] , \lcd_reg1[HFP][0] , \lcd_reg1[HSW][7] , 
        \lcd_reg1[HSW][6] , \lcd_reg1[HSW][5] , \lcd_reg1[HSW][4] , 
        \lcd_reg1[HSW][3] , \lcd_reg1[HSW][2] , \lcd_reg1[HSW][1] , 
        \lcd_reg1[HSW][0] , \lcd_reg1[PPL][5] , \lcd_reg1[PPL][4] , 
        \lcd_reg1[PPL][3] , \lcd_reg1[PPL][2] , \lcd_reg1[PPL][1] , 
        \lcd_reg1[PPL][0] , 1'b0, 1'b0}), .lcd_timv({\lcd_reg2[VBP][7] , 
        \lcd_reg2[VBP][6] , \lcd_reg2[VBP][5] , \lcd_reg2[VBP][4] , 
        \lcd_reg2[VBP][3] , \lcd_reg2[VBP][2] , \lcd_reg2[VBP][1] , 
        \lcd_reg2[VBP][0] , \lcd_reg2[VFP][7] , \lcd_reg2[VFP][6] , 
        \lcd_reg2[VFP][5] , \lcd_reg2[VFP][4] , \lcd_reg2[VFP][3] , 
        \lcd_reg2[VFP][2] , \lcd_reg2[VFP][1] , \lcd_reg2[VFP][0] , 
        \lcd_reg2[VSW][5] , \lcd_reg2[VSW][4] , \lcd_reg2[VSW][3] , 
        \lcd_reg2[VSW][2] , \lcd_reg2[VSW][1] , \lcd_reg2[VSW][0] , 
        \lcd_reg2[LPP][9] , \lcd_reg2[LPP][8] , \lcd_reg2[LPP][7] , 
        \lcd_reg2[LPP][6] , \lcd_reg2[LPP][5] , \lcd_reg2[LPP][4] , 
        \lcd_reg2[LPP][3] , \lcd_reg2[LPP][2] , \lcd_reg2[LPP][1] , 
        \lcd_reg2[LPP][0] }), .lcd_en(\lcd_reg7[LCDEN] ), .lcd_pwr(
        \lcd_reg7[LCDPWR] ), .LCDPWR(\lcdoutif.LCDPWR ), .LCDDCLK(
        \lcdoutif.LCDDCLK ), .LCDFP(\lcdoutif.LCDFP ), .LCDLE(\lcdoutif.LCDLE ), .LCDLP(\lcdoutif.LCDLP ), .LCDENA_LCDM(\lcdoutif.LCDENA_LCDM ), 
        .Lcdena_lcdm(lcdena_lcdm), .lcd_le({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \lcd_reg4[LEE] , 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \lcd_reg4[LED][6] , \lcd_reg4[LED][5] , \lcd_reg4[LED][4] , 
        \lcd_reg4[LED][3] , \lcd_reg4[LED][2] , \lcd_reg4[LED][1] , 
        \lcd_reg4[LED][0] }), .fp_pulse(fp_pulse) );
  pixel_serializer PS ( .hclk(\clock.HCLK ), .clk(n195), .lcdena_lcdm(
        lcdena_lcdm), .rst(\clock.HRESET ), .bepo(1'b0), .bebo(1'b0), .bgr(
        1'b0), .lcdtft(1'b0), .data_in_fifo(data_out), .lcdbpp({
        \lcd_reg7[LCDBPP][2] , \lcd_reg7[LCDBPP][1] , \lcd_reg7[LCDBPP][0] }), 
        .pull(pull_from_pixelserial), .lcddvd(\lcdoutif.LCDVD ), 
        .pixel_clk_phaseshift(n194), .addr_to_rpal(\cpal.raddr ), 
        .rpal_datain(\cpal.rdata ) );
  CFD4QXL \clk_div/temp_count_reg[4]  ( .D(\clk_div/N15 ), .CP(\clock.HCLK ), 
        .SD(n639), .Q(\clk_div/temp_count[4] ) );
  CFD4QXL \clk_div/temp_count_reg[0]  ( .D(\clk_div/N11 ), .CP(\clock.HCLK ), 
        .SD(n639), .Q(\clk_div/temp_count[0] ) );
  CFD4QXL \clk_div/temp_count_reg[1]  ( .D(\clk_div/N12 ), .CP(\clock.HCLK ), 
        .SD(n639), .Q(\clk_div/temp_count[1] ) );
  CFD4QXL \clk_div/temp_count_reg[2]  ( .D(\clk_div/N13 ), .CP(\clock.HCLK ), 
        .SD(n639), .Q(\clk_div/temp_count[2] ) );
  CFD4QXL \clk_div/temp_count_reg[3]  ( .D(\clk_div/N14 ), .CP(\clock.HCLK ), 
        .SD(n639), .Q(\clk_div/temp_count[3] ) );
  CFD2QX1 \LCD_master_inst/state_q_reg[1]  ( .D(\LCD_master_inst/state_ns [1]), 
        .CP(\clock.HCLK ), .CD(n640), .Q(\LCD_master_inst/state_q[1] ) );
  CFD2QX1 \LCD_master_inst/state_q_reg[2]  ( .D(\LCD_master_inst/state_ns [2]), 
        .CP(\clock.HCLK ), .CD(n640), .Q(\LCD_master_inst/state_q[2] ) );
  CND2X1 U7 ( .A(\cpal.waddr [6]), .B(N1), .Z(n154) );
  CND2X1 U8 ( .A(\cpal.waddr [5]), .B(N1), .Z(n155) );
  CND2X1 U9 ( .A(\cpal.waddr [4]), .B(N1), .Z(n156) );
  CND2X1 U10 ( .A(\cpal.waddr [3]), .B(N1), .Z(n157) );
  CND2X1 U11 ( .A(\cpal.waddr [2]), .B(N1), .Z(n158) );
  CND2X1 U12 ( .A(\cpal.waddr [1]), .B(N1), .Z(n160) );
  CNR2X1 U129 ( .A(\clk_div/temp_count[3] ), .B(n66), .Z(n195) );
  CAOR2X1 U232 ( .A(\cpal.write ), .B(1'b0), .C(N1), .D(\cpal.waddr [0]), .Z(
        \cpal.raddr1 [0]) );
  CFD4QXL \dma_logic/fifo_bottom/depth_left_reg[5]  ( .D(\dma_logic/n99 ), 
        .CP(\clock.HCLK ), .SD(n638), .Q(\dma_logic/depth_left_bottom[5] ) );
  CFD2QX1 \dma_logic/fifo_bottom/depth_left_reg[3]  ( .D(\dma_logic/n94 ), 
        .CP(\clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_bottom[3] ) );
  CFD2QX1 \dma_logic/fifo_bottom/depth_left_reg[2]  ( .D(\dma_logic/n95 ), 
        .CP(\clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_bottom[2] ) );
  CFD2QX1 \dma_logic/fifo_bottom/depth_left_reg[1]  ( .D(\dma_logic/n96 ), 
        .CP(\clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_bottom[1] ) );
  CFD2QX1 \dma_logic/fifo_bottom/depth_left_reg[4]  ( .D(\dma_logic/n98 ), 
        .CP(\clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_bottom[4] ) );
  CFD2QX1 \dma_logic/fifo_top/depth_left_reg[4]  ( .D(\dma_logic/n66 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_top[4] ) );
  CFD2QX1 \dma_logic/fifo_top/depth_left_reg[3]  ( .D(\dma_logic/n67 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_top[3] ) );
  CFD2QX1 \dma_logic/fifo_top/depth_left_reg[2]  ( .D(\dma_logic/n68 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_top[2] ) );
  CFD2QX1 \dma_logic/fifo_top/depth_left_reg[1]  ( .D(\dma_logic/n69 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_top[1] ) );
  CIVX1 U226 ( .A(n160), .Z(\cpal.raddr1 [1]) );
  CIVX1 U227 ( .A(n158), .Z(\cpal.raddr1 [2]) );
  CIVX1 U228 ( .A(n157), .Z(\cpal.raddr1 [3]) );
  CIVX1 U229 ( .A(n156), .Z(\cpal.raddr1 [4]) );
  CIVX1 U230 ( .A(n155), .Z(\cpal.raddr1 [5]) );
  CIVX1 U231 ( .A(n154), .Z(\cpal.raddr1 [6]) );
  CFD2QX1 \dma_logic/fifo_bottom/depth_left_reg[0]  ( .D(\dma_logic/n97 ), 
        .CP(\clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_bottom[0] ) );
  CFD2QX1 \dma_logic/fifo_top/depth_left_reg[0]  ( .D(\dma_logic/n70 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\dma_logic/depth_left_top[0] ) );
  CFDN4QX2 \clk_div/temp_count_phaseshift_reg[2]  ( .D(\clk_div/N27 ), .CPN(
        \clock.HCLK ), .SD(n639), .Q(\clk_div/temp_count_phaseshift[2] ) );
  CFD2QXL \dma_logic/fifo_bottom/r_ptr_reg[4]  ( .D(\dma_logic/n87 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_raddr [4]) );
  CFD2QXL \dma_logic/fifo_top/r_ptr_reg[4]  ( .D(\dma_logic/n60 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_raddr [4]) );
  CFD2QXL \dma_logic/fifo_bottom/w_ptr_reg[4]  ( .D(\dma_logic/n92 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_waddr [4]) );
  CFD2QXL \dma_logic/fifo_top/w_ptr_reg[4]  ( .D(\dma_logic/n65 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_waddr [4]) );
  CFD2QXL \dma_logic/w_ptr_reg[1]  ( .D(\dma_logic/n81 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[1] ) );
  CFD2QXL \dma_logic/r_ptr_reg[1]  ( .D(n632), .CP(\clock.HCLK ), .CD(n638), 
        .Q(\dma_logic/r_ptr[1] ) );
  CFD2QXL \dma_logic/w_ptr_reg[3]  ( .D(\dma_logic/n79 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[3] ) );
  CFD2QXL \dma_logic/w_ptr_reg[2]  ( .D(\dma_logic/n80 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[2] ) );
  CFD2QXL \dma_logic/w_ptr_reg[0]  ( .D(\dma_logic/n82 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[0] ) );
  CFD2QXL \dma_logic/w_ptr_reg[4]  ( .D(\dma_logic/n78 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[4] ) );
  CFD3QXL \LCD_master_inst/count_reg[8]  ( .D(\LCD_master_inst/count_w[8] ), 
        .CP(\clock.HCLK ), .CD(n148), .SD(n147), .Q(\LCD_master_inst/count[8] ) );
  CFD3QXL \LCD_master_inst/count_reg[9]  ( .D(\LCD_master_inst/count_w[9] ), 
        .CP(\clock.HCLK ), .CD(n150), .SD(n149), .Q(\LCD_master_inst/count[9] ) );
  CFD2QXL \dma_logic/r_ptr_reg[4]  ( .D(\dma_logic/n72 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/r_ptr[4] ) );
  CFD2QXL \dma_logic/fifo_bottom/r_ptr_reg[3]  ( .D(\dma_logic/n83 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_raddr [3]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[27]  ( .D(n165), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [27]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[28]  ( .D(n164), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [28]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[29]  ( .D(n163), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [29]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[30]  ( .D(n162), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [30]) );
  CFD3QXL \LCD_master_inst/count_reg[7]  ( .D(\LCD_master_inst/count_w[7] ), 
        .CP(\clock.HCLK ), .CD(n146), .SD(n145), .Q(\LCD_master_inst/count[7] ) );
  CFD2QXL \dma_logic/r_ptr_reg[2]  ( .D(\dma_logic/n74 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/r_ptr[2] ) );
  CFD2QXL \dma_logic/fifo_top/r_ptr_reg[3]  ( .D(\dma_logic/n56 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_raddr [3]) );
  CFD2QXL \dma_logic/mod2_pull_reg  ( .D(\dma_logic/n54 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/mod2_pull ) );
  CFD2QXL \dma_logic/r_ptr_reg[3]  ( .D(\dma_logic/n73 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/r_ptr[3] ) );
  CFD2QXL \dma_logic/fifo_bottom/w_ptr_reg[0]  ( .D(\dma_logic/n91 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_waddr [0]) );
  CFD2QXL \dma_logic/fifo_bottom/w_ptr_reg[3]  ( .D(\dma_logic/n88 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_waddr [3]) );
  CFD2QXL \dma_logic/fifo_top/w_ptr_reg[3]  ( .D(\dma_logic/n61 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_waddr [3]) );
  CFD2QXL \dma_logic/fifo_bottom/r_ptr_reg[0]  ( .D(n634), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\memif1.f0_raddr [0]) );
  CFD2QXL \dma_logic/fifo_bottom/r_ptr_reg[1]  ( .D(\dma_logic/n85 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_raddr [1]) );
  CFD2QXL \dma_logic/r_ptr_reg[0]  ( .D(\dma_logic/n76 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/r_ptr[0] ) );
  CFD2QXL \dma_logic/fifo_top/w_ptr_reg[0]  ( .D(\dma_logic/n64 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_waddr [0]) );
  CFD2QXL \dma_logic/fifo_bottom/r_ptr_reg[2]  ( .D(\dma_logic/n84 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_raddr [2]) );
  CFD2QXL \dma_logic/fifo_top/r_ptr_reg[2]  ( .D(\dma_logic/n57 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_raddr [2]) );
  CFD2QXL \dma_logic/fifo_top/w_ptr_reg[2]  ( .D(\dma_logic/n62 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_waddr [2]) );
  CFD2QXL \dma_logic/fifo_bottom/w_ptr_reg[1]  ( .D(\dma_logic/n90 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_waddr [1]) );
  CFD2QXL \dma_logic/fifo_top/r_ptr_reg[0]  ( .D(n633), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\memif0.f0_raddr [0]) );
  CFD2QXL \dma_logic/w_ptr_reg[5]  ( .D(\dma_logic/n93 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/w_ptr[5] ) );
  CFD2QXL \dma_logic/fifo_top/r_ptr_reg[1]  ( .D(\dma_logic/n58 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_raddr [1]) );
  CFD2QXL \dma_logic/fifo_top/w_ptr_reg[1]  ( .D(\dma_logic/n63 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif0.f0_waddr [1]) );
  CFD3QXL \LCD_master_inst/count_reg[4]  ( .D(\LCD_master_inst/count_w[4] ), 
        .CP(\clock.HCLK ), .CD(n140), .SD(n139), .Q(\LCD_master_inst/count[4] ) );
  CFD3QXL \LCD_master_inst/count_reg[6]  ( .D(\LCD_master_inst/count_w[6] ), 
        .CP(\clock.HCLK ), .CD(n144), .SD(n143), .Q(\LCD_master_inst/count[6] ) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[21]  ( .D(n171), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [21]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[22]  ( .D(n170), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [22]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[23]  ( .D(n169), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [23]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[24]  ( .D(n168), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [24]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[25]  ( .D(n167), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [25]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[26]  ( .D(n166), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [26]) );
  CFD3QXL \LCD_master_inst/count_reg[5]  ( .D(\LCD_master_inst/count_w[5] ), 
        .CP(\clock.HCLK ), .CD(n142), .SD(n141), .Q(\LCD_master_inst/count[5] ) );
  CFD2QXL \dma_logic/mod2_push_reg  ( .D(\dma_logic/n55 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/mod2_push ) );
  CFD2QXL \LCD_master_inst/FIFO_push_d_reg  ( .D(\LCD_master_inst/FIFO_push ), 
        .CP(\clock.HCLK ), .CD(n640), .Q(fifo_push) );
  CFD3QXL \LCD_master_inst/count_reg[3]  ( .D(n673), .CP(\clock.HCLK ), .CD(
        n138), .SD(n137), .Q(\LCD_master_inst/count[3] ) );
  CFD3QXL \LCD_master_inst/count_reg[2]  ( .D(\LCD_master_inst/count_w[2] ), 
        .CP(\clock.HCLK ), .CD(n136), .SD(n135), .Q(\LCD_master_inst/count[2] ) );
  CFD3QXL \LCD_master_inst/count_reg[10]  ( .D(\LCD_master_inst/count_w[10] ), 
        .CP(\clock.HCLK ), .CD(n152), .SD(n151), .Q(
        \LCD_master_inst/count[10] ) );
  CFD2QXL \dma_logic/r_ptr_reg[5]  ( .D(\dma_logic/n77 ), .CP(\clock.HCLK ), 
        .CD(n638), .Q(\dma_logic/r_ptr[5] ) );
  CFD4QXL \dma_logic/fifo_top/depth_left_reg[5]  ( .D(\dma_logic/n71 ), .CP(
        \clock.HCLK ), .SD(n638), .Q(\dma_logic/depth_left_top[5] ) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[1]  ( .D(n191), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [1]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[4]  ( .D(n188), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [4]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[6]  ( .D(n186), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [6]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[8]  ( .D(n184), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [8]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[9]  ( .D(n183), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [9]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[10]  ( .D(n182), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [10]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[11]  ( .D(n181), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [11]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[12]  ( .D(n180), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [12]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[13]  ( .D(n179), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [13]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[14]  ( .D(n178), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [14]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[15]  ( .D(n177), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [15]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[16]  ( .D(n176), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [16]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[17]  ( .D(n175), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [17]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[18]  ( .D(n174), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [18]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[0]  ( .D(n192), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [0]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[19]  ( .D(n173), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [19]) );
  CFD2QXL \LCD_master_inst/state_q_reg[0]  ( .D(\LCD_master_inst/state_ns [0]), 
        .CP(\clock.HCLK ), .CD(n640), .Q(\LCD_master_inst/state_q[0] ) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[3]  ( .D(n189), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [3]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[5]  ( .D(n187), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [5]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[20]  ( .D(n172), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [20]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[2]  ( .D(n190), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [2]) );
  CFDN4QX2 \clk_div/temp_count_phaseshift_reg[4]  ( .D(\clk_div/N29 ), .CPN(
        \clock.HCLK ), .SD(n639), .Q(\clk_div/temp_count_phaseshift[4] ) );
  CFDN4QX2 \clk_div/temp_count_phaseshift_reg[1]  ( .D(\clk_div/N26 ), .CPN(
        \clock.HCLK ), .SD(n639), .Q(\clk_div/temp_count_phaseshift[1] ) );
  CFDN4QX4 \clk_div/temp_count_phaseshift_reg[3]  ( .D(\clk_div/N28 ), .CPN(
        \clock.HCLK ), .SD(n639), .Q(\clk_div/temp_count_phaseshift[3] ) );
  CIVX2 U6 ( .A(\cpal.write ), .Z(N1) );
  CFDN4QX2 \clk_div/temp_count_phaseshift_reg[0]  ( .D(\clk_div/N25 ), .CPN(
        \clock.HCLK ), .SD(n639), .Q(\clk_div/temp_count_phaseshift[0] ) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[31]  ( .D(n161), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [31]) );
  CFD2QXL \LCD_master_inst/DMA_addr_reg_reg[7]  ( .D(n185), .CP(\clock.HCLK ), 
        .CD(n640), .Q(\master.mHADDR [7]) );
  CFD2QXL \dma_logic/fifo_bottom/w_ptr_reg[2]  ( .D(\dma_logic/n89 ), .CP(
        \clock.HCLK ), .CD(n638), .Q(\memif1.f0_waddr [2]) );
  CIVXL U233 ( .A(\clk_div/temp_count_phaseshift[0] ), .Z(n197) );
  CIVX2 U234 ( .A(n197), .Z(n198) );
  CNR2X1 U235 ( .A(n461), .B(n482), .Z(n450) );
  CAN2X1 U236 ( .A(\dma_logic/r_ptr[5] ), .B(n638), .Z(n631) );
  CIVX2 U237 ( .A(\clk_div/temp_count_phaseshift[2] ), .Z(n583) );
  CEOX1 U238 ( .A(\memif1.f0_waddr [1]), .B(n661), .Z(\dma_logic/n90 ) );
  CENX1 U239 ( .A(n370), .B(\dma_logic/r_ptr[2] ), .Z(\dma_logic/n74 ) );
  CNR2IX1 U240 ( .B(\memif0.f0_waddr [3]), .A(n647), .Z(n642) );
  CIVX2 U241 ( .A(_5_net_), .Z(n638) );
  CND2IX1 U242 ( .B(\LCD_master_inst/state_q[1] ), .A(
        \LCD_master_inst/state_q[0] ), .Z(n602) );
  CND2IX1 U243 ( .B(n358), .A(n615), .Z(n367) );
  COND1XL U244 ( .A(n461), .B(n460), .C(n563), .Z(n199) );
  CANR2X1 U245 ( .A(n579), .B(\master.mHADDR [3]), .C(\lcd_reg5[LCDUPBASE][0] ), .D(n580), .Z(n200) );
  COND4CX1 U246 ( .A(n460), .B(n461), .C(n199), .D(n200), .Z(n189) );
  CND2X1 U247 ( .A(n252), .B(n251), .Z(n201) );
  CENX1 U248 ( .A(n253), .B(n201), .Z(n202) );
  CANR4CX1 U249 ( .A(\dma_logic/depth_left_top[0] ), .B(
        \dma_logic/depth_left_bottom[0] ), .C(n253), .D(n591), .Z(n203) );
  CND3XL U250 ( .A(n202), .B(n601), .C(n203), .Z(n312) );
  CNR2IX1 U251 ( .B(n359), .A(n365), .Z(n366) );
  COND1XL U252 ( .A(n503), .B(n502), .C(n577), .Z(n204) );
  CANR2X1 U253 ( .A(n579), .B(\master.mHADDR [19]), .C(
        \lcd_reg5[LCDUPBASE][16] ), .D(n580), .Z(n205) );
  COND4CX1 U254 ( .A(n502), .B(n503), .C(n204), .D(n205), .Z(n173) );
  CND2IX1 U255 ( .B(n340), .A(n338), .Z(n446) );
  CNR2IX1 U256 ( .B(n349), .A(n676), .Z(n658) );
  CIVX1 U257 ( .A(\master.mHREADY ), .Z(n206) );
  CND4X1 U258 ( .A(\LCD_master_inst/count[10] ), .B(n276), .C(\master.mHGRANT ), .D(n206), .Z(n589) );
  COND3X1 U259 ( .A(n272), .B(\master.mHADDR [0]), .C(n265), .D(n577), .Z(n207) );
  CND2X1 U260 ( .A(\master.mHADDR [0]), .B(n579), .Z(n208) );
  CND2X1 U261 ( .A(n208), .B(n207), .Z(n192) );
  CND2X1 U262 ( .A(\LCD_master_inst/count[5] ), .B(n281), .Z(n209) );
  CIVX1 U263 ( .A(\LCD_master_inst/count[6] ), .Z(n210) );
  COND2X1 U264 ( .A(n367), .B(n209), .C(n356), .D(n210), .Z(
        \LCD_master_inst/count_w[6] ) );
  CNR2IX1 U265 ( .B(n648), .A(n675), .Z(n412) );
  CND2IX1 U266 ( .B(n534), .A(n535), .Z(n544) );
  CNR2X1 U267 ( .A(n380), .B(n665), .Z(n671) );
  CND2X1 U268 ( .A(\LCD_master_inst/state_q[1] ), .B(n274), .Z(n211) );
  CND2X1 U269 ( .A(n211), .B(\LCD_master_inst/state_q[0] ), .Z(n212) );
  COND3X1 U270 ( .A(n604), .B(\master.mHGRANT ), .C(n278), .D(n212), .Z(n332)
         );
  COND1XL U271 ( .A(n510), .B(n511), .C(n563), .Z(n213) );
  CANR2X1 U272 ( .A(n573), .B(\master.mHADDR [17]), .C(
        \lcd_reg5[LCDUPBASE][14] ), .D(n580), .Z(n214) );
  COND4CX1 U273 ( .A(n511), .B(n510), .C(n213), .D(n214), .Z(n175) );
  COND2X1 U274 ( .A(n282), .B(n287), .C(n283), .D(n286), .Z(
        \LCD_master_inst/count_w[9] ) );
  CIVX1 U275 ( .A(n389), .Z(n215) );
  CNR4X1 U276 ( .A(\dma_logic/depth_left_bottom[2] ), .B(
        \dma_logic/depth_left_bottom[1] ), .C(n598), .D(n215), .Z(n374) );
  CIVX1 U277 ( .A(n420), .Z(n216) );
  CNR4X1 U278 ( .A(\dma_logic/depth_left_top[1] ), .B(
        \dma_logic/depth_left_top[2] ), .C(n596), .D(n216), .Z(n337) );
  CND2IX1 U279 ( .B(n496), .A(n530), .Z(n502) );
  CNR2IX1 U280 ( .B(n450), .A(n460), .Z(n462) );
  CNR2X1 U281 ( .A(\dma_logic/depth_left_top[4] ), .B(n436), .Z(n217) );
  CEOX1 U282 ( .A(n217), .B(\dma_logic/depth_left_top[5] ), .Z(n441) );
  CNR2X1 U283 ( .A(\dma_logic/depth_left_bottom[4] ), .B(n400), .Z(n218) );
  CEOX1 U284 ( .A(n218), .B(\dma_logic/depth_left_bottom[5] ), .Z(n405) );
  COND1XL U285 ( .A(n543), .B(n542), .C(n563), .Z(n219) );
  CANR2X1 U286 ( .A(n573), .B(\master.mHADDR [13]), .C(
        \lcd_reg5[LCDUPBASE][10] ), .D(n580), .Z(n220) );
  COND4CX1 U287 ( .A(n542), .B(n543), .C(n219), .D(n220), .Z(n179) );
  CANR2X1 U288 ( .A(n561), .B(\master.mHADDR [9]), .C(\lcd_reg5[LCDUPBASE][6] ), .D(n580), .Z(n221) );
  COND1XL U289 ( .A(n560), .B(n559), .C(n563), .Z(n222) );
  COND4CX1 U290 ( .A(n559), .B(n560), .C(n222), .D(n221), .Z(n183) );
  CEOX1 U291 ( .A(pull_from_pixelserial), .B(\dma_logic/mod2_pull ), .Z(
        \dma_logic/n54 ) );
  CIVX1 U292 ( .A(\LCD_master_inst/count[8] ), .Z(n223) );
  CND2X1 U293 ( .A(\LCD_master_inst/count[7] ), .B(n283), .Z(n224) );
  COND2X1 U294 ( .A(n287), .B(n223), .C(n357), .D(n224), .Z(
        \LCD_master_inst/count_w[8] ) );
  CND2X2 U295 ( .A(pull_from_pixelserial), .B(n373), .Z(n225) );
  CIVX2 U296 ( .A(n225), .Z(n338) );
  CND2IX2 U297 ( .B(n226), .A(n446), .Z(n644) );
  CIVX2 U298 ( .A(n412), .Z(n226) );
  COR2X1 U299 ( .A(\dma_logic/depth_left_top[3] ), .B(
        \dma_logic/depth_left_bottom[3] ), .Z(n227) );
  CNR2X2 U300 ( .A(\dma_logic/depth_left_top[5] ), .B(
        \dma_logic/depth_left_bottom[5] ), .Z(n592) );
  CIVX2 U301 ( .A(n592), .Z(n268) );
  CIVX2 U302 ( .A(n241), .Z(n242) );
  CIVXL U303 ( .A(\dma_logic/w_ptr[5] ), .Z(n229) );
  CIVX1 U304 ( .A(\dma_logic/depth_left_top[5] ), .Z(n444) );
  CIVX2 U305 ( .A(\dma_logic/depth_left_top[4] ), .Z(n419) );
  CIVX2 U306 ( .A(\dma_logic/depth_left_top[3] ), .Z(n426) );
  CND2X1 U307 ( .A(n419), .B(n426), .Z(n596) );
  CIVX2 U308 ( .A(\dma_logic/depth_left_top[0] ), .Z(n420) );
  CND2X1 U309 ( .A(n444), .B(n337), .Z(n648) );
  CIVX2 U310 ( .A(\lcd_reg7[LCDTFT] ), .Z(n597) );
  CIVX1 U311 ( .A(fifo_push), .Z(n269) );
  CANR1XL U312 ( .A(\dma_logic/mod2_push ), .B(n597), .C(n269), .Z(n228) );
  COND4CX1 U313 ( .A(n229), .B(n648), .C(n597), .D(n228), .Z(n675) );
  CIVX2 U314 ( .A(\master.mHREADY ), .Z(n617) );
  CIVX2 U315 ( .A(\LCD_master_inst/state_q[0] ), .Z(n605) );
  CND2X1 U316 ( .A(n605), .B(\LCD_master_inst/state_q[2] ), .Z(n230) );
  CNR2X2 U317 ( .A(n230), .B(\LCD_master_inst/state_q[1] ), .Z(n272) );
  CND2X1 U318 ( .A(n617), .B(n272), .Z(n278) );
  CNR2IX1 U319 ( .B(\LCD_master_inst/state_q[1] ), .A(
        \LCD_master_inst/state_q[2] ), .Z(n273) );
  CND2X1 U320 ( .A(n273), .B(n605), .Z(n604) );
  CND4X1 U321 ( .A(\dma_logic/depth_left_top[4] ), .B(
        \dma_logic/depth_left_top[3] ), .C(\dma_logic/depth_left_top[1] ), .D(
        \dma_logic/depth_left_top[2] ), .Z(n257) );
  CND4X1 U322 ( .A(n597), .B(\dma_logic/depth_left_top[0] ), .C(
        \dma_logic/depth_left_bottom[3] ), .D(\dma_logic/depth_left_bottom[4] ), .Z(n256) );
  CND4X1 U323 ( .A(n592), .B(\dma_logic/depth_left_bottom[0] ), .C(
        \dma_logic/depth_left_bottom[1] ), .D(\dma_logic/depth_left_bottom[2] ), .Z(n255) );
  COR2X1 U324 ( .A(\dma_logic/depth_left_top[4] ), .B(
        \dma_logic/depth_left_bottom[4] ), .Z(n241) );
  CND2X1 U325 ( .A(\dma_logic/depth_left_top[4] ), .B(
        \dma_logic/depth_left_bottom[4] ), .Z(n231) );
  CND2X1 U326 ( .A(n241), .B(n231), .Z(n232) );
  CENX1 U327 ( .A(n227), .B(n232), .Z(n238) );
  CND2X1 U328 ( .A(\dma_logic/depth_left_top[3] ), .B(
        \dma_logic/depth_left_bottom[3] ), .Z(n233) );
  CND2X1 U329 ( .A(n227), .B(n233), .Z(n236) );
  COR2X1 U330 ( .A(\dma_logic/depth_left_top[2] ), .B(
        \dma_logic/depth_left_bottom[2] ), .Z(n247) );
  CND2X1 U331 ( .A(\dma_logic/depth_left_top[0] ), .B(
        \dma_logic/depth_left_bottom[0] ), .Z(n253) );
  CNR2X1 U332 ( .A(\dma_logic/depth_left_top[1] ), .B(
        \dma_logic/depth_left_bottom[1] ), .Z(n250) );
  CND2X1 U333 ( .A(\dma_logic/depth_left_top[1] ), .B(
        \dma_logic/depth_left_bottom[1] ), .Z(n251) );
  COND1X1 U334 ( .A(n253), .B(n250), .C(n251), .Z(n249) );
  CND2X1 U335 ( .A(\dma_logic/depth_left_top[2] ), .B(
        \dma_logic/depth_left_bottom[2] ), .Z(n246) );
  CIVX1 U336 ( .A(n246), .Z(n234) );
  CANR1X1 U337 ( .A(n247), .B(n249), .C(n234), .Z(n235) );
  CEOX1 U338 ( .A(n236), .B(n235), .Z(n237) );
  CNR2X1 U339 ( .A(n238), .B(n237), .Z(n245) );
  CIVX1 U340 ( .A(n592), .Z(n240) );
  CND2X1 U341 ( .A(\dma_logic/depth_left_top[5] ), .B(
        \dma_logic/depth_left_bottom[5] ), .Z(n239) );
  CND2X1 U342 ( .A(n240), .B(n239), .Z(n243) );
  CEOX1 U343 ( .A(n243), .B(n242), .Z(n244) );
  CNR2IX1 U344 ( .B(n245), .A(n244), .Z(n601) );
  CND2X1 U345 ( .A(n247), .B(n246), .Z(n248) );
  CENX1 U346 ( .A(n249), .B(n248), .Z(n591) );
  CIVX1 U347 ( .A(n250), .Z(n252) );
  CIVX2 U348 ( .A(n312), .Z(n270) );
  CND3X2 U349 ( .A(\lcd_reg7[LCDTFT] ), .B(n268), .C(n270), .Z(n254) );
  COND11X1 U350 ( .A(n257), .B(n256), .C(n255), .D(n254), .Z(n276) );
  CIVX2 U351 ( .A(\master.mHGRANT ), .Z(n258) );
  CNR3X2 U352 ( .A(n276), .B(\LCD_master_inst/count[10] ), .C(n258), .Z(n616)
         );
  CAN2X1 U353 ( .A(n616), .B(\master.mHREADY ), .Z(n274) );
  CIVX2 U354 ( .A(n332), .Z(n259) );
  CND2X1 U355 ( .A(\LCD_master_inst/state_q[1] ), .B(
        \LCD_master_inst/state_q[2] ), .Z(n620) );
  CND2X2 U356 ( .A(n259), .B(n620), .Z(n561) );
  CIVX2 U357 ( .A(n260), .Z(n573) );
  CNR2X1 U358 ( .A(n273), .B(\master.mHADDR [2]), .Z(n449) );
  CIVXL U359 ( .A(n449), .Z(n261) );
  CND2X1 U360 ( .A(n273), .B(\master.mHADDR [2]), .Z(n447) );
  CND2XL U361 ( .A(n261), .B(n447), .Z(n262) );
  CND2X2 U362 ( .A(n272), .B(\master.mHADDR [0]), .Z(n265) );
  CIVX1 U363 ( .A(\master.mHADDR [1]), .Z(n266) );
  CNR2X2 U364 ( .A(n265), .B(n266), .Z(n322) );
  CIVXL U365 ( .A(n322), .Z(n448) );
  CEOX1 U366 ( .A(n262), .B(n448), .Z(n264) );
  CIVX1 U367 ( .A(n273), .Z(n588) );
  CIVXL U368 ( .A(n272), .Z(n263) );
  CANR1X2 U369 ( .A(n588), .B(n263), .C(n332), .Z(n519) );
  CNIVX1 U370 ( .A(n519), .Z(n577) );
  CAOR2X1 U371 ( .A(\master.mHADDR [2]), .B(n573), .C(n264), .D(n577), .Z(n190) );
  CIVDX2 U372 ( .A(n561), .Z0(n260), .Z1(n579) );
  CEOX1 U373 ( .A(n266), .B(n265), .Z(n267) );
  CAOR2XL U374 ( .A(n577), .B(n267), .C(\master.mHADDR [1]), .D(n561), .Z(n191) );
  CIVX2 U375 ( .A(\clock.HRESET ), .Z(n640) );
  CND2IX1 U376 ( .B(fp_pulse), .A(n640), .Z(_5_net_) );
  CIVX2 U377 ( .A(\dma_logic/w_ptr[1] ), .Z(n625) );
  CANR1XL U378 ( .A(n270), .B(n592), .C(n269), .Z(n355) );
  CND2X1 U379 ( .A(n355), .B(\dma_logic/w_ptr[0] ), .Z(n624) );
  CNR2X1 U380 ( .A(n625), .B(n624), .Z(n623) );
  CND2X1 U381 ( .A(\dma_logic/w_ptr[2] ), .B(n623), .Z(n587) );
  CNR2IX1 U382 ( .B(\dma_logic/w_ptr[3] ), .A(n587), .Z(n622) );
  CND2X1 U383 ( .A(n622), .B(\dma_logic/w_ptr[4] ), .Z(n271) );
  CENX1 U384 ( .A(\dma_logic/w_ptr[5] ), .B(n271), .Z(\dma_logic/n93 ) );
  CAN2XL U385 ( .A(\master.mHREADY ), .B(n272), .Z(n608) );
  CIVXL U386 ( .A(n604), .Z(n614) );
  CND2XL U387 ( .A(n273), .B(\LCD_master_inst/state_q[0] ), .Z(n612) );
  CIVX2 U388 ( .A(n612), .Z(n615) );
  CANR2XL U389 ( .A(n614), .B(\master.mHGRANT ), .C(n274), .D(n615), .Z(n275)
         );
  CND2IXL U390 ( .B(n608), .A(n275), .Z(\LCD_master_inst/FIFO_push ) );
  CIVXL U391 ( .A(n616), .Z(n277) );
  CANR1XL U392 ( .A(n277), .B(n589), .C(n612), .Z(\master.mHTRANS [0]) );
  CND2IXL U393 ( .B(\master.mHTRANS [0]), .A(n604), .Z(\master.mHTRANS [1]) );
  COND3XL U394 ( .A(n589), .B(n612), .C(n620), .D(n278), .Z(
        \LCD_master_inst/state_ns [2]) );
  CND3XL U395 ( .A(\LCD_master_inst/count[2] ), .B(\LCD_master_inst/count[3] ), 
        .C(\LCD_master_inst/count[4] ), .Z(n358) );
  CND2X1 U396 ( .A(\LCD_master_inst/count[5] ), .B(\LCD_master_inst/count[6] ), 
        .Z(n279) );
  CNR2X1 U397 ( .A(n358), .B(n279), .Z(n280) );
  CND3XL U398 ( .A(n280), .B(\LCD_master_inst/count[7] ), .C(
        \LCD_master_inst/count[8] ), .Z(n283) );
  CIVXL U399 ( .A(\LCD_master_inst/state_q[2] ), .Z(n606) );
  CND3XL U400 ( .A(n604), .B(n606), .C(n602), .Z(n365) );
  CANR1XL U401 ( .A(n615), .B(n283), .C(n365), .Z(n287) );
  CND2X1 U402 ( .A(n280), .B(n615), .Z(n357) );
  CND2XL U403 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[8] ), .Z(n147)
         );
  COR2XL U404 ( .A(\LCD_master_inst/count_w[8] ), .B(n640), .Z(n148) );
  CIVX1 U405 ( .A(n280), .Z(n281) );
  CANR1XL U406 ( .A(n615), .B(n281), .C(n365), .Z(n356) );
  CND2XL U407 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[6] ), .Z(n143)
         );
  COR2XL U408 ( .A(\LCD_master_inst/count_w[6] ), .B(n640), .Z(n144) );
  CIVX1 U409 ( .A(\LCD_master_inst/count[9] ), .Z(n282) );
  CND2X1 U410 ( .A(n615), .B(n282), .Z(n286) );
  CND2XL U411 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[9] ), .Z(n149)
         );
  COR2XL U412 ( .A(\LCD_master_inst/count_w[9] ), .B(n640), .Z(n150) );
  CIVXL U413 ( .A(n283), .Z(n284) );
  CANR11XL U414 ( .A(\LCD_master_inst/count[9] ), .B(n284), .C(n615), .D(
        \LCD_master_inst/count[10] ), .Z(n285) );
  CANR11X1 U415 ( .A(n287), .B(\LCD_master_inst/count[10] ), .C(n286), .D(n285), .Z(\LCD_master_inst/count_w[10] ) );
  CND2XL U416 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[10] ), .Z(n151) );
  CIVX1 U417 ( .A(\dma_logic/depth_left_bottom[5] ), .Z(n408) );
  CIVX2 U418 ( .A(\dma_logic/depth_left_bottom[3] ), .Z(n383) );
  CIVX2 U419 ( .A(\dma_logic/depth_left_bottom[4] ), .Z(n395) );
  CND2X1 U420 ( .A(n383), .B(n395), .Z(n598) );
  CIVX2 U421 ( .A(\dma_logic/depth_left_bottom[0] ), .Z(n389) );
  CND2X1 U422 ( .A(n408), .B(n374), .Z(n349) );
  COAN1XL U423 ( .A(\dma_logic/mod2_push ), .B(\lcd_reg7[LCDTFT] ), .C(
        fifo_push), .Z(n288) );
  COND4CX1 U424 ( .A(\dma_logic/w_ptr[5] ), .B(n349), .C(n597), .D(n288), .Z(
        n676) );
  CND2X1 U425 ( .A(n374), .B(\dma_logic/depth_left_bottom[5] ), .Z(n667) );
  CEOXL U426 ( .A(\clk_div/temp_count[2] ), .B(\lcd_reg0[CLKDIV][2] ), .Z(n294) );
  CENX1 U427 ( .A(\lcd_reg0[CLKDIV][1] ), .B(\clk_div/temp_count[1] ), .Z(n291) );
  CENX1 U428 ( .A(\lcd_reg0[CLKDIV][3] ), .B(\clk_div/temp_count[3] ), .Z(n290) );
  CENX1 U429 ( .A(\clk_div/temp_count[4] ), .B(\lcd_reg0[CLKDIV][4] ), .Z(n289) );
  CND3XL U430 ( .A(n291), .B(n290), .C(n289), .Z(n293) );
  CEOXL U431 ( .A(\lcd_reg0[CLKDIV][0] ), .B(\clk_div/temp_count[0] ), .Z(n292) );
  CNR3XL U432 ( .A(n294), .B(n293), .C(n292), .Z(n629) );
  CIVX1 U433 ( .A(\clk_div/temp_count[2] ), .Z(n354) );
  CND2X1 U434 ( .A(\clk_div/temp_count[0] ), .B(\clk_div/temp_count[1] ), .Z(
        n626) );
  CNR2X1 U435 ( .A(n354), .B(n626), .Z(n298) );
  CND2X1 U436 ( .A(\clk_div/temp_count[3] ), .B(n298), .Z(n296) );
  COND1XL U437 ( .A(\clk_div/temp_count[3] ), .B(n298), .C(n296), .Z(n295) );
  CNR2XL U438 ( .A(n629), .B(n295), .Z(\clk_div/N14 ) );
  CEOX1 U439 ( .A(\clk_div/temp_count[4] ), .B(n296), .Z(n297) );
  CNR2XL U440 ( .A(n629), .B(n297), .Z(\clk_div/N15 ) );
  CANR3XL U441 ( .A(n354), .B(n626), .C(n298), .D(n629), .Z(\clk_div/N13 ) );
  CNR2XL U442 ( .A(\clk_div/temp_count[0] ), .B(n629), .Z(\clk_div/N11 ) );
  CENX1 U443 ( .A(\lcd_reg0[CLKDIV][4] ), .B(
        \clk_div/temp_count_phaseshift[4] ), .Z(n301) );
  CENX1 U444 ( .A(\clk_div/temp_count_phaseshift[3] ), .B(
        \lcd_reg0[CLKDIV][3] ), .Z(n300) );
  CENX1 U445 ( .A(\clk_div/temp_count_phaseshift[1] ), .B(
        \lcd_reg0[CLKDIV][1] ), .Z(n299) );
  CND3X1 U446 ( .A(n301), .B(n300), .C(n299), .Z(n304) );
  CEOX1 U447 ( .A(\lcd_reg0[CLKDIV][0] ), .B(
        \clk_div/temp_count_phaseshift[0] ), .Z(n303) );
  CEOX1 U448 ( .A(\clk_div/temp_count_phaseshift[2] ), .B(
        \lcd_reg0[CLKDIV][2] ), .Z(n302) );
  CNR3X2 U449 ( .A(n304), .B(n303), .C(n302), .Z(n311) );
  CNR2XL U450 ( .A(n311), .B(n198), .Z(\clk_div/N25 ) );
  CND2X1 U451 ( .A(\clk_div/temp_count_phaseshift[0] ), .B(
        \clk_div/temp_count_phaseshift[1] ), .Z(n305) );
  CNR2X1 U452 ( .A(n305), .B(n583), .Z(n309) );
  CANR3XL U453 ( .A(n583), .B(n305), .C(n311), .D(n309), .Z(\clk_div/N27 ) );
  COND1XL U454 ( .A(\clk_div/temp_count_phaseshift[0] ), .B(
        \clk_div/temp_count_phaseshift[1] ), .C(n305), .Z(n306) );
  CNR2XL U455 ( .A(n311), .B(n306), .Z(\clk_div/N26 ) );
  CND2XL U456 ( .A(n309), .B(\clk_div/temp_count_phaseshift[3] ), .Z(n308) );
  CEOX1 U457 ( .A(n308), .B(\clk_div/temp_count_phaseshift[4] ), .Z(n307) );
  CNR2XL U458 ( .A(n311), .B(n307), .Z(\clk_div/N29 ) );
  COND1XL U459 ( .A(\clk_div/temp_count_phaseshift[3] ), .B(n309), .C(n308), 
        .Z(n310) );
  CNR2XL U460 ( .A(n311), .B(n310), .Z(\clk_div/N28 ) );
  COR2X1 U461 ( .A(n592), .B(n312), .Z(n313) );
  CND2X2 U462 ( .A(pull_from_pixelserial), .B(n313), .Z(n348) );
  CIVX2 U463 ( .A(n348), .Z(n315) );
  CAN2X1 U464 ( .A(\dma_logic/r_ptr[1] ), .B(\dma_logic/r_ptr[0] ), .Z(n314)
         );
  CND2X2 U465 ( .A(n315), .B(n314), .Z(n370) );
  CND2X1 U466 ( .A(\dma_logic/r_ptr[3] ), .B(\dma_logic/r_ptr[2] ), .Z(n316)
         );
  CNR2X2 U467 ( .A(n370), .B(n316), .Z(n372) );
  CND2X2 U468 ( .A(n372), .B(\dma_logic/r_ptr[4] ), .Z(n317) );
  CENX1 U469 ( .A(\dma_logic/r_ptr[5] ), .B(n317), .Z(\dma_logic/n77 ) );
  CIVX1 U470 ( .A(\master.mHADDR [3]), .Z(n461) );
  CIVX1 U471 ( .A(\master.mHADDR [4]), .Z(n482) );
  CIVX1 U472 ( .A(\master.mHADDR [5]), .Z(n451) );
  CIVX1 U473 ( .A(\master.mHADDR [6]), .Z(n464) );
  CNR2X1 U474 ( .A(n451), .B(n464), .Z(n318) );
  CND2X1 U475 ( .A(n450), .B(n318), .Z(n319) );
  CNR2X1 U476 ( .A(n449), .B(n319), .Z(n321) );
  CNR2X1 U477 ( .A(n319), .B(n447), .Z(n320) );
  CANR1X1 U478 ( .A(n322), .B(n321), .C(n320), .Z(n455) );
  CIVX2 U479 ( .A(\master.mHADDR [7]), .Z(n456) );
  CIVX1 U480 ( .A(\master.mHADDR [8]), .Z(n518) );
  CNR2X1 U481 ( .A(n456), .B(n518), .Z(n504) );
  CIVX1 U482 ( .A(\master.mHADDR [9]), .Z(n560) );
  CIVX1 U483 ( .A(\master.mHADDR [10]), .Z(n505) );
  CNR2X1 U484 ( .A(n560), .B(n505), .Z(n323) );
  CND2X1 U485 ( .A(n504), .B(n323), .Z(n534) );
  CIVX1 U486 ( .A(\master.mHADDR [11]), .Z(n550) );
  CIVX1 U487 ( .A(\master.mHADDR [12]), .Z(n545) );
  CNR2X1 U488 ( .A(n550), .B(n545), .Z(n536) );
  CIVX1 U489 ( .A(\master.mHADDR [13]), .Z(n543) );
  CIVX1 U490 ( .A(\master.mHADDR [14]), .Z(n537) );
  CNR2X1 U491 ( .A(n543), .B(n537), .Z(n324) );
  CND2X1 U492 ( .A(n536), .B(n324), .Z(n325) );
  CNR2X1 U493 ( .A(n534), .B(n325), .Z(n486) );
  CIVX1 U494 ( .A(\master.mHADDR [15]), .Z(n529) );
  CIVX1 U495 ( .A(\master.mHADDR [16]), .Z(n524) );
  CNR2X1 U496 ( .A(n529), .B(n524), .Z(n487) );
  CIVX1 U497 ( .A(\master.mHADDR [17]), .Z(n510) );
  CIVX1 U498 ( .A(\master.mHADDR [18]), .Z(n512) );
  CNR2X1 U499 ( .A(n510), .B(n512), .Z(n326) );
  CND2X1 U500 ( .A(n487), .B(n326), .Z(n496) );
  CND2X1 U501 ( .A(\master.mHADDR [19]), .B(\master.mHADDR [20]), .Z(n327) );
  CNR2X1 U502 ( .A(n496), .B(n327), .Z(n328) );
  CND2X1 U503 ( .A(n486), .B(n328), .Z(n329) );
  CNR2X1 U504 ( .A(n455), .B(n329), .Z(n492) );
  CEOX2 U505 ( .A(\master.mHADDR [31]), .B(n330), .Z(n331) );
  CNIVX4 U506 ( .A(n519), .Z(n563) );
  CND2X2 U507 ( .A(n331), .B(n563), .Z(n335) );
  CNR3X1 U508 ( .A(n332), .B(\LCD_master_inst/state_q[2] ), .C(
        \LCD_master_inst/state_q[1] ), .Z(n333) );
  CNIVX4 U509 ( .A(n333), .Z(n580) );
  CANR2X1 U510 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][28] ), .C(
        \master.mHADDR [31]), .D(n573), .Z(n334) );
  CND2X2 U511 ( .A(n335), .B(n334), .Z(n161) );
  CNR2X1 U512 ( .A(\lcd_reg7[LCDTFT] ), .B(\dma_logic/mod2_pull ), .Z(n373) );
  CND2X1 U513 ( .A(n338), .B(n374), .Z(n336) );
  CND2X2 U514 ( .A(n336), .B(n637), .Z(n663) );
  CENX2 U515 ( .A(n630), .B(n662), .Z(\dma_logic/n89 ) );
  CND2X2 U516 ( .A(n336), .B(n658), .Z(n660) );
  CND2X1 U517 ( .A(\dma_logic/depth_left_top[5] ), .B(n337), .Z(n340) );
  CNR2XL U518 ( .A(n597), .B(\dma_logic/r_ptr[5] ), .Z(n339) );
  CND2X1 U519 ( .A(n340), .B(n339), .Z(n410) );
  CIVX1 U520 ( .A(n410), .Z(n342) );
  CAN2XL U521 ( .A(n340), .B(n373), .Z(n341) );
  COND1X1 U522 ( .A(n342), .B(n341), .C(pull_from_pixelserial), .Z(n343) );
  CNIVX4 U523 ( .A(n343), .Z(n416) );
  CNR2X1 U524 ( .A(n675), .B(n648), .Z(n351) );
  CNR2X4 U525 ( .A(n416), .B(n351), .Z(n653) );
  CNR2X2 U526 ( .A(\dma_logic/r_ptr[5] ), .B(_5_net_), .Z(n636) );
  CIVXL U527 ( .A(\dma_logic/r_ptr[0] ), .Z(n345) );
  CIVXL U528 ( .A(\dma_logic/r_ptr[1] ), .Z(n344) );
  COND1XL U529 ( .A(n345), .B(n348), .C(n344), .Z(n346) );
  CAN2XL U530 ( .A(n370), .B(n346), .Z(n632) );
  CND2XL U531 ( .A(\lcd_reg7[LCDTFT] ), .B(\dma_logic/r_ptr[5] ), .Z(n375) );
  CND2IX1 U532 ( .B(n373), .A(n375), .Z(n347) );
  CND2X2 U533 ( .A(pull_from_pixelserial), .B(n347), .Z(n380) );
  CENXL U534 ( .A(n348), .B(\dma_logic/r_ptr[0] ), .Z(\dma_logic/n76 ) );
  CNR2X1 U535 ( .A(n676), .B(n349), .Z(n352) );
  CND2IX1 U536 ( .B(n352), .A(n667), .Z(n350) );
  CNR2X2 U537 ( .A(n380), .B(n350), .Z(n669) );
  CIVXL U538 ( .A(n351), .Z(n649) );
  CNR2X2 U539 ( .A(n416), .B(n650), .Z(n655) );
  CIVXL U540 ( .A(n352), .Z(n664) );
  CAN2XL U541 ( .A(\lcd_reg7[LCDEN] ), .B(n640), .Z(n639) );
  CNR2X1 U542 ( .A(\clk_div/temp_count[0] ), .B(\clk_div/temp_count[1] ), .Z(
        n627) );
  CIVXL U543 ( .A(\clk_div/temp_count[4] ), .Z(n353) );
  CND3XL U544 ( .A(n627), .B(n354), .C(n353), .Z(n66) );
  CEOXL U545 ( .A(n355), .B(\dma_logic/w_ptr[0] ), .Z(\dma_logic/n82 ) );
  CMXI2X1 U546 ( .A0(n357), .A1(n356), .S(\LCD_master_inst/count[7] ), .Z(
        \LCD_master_inst/count_w[7] ) );
  CND2X1 U547 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[7] ), .Z(n145)
         );
  CND2X1 U548 ( .A(n615), .B(n358), .Z(n359) );
  CIVXL U549 ( .A(\LCD_master_inst/count[4] ), .Z(n361) );
  CND2XL U550 ( .A(\LCD_master_inst/count[2] ), .B(\LCD_master_inst/count[3] ), 
        .Z(n360) );
  COND2X1 U551 ( .A(n366), .B(n361), .C(n360), .D(n359), .Z(
        \LCD_master_inst/count_w[4] ) );
  CND2X1 U552 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[4] ), .Z(n139)
         );
  CIVXL U553 ( .A(\LCD_master_inst/count[2] ), .Z(n363) );
  CNR2XL U554 ( .A(n612), .B(\LCD_master_inst/count[2] ), .Z(n364) );
  COND1XL U555 ( .A(n365), .B(n364), .C(\LCD_master_inst/count[3] ), .Z(n362)
         );
  COND11X1 U556 ( .A(\LCD_master_inst/count[3] ), .B(n363), .C(n612), .D(n362), 
        .Z(n673) );
  CND2X1 U557 ( .A(\clock.HRESET ), .B(n673), .Z(n137) );
  CAOR1X1 U558 ( .A(\LCD_master_inst/count[2] ), .B(n365), .C(n364), .Z(
        \LCD_master_inst/count_w[2] ) );
  CND2X1 U559 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[2] ), .Z(n135)
         );
  CMXI2X1 U560 ( .A0(n367), .A1(n366), .S(\LCD_master_inst/count[5] ), .Z(
        \LCD_master_inst/count_w[5] ) );
  CND2X1 U561 ( .A(\clock.HRESET ), .B(\LCD_master_inst/count_w[5] ), .Z(n141)
         );
  COR2X1 U562 ( .A(\LCD_master_inst/count_w[10] ), .B(n640), .Z(n152) );
  COR2X1 U563 ( .A(\LCD_master_inst/count_w[2] ), .B(n640), .Z(n136) );
  COR2X1 U564 ( .A(n673), .B(n640), .Z(n138) );
  CND2IX1 U565 ( .B(\LCD_master_inst/count_w[5] ), .A(\clock.HRESET ), .Z(n142) );
  COR2X1 U566 ( .A(\LCD_master_inst/count_w[4] ), .B(n640), .Z(n140) );
  COR2X1 U567 ( .A(\LCD_master_inst/count_w[7] ), .B(n640), .Z(n146) );
  CEOXL U568 ( .A(fifo_push), .B(\dma_logic/mod2_push ), .Z(\dma_logic/n55 )
         );
  CND2X1 U569 ( .A(n669), .B(n635), .Z(n670) );
  CND2X1 U570 ( .A(n644), .B(n643), .Z(n368) );
  CNR2IX1 U571 ( .B(n368), .A(n645), .Z(\dma_logic/n64 ) );
  CND2X1 U572 ( .A(n660), .B(n659), .Z(n369) );
  CNR2IX1 U573 ( .B(n369), .A(n661), .Z(\dma_logic/n91 ) );
  CNR2IX1 U574 ( .B(\dma_logic/r_ptr[2] ), .A(n370), .Z(n371) );
  CEOX1 U575 ( .A(\dma_logic/r_ptr[3] ), .B(n371), .Z(\dma_logic/n73 ) );
  CEOX1 U576 ( .A(\dma_logic/r_ptr[4] ), .B(n372), .Z(\dma_logic/n72 ) );
  COR2XL U577 ( .A(\dma_logic/depth_left_bottom[0] ), .B(
        \dma_logic/depth_left_bottom[1] ), .Z(n384) );
  COR2XL U578 ( .A(\dma_logic/depth_left_bottom[2] ), .B(n384), .Z(n390) );
  CENX1 U579 ( .A(\dma_logic/depth_left_bottom[3] ), .B(n390), .Z(n379) );
  CIVX1 U580 ( .A(n373), .Z(n409) );
  COND1XL U581 ( .A(n375), .B(n374), .C(n409), .Z(n376) );
  CND2X1 U582 ( .A(pull_from_pixelserial), .B(n376), .Z(n377) );
  CND2X2 U583 ( .A(n377), .B(n658), .Z(n403) );
  CMXI2X1 U584 ( .A0(n379), .A1(n378), .S(n403), .Z(n382) );
  CND2X1 U585 ( .A(n676), .B(n667), .Z(n381) );
  COND1X4 U586 ( .A(n381), .B(n380), .C(n403), .Z(n406) );
  CMXI2X1 U587 ( .A0(n383), .A1(n382), .S(n406), .Z(\dma_logic/n94 ) );
  CIVX1 U588 ( .A(\dma_logic/depth_left_bottom[2] ), .Z(n593) );
  CENX1 U589 ( .A(\dma_logic/depth_left_bottom[2] ), .B(n384), .Z(n387) );
  CHA1XL U590 ( .A(\dma_logic/depth_left_bottom[2] ), .B(n385), .CO(n391), .S(
        n386) );
  CMXI2X1 U591 ( .A0(n387), .A1(n386), .S(n403), .Z(n388) );
  CMXI2X1 U592 ( .A0(n593), .A1(n388), .S(n406), .Z(\dma_logic/n95 ) );
  CMXI2X1 U593 ( .A0(n389), .A1(\dma_logic/depth_left_bottom[0] ), .S(n406), 
        .Z(\dma_logic/n97 ) );
  COR2XL U594 ( .A(\dma_logic/depth_left_bottom[3] ), .B(n390), .Z(n400) );
  CENX1 U595 ( .A(\dma_logic/depth_left_bottom[4] ), .B(n400), .Z(n393) );
  CHA1XL U596 ( .A(\dma_logic/depth_left_bottom[3] ), .B(n391), .CO(n401), .S(
        n378) );
  CMXI2X1 U597 ( .A0(n393), .A1(n392), .S(n403), .Z(n394) );
  CMXI2X1 U598 ( .A0(n395), .A1(n394), .S(n406), .Z(\dma_logic/n98 ) );
  CIVXL U599 ( .A(\dma_logic/depth_left_bottom[1] ), .Z(n399) );
  CENX1 U600 ( .A(\dma_logic/depth_left_bottom[0] ), .B(
        \dma_logic/depth_left_bottom[1] ), .Z(n397) );
  CHA1XL U601 ( .A(\dma_logic/depth_left_bottom[1] ), .B(
        \dma_logic/depth_left_bottom[0] ), .CO(n385), .S(n396) );
  CMXI2X1 U602 ( .A0(n397), .A1(n396), .S(n403), .Z(n398) );
  CMXI2X1 U603 ( .A0(n399), .A1(n398), .S(n406), .Z(\dma_logic/n96 ) );
  CHA1XL U604 ( .A(\dma_logic/depth_left_bottom[4] ), .B(n401), .CO(n402), .S(
        n392) );
  CEOXL U605 ( .A(n402), .B(\dma_logic/depth_left_bottom[5] ), .Z(n404) );
  CMXI2X1 U606 ( .A0(n405), .A1(n404), .S(n403), .Z(n407) );
  CMXI2X1 U607 ( .A0(n408), .A1(n407), .S(n406), .Z(\dma_logic/n99 ) );
  COR2XL U608 ( .A(\dma_logic/depth_left_top[0] ), .B(
        \dma_logic/depth_left_top[1] ), .Z(n431) );
  COR2XL U609 ( .A(\dma_logic/depth_left_top[2] ), .B(n431), .Z(n421) );
  COR2XL U610 ( .A(\dma_logic/depth_left_top[3] ), .B(n421), .Z(n436) );
  CENX1 U611 ( .A(\dma_logic/depth_left_top[4] ), .B(n436), .Z(n415) );
  CND2X1 U612 ( .A(n410), .B(n409), .Z(n411) );
  CND2X1 U613 ( .A(pull_from_pixelserial), .B(n411), .Z(n413) );
  CND2X2 U614 ( .A(n413), .B(n412), .Z(n439) );
  CMXI2X1 U615 ( .A0(n415), .A1(n414), .S(n439), .Z(n418) );
  CIVX1 U616 ( .A(n675), .Z(n417) );
  COND1X4 U617 ( .A(n417), .B(n416), .C(n439), .Z(n442) );
  CMXI2X1 U618 ( .A0(n419), .A1(n418), .S(n442), .Z(\dma_logic/n66 ) );
  CMXI2X1 U619 ( .A0(n420), .A1(\dma_logic/depth_left_top[0] ), .S(n442), .Z(
        \dma_logic/n70 ) );
  CENX1 U620 ( .A(\dma_logic/depth_left_top[3] ), .B(n421), .Z(n424) );
  CHA1XL U621 ( .A(\dma_logic/depth_left_top[3] ), .B(n422), .CO(n437), .S(
        n423) );
  CMXI2X1 U622 ( .A0(n424), .A1(n423), .S(n439), .Z(n425) );
  CMXI2X1 U623 ( .A0(n426), .A1(n425), .S(n442), .Z(\dma_logic/n67 ) );
  CIVXL U624 ( .A(\dma_logic/depth_left_top[1] ), .Z(n430) );
  CENX1 U625 ( .A(\dma_logic/depth_left_top[0] ), .B(
        \dma_logic/depth_left_top[1] ), .Z(n428) );
  CHA1XL U626 ( .A(\dma_logic/depth_left_top[1] ), .B(
        \dma_logic/depth_left_top[0] ), .CO(n432), .S(n427) );
  CMXI2X1 U627 ( .A0(n428), .A1(n427), .S(n439), .Z(n429) );
  CMXI2X1 U628 ( .A0(n430), .A1(n429), .S(n442), .Z(\dma_logic/n69 ) );
  CIVX1 U629 ( .A(\dma_logic/depth_left_top[2] ), .Z(n594) );
  CENX1 U630 ( .A(\dma_logic/depth_left_top[2] ), .B(n431), .Z(n434) );
  CHA1XL U631 ( .A(\dma_logic/depth_left_top[2] ), .B(n432), .CO(n422), .S(
        n433) );
  CMXI2X1 U632 ( .A0(n434), .A1(n433), .S(n439), .Z(n435) );
  CMXI2X1 U633 ( .A0(n594), .A1(n435), .S(n442), .Z(\dma_logic/n68 ) );
  CHA1XL U634 ( .A(\dma_logic/depth_left_top[4] ), .B(n437), .CO(n438), .S(
        n414) );
  CEOXL U635 ( .A(n438), .B(\dma_logic/depth_left_top[5] ), .Z(n440) );
  CMXI2X1 U636 ( .A0(n441), .A1(n440), .S(n439), .Z(n443) );
  CMXI2X1 U637 ( .A0(n444), .A1(n443), .S(n442), .Z(\dma_logic/n71 ) );
  CNR2XL U638 ( .A(n675), .B(n641), .Z(n445) );
  CND2X1 U639 ( .A(n446), .B(n445), .Z(n647) );
  COND1XL U640 ( .A(n449), .B(n448), .C(n447), .Z(n480) );
  CIVX1 U641 ( .A(n480), .Z(n460) );
  CENX1 U642 ( .A(n462), .B(n451), .Z(n452) );
  CND2X1 U643 ( .A(n452), .B(n563), .Z(n454) );
  CANR2X1 U644 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][2] ), .C(\master.mHADDR [5]), .D(n579), .Z(n453) );
  CND2X1 U645 ( .A(n454), .B(n453), .Z(n187) );
  CIVX2 U646 ( .A(n455), .Z(n535) );
  CENX1 U647 ( .A(n535), .B(n456), .Z(n457) );
  CND2X1 U648 ( .A(n457), .B(n563), .Z(n459) );
  CANR2X1 U649 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][4] ), .C(\master.mHADDR [7]), .D(n561), .Z(n458) );
  CND2X1 U650 ( .A(n459), .B(n458), .Z(n185) );
  CND2XL U651 ( .A(n462), .B(\master.mHADDR [5]), .Z(n463) );
  CEOX1 U652 ( .A(n464), .B(n463), .Z(n465) );
  CND2X1 U653 ( .A(n465), .B(n563), .Z(n467) );
  CANR2X1 U654 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][3] ), .C(\master.mHADDR [6]), .D(n573), .Z(n466) );
  CND2X1 U655 ( .A(n467), .B(n466), .Z(n186) );
  CHA1X1 U656 ( .A(\master.mHADDR [22]), .B(n468), .CO(n488), .S(n469) );
  CND2X1 U657 ( .A(n469), .B(n563), .Z(n471) );
  CANR2X1 U658 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][19] ), .C(
        \master.mHADDR [22]), .D(n573), .Z(n470) );
  CND2X1 U659 ( .A(n471), .B(n470), .Z(n170) );
  CHA1X1 U660 ( .A(\master.mHADDR [27]), .B(n472), .CO(n576), .S(n473) );
  CND2X1 U661 ( .A(n473), .B(n563), .Z(n475) );
  CANR2X1 U662 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][24] ), .C(
        \master.mHADDR [27]), .D(n579), .Z(n474) );
  CND2X1 U663 ( .A(n475), .B(n474), .Z(n165) );
  CHA1X1 U664 ( .A(\master.mHADDR [24]), .B(n476), .CO(n562), .S(n477) );
  CND2X1 U665 ( .A(n477), .B(n563), .Z(n479) );
  CANR2X1 U666 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][21] ), .C(
        \master.mHADDR [24]), .D(n573), .Z(n478) );
  CND2X1 U667 ( .A(n479), .B(n478), .Z(n168) );
  CND2XL U668 ( .A(n480), .B(\master.mHADDR [3]), .Z(n481) );
  CEOX1 U669 ( .A(n482), .B(n481), .Z(n483) );
  CND2X1 U670 ( .A(n483), .B(n563), .Z(n485) );
  CANR2X1 U671 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][1] ), .C(\master.mHADDR [4]), .D(n573), .Z(n484) );
  CND2X1 U672 ( .A(n485), .B(n484), .Z(n188) );
  CND2X1 U673 ( .A(n535), .B(n486), .Z(n523) );
  CIVX2 U674 ( .A(n523), .Z(n530) );
  CND2X1 U675 ( .A(n530), .B(n487), .Z(n511) );
  CHA1X1 U676 ( .A(\master.mHADDR [23]), .B(n488), .CO(n476), .S(n489) );
  CND2X1 U677 ( .A(n489), .B(n563), .Z(n491) );
  CANR2X1 U678 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][20] ), .C(
        \master.mHADDR [23]), .D(n579), .Z(n490) );
  CND2X1 U679 ( .A(n491), .B(n490), .Z(n169) );
  CHA1X1 U680 ( .A(\master.mHADDR [21]), .B(n492), .CO(n468), .S(n493) );
  CND2X1 U681 ( .A(n493), .B(n563), .Z(n495) );
  CANR2X1 U682 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][18] ), .C(
        \master.mHADDR [21]), .D(n579), .Z(n494) );
  CND2X1 U683 ( .A(n495), .B(n494), .Z(n171) );
  CIVX1 U684 ( .A(\master.mHADDR [19]), .Z(n503) );
  CNR2X1 U685 ( .A(n502), .B(n503), .Z(n498) );
  CIVXL U686 ( .A(\master.mHADDR [20]), .Z(n497) );
  CENX1 U687 ( .A(n498), .B(n497), .Z(n499) );
  CND2X1 U688 ( .A(n499), .B(n563), .Z(n501) );
  CANR2X1 U689 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][17] ), .C(
        \master.mHADDR [20]), .D(n579), .Z(n500) );
  CND2X1 U690 ( .A(n501), .B(n500), .Z(n172) );
  CND2X1 U691 ( .A(n535), .B(n504), .Z(n559) );
  CNR2X1 U692 ( .A(n559), .B(n560), .Z(n506) );
  CENX1 U693 ( .A(n506), .B(n505), .Z(n507) );
  CND2X1 U694 ( .A(n507), .B(n563), .Z(n509) );
  CANR2X1 U695 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][7] ), .C(
        \master.mHADDR [10]), .D(n579), .Z(n508) );
  CND2X1 U696 ( .A(n509), .B(n508), .Z(n182) );
  CNR2X1 U697 ( .A(n511), .B(n510), .Z(n513) );
  CENX1 U698 ( .A(n513), .B(n512), .Z(n514) );
  CND2X1 U699 ( .A(n514), .B(n563), .Z(n516) );
  CANR2X1 U700 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][15] ), .C(
        \master.mHADDR [18]), .D(n561), .Z(n515) );
  CND2X1 U701 ( .A(n516), .B(n515), .Z(n174) );
  CND2X1 U702 ( .A(n535), .B(\master.mHADDR [7]), .Z(n517) );
  CEOX1 U703 ( .A(n518), .B(n517), .Z(n520) );
  CND2XL U704 ( .A(n520), .B(n519), .Z(n522) );
  CANR2X1 U705 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][5] ), .C(\master.mHADDR [8]), .D(n573), .Z(n521) );
  CND2X1 U706 ( .A(n522), .B(n521), .Z(n184) );
  CNR2X1 U707 ( .A(n523), .B(n529), .Z(n525) );
  CENX1 U708 ( .A(n525), .B(n524), .Z(n526) );
  CND2X1 U709 ( .A(n526), .B(n563), .Z(n528) );
  CANR2X1 U710 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][13] ), .C(
        \master.mHADDR [16]), .D(n561), .Z(n527) );
  CND2X1 U711 ( .A(n528), .B(n527), .Z(n176) );
  CENX1 U712 ( .A(n530), .B(n529), .Z(n531) );
  CND2X1 U713 ( .A(n531), .B(n563), .Z(n533) );
  CANR2X1 U714 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][12] ), .C(
        \master.mHADDR [15]), .D(n573), .Z(n532) );
  CND2X1 U715 ( .A(n533), .B(n532), .Z(n177) );
  CIVX2 U716 ( .A(n544), .Z(n551) );
  CND2X1 U717 ( .A(n551), .B(n536), .Z(n542) );
  CNR2X1 U718 ( .A(n542), .B(n543), .Z(n538) );
  CENX1 U719 ( .A(n538), .B(n537), .Z(n539) );
  CND2X1 U720 ( .A(n539), .B(n563), .Z(n541) );
  CANR2X1 U721 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][11] ), .C(
        \master.mHADDR [14]), .D(n579), .Z(n540) );
  CND2X1 U722 ( .A(n541), .B(n540), .Z(n178) );
  CNR2X1 U723 ( .A(n544), .B(n550), .Z(n546) );
  CENX1 U724 ( .A(n546), .B(n545), .Z(n547) );
  CND2X1 U725 ( .A(n547), .B(n563), .Z(n549) );
  CANR2X1 U726 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][9] ), .C(
        \master.mHADDR [12]), .D(n579), .Z(n548) );
  CND2X1 U727 ( .A(n549), .B(n548), .Z(n180) );
  CENX1 U728 ( .A(n551), .B(n550), .Z(n552) );
  CND2X1 U729 ( .A(n552), .B(n563), .Z(n554) );
  CANR2X1 U730 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][8] ), .C(
        \master.mHADDR [11]), .D(n561), .Z(n553) );
  CND2X1 U731 ( .A(n554), .B(n553), .Z(n181) );
  CHA1X1 U732 ( .A(\master.mHADDR [26]), .B(n555), .CO(n472), .S(n556) );
  CND2X1 U733 ( .A(n556), .B(n563), .Z(n558) );
  CANR2X1 U734 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][23] ), .C(
        \master.mHADDR [26]), .D(n573), .Z(n557) );
  CND2X1 U735 ( .A(n558), .B(n557), .Z(n166) );
  CHA1X1 U736 ( .A(\master.mHADDR [25]), .B(n562), .CO(n555), .S(n564) );
  CND2X1 U737 ( .A(n564), .B(n563), .Z(n566) );
  CANR2X1 U738 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][22] ), .C(
        \master.mHADDR [25]), .D(n573), .Z(n565) );
  CND2X1 U739 ( .A(n566), .B(n565), .Z(n167) );
  CHA1X2 U740 ( .A(\master.mHADDR [30]), .B(n567), .CO(n330), .S(n568) );
  CND2X1 U741 ( .A(n568), .B(n577), .Z(n570) );
  CANR2X1 U742 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][27] ), .C(
        \master.mHADDR [30]), .D(n579), .Z(n569) );
  CND2X1 U743 ( .A(n570), .B(n569), .Z(n162) );
  CHA1X1 U744 ( .A(\master.mHADDR [29]), .B(n571), .CO(n567), .S(n572) );
  CND2X1 U745 ( .A(n572), .B(n577), .Z(n575) );
  CANR2X1 U746 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][26] ), .C(
        \master.mHADDR [29]), .D(n573), .Z(n574) );
  CND2X1 U747 ( .A(n575), .B(n574), .Z(n163) );
  CHA1X1 U748 ( .A(\master.mHADDR [28]), .B(n576), .CO(n571), .S(n578) );
  CND2X1 U749 ( .A(n578), .B(n577), .Z(n582) );
  CANR2X1 U750 ( .A(n580), .B(\lcd_reg5[LCDUPBASE][25] ), .C(
        \master.mHADDR [28]), .D(n579), .Z(n581) );
  CND2X1 U751 ( .A(n582), .B(n581), .Z(n164) );
  CNR2X4 U752 ( .A(\clk_div/temp_count_phaseshift[3] ), .B(
        \clk_div/temp_count_phaseshift[1] ), .Z(n585) );
  CNR2X4 U753 ( .A(\clk_div/temp_count_phaseshift[0] ), .B(
        \clk_div/temp_count_phaseshift[4] ), .Z(n584) );
  CND3X2 U754 ( .A(n585), .B(n584), .C(n583), .Z(n586) );
  CIVX2 U755 ( .A(n586), .Z(n194) );
  CENX1 U756 ( .A(\dma_logic/w_ptr[3] ), .B(n587), .Z(\dma_logic/n79 ) );
  COND1XL U757 ( .A(\LCD_master_inst/state_q[2] ), .B(n605), .C(n588), .Z(
        \master.mHBUSREQ ) );
  CIVXL U758 ( .A(n589), .Z(n611) );
  CIVXL U759 ( .A(\lcd_reg7[WATERMARK] ), .Z(n590) );
  CANR1XL U760 ( .A(n591), .B(n590), .C(\lcd_reg7[LCDTFT] ), .Z(n600) );
  COND4CXL U761 ( .A(n594), .B(n593), .C(\lcd_reg7[WATERMARK] ), .D(n592), .Z(
        n595) );
  CNR4XL U762 ( .A(n598), .B(n597), .C(n596), .D(n595), .Z(n599) );
  CANR3XL U763 ( .A(n601), .B(n600), .C(n599), .D(_5_net_), .Z(n618) );
  CND2XL U764 ( .A(n618), .B(\master.mHGRANT ), .Z(n609) );
  CNR3XL U765 ( .A(fp_pulse), .B(\LCD_master_inst/state_q[2] ), .C(n602), .Z(
        n613) );
  CND3XL U766 ( .A(n605), .B(n606), .C(\lcd_reg7[LCDEN] ), .Z(n603) );
  COND3XL U767 ( .A(n606), .B(n605), .C(n604), .D(n603), .Z(n607) );
  CANR3X1 U768 ( .A(n609), .B(n613), .C(n608), .D(n607), .Z(n610) );
  COND1XL U769 ( .A(n612), .B(n611), .C(n610), .Z(
        \LCD_master_inst/state_ns [0]) );
  COND3XL U770 ( .A(n614), .B(n613), .C(n618), .D(\master.mHGRANT ), .Z(n621)
         );
  COND3XL U771 ( .A(n618), .B(n617), .C(n616), .D(n615), .Z(n619) );
  CND3XL U772 ( .A(n621), .B(n620), .C(n619), .Z(\LCD_master_inst/state_ns [1]) );
  CEOXL U773 ( .A(\dma_logic/w_ptr[2] ), .B(n623), .Z(\dma_logic/n80 ) );
  CEOXL U774 ( .A(n622), .B(\dma_logic/w_ptr[4] ), .Z(\dma_logic/n78 ) );
  CENX1 U775 ( .A(n672), .B(n671), .Z(\dma_logic/n83 ) );
  CENX1 U776 ( .A(n656), .B(n655), .Z(\dma_logic/n56 ) );
  CANR1XL U777 ( .A(n625), .B(n624), .C(n623), .Z(\dma_logic/n81 ) );
  CIVX1 U779 ( .A(n626), .Z(n628) );
  CNR3XL U780 ( .A(n629), .B(n628), .C(n627), .Z(\clk_div/N12 ) );
  CNR2XL U782 ( .A(_5_net_), .B(n676), .Z(\memif1.f0_write ) );
  CNR2XL U783 ( .A(_5_net_), .B(n675), .Z(\memif0.f0_write ) );
  CND4XL U784 ( .A(n648), .B(\memif0.f0_waddr [1]), .C(\memif0.f0_waddr [2]), 
        .D(\memif0.f0_waddr [0]), .Z(n641) );
  CIVX1 U785 ( .A(\memif1.f0_waddr [0]), .Z(n659) );
  CIVX1 U786 ( .A(\memif0.f0_waddr [0]), .Z(n643) );
  CNIVX1 U787 ( .A(\memif1.f0_waddr [2]), .Z(n630) );
  CENX2 U788 ( .A(\memif0.f0_waddr [2]), .B(n646), .Z(\dma_logic/n62 ) );
  CND2X4 U789 ( .A(n661), .B(\memif1.f0_waddr [1]), .Z(n662) );
  CNR2IX4 U790 ( .B(\memif1.f0_waddr [0]), .A(n660), .Z(n661) );
  CND2X2 U791 ( .A(n653), .B(\memif0.f0_raddr [0]), .Z(n652) );
  CEOX2 U792 ( .A(\memif0.f0_waddr [4]), .B(n642), .Z(\dma_logic/n65 ) );
  CND2X2 U793 ( .A(n645), .B(\memif0.f0_waddr [1]), .Z(n646) );
  CNR2IX2 U794 ( .B(\memif0.f0_waddr [0]), .A(n644), .Z(n645) );
  CND3X2 U795 ( .A(n653), .B(\memif0.f0_raddr [0]), .C(\memif0.f0_raddr [1]), 
        .Z(n654) );
  CAOR2XL U796 ( .A(n631), .B(\memif1.f0_rdata [30]), .C(n636), .D(
        \memif0.f0_rdata [30]), .Z(data_out[30]) );
  CAOR2XL U797 ( .A(n631), .B(\memif1.f0_rdata [22]), .C(n636), .D(
        \memif0.f0_rdata [22]), .Z(data_out[22]) );
  CAOR2XL U798 ( .A(n631), .B(\memif1.f0_rdata [11]), .C(n636), .D(
        \memif0.f0_rdata [11]), .Z(data_out[11]) );
  CAOR2XL U799 ( .A(n631), .B(\memif1.f0_rdata [4]), .C(n636), .D(
        \memif0.f0_rdata [4]), .Z(data_out[4]) );
  CAOR2XL U800 ( .A(n631), .B(\memif1.f0_rdata [20]), .C(n636), .D(
        \memif0.f0_rdata [20]), .Z(data_out[20]) );
  CAOR2XL U801 ( .A(n631), .B(\memif1.f0_rdata [12]), .C(n636), .D(
        \memif0.f0_rdata [12]), .Z(data_out[12]) );
  CAOR2XL U802 ( .A(n631), .B(\memif1.f0_rdata [28]), .C(n636), .D(
        \memif0.f0_rdata [28]), .Z(data_out[28]) );
  CAOR2XL U803 ( .A(n631), .B(\memif1.f0_rdata [0]), .C(n636), .D(
        \memif0.f0_rdata [0]), .Z(data_out[0]) );
  CAOR2XL U804 ( .A(n631), .B(\memif1.f0_rdata [8]), .C(n636), .D(
        \memif0.f0_rdata [8]), .Z(data_out[8]) );
  CAOR2XL U805 ( .A(n631), .B(\memif1.f0_rdata [10]), .C(n636), .D(
        \memif0.f0_rdata [10]), .Z(data_out[10]) );
  CAOR2XL U806 ( .A(n631), .B(\memif1.f0_rdata [5]), .C(n636), .D(
        \memif0.f0_rdata [5]), .Z(data_out[5]) );
  CAOR2XL U807 ( .A(n631), .B(\memif1.f0_rdata [16]), .C(n636), .D(
        \memif0.f0_rdata [16]), .Z(data_out[16]) );
  CAOR2XL U808 ( .A(n631), .B(\memif1.f0_rdata [14]), .C(n636), .D(
        \memif0.f0_rdata [14]), .Z(data_out[14]) );
  CAOR2XL U809 ( .A(n631), .B(\memif1.f0_rdata [3]), .C(n636), .D(
        \memif0.f0_rdata [3]), .Z(data_out[3]) );
  CAOR2XL U810 ( .A(n631), .B(\memif1.f0_rdata [19]), .C(n636), .D(
        \memif0.f0_rdata [19]), .Z(data_out[19]) );
  CAOR2XL U811 ( .A(n631), .B(\memif1.f0_rdata [21]), .C(n636), .D(
        \memif0.f0_rdata [21]), .Z(data_out[21]) );
  CAOR2XL U812 ( .A(n631), .B(\memif1.f0_rdata [24]), .C(n636), .D(
        \memif0.f0_rdata [24]), .Z(data_out[24]) );
  CAOR2XL U813 ( .A(n631), .B(\memif1.f0_rdata [25]), .C(n636), .D(
        \memif0.f0_rdata [25]), .Z(data_out[25]) );
  CAOR2XL U814 ( .A(n631), .B(\memif1.f0_rdata [6]), .C(n636), .D(
        \memif0.f0_rdata [6]), .Z(data_out[6]) );
  CAOR2XL U815 ( .A(n631), .B(\memif1.f0_rdata [26]), .C(n636), .D(
        \memif0.f0_rdata [26]), .Z(data_out[26]) );
  CAOR2XL U816 ( .A(n631), .B(\memif1.f0_rdata [1]), .C(n636), .D(
        \memif0.f0_rdata [1]), .Z(data_out[1]) );
  CAOR2XL U817 ( .A(n631), .B(\memif1.f0_rdata [18]), .C(n636), .D(
        \memif0.f0_rdata [18]), .Z(data_out[18]) );
  CAOR2XL U818 ( .A(n631), .B(\memif1.f0_rdata [23]), .C(n636), .D(
        \memif0.f0_rdata [23]), .Z(data_out[23]) );
  CAOR2XL U819 ( .A(n631), .B(\memif1.f0_rdata [13]), .C(n636), .D(
        \memif0.f0_rdata [13]), .Z(data_out[13]) );
  CAOR2XL U820 ( .A(n631), .B(\memif1.f0_rdata [29]), .C(n636), .D(
        \memif0.f0_rdata [29]), .Z(data_out[29]) );
  CAOR2XL U821 ( .A(n631), .B(\memif1.f0_rdata [9]), .C(n636), .D(
        \memif0.f0_rdata [9]), .Z(data_out[9]) );
  CAOR2XL U822 ( .A(n631), .B(\memif1.f0_rdata [17]), .C(n636), .D(
        \memif0.f0_rdata [17]), .Z(data_out[17]) );
  CAOR2XL U823 ( .A(n631), .B(\memif1.f0_rdata [2]), .C(n636), .D(
        \memif0.f0_rdata [2]), .Z(data_out[2]) );
  CAOR2XL U824 ( .A(n631), .B(\memif1.f0_rdata [15]), .C(n636), .D(
        \memif0.f0_rdata [15]), .Z(data_out[15]) );
  CAOR2XL U825 ( .A(n631), .B(\memif1.f0_rdata [31]), .C(n636), .D(
        \memif0.f0_rdata [31]), .Z(data_out[31]) );
  CAOR2XL U826 ( .A(n631), .B(\memif1.f0_rdata [7]), .C(n636), .D(
        \memif0.f0_rdata [7]), .Z(data_out[7]) );
  CAOR2XL U827 ( .A(n631), .B(\memif1.f0_rdata [27]), .C(n636), .D(
        \memif0.f0_rdata [27]), .Z(data_out[27]) );
  CENX1 U828 ( .A(n647), .B(\memif0.f0_waddr [3]), .Z(\dma_logic/n61 ) );
  CENX1 U829 ( .A(\memif0.f0_raddr [4]), .B(n651), .Z(\dma_logic/n60 ) );
  CND2X1 U830 ( .A(n655), .B(\memif0.f0_raddr [3]), .Z(n651) );
  CENX1 U831 ( .A(\memif0.f0_raddr [1]), .B(n652), .Z(\dma_logic/n58 ) );
  CENX1 U832 ( .A(\memif0.f0_raddr [2]), .B(n654), .Z(\dma_logic/n57 ) );
  CENX1 U833 ( .A(n663), .B(\memif1.f0_waddr [3]), .Z(\dma_logic/n88 ) );
  CENX1 U834 ( .A(\memif1.f0_raddr [4]), .B(n666), .Z(\dma_logic/n87 ) );
  CENX1 U835 ( .A(\memif1.f0_raddr [1]), .B(n668), .Z(\dma_logic/n85 ) );
  CENX1 U836 ( .A(\memif1.f0_raddr [2]), .B(n670), .Z(\dma_logic/n84 ) );
  CEOX1 U837 ( .A(\memif0.f0_waddr [1]), .B(n645), .Z(\dma_logic/n63 ) );
  CEOX1 U838 ( .A(\memif1.f0_waddr [4]), .B(n657), .Z(\dma_logic/n92 ) );
  CNR2IX1 U839 ( .B(\memif1.f0_waddr [3]), .A(n663), .Z(n657) );
  CND2X1 U840 ( .A(n669), .B(\memif1.f0_raddr [0]), .Z(n668) );
  CND4X1 U841 ( .A(n649), .B(\memif0.f0_raddr [0]), .C(\memif0.f0_raddr [2]), 
        .D(\memif0.f0_raddr [1]), .Z(n650) );
  CND4X1 U842 ( .A(n664), .B(\memif1.f0_raddr [2]), .C(n635), .D(n667), .Z(
        n665) );
  COAN1X1 U843 ( .A(\memif0.f0_raddr [0]), .B(n653), .C(n652), .Z(n633) );
  COAN1X1 U844 ( .A(\memif1.f0_raddr [0]), .B(n669), .C(n668), .Z(n634) );
  CAN2X1 U845 ( .A(\memif1.f0_raddr [0]), .B(\memif1.f0_raddr [1]), .Z(n635)
         );
  CAN4X1 U846 ( .A(n658), .B(\memif1.f0_waddr [2]), .C(\memif1.f0_waddr [1]), 
        .D(\memif1.f0_waddr [0]), .Z(n637) );
  CND2X1 U847 ( .A(n671), .B(\memif1.f0_raddr [3]), .Z(n666) );
  CIVX2 U848 ( .A(\memif0.f0_raddr [3]), .Z(n656) );
  CIVX2 U849 ( .A(\memif1.f0_raddr [3]), .Z(n672) );
endmodule

