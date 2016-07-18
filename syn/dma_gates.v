
module dma_fifo ( clk, rst, push, pull, data_in, data_out, depth_left, 
        \mem_if.f0_waddr , \mem_if.f0_wdata , \mem_if.f0_write , 
        \mem_if.f0_raddr , \mem_if.f0_rdata , full, empty, fp_pulse );
  input [31:0] data_in;
  output [31:0] data_out;
  output [5:0] depth_left;
  output [4:0] \mem_if.f0_waddr ;
  output [31:0] \mem_if.f0_wdata ;
  output [4:0] \mem_if.f0_raddr ;
  input [31:0] \mem_if.f0_rdata ;
  input clk, rst, push, pull, fp_pulse;
  output \mem_if.f0_write , full, empty;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63;
  assign \mem_if.f0_wdata  [31] = data_in[31];
  assign \mem_if.f0_wdata  [30] = data_in[30];
  assign \mem_if.f0_wdata  [29] = data_in[29];
  assign \mem_if.f0_wdata  [28] = data_in[28];
  assign \mem_if.f0_wdata  [27] = data_in[27];
  assign \mem_if.f0_wdata  [26] = data_in[26];
  assign \mem_if.f0_wdata  [25] = data_in[25];
  assign \mem_if.f0_wdata  [24] = data_in[24];
  assign \mem_if.f0_wdata  [23] = data_in[23];
  assign \mem_if.f0_wdata  [22] = data_in[22];
  assign \mem_if.f0_wdata  [21] = data_in[21];
  assign \mem_if.f0_wdata  [20] = data_in[20];
  assign \mem_if.f0_wdata  [19] = data_in[19];
  assign \mem_if.f0_wdata  [18] = data_in[18];
  assign \mem_if.f0_wdata  [17] = data_in[17];
  assign \mem_if.f0_wdata  [16] = data_in[16];
  assign \mem_if.f0_wdata  [15] = data_in[15];
  assign \mem_if.f0_wdata  [14] = data_in[14];
  assign \mem_if.f0_wdata  [13] = data_in[13];
  assign \mem_if.f0_wdata  [12] = data_in[12];
  assign \mem_if.f0_wdata  [11] = data_in[11];
  assign \mem_if.f0_wdata  [10] = data_in[10];
  assign \mem_if.f0_wdata  [9] = data_in[9];
  assign \mem_if.f0_wdata  [8] = data_in[8];
  assign \mem_if.f0_wdata  [7] = data_in[7];
  assign \mem_if.f0_wdata  [6] = data_in[6];
  assign \mem_if.f0_wdata  [5] = data_in[5];
  assign \mem_if.f0_wdata  [4] = data_in[4];
  assign \mem_if.f0_wdata  [3] = data_in[3];
  assign \mem_if.f0_wdata  [2] = data_in[2];
  assign \mem_if.f0_wdata  [1] = data_in[1];
  assign \mem_if.f0_wdata  [0] = data_in[0];

  CFD2QXL \depth_left_reg[0]  ( .D(n26), .CP(clk), .CD(n63), .Q(depth_left[0])
         );
  CFD2QXL \r_ptr_reg[0]  ( .D(n15), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_raddr [0]) );
  CFD2QXL \r_ptr_reg[1]  ( .D(n14), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_raddr [1]) );
  CFD2QXL \r_ptr_reg[2]  ( .D(n13), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_raddr [2]) );
  CFD2QXL \r_ptr_reg[3]  ( .D(n12), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_raddr [3]) );
  CFD2QXL \depth_left_reg[1]  ( .D(n24), .CP(clk), .CD(n63), .Q(depth_left[1])
         );
  CFD2QXL \r_ptr_reg[4]  ( .D(n11), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_raddr [4]) );
  CFD2QXL \w_ptr_reg[0]  ( .D(n20), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_waddr [0]) );
  CFD2QXL \w_ptr_reg[1]  ( .D(n19), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_waddr [1]) );
  CFD2QXL \w_ptr_reg[2]  ( .D(n18), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_waddr [2]) );
  CFD2QXL \w_ptr_reg[3]  ( .D(n17), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_waddr [3]) );
  CFD2QXL \depth_left_reg[2]  ( .D(n23), .CP(clk), .CD(n63), .Q(depth_left[2])
         );
  CFD2QXL \w_ptr_reg[4]  ( .D(n16), .CP(clk), .CD(n63), .Q(
        \mem_if.f0_waddr [4]) );
  CFD2QXL \depth_left_reg[3]  ( .D(n22), .CP(clk), .CD(n63), .Q(depth_left[3])
         );
  CFD2QXL \depth_left_reg[4]  ( .D(n21), .CP(clk), .CD(n63), .Q(depth_left[4])
         );
  CFD4XL \depth_left_reg[5]  ( .D(n25), .CP(clk), .SD(n63), .Q(depth_left[5]), 
        .QN(n62) );
  CMXI2X2 U66 ( .A0(n62), .A1(n53), .S(n52), .Z(n25) );
  CND2IX1 U67 ( .B(pull), .A(n36), .Z(n49) );
  CNR4X1 U68 ( .A(depth_left[1]), .B(depth_left[0]), .C(depth_left[2]), .D(
        depth_left[4]), .Z(n30) );
  CND2IX1 U69 ( .B(depth_left[3]), .A(n30), .Z(n31) );
  CNR2X1 U70 ( .A(n31), .B(depth_left[5]), .Z(full) );
  CIVX2 U71 ( .A(push), .Z(n42) );
  CNR2X1 U72 ( .A(full), .B(n42), .Z(n36) );
  CIVX2 U73 ( .A(n49), .Z(n47) );
  CNR2IX1 U74 ( .B(depth_left[5]), .A(n31), .Z(empty) );
  CNR2IX1 U75 ( .B(pull), .A(empty), .Z(n37) );
  CND2IX1 U76 ( .B(push), .A(n37), .Z(n32) );
  CND2X1 U77 ( .A(n49), .B(n32), .Z(n52) );
  CMX2XL U78 ( .A0(depth_left[4]), .A1(n33), .S(n52), .Z(n21) );
  CFA1XL U79 ( .A(depth_left[3]), .B(n34), .CI(n47), .CO(n48), .S(n35) );
  CMX2XL U80 ( .A0(depth_left[3]), .A1(n35), .S(n52), .Z(n22) );
  CANR1XL U81 ( .A(n36), .B(n37), .C(n47), .Z(n56) );
  CIVX1 U82 ( .A(\mem_if.f0_waddr [0]), .Z(n55) );
  CNR2X1 U83 ( .A(n56), .B(n55), .Z(n54) );
  CEOXL U84 ( .A(\mem_if.f0_waddr [1]), .B(n54), .Z(n19) );
  CIVXL U85 ( .A(full), .Z(n38) );
  COND1XL U86 ( .A(n38), .B(n42), .C(n37), .Z(n60) );
  CIVX1 U87 ( .A(\mem_if.f0_raddr [0]), .Z(n59) );
  CNR2X1 U88 ( .A(n60), .B(n59), .Z(n58) );
  CND2X1 U89 ( .A(\mem_if.f0_raddr [1]), .B(n58), .Z(n61) );
  CNR2IX1 U90 ( .B(\mem_if.f0_raddr [2]), .A(n61), .Z(n43) );
  CEOXL U91 ( .A(n43), .B(\mem_if.f0_raddr [3]), .Z(n12) );
  CFA1XL U92 ( .A(depth_left[2]), .B(n39), .CI(n47), .CO(n34), .S(n40) );
  CMX2XL U93 ( .A0(depth_left[2]), .A1(n40), .S(n52), .Z(n23) );
  CFA1XL U94 ( .A(depth_left[1]), .B(n47), .CI(depth_left[0]), .CO(n39), .S(
        n41) );
  CMX2XL U95 ( .A0(depth_left[1]), .A1(n41), .S(n52), .Z(n24) );
  CEOXL U96 ( .A(\mem_if.f0_raddr [1]), .B(n58), .Z(n14) );
  CEOXL U97 ( .A(depth_left[0]), .B(n52), .Z(n26) );
  CIVX2 U98 ( .A(rst), .Z(n63) );
  CNR2IX1 U99 ( .B(\mem_if.f0_rdata [30]), .A(rst), .Z(data_out[30]) );
  CNR2IX1 U100 ( .B(\mem_if.f0_rdata [28]), .A(rst), .Z(data_out[28]) );
  CNR2IX1 U101 ( .B(\mem_if.f0_rdata [29]), .A(rst), .Z(data_out[29]) );
  CNR2IX1 U102 ( .B(\mem_if.f0_rdata [27]), .A(rst), .Z(data_out[27]) );
  CNR2IX1 U103 ( .B(\mem_if.f0_rdata [25]), .A(rst), .Z(data_out[25]) );
  CNR2IX1 U104 ( .B(\mem_if.f0_rdata [26]), .A(rst), .Z(data_out[26]) );
  CNR2IX1 U105 ( .B(\mem_if.f0_rdata [24]), .A(rst), .Z(data_out[24]) );
  CNR2IX1 U106 ( .B(\mem_if.f0_rdata [22]), .A(rst), .Z(data_out[22]) );
  CNR2IX1 U107 ( .B(\mem_if.f0_rdata [23]), .A(rst), .Z(data_out[23]) );
  CNR2IX1 U108 ( .B(\mem_if.f0_rdata [21]), .A(rst), .Z(data_out[21]) );
  CNR2IX1 U109 ( .B(\mem_if.f0_rdata [19]), .A(rst), .Z(data_out[19]) );
  CNR2IX1 U110 ( .B(\mem_if.f0_rdata [20]), .A(rst), .Z(data_out[20]) );
  CNR2IX1 U111 ( .B(\mem_if.f0_rdata [18]), .A(rst), .Z(data_out[18]) );
  CNR2IX1 U112 ( .B(\mem_if.f0_rdata [16]), .A(rst), .Z(data_out[16]) );
  CNR2IX1 U113 ( .B(\mem_if.f0_rdata [17]), .A(rst), .Z(data_out[17]) );
  CNR2IX1 U114 ( .B(\mem_if.f0_rdata [15]), .A(rst), .Z(data_out[15]) );
  CNR2IX1 U115 ( .B(\mem_if.f0_rdata [14]), .A(rst), .Z(data_out[14]) );
  CNR2IX1 U116 ( .B(\mem_if.f0_rdata [13]), .A(rst), .Z(data_out[13]) );
  CNR2IX1 U117 ( .B(\mem_if.f0_rdata [12]), .A(rst), .Z(data_out[12]) );
  CNR2IX1 U118 ( .B(\mem_if.f0_rdata [11]), .A(rst), .Z(data_out[11]) );
  CNR2IX1 U119 ( .B(\mem_if.f0_rdata [10]), .A(rst), .Z(data_out[10]) );
  CNR2IX1 U120 ( .B(\mem_if.f0_rdata [9]), .A(rst), .Z(data_out[9]) );
  CNR2IX1 U121 ( .B(\mem_if.f0_rdata [8]), .A(rst), .Z(data_out[8]) );
  CNR2IX1 U122 ( .B(\mem_if.f0_rdata [7]), .A(rst), .Z(data_out[7]) );
  CNR2IX1 U123 ( .B(\mem_if.f0_rdata [6]), .A(rst), .Z(data_out[6]) );
  CNR2IX1 U124 ( .B(\mem_if.f0_rdata [31]), .A(rst), .Z(data_out[31]) );
  CNR2IX1 U125 ( .B(\mem_if.f0_rdata [5]), .A(rst), .Z(data_out[5]) );
  CNR2IX1 U126 ( .B(\mem_if.f0_rdata [4]), .A(rst), .Z(data_out[4]) );
  CNR2IX1 U127 ( .B(\mem_if.f0_rdata [3]), .A(rst), .Z(data_out[3]) );
  CNR2IX1 U128 ( .B(\mem_if.f0_rdata [2]), .A(rst), .Z(data_out[2]) );
  CNR2IX1 U129 ( .B(\mem_if.f0_rdata [1]), .A(rst), .Z(data_out[1]) );
  CNR2IX1 U130 ( .B(\mem_if.f0_rdata [0]), .A(rst), .Z(data_out[0]) );
  CNR2X1 U131 ( .A(rst), .B(n42), .Z(\mem_if.f0_write ) );
  CND2X1 U132 ( .A(n43), .B(\mem_if.f0_raddr [3]), .Z(n44) );
  CENX1 U133 ( .A(\mem_if.f0_raddr [4]), .B(n44), .Z(n11) );
  CND2X1 U134 ( .A(\mem_if.f0_waddr [1]), .B(n54), .Z(n57) );
  CNR2IX1 U135 ( .B(\mem_if.f0_waddr [2]), .A(n57), .Z(n45) );
  CEOX1 U136 ( .A(n45), .B(\mem_if.f0_waddr [3]), .Z(n17) );
  CND2X1 U137 ( .A(n45), .B(\mem_if.f0_waddr [3]), .Z(n46) );
  CENX1 U138 ( .A(\mem_if.f0_waddr [4]), .B(n46), .Z(n16) );
  CFA1XL U139 ( .A(depth_left[4]), .B(n48), .CI(n47), .CO(n51), .S(n33) );
  CENX1 U140 ( .A(depth_left[5]), .B(n49), .Z(n50) );
  CENX1 U141 ( .A(n51), .B(n50), .Z(n53) );
  CANR1XL U142 ( .A(n56), .B(n55), .C(n54), .Z(n20) );
  CENX1 U143 ( .A(\mem_if.f0_waddr [2]), .B(n57), .Z(n18) );
  CANR1XL U144 ( .A(n60), .B(n59), .C(n58), .Z(n15) );
  CENX1 U145 ( .A(\mem_if.f0_raddr [2]), .B(n61), .Z(n13) );
endmodule

