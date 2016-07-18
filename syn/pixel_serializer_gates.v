
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
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756;
  wire   [31:0] data_reg;

  CFD2QXL \pixel_counter_reg[4]  ( .D(n421), .CP(clk), .CD(n733), .Q(
        \pixel_counter[4] ) );
  CFD2QXL \pixel_counter_reg[1]  ( .D(n418), .CP(clk), .CD(n733), .Q(N111) );
  CFD2QXL \pixel_counter_reg[3]  ( .D(n420), .CP(clk), .CD(n733), .Q(N123) );
  CFD2QXL \pixel_counter_reg[2]  ( .D(n419), .CP(clk), .CD(n733), .Q(N117) );
  CFD2QXL \pixel_counter_reg[0]  ( .D(n417), .CP(clk), .CD(n733), .Q(N105) );
  CFD2XL \data_reg_reg[31]  ( .D(data_in_fifo[31]), .CP(hclk), .CD(n733), .Q(
        data_reg[31]), .QN(n736) );
  CFD2XL \data_reg_reg[30]  ( .D(data_in_fifo[30]), .CP(hclk), .CD(n733), .Q(
        data_reg[30]), .QN(n738) );
  CFD2XL \data_reg_reg[29]  ( .D(data_in_fifo[29]), .CP(hclk), .CD(n733), .Q(
        data_reg[29]), .QN(n737) );
  CFD2XL \data_reg_reg[28]  ( .D(data_in_fifo[28]), .CP(hclk), .CD(n733), .Q(
        data_reg[28]), .QN(n735) );
  CFD2XL \data_reg_reg[27]  ( .D(data_in_fifo[27]), .CP(hclk), .CD(n733), .Q(
        data_reg[27]), .QN(n756) );
  CFD2XL \data_reg_reg[26]  ( .D(data_in_fifo[26]), .CP(hclk), .CD(n733), .Q(
        data_reg[26]) );
  CFD2XL \data_reg_reg[25]  ( .D(data_in_fifo[25]), .CP(hclk), .CD(n733), .Q(
        data_reg[25]) );
  CFD2XL \data_reg_reg[24]  ( .D(data_in_fifo[24]), .CP(hclk), .CD(n733), .Q(
        data_reg[24]) );
  CFD2XL \data_reg_reg[23]  ( .D(data_in_fifo[23]), .CP(hclk), .CD(n733), .Q(
        data_reg[23]) );
  CFD2XL \data_reg_reg[22]  ( .D(data_in_fifo[22]), .CP(hclk), .CD(n733), .Q(
        data_reg[22]) );
  CFD2XL \data_reg_reg[21]  ( .D(data_in_fifo[21]), .CP(hclk), .CD(n733), .Q(
        data_reg[21]), .QN(n751) );
  CFD2XL \data_reg_reg[20]  ( .D(data_in_fifo[20]), .CP(hclk), .CD(n733), .Q(
        data_reg[20]), .QN(n746) );
  CFD2XL \data_reg_reg[19]  ( .D(data_in_fifo[19]), .CP(hclk), .CD(n733), .Q(
        data_reg[19]), .QN(n743) );
  CFD2XL \data_reg_reg[18]  ( .D(data_in_fifo[18]), .CP(hclk), .CD(n733), .Q(
        data_reg[18]), .QN(n754) );
  CFD2XL \data_reg_reg[17]  ( .D(data_in_fifo[17]), .CP(hclk), .CD(n733), .Q(
        data_reg[17]), .QN(n753) );
  CFD2XL \data_reg_reg[16]  ( .D(data_in_fifo[16]), .CP(hclk), .CD(n733), .Q(
        data_reg[16]), .QN(n752) );
  CFD2XL \data_reg_reg[15]  ( .D(data_in_fifo[15]), .CP(hclk), .CD(n733), .Q(
        data_reg[15]), .QN(n734) );
  CFD2XL \data_reg_reg[14]  ( .D(data_in_fifo[14]), .CP(hclk), .CD(n733), .Q(
        data_reg[14]) );
  CFD2XL \data_reg_reg[13]  ( .D(data_in_fifo[13]), .CP(hclk), .CD(n733), .Q(
        data_reg[13]) );
  CFD2XL \data_reg_reg[12]  ( .D(data_in_fifo[12]), .CP(hclk), .CD(n733), .Q(
        data_reg[12]) );
  CFD2XL \data_reg_reg[11]  ( .D(data_in_fifo[11]), .CP(hclk), .CD(n733), .Q(
        data_reg[11]), .QN(n755) );
  CFD2XL \data_reg_reg[10]  ( .D(data_in_fifo[10]), .CP(hclk), .CD(n733), .Q(
        data_reg[10]) );
  CFD2XL \data_reg_reg[9]  ( .D(data_in_fifo[9]), .CP(hclk), .CD(n733), .Q(
        data_reg[9]), .QN(n749) );
  CFD2XL \data_reg_reg[8]  ( .D(data_in_fifo[8]), .CP(hclk), .CD(n733), .Q(
        data_reg[8]), .QN(n748) );
  CFD2XL \data_reg_reg[7]  ( .D(data_in_fifo[7]), .CP(hclk), .CD(n733), .Q(
        data_reg[7]), .QN(n747) );
  CFD2XL \data_reg_reg[6]  ( .D(data_in_fifo[6]), .CP(hclk), .CD(n733), .Q(
        data_reg[6]), .QN(n744) );
  CFD2XL \data_reg_reg[5]  ( .D(data_in_fifo[5]), .CP(hclk), .CD(n733), .Q(
        data_reg[5]), .QN(n750) );
  CFD2XL \data_reg_reg[4]  ( .D(data_in_fifo[4]), .CP(hclk), .CD(n733), .QN(
        n745) );
  CFD2XL \data_reg_reg[3]  ( .D(data_in_fifo[3]), .CP(hclk), .CD(n733), .Q(
        data_reg[3]), .QN(n742) );
  CFD2XL \data_reg_reg[2]  ( .D(data_in_fifo[2]), .CP(hclk), .CD(n733), .Q(
        data_reg[2]), .QN(n741) );
  CFD2XL \data_reg_reg[1]  ( .D(data_in_fifo[1]), .CP(hclk), .CD(n733), .Q(
        data_reg[1]), .QN(n740) );
  CFD2XL \data_reg_reg[0]  ( .D(data_in_fifo[0]), .CP(hclk), .CD(n733), .Q(
        data_reg[0]), .QN(n739) );
  CIVX2 U457 ( .A(lcdbpp[1]), .Z(n654) );
  CNR2X1 U458 ( .A(n654), .B(n670), .Z(n707) );
  CANR1XL U459 ( .A(n656), .B(data_reg[5]), .C(n477), .Z(n663) );
  CANR1XL U460 ( .A(n656), .B(data_reg[1]), .C(n473), .Z(n662) );
  CANR1XL U461 ( .A(n656), .B(data_reg[17]), .C(n475), .Z(n661) );
  CANR1XL U462 ( .A(n656), .B(data_reg[13]), .C(n467), .Z(n668) );
  CANR1XL U463 ( .A(data_reg[25]), .B(n656), .C(n465), .Z(n665) );
  CNR2X1 U464 ( .A(n463), .B(n462), .Z(n666) );
  CANR1XL U465 ( .A(n553), .B(data_reg[23]), .C(n471), .Z(n660) );
  COND2X1 U466 ( .A(n544), .B(n738), .C(n552), .D(n735), .Z(n683) );
  CANR1XL U467 ( .A(n553), .B(data_reg[13]), .C(n523), .Z(n584) );
  CANR1XL U468 ( .A(n656), .B(data_reg[11]), .C(n521), .Z(n583) );
  CANR1XL U469 ( .A(data_reg[25]), .B(n553), .C(n525), .Z(n581) );
  CNR2X1 U470 ( .A(n528), .B(n527), .Z(n582) );
  CANR1XL U471 ( .A(n656), .B(data_reg[23]), .C(n517), .Z(n580) );
  CANR1XL U472 ( .A(n656), .B(data_reg[19]), .C(n515), .Z(n579) );
  CANR1XL U473 ( .A(n656), .B(data_reg[3]), .C(n519), .Z(n577) );
  COND1XL U474 ( .A(n552), .B(n738), .C(n551), .Z(n568) );
  COND1XL U475 ( .A(n549), .B(n656), .C(n548), .Z(n566) );
  COND1XL U476 ( .A(n650), .B(n546), .C(n545), .Z(n565) );
  CNR2X1 U477 ( .A(n732), .B(n722), .Z(n585) );
  CANR1XL U478 ( .A(n553), .B(data_reg[22]), .C(n536), .Z(n560) );
  COND1XL U479 ( .A(n544), .B(n746), .C(n535), .Z(n536) );
  CANR1XL U480 ( .A(N105), .B(n540), .C(n539), .Z(n558) );
  CND3XL U481 ( .A(lcdbpp[1]), .B(lcdbpp[0]), .C(n700), .Z(n722) );
  CIVX2 U482 ( .A(lcdena_lcdm), .Z(n732) );
  CNR3XL U483 ( .A(n726), .B(n547), .C(n499), .Z(n500) );
  CNR3XL U484 ( .A(n726), .B(n496), .C(n538), .Z(n497) );
  CIVX2 U485 ( .A(n664), .Z(n510) );
  CND3XL U486 ( .A(lcdbpp[2]), .B(lcdbpp[1]), .C(n706), .Z(n601) );
  CNR3XL U487 ( .A(lcdbpp[2]), .B(bebo), .C(bepo), .Z(n595) );
  CND2X1 U488 ( .A(n531), .B(N105), .Z(n544) );
  CNR2X1 U489 ( .A(n726), .B(n552), .Z(n689) );
  CND2X1 U490 ( .A(n717), .B(n678), .Z(n664) );
  CNR2X1 U491 ( .A(n526), .B(n734), .Z(n679) );
  CNR2X1 U492 ( .A(n526), .B(n736), .Z(n684) );
  CNR2X1 U493 ( .A(n499), .B(n490), .Z(n680) );
  CANR1XL U494 ( .A(data_reg[25]), .B(n685), .C(n491), .Z(n687) );
  COND1XL U495 ( .A(n526), .B(n756), .C(n493), .Z(n491) );
  CNR2X1 U496 ( .A(n526), .B(n747), .Z(n672) );
  CANR1XL U497 ( .A(n685), .B(data_reg[1]), .C(n486), .Z(n673) );
  COND1XL U498 ( .A(n526), .B(n742), .C(n494), .Z(n486) );
  CANR1XL U499 ( .A(n657), .B(data_reg[23]), .C(n485), .Z(n676) );
  COND1XL U500 ( .A(n564), .B(n751), .C(n498), .Z(n485) );
  CNR2X1 U501 ( .A(n496), .B(n484), .Z(n675) );
  CNR3XL U502 ( .A(N117), .B(n550), .C(n683), .Z(n492) );
  CANR1XL U503 ( .A(n602), .B(n601), .C(n732), .Z(n620) );
  CMXI2X1 U504 ( .A0(data_reg[23]), .A1(data_reg[7]), .S(n678), .Z(n628) );
  CIVX2 U505 ( .A(n636), .Z(n696) );
  CMXI2X1 U506 ( .A0(data_reg[25]), .A1(data_reg[9]), .S(n678), .Z(n643) );
  CNR2X1 U507 ( .A(n732), .B(n601), .Z(n624) );
  CNR2X1 U508 ( .A(n732), .B(n602), .Z(n638) );
  CNR4X1 U509 ( .A(n654), .B(n700), .C(n706), .D(n732), .Z(n635) );
  CNR3X1 U510 ( .A(n700), .B(n732), .C(n655), .Z(n636) );
  CNR2IX1 U511 ( .B(n595), .A(n732), .Z(n639) );
  CIVX2 U512 ( .A(n624), .Z(n642) );
  CND2X1 U513 ( .A(n654), .B(lcdbpp[0]), .Z(n655) );
  CIVX2 U514 ( .A(\pixel_counter[4] ), .Z(n678) );
  CIVX2 U515 ( .A(lcdbpp[2]), .Z(n700) );
  CNR3XL U516 ( .A(lcdbpp[1]), .B(lcdbpp[2]), .C(lcdbpp[0]), .Z(n720) );
  CMX4XL U517 ( .A0(n583), .A1(n584), .A2(n581), .A3(n582), .S0(n718), .S1(
        n529), .Z(n532) );
  CANR1XL U518 ( .A(n576), .B(n575), .C(n574), .Z(addr_to_rpal[3]) );
  COND1XL U519 ( .A(n573), .B(n575), .C(n707), .Z(n574) );
  CANR1XL U520 ( .A(n715), .B(n483), .C(n482), .Z(addr_to_rpal[4]) );
  CMX4XL U521 ( .A0(n666), .A1(n665), .A2(n668), .A3(n667), .S0(N117), .S1(
        n476), .Z(n483) );
  COND1XL U522 ( .A(n481), .B(n715), .C(n585), .Z(n482) );
  CNR2X1 U523 ( .A(n657), .B(n750), .Z(n422) );
  CANR4CX1 U524 ( .A(n422), .B(n672), .C(n650), .D(n671), .Z(n423) );
  CNR2X1 U525 ( .A(n678), .B(n487), .Z(n424) );
  CANR1XL U526 ( .A(n487), .B(n678), .C(n424), .Z(n425) );
  CMX4XL U527 ( .A0(n675), .A1(n676), .A2(n673), .A3(n423), .S0(n686), .S1(
        n425), .Z(n426) );
  CEOX1 U528 ( .A(n488), .B(N123), .Z(n427) );
  CMX2X1 U529 ( .A0(n680), .A1(n687), .S(n424), .Z(n428) );
  CND2X1 U530 ( .A(n682), .B(n489), .Z(n429) );
  COND4CX1 U531 ( .A(n531), .B(data_reg[29]), .C(n684), .D(n650), .Z(n430) );
  CND2X1 U532 ( .A(n424), .B(n430), .Z(n431) );
  COND2X1 U533 ( .A(n683), .B(n431), .C(n429), .D(n424), .Z(n432) );
  CMXI2X1 U534 ( .A0(n428), .A1(n432), .S(n686), .Z(n433) );
  COND1XL U535 ( .A(n433), .B(n427), .C(n585), .Z(n434) );
  CANR1XL U536 ( .A(n427), .B(n426), .C(n434), .Z(addr_to_rpal[5]) );
  CND2IX1 U537 ( .B(n655), .A(n700), .Z(n701) );
  CNR2X1 U538 ( .A(n645), .B(n717), .Z(n435) );
  CNR2X1 U539 ( .A(n678), .B(n435), .Z(n436) );
  CANR1XL U540 ( .A(n435), .B(n678), .C(n436), .Z(n437) );
  CMX4XL U541 ( .A0(n580), .A1(n579), .A2(n578), .A3(n577), .S0(n718), .S1(
        n437), .Z(n438) );
  CMX4XL U542 ( .A0(n584), .A1(n582), .A2(n583), .A3(n581), .S0(n436), .S1(
        n718), .Z(n439) );
  CANR1XL U543 ( .A(n717), .B(n645), .C(n435), .Z(n440) );
  CMXI2X1 U544 ( .A0(n438), .A1(n439), .S(n440), .Z(n441) );
  CAN2X1 U545 ( .A(n585), .B(n441), .Z(addr_to_rpal[6]) );
  CNR2X1 U546 ( .A(n543), .B(n717), .Z(n442) );
  CEOX1 U547 ( .A(n678), .B(n442), .Z(n443) );
  CMX4XL U548 ( .A0(n560), .A1(n561), .A2(n558), .A3(n559), .S0(n567), .S1(
        n443), .Z(n444) );
  CEOX1 U549 ( .A(N123), .B(n543), .Z(n445) );
  CNR2X1 U550 ( .A(n678), .B(n442), .Z(n446) );
  CMX4XL U551 ( .A0(n565), .A1(n566), .A2(n568), .A3(n569), .S0(n567), .S1(
        n446), .Z(n447) );
  COND1XL U552 ( .A(n447), .B(n445), .C(n585), .Z(n448) );
  CANR1XL U553 ( .A(n445), .B(n444), .C(n448), .Z(addr_to_rpal[7]) );
  CMXI2X1 U554 ( .A0(n663), .A1(n662), .S(n726), .Z(n449) );
  CANR3X1 U555 ( .A(data_reg[7]), .B(n689), .C(n664), .D(n449), .Z(n450) );
  CMX2GXL U556 ( .GN(n697), .A0(n661), .A1(n660), .S(N117), .Z(n451) );
  CMXI2X1 U557 ( .A0(n666), .A1(n665), .S(n726), .Z(n452) );
  CMXI2X1 U558 ( .A0(n668), .A1(n667), .S(n726), .Z(n453) );
  COND2X1 U559 ( .A(n669), .B(n452), .C(n698), .D(n453), .Z(n454) );
  CNR4X1 U560 ( .A(n450), .B(n670), .C(n451), .D(n454), .Z(addr_to_rpal[0]) );
  CANR2X1 U561 ( .A(n639), .B(rpal_datain[0]), .C(n619), .D(n620), .Z(n455) );
  COND1XL U562 ( .A(n696), .B(n742), .C(n455), .Z(lcddvd[3]) );
  COND2X1 U563 ( .A(n747), .B(n544), .C(n750), .D(n552), .Z(n456) );
  COND2X1 U564 ( .A(n745), .B(n526), .C(n744), .D(n564), .Z(n457) );
  CNR2X1 U565 ( .A(n456), .B(n457), .Z(n578) );
  COND2X1 U566 ( .A(n503), .B(n698), .C(n504), .D(n697), .Z(n458) );
  CANR1XL U567 ( .A(n507), .B(n510), .C(n458), .Z(n501) );
  CANR2X1 U568 ( .A(data_reg[23]), .B(n636), .C(n635), .D(n615), .Z(n459) );
  CNR2X1 U569 ( .A(n633), .B(n627), .Z(n460) );
  CANR1XL U570 ( .A(n639), .B(rpal_datain[14]), .C(n460), .Z(n461) );
  COND3X1 U571 ( .A(n642), .B(n593), .C(n459), .D(n461), .Z(lcddvd[23]) );
  CND2XL U572 ( .A(N123), .B(N117), .Z(n556) );
  COAN1XL U573 ( .A(N123), .B(N117), .C(n556), .Z(n715) );
  CIVXL U574 ( .A(N105), .Z(n650) );
  CND2X1 U575 ( .A(n650), .B(N111), .Z(n526) );
  CIVX2 U576 ( .A(N111), .Z(n531) );
  CND2X1 U577 ( .A(n650), .B(n531), .Z(n564) );
  COND2X1 U578 ( .A(n526), .B(n738), .C(n564), .D(n735), .Z(n463) );
  CND2X1 U579 ( .A(N105), .B(N111), .Z(n552) );
  COND2X1 U580 ( .A(n544), .B(n737), .C(n552), .D(n736), .Z(n462) );
  CIVX2 U581 ( .A(n544), .Z(n656) );
  CIVX2 U582 ( .A(n526), .Z(n657) );
  CIVX2 U583 ( .A(n564), .Z(n685) );
  CANR2XL U584 ( .A(n657), .B(data_reg[26]), .C(n685), .D(data_reg[24]), .Z(
        n464) );
  COND1XL U585 ( .A(n756), .B(n552), .C(n464), .Z(n465) );
  CANR2XL U586 ( .A(n657), .B(data_reg[14]), .C(n685), .D(data_reg[12]), .Z(
        n466) );
  COND1XL U587 ( .A(n552), .B(n734), .C(n466), .Z(n467) );
  CANR2XL U588 ( .A(n657), .B(data_reg[10]), .C(n685), .D(data_reg[8]), .Z(
        n468) );
  COND1XL U589 ( .A(n552), .B(n755), .C(n468), .Z(n469) );
  CANR1XL U590 ( .A(n656), .B(data_reg[9]), .C(n469), .Z(n667) );
  CND2X1 U591 ( .A(n556), .B(\pixel_counter[4] ), .Z(n476) );
  CIVX2 U592 ( .A(n552), .Z(n553) );
  CANR2XL U593 ( .A(n657), .B(data_reg[22]), .C(n685), .D(data_reg[20]), .Z(
        n470) );
  COND1XL U594 ( .A(n544), .B(n751), .C(n470), .Z(n471) );
  CIVX2 U595 ( .A(N117), .Z(n726) );
  CANR2XL U596 ( .A(n657), .B(data_reg[2]), .C(n685), .D(data_reg[0]), .Z(n472) );
  COND1XL U597 ( .A(n552), .B(n742), .C(n472), .Z(n473) );
  CANR2XL U598 ( .A(n657), .B(data_reg[18]), .C(n685), .D(data_reg[16]), .Z(
        n474) );
  COND1XL U599 ( .A(n552), .B(n743), .C(n474), .Z(n475) );
  COND1XL U600 ( .A(\pixel_counter[4] ), .B(n556), .C(n476), .Z(n708) );
  CMXI2X1 U601 ( .A0(n662), .A1(n661), .S(n708), .Z(n479) );
  COND2X1 U602 ( .A(n526), .B(n744), .C(n564), .D(n745), .Z(n477) );
  COND3X1 U603 ( .A(n552), .B(n747), .C(n663), .D(n726), .Z(n478) );
  COND2X1 U604 ( .A(n726), .B(n479), .C(n708), .D(n478), .Z(n480) );
  CANR11X1 U605 ( .A(\pixel_counter[4] ), .B(n660), .C(n726), .D(n480), .Z(
        n481) );
  CND2XL U606 ( .A(N105), .B(data_reg[18]), .Z(n537) );
  COND2X1 U607 ( .A(N111), .B(n537), .C(n752), .D(n552), .Z(n496) );
  COND2X1 U608 ( .A(n526), .B(n743), .C(n564), .D(n753), .Z(n484) );
  CANR2X1 U609 ( .A(n656), .B(data_reg[22]), .C(n553), .D(data_reg[20]), .Z(
        n498) );
  CNR2X1 U610 ( .A(N117), .B(n553), .Z(n488) );
  CNR2X1 U611 ( .A(n689), .B(n488), .Z(n719) );
  CIVX1 U612 ( .A(n719), .Z(n686) );
  CANR2X1 U613 ( .A(n656), .B(data_reg[2]), .C(n553), .D(data_reg[0]), .Z(n494) );
  COND2X1 U614 ( .A(n544), .B(n744), .C(n552), .D(n745), .Z(n671) );
  CIVXL U615 ( .A(N123), .Z(n717) );
  CNR2X1 U616 ( .A(n488), .B(n717), .Z(n487) );
  CANR2X1 U617 ( .A(n656), .B(data_reg[14]), .C(n553), .D(data_reg[12]), .Z(
        n682) );
  COND4CXL U618 ( .A(data_reg[13]), .B(n531), .C(n679), .D(n650), .Z(n489) );
  CND2X1 U619 ( .A(N105), .B(data_reg[10]), .Z(n549) );
  COND2X1 U620 ( .A(N111), .B(n549), .C(n748), .D(n552), .Z(n499) );
  COND2X1 U621 ( .A(n526), .B(n755), .C(n564), .D(n749), .Z(n490) );
  CANR2X1 U622 ( .A(n656), .B(data_reg[26]), .C(n553), .D(data_reg[24]), .Z(
        n493) );
  CANR2X1 U623 ( .A(n657), .B(data_reg[25]), .C(data_reg[27]), .D(n685), .Z(
        n555) );
  COND2X1 U624 ( .A(n526), .B(n737), .C(n564), .D(n736), .Z(n550) );
  CANR11X1 U625 ( .A(n555), .B(N117), .C(n493), .D(n492), .Z(n502) );
  CND2XL U626 ( .A(N123), .B(\pixel_counter[4] ), .Z(n669) );
  COND2X1 U627 ( .A(n526), .B(n750), .C(n564), .D(n747), .Z(n539) );
  CANR2X1 U628 ( .A(n657), .B(data_reg[1]), .C(n685), .D(data_reg[3]), .Z(n541) );
  CND3XL U629 ( .A(N117), .B(n494), .C(n541), .Z(n495) );
  COND11X1 U630 ( .A(N117), .B(n539), .C(n671), .D(n495), .Z(n507) );
  CANR2X1 U631 ( .A(n657), .B(data_reg[21]), .C(n685), .D(data_reg[23]), .Z(
        n535) );
  COND2X1 U632 ( .A(n526), .B(n753), .C(n564), .D(n743), .Z(n538) );
  CANR11X1 U633 ( .A(n535), .B(n498), .C(n726), .D(n497), .Z(n504) );
  CND2XL U634 ( .A(\pixel_counter[4] ), .B(n717), .Z(n697) );
  CANR2X1 U635 ( .A(n657), .B(data_reg[13]), .C(n685), .D(data_reg[15]), .Z(
        n545) );
  COND2X1 U636 ( .A(n526), .B(n749), .C(n564), .D(n755), .Z(n547) );
  CANR11X1 U637 ( .A(n545), .B(n682), .C(n726), .D(n500), .Z(n503) );
  CND2XL U638 ( .A(N123), .B(n678), .Z(n698) );
  CANR4CX1 U639 ( .A(n502), .B(n669), .C(n501), .D(bebo), .Z(n513) );
  CIVX1 U640 ( .A(n502), .Z(n509) );
  CIVX2 U641 ( .A(n669), .Z(n506) );
  COND2X1 U642 ( .A(n698), .B(n504), .C(n697), .D(n503), .Z(n505) );
  CAOR1X1 U643 ( .A(n507), .B(n506), .C(n505), .Z(n508) );
  COND4CXL U644 ( .A(n510), .B(n509), .C(n508), .D(bebo), .Z(n511) );
  CND4XL U645 ( .A(n720), .B(lcdena_lcdm), .C(bepo), .D(n511), .Z(n512) );
  COND2XL U646 ( .A(n513), .B(n512), .C(n739), .D(n696), .Z(lcddvd[0]) );
  CND2XL U647 ( .A(lcdena_lcdm), .B(n700), .Z(n670) );
  CANR2XL U648 ( .A(n657), .B(data_reg[16]), .C(n685), .D(data_reg[18]), .Z(
        n514) );
  COND1XL U649 ( .A(n552), .B(n753), .C(n514), .Z(n515) );
  CANR2XL U650 ( .A(n657), .B(data_reg[20]), .C(n685), .D(data_reg[22]), .Z(
        n516) );
  COND1XL U651 ( .A(n552), .B(n751), .C(n516), .Z(n517) );
  CANR2XL U652 ( .A(n685), .B(data_reg[2]), .C(n553), .D(data_reg[1]), .Z(n518) );
  COND1XL U653 ( .A(n526), .B(n739), .C(n518), .Z(n519) );
  CNR2X1 U654 ( .A(N117), .B(N111), .Z(n645) );
  CANR1XL U655 ( .A(N111), .B(N117), .C(n645), .Z(n718) );
  CNR2X1 U656 ( .A(n531), .B(n556), .Z(n530) );
  CNR2X1 U657 ( .A(n530), .B(n678), .Z(n529) );
  CANR1XL U658 ( .A(n530), .B(n678), .C(n529), .Z(n702) );
  CMX4XL U659 ( .A0(n579), .A1(n580), .A2(n577), .A3(n578), .S0(n718), .S1(
        n702), .Z(n533) );
  CANR2XL U660 ( .A(n657), .B(data_reg[8]), .C(n685), .D(data_reg[10]), .Z(
        n520) );
  COND1XL U661 ( .A(n552), .B(n749), .C(n520), .Z(n521) );
  CANR2XL U662 ( .A(n657), .B(data_reg[12]), .C(n685), .D(data_reg[14]), .Z(
        n522) );
  COND1XL U663 ( .A(n544), .B(n734), .C(n522), .Z(n523) );
  CANR2XL U664 ( .A(n657), .B(data_reg[24]), .C(n685), .D(data_reg[26]), .Z(
        n524) );
  COND1XL U665 ( .A(n756), .B(n544), .C(n524), .Z(n525) );
  COND2X1 U666 ( .A(n526), .B(n735), .C(n564), .D(n738), .Z(n528) );
  COND2X1 U667 ( .A(n544), .B(n736), .C(n552), .D(n737), .Z(n527) );
  CANR4CX1 U668 ( .A(n726), .B(n531), .C(n717), .D(n530), .Z(n711) );
  CMXI2X1 U669 ( .A0(n533), .A1(n532), .S(n711), .Z(n534) );
  CAN2XL U670 ( .A(n707), .B(n534), .Z(addr_to_rpal[2]) );
  CMX2GX1 U671 ( .GN(n538), .A0(n537), .A1(n752), .S(n656), .Z(n561) );
  CMXI2XL U672 ( .A0(n745), .A1(n744), .S(n544), .Z(n540) );
  COND1XL U673 ( .A(n544), .B(n739), .C(n541), .Z(n542) );
  CANR1XL U674 ( .A(n553), .B(data_reg[2]), .C(n542), .Z(n559) );
  CNR2XL U675 ( .A(N117), .B(n564), .Z(n543) );
  CANR1XL U676 ( .A(N117), .B(n564), .C(n543), .Z(n567) );
  CMXI2XL U677 ( .A0(data_reg[12]), .A1(data_reg[14]), .S(n544), .Z(n546) );
  CANR1XL U678 ( .A(n656), .B(data_reg[8]), .C(n547), .Z(n548) );
  CANR1XL U679 ( .A(n656), .B(data_reg[28]), .C(n550), .Z(n551) );
  CANR2XL U680 ( .A(n656), .B(data_reg[24]), .C(data_reg[26]), .D(n553), .Z(
        n554) );
  CND2X1 U681 ( .A(n555), .B(n554), .Z(n569) );
  CNR2X1 U682 ( .A(n685), .B(n556), .Z(n562) );
  CNR2X1 U683 ( .A(n562), .B(n678), .Z(n570) );
  CANR1XL U684 ( .A(n562), .B(n678), .C(n570), .Z(n557) );
  CMX4XL U685 ( .A0(n561), .A1(n560), .A2(n559), .A3(n558), .S0(n567), .S1(
        n557), .Z(n576) );
  CIVX2 U686 ( .A(n562), .Z(n563) );
  COND4CXL U687 ( .A(N117), .B(n564), .C(N123), .D(n563), .Z(n575) );
  CMXI2X1 U688 ( .A0(n566), .A1(n565), .S(n567), .Z(n572) );
  CMXI2X1 U689 ( .A0(n569), .A1(n568), .S(n567), .Z(n571) );
  CMXI2X1 U690 ( .A0(n572), .A1(n571), .S(n570), .Z(n573) );
  CMXI2X1 U691 ( .A0(data_reg[30]), .A1(data_reg[14]), .S(n678), .Z(n633) );
  CNR2X1 U692 ( .A(bebo), .B(bepo), .Z(n586) );
  CIVX2 U693 ( .A(lcdbpp[0]), .Z(n706) );
  CND4X1 U694 ( .A(lcdbpp[2]), .B(n586), .C(n654), .D(n706), .Z(n602) );
  CIVX2 U695 ( .A(n638), .Z(n627) );
  CMXI2X1 U696 ( .A0(n756), .A1(n755), .S(n678), .Z(n615) );
  CMXI2X1 U697 ( .A0(data_reg[31]), .A1(data_reg[15]), .S(n678), .Z(n593) );
  CMXI2X1 U698 ( .A0(data_reg[28]), .A1(data_reg[12]), .S(n678), .Z(n618) );
  CIVX2 U699 ( .A(n643), .Z(n587) );
  CANR2XL U700 ( .A(data_reg[21]), .B(n636), .C(n635), .D(n587), .Z(n589) );
  CMX2X1 U701 ( .A0(data_reg[13]), .A1(data_reg[29]), .S(\pixel_counter[4] ), 
        .Z(n630) );
  CANR2X1 U702 ( .A(n639), .B(rpal_datain[12]), .C(n624), .D(n630), .Z(n588)
         );
  COND3XL U703 ( .A(n618), .B(n627), .C(n589), .D(n588), .Z(lcddvd[21]) );
  CIVX2 U704 ( .A(n628), .Z(n590) );
  CANR2XL U705 ( .A(data_reg[15]), .B(n636), .C(n635), .D(n590), .Z(n592) );
  CMX2X1 U706 ( .A0(data_reg[10]), .A1(data_reg[26]), .S(\pixel_counter[4] ), 
        .Z(n629) );
  CANR2X1 U707 ( .A(n639), .B(rpal_datain[9]), .C(n624), .D(n629), .Z(n591) );
  COND3XL U708 ( .A(n643), .B(n627), .C(n592), .D(n591), .Z(lcddvd[15]) );
  CMXI2X1 U709 ( .A0(n751), .A1(n750), .S(n678), .Z(n623) );
  CANR2XL U710 ( .A(data_reg[10]), .B(n636), .C(n624), .D(n623), .Z(n596) );
  CNR2X1 U711 ( .A(n593), .B(n602), .Z(n594) );
  COND4CX1 U712 ( .A(n595), .B(rpal_datain[15]), .C(n594), .D(lcdena_lcdm), 
        .Z(n695) );
  CND2XL U713 ( .A(n596), .B(n695), .Z(lcddvd[10]) );
  CANR2XL U714 ( .A(data_reg[19]), .B(n636), .C(n639), .D(rpal_datain[10]), 
        .Z(n598) );
  CANR2X1 U715 ( .A(n624), .B(n615), .C(n638), .D(n629), .Z(n597) );
  CND2XL U716 ( .A(n598), .B(n597), .Z(lcddvd[19]) );
  CMXI2X1 U717 ( .A0(n746), .A1(n745), .S(n678), .Z(n603) );
  CANR2XL U718 ( .A(data_reg[12]), .B(n636), .C(n635), .D(n603), .Z(n600) );
  CMX2X1 U719 ( .A0(data_reg[6]), .A1(data_reg[22]), .S(\pixel_counter[4] ), 
        .Z(n634) );
  CANR2X1 U720 ( .A(n639), .B(rpal_datain[6]), .C(n638), .D(n634), .Z(n599) );
  COND3XL U721 ( .A(n628), .B(n642), .C(n600), .D(n599), .Z(lcddvd[12]) );
  CMXI2X1 U722 ( .A0(n743), .A1(n742), .S(n678), .Z(n606) );
  CANR2XL U723 ( .A(n639), .B(rpal_datain[4]), .C(n635), .D(n606), .Z(n605) );
  CND2X1 U724 ( .A(n620), .B(n603), .Z(n604) );
  COND3XL U725 ( .A(n696), .B(n747), .C(n605), .D(n604), .Z(lcddvd[7]) );
  CMXI2X1 U726 ( .A0(n754), .A1(n741), .S(n678), .Z(n609) );
  CANR2XL U727 ( .A(n639), .B(rpal_datain[3]), .C(n635), .D(n609), .Z(n608) );
  CND2X1 U728 ( .A(n620), .B(n606), .Z(n607) );
  COND3XL U729 ( .A(n696), .B(n744), .C(n608), .D(n607), .Z(lcddvd[6]) );
  CMXI2X1 U730 ( .A0(n753), .A1(n740), .S(n678), .Z(n612) );
  CANR2XL U731 ( .A(n639), .B(rpal_datain[2]), .C(n635), .D(n612), .Z(n611) );
  CND2X1 U732 ( .A(n620), .B(n609), .Z(n610) );
  COND3XL U733 ( .A(n696), .B(n750), .C(n611), .D(n610), .Z(lcddvd[5]) );
  CMXI2X1 U734 ( .A0(n752), .A1(n739), .S(n678), .Z(n619) );
  CANR2XL U735 ( .A(rpal_datain[1]), .B(n639), .C(n635), .D(n619), .Z(n614) );
  CND2X1 U736 ( .A(n620), .B(n612), .Z(n613) );
  COND3XL U737 ( .A(n696), .B(n745), .C(n614), .D(n613), .Z(lcddvd[4]) );
  CMX2X1 U738 ( .A0(data_reg[8]), .A1(data_reg[24]), .S(\pixel_counter[4] ), 
        .Z(n637) );
  CANR2XL U739 ( .A(data_reg[20]), .B(n636), .C(n635), .D(n637), .Z(n617) );
  CANR2X1 U740 ( .A(n639), .B(rpal_datain[11]), .C(n638), .D(n615), .Z(n616)
         );
  COND3XL U741 ( .A(n618), .B(n642), .C(n617), .D(n616), .Z(lcddvd[20]) );
  CANR2XL U742 ( .A(data_reg[11]), .B(n636), .C(n639), .D(rpal_datain[5]), .Z(
        n622) );
  CANR2X1 U743 ( .A(n624), .B(n634), .C(n638), .D(n623), .Z(n621) );
  CND2XL U744 ( .A(n622), .B(n621), .Z(lcddvd[11]) );
  CANR2XL U745 ( .A(data_reg[13]), .B(n636), .C(n635), .D(n623), .Z(n626) );
  CANR2X1 U746 ( .A(n639), .B(rpal_datain[7]), .C(n624), .D(n637), .Z(n625) );
  COND3XL U747 ( .A(n628), .B(n627), .C(n626), .D(n625), .Z(lcddvd[13]) );
  CANR2XL U748 ( .A(data_reg[22]), .B(n636), .C(n635), .D(n629), .Z(n632) );
  CANR2X1 U749 ( .A(n639), .B(rpal_datain[13]), .C(n638), .D(n630), .Z(n631)
         );
  COND3XL U750 ( .A(n633), .B(n642), .C(n632), .D(n631), .Z(lcddvd[22]) );
  CANR2XL U751 ( .A(data_reg[14]), .B(n636), .C(n635), .D(n634), .Z(n641) );
  CANR2X1 U752 ( .A(n639), .B(rpal_datain[8]), .C(n638), .D(n637), .Z(n640) );
  COND3XL U753 ( .A(n643), .B(n642), .C(n641), .D(n640), .Z(lcddvd[14]) );
  COND3XL U754 ( .A(N111), .B(n706), .C(\pixel_counter[4] ), .D(N117), .Z(n653) );
  CND2XL U755 ( .A(n700), .B(n706), .Z(n644) );
  COND3XL U756 ( .A(n678), .B(n655), .C(n645), .D(n644), .Z(n652) );
  CND2X1 U757 ( .A(n678), .B(n655), .Z(n699) );
  COND11XL U758 ( .A(lcdbpp[1]), .B(lcdbpp[2]), .C(N111), .D(n699), .Z(n648)
         );
  CEOXL U759 ( .A(n700), .B(n717), .Z(n646) );
  CIVX2 U760 ( .A(rst), .Z(n733) );
  CND4XL U761 ( .A(n646), .B(lcdena_lcdm), .C(pixel_clk_phaseshift), .D(n733), 
        .Z(n647) );
  CANR3XL U762 ( .A(lcdbpp[1]), .B(N111), .C(n648), .D(n647), .Z(n649) );
  CND2X1 U763 ( .A(n720), .B(n650), .Z(n731) );
  COND3XL U764 ( .A(n720), .B(n650), .C(n649), .D(n731), .Z(n651) );
  CANR4CXL U765 ( .A(lcdbpp[2]), .B(n653), .C(n652), .D(n651), .Z(pull) );
  CANR1XL U766 ( .A(lcdbpp[2]), .B(n655), .C(n732), .Z(n727) );
  CND2XL U767 ( .A(n727), .B(n654), .Z(n728) );
  COND1XL U768 ( .A(n657), .B(n656), .C(n720), .Z(n658) );
  CANR4CXL U769 ( .A(N111), .B(n701), .C(n658), .D(n732), .Z(n659) );
  CAOR1X1 U770 ( .A(N111), .B(n728), .C(n659), .Z(n418) );
  CIVX2 U771 ( .A(n701), .Z(n729) );
  CANR1XL U772 ( .A(lcdena_lcdm), .B(n729), .C(n707), .Z(n694) );
  CANR3X1 U773 ( .A(data_reg[5]), .B(n685), .C(n672), .D(n671), .Z(n674) );
  CMXI2X1 U774 ( .A0(n674), .A1(n673), .S(n686), .Z(n693) );
  CMXI2X1 U775 ( .A0(n676), .A1(n675), .S(n686), .Z(n692) );
  CND2XL U776 ( .A(N123), .B(n689), .Z(n677) );
  CEOX1 U777 ( .A(n678), .B(n677), .Z(n705) );
  CANR3X1 U778 ( .A(data_reg[13]), .B(n685), .C(n679), .D(n686), .Z(n681) );
  CANR2X1 U779 ( .A(n682), .B(n681), .C(n680), .D(n686), .Z(n691) );
  CANR3X1 U780 ( .A(data_reg[29]), .B(n685), .C(n684), .D(n683), .Z(n688) );
  CMXI2X1 U781 ( .A0(n688), .A1(n687), .S(n686), .Z(n690) );
  CEOXL U782 ( .A(N123), .B(n689), .Z(n712) );
  CMX4GX1 U783 ( .GN(n694), .A0(n693), .A2(n692), .S1(n705), .A1(n691), .A3(
        n690), .S0(n712), .Z(addr_to_rpal[1]) );
  CNR2X1 U784 ( .A(n752), .B(n696), .Z(lcddvd[16]) );
  CNR2X1 U785 ( .A(n753), .B(n696), .Z(lcddvd[17]) );
  CNR2X1 U786 ( .A(n749), .B(n696), .Z(lcddvd[9]) );
  CNR2X1 U787 ( .A(n748), .B(n696), .Z(lcddvd[8]) );
  CNR2X1 U788 ( .A(n740), .B(n696), .Z(lcddvd[1]) );
  COND1XL U789 ( .A(n696), .B(n741), .C(n695), .Z(lcddvd[2]) );
  COND1XL U790 ( .A(n696), .B(n754), .C(n695), .Z(lcddvd[18]) );
  CANR1XL U791 ( .A(n698), .B(n697), .C(n722), .Z(n704) );
  COND2XL U792 ( .A(n702), .B(n701), .C(n700), .D(n699), .Z(n703) );
  CANR3XL U793 ( .A(n705), .B(n720), .C(n704), .D(n703), .Z(n710) );
  CAN2XL U794 ( .A(n707), .B(n706), .Z(n724) );
  CANR2XL U795 ( .A(\pixel_counter[4] ), .B(n732), .C(n724), .D(n708), .Z(n709) );
  COND1XL U796 ( .A(n710), .B(n732), .C(n709), .Z(n421) );
  CANR2XL U797 ( .A(n720), .B(n712), .C(n729), .D(n711), .Z(n713) );
  CANR4CXL U798 ( .A(N123), .B(n722), .C(n713), .D(n732), .Z(n714) );
  CANR1XL U799 ( .A(n724), .B(n715), .C(n714), .Z(n716) );
  COND1XL U800 ( .A(n727), .B(n717), .C(n716), .Z(n420) );
  CANR2XL U801 ( .A(n720), .B(n719), .C(n729), .D(n718), .Z(n721) );
  CANR4CXL U802 ( .A(n726), .B(n722), .C(n721), .D(n732), .Z(n723) );
  CANR1XL U803 ( .A(n724), .B(n726), .C(n723), .Z(n725) );
  COND1XL U804 ( .A(n727), .B(n726), .C(n725), .Z(n419) );
  COND1XL U805 ( .A(n729), .B(n728), .C(N105), .Z(n730) );
  COND1XL U806 ( .A(n732), .B(n731), .C(n730), .Z(n417) );
endmodule

