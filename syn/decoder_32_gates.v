
module decoder_32 ( clk, rst, en, data_in, sel, data_out );
  input [31:0] data_in;
  input [4:0] sel;
  input clk, rst, en;
  output data_out;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80;

  CND3XL U42 ( .A(n67), .B(n66), .C(n65), .Z(n68) );
  CND3XL U43 ( .A(n74), .B(n73), .C(n72), .Z(n75) );
  CNR2X1 U44 ( .A(sel[3]), .B(n51), .Z(n69) );
  CNR2X1 U45 ( .A(n52), .B(n51), .Z(n70) );
  CNR2X1 U46 ( .A(sel[4]), .B(n52), .Z(n77) );
  CNR2X1 U47 ( .A(sel[3]), .B(sel[4]), .Z(n71) );
  CANR2X1 U48 ( .A(n70), .B(data_in[30]), .C(data_in[6]), .D(n71), .Z(n40) );
  CND2X1 U49 ( .A(data_in[22]), .B(n69), .Z(n41) );
  CND3XL U50 ( .A(n41), .B(n40), .C(sel[1]), .Z(n76) );
  CND3XL U51 ( .A(n64), .B(sel[1]), .C(n63), .Z(n42) );
  COND4CX1 U52 ( .A(n77), .B(data_in[10]), .C(n42), .D(n68), .Z(n79) );
  CND2X1 U53 ( .A(data_in[19]), .B(n69), .Z(n43) );
  CANR2X1 U54 ( .A(n70), .B(data_in[27]), .C(data_in[3]), .D(n71), .Z(n44) );
  CND3XL U55 ( .A(n43), .B(n44), .C(sel[1]), .Z(n45) );
  CANR1XL U56 ( .A(data_in[11]), .B(n77), .C(n45), .Z(n53) );
  CANR2X1 U57 ( .A(n70), .B(data_in[31]), .C(data_in[7]), .D(n71), .Z(n46) );
  CND2X1 U58 ( .A(data_in[23]), .B(n69), .Z(n47) );
  CND3XL U59 ( .A(n47), .B(n46), .C(sel[1]), .Z(n48) );
  CANR1XL U60 ( .A(data_in[15]), .B(n77), .C(n48), .Z(n57) );
  CMXI2X1 U61 ( .A0(n62), .A1(n61), .S(sel[2]), .Z(n49) );
  COND1XL U62 ( .A(n80), .B(sel[0]), .C(en), .Z(n50) );
  CANR1XL U63 ( .A(sel[0]), .B(n49), .C(n50), .Z(data_out) );
  CANR1XL U64 ( .A(n71), .B(data_in[1]), .C(sel[1]), .Z(n56) );
  CIVX2 U65 ( .A(sel[3]), .Z(n52) );
  CIVX1 U66 ( .A(sel[4]), .Z(n51) );
  CANR2X1 U67 ( .A(n70), .B(data_in[25]), .C(n69), .D(data_in[17]), .Z(n55) );
  CND2X1 U68 ( .A(n77), .B(data_in[9]), .Z(n54) );
  CANR11X1 U69 ( .A(n56), .B(n55), .C(n54), .D(n53), .Z(n62) );
  CANR1XL U70 ( .A(n71), .B(data_in[5]), .C(sel[1]), .Z(n60) );
  CANR2X1 U71 ( .A(n70), .B(data_in[29]), .C(n69), .D(data_in[21]), .Z(n59) );
  CND2X1 U72 ( .A(n77), .B(data_in[13]), .Z(n58) );
  CANR11X1 U73 ( .A(n60), .B(n59), .C(n58), .D(n57), .Z(n61) );
  CND2X1 U74 ( .A(n71), .B(data_in[2]), .Z(n64) );
  CANR2X1 U75 ( .A(n70), .B(data_in[26]), .C(n69), .D(data_in[18]), .Z(n63) );
  CND2X1 U76 ( .A(data_in[8]), .B(n77), .Z(n67) );
  CANR2X1 U77 ( .A(n70), .B(data_in[24]), .C(n69), .D(data_in[16]), .Z(n66) );
  CANR1XL U78 ( .A(n71), .B(data_in[0]), .C(sel[1]), .Z(n65) );
  CND2X1 U79 ( .A(data_in[12]), .B(n77), .Z(n74) );
  CANR2X1 U80 ( .A(n70), .B(data_in[28]), .C(n69), .D(data_in[20]), .Z(n73) );
  CANR1XL U81 ( .A(n71), .B(data_in[4]), .C(sel[1]), .Z(n72) );
  COND4CX1 U82 ( .A(data_in[14]), .B(n77), .C(n76), .D(n75), .Z(n78) );
  CMXI2X1 U83 ( .A0(n79), .A1(n78), .S(sel[2]), .Z(n80) );
endmodule

