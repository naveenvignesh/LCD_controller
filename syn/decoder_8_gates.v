
module decoder_8 ( clk, rst, en, data_in, sel, data_out );
  input [31:0] data_in;
  input [2:0] sel;
  output [3:0] data_out;
  input clk, rst, en;
  wire   n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66;

  CNR3XL U39 ( .A(sel[2]), .B(sel[1]), .C(n37), .Z(n53) );
  CNR3XL U40 ( .A(sel[0]), .B(sel[2]), .C(sel[1]), .Z(n54) );
  CIVX2 U41 ( .A(sel[0]), .Z(n37) );
  CANR2X1 U42 ( .A(n54), .B(data_in[1]), .C(n53), .D(data_in[5]), .Z(n41) );
  CND2IX1 U43 ( .B(sel[2]), .A(sel[1]), .Z(n34) );
  CNR2X1 U44 ( .A(sel[0]), .B(n34), .Z(n56) );
  CNR2X1 U45 ( .A(n37), .B(n34), .Z(n55) );
  CANR2X1 U46 ( .A(n56), .B(data_in[9]), .C(n55), .D(data_in[13]), .Z(n40) );
  CND2IX1 U47 ( .B(sel[1]), .A(sel[2]), .Z(n35) );
  CNR2X1 U48 ( .A(sel[0]), .B(n35), .Z(n58) );
  CNR2X1 U49 ( .A(n37), .B(n35), .Z(n57) );
  CANR2X1 U50 ( .A(n58), .B(data_in[17]), .C(n57), .D(data_in[21]), .Z(n39) );
  CND2X1 U51 ( .A(sel[2]), .B(sel[1]), .Z(n36) );
  CNR2X1 U52 ( .A(sel[0]), .B(n36), .Z(n60) );
  CNR2X1 U53 ( .A(n37), .B(n36), .Z(n59) );
  CANR2X1 U54 ( .A(n60), .B(data_in[25]), .C(n59), .D(data_in[29]), .Z(n38) );
  CAN4X1 U55 ( .A(n41), .B(n40), .C(n39), .D(n38), .Z(n42) );
  CIVX2 U56 ( .A(en), .Z(n65) );
  CNR2X1 U57 ( .A(n42), .B(n65), .Z(data_out[1]) );
  CANR2X1 U58 ( .A(n54), .B(data_in[2]), .C(n53), .D(data_in[6]), .Z(n46) );
  CANR2X1 U59 ( .A(n56), .B(data_in[10]), .C(n55), .D(data_in[14]), .Z(n45) );
  CANR2X1 U60 ( .A(n58), .B(data_in[18]), .C(n57), .D(data_in[22]), .Z(n44) );
  CANR2X1 U61 ( .A(n60), .B(data_in[26]), .C(n59), .D(data_in[30]), .Z(n43) );
  CAN4X1 U62 ( .A(n46), .B(n45), .C(n44), .D(n43), .Z(n47) );
  CNR2X1 U63 ( .A(n47), .B(n65), .Z(data_out[2]) );
  CANR2X1 U64 ( .A(n54), .B(data_in[3]), .C(n53), .D(data_in[7]), .Z(n51) );
  CANR2X1 U65 ( .A(n56), .B(data_in[11]), .C(n55), .D(data_in[15]), .Z(n50) );
  CANR2X1 U66 ( .A(n58), .B(data_in[19]), .C(n57), .D(data_in[23]), .Z(n49) );
  CANR2X1 U67 ( .A(n60), .B(data_in[27]), .C(n59), .D(data_in[31]), .Z(n48) );
  CAN4X1 U68 ( .A(n51), .B(n50), .C(n49), .D(n48), .Z(n52) );
  CNR2X1 U69 ( .A(n52), .B(n65), .Z(data_out[3]) );
  CANR2X1 U70 ( .A(n54), .B(data_in[0]), .C(n53), .D(data_in[4]), .Z(n64) );
  CANR2X1 U71 ( .A(n56), .B(data_in[8]), .C(n55), .D(data_in[12]), .Z(n63) );
  CANR2X1 U72 ( .A(n58), .B(data_in[16]), .C(n57), .D(data_in[20]), .Z(n62) );
  CANR2X1 U73 ( .A(n60), .B(data_in[24]), .C(n59), .D(data_in[28]), .Z(n61) );
  CAN4X1 U74 ( .A(n64), .B(n63), .C(n62), .D(n61), .Z(n66) );
  CNR2X1 U75 ( .A(n66), .B(n65), .Z(data_out[0]) );
endmodule

