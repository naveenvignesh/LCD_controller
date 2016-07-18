
module decoder_16 ( clk, rst, en, data_in, sel, data_out );
  input [31:0] data_in;
  input [3:0] sel;
  output [1:0] data_out;
  input clk, rst, en;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72;

  CANR1XL U33 ( .A(n67), .B(data_in[2]), .C(n49), .Z(n50) );
  CND3XL U34 ( .A(n48), .B(n47), .C(sel[0]), .Z(n49) );
  CND2X1 U35 ( .A(n61), .B(data_in[18]), .Z(n48) );
  CIVX2 U36 ( .A(n58), .Z(n61) );
  CIVX2 U37 ( .A(n55), .Z(n62) );
  CNR2X1 U38 ( .A(n43), .B(n44), .Z(n63) );
  CANR1XL U39 ( .A(n67), .B(data_in[3]), .C(n66), .Z(n68) );
  CND3XL U40 ( .A(n65), .B(n64), .C(sel[0]), .Z(n66) );
  CND2X1 U41 ( .A(n61), .B(data_in[19]), .Z(n65) );
  CND2X1 U42 ( .A(n43), .B(sel[3]), .Z(n58) );
  CND2X1 U43 ( .A(n44), .B(sel[2]), .Z(n55) );
  CND2X1 U44 ( .A(n43), .B(n44), .Z(n57) );
  CIVX2 U45 ( .A(n57), .Z(n67) );
  CANR1XL U46 ( .A(n67), .B(data_in[4]), .C(sel[0]), .Z(n30) );
  CANR2X1 U47 ( .A(n62), .B(data_in[12]), .C(n63), .D(data_in[28]), .Z(n31) );
  CND2X1 U48 ( .A(data_in[20]), .B(n61), .Z(n32) );
  CND3XL U49 ( .A(n32), .B(n30), .C(n31), .Z(n45) );
  CANR2X1 U50 ( .A(n63), .B(data_in[30]), .C(n61), .D(data_in[22]), .Z(n33) );
  CND2X1 U51 ( .A(data_in[14]), .B(n62), .Z(n34) );
  CND3XL U52 ( .A(n34), .B(n33), .C(sel[0]), .Z(n46) );
  COND2X1 U53 ( .A(n58), .B(data_in[21]), .C(data_in[5]), .D(n57), .Z(n35) );
  COND2X1 U54 ( .A(n55), .B(data_in[13]), .C(n56), .D(data_in[29]), .Z(n36) );
  CNR2X1 U55 ( .A(n35), .B(n36), .Z(n60) );
  COND2X1 U56 ( .A(n58), .B(data_in[23]), .C(data_in[7]), .D(n57), .Z(n37) );
  COND2X1 U57 ( .A(n55), .B(data_in[15]), .C(n56), .D(data_in[31]), .Z(n38) );
  CNR2X1 U58 ( .A(n37), .B(n38), .Z(n59) );
  COND4CX1 U59 ( .A(n67), .B(data_in[6]), .C(n46), .D(n45), .Z(n39) );
  COND1XL U60 ( .A(n54), .B(sel[1]), .C(en), .Z(n40) );
  CANR1XL U61 ( .A(sel[1]), .B(n39), .C(n40), .Z(data_out[0]) );
  CMXI2X1 U62 ( .A0(n60), .A1(n59), .S(sel[0]), .Z(n41) );
  COND1XL U63 ( .A(n72), .B(sel[1]), .C(en), .Z(n42) );
  CANR1XL U64 ( .A(sel[1]), .B(n41), .C(n42), .Z(data_out[1]) );
  CIVX2 U65 ( .A(sel[2]), .Z(n43) );
  CIVX2 U66 ( .A(sel[3]), .Z(n44) );
  CANR1XL U67 ( .A(n61), .B(data_in[16]), .C(sel[0]), .Z(n53) );
  CANR2X1 U68 ( .A(n63), .B(data_in[24]), .C(n62), .D(data_in[8]), .Z(n52) );
  CND2X1 U69 ( .A(n67), .B(data_in[0]), .Z(n51) );
  CANR2X1 U70 ( .A(n63), .B(data_in[26]), .C(n62), .D(data_in[10]), .Z(n47) );
  CANR11X1 U71 ( .A(n53), .B(n52), .C(n51), .D(n50), .Z(n54) );
  CIVX1 U72 ( .A(n63), .Z(n56) );
  CANR1XL U73 ( .A(n61), .B(data_in[17]), .C(sel[0]), .Z(n71) );
  CANR2X1 U74 ( .A(n63), .B(data_in[25]), .C(n62), .D(data_in[9]), .Z(n70) );
  CND2X1 U75 ( .A(n67), .B(data_in[1]), .Z(n69) );
  CANR2X1 U76 ( .A(n63), .B(data_in[27]), .C(n62), .D(data_in[11]), .Z(n64) );
  CANR11X1 U77 ( .A(n71), .B(n70), .C(n69), .D(n68), .Z(n72) );
endmodule

