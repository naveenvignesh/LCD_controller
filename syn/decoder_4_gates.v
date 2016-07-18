
module decoder_4 ( clk, rst, en, data_in, sel, data_out );
  input [31:0] data_in;
  input [1:0] sel;
  output [7:0] data_out;
  input clk, rst, en;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;

  CNR2X1 U31 ( .A(sel[0]), .B(sel[1]), .Z(n38) );
  CIVX2 U32 ( .A(sel[1]), .Z(n22) );
  CAN2X1 U33 ( .A(sel[0]), .B(n22), .Z(n37) );
  CANR2X1 U34 ( .A(n38), .B(data_in[0]), .C(n37), .D(data_in[8]), .Z(n24) );
  CNR2X1 U35 ( .A(sel[0]), .B(n22), .Z(n40) );
  CNR2IX1 U36 ( .B(sel[0]), .A(n22), .Z(n39) );
  CANR2X1 U37 ( .A(n40), .B(data_in[16]), .C(n39), .D(data_in[24]), .Z(n23) );
  CIVX2 U38 ( .A(en), .Z(n41) );
  CANR1XL U39 ( .A(n24), .B(n23), .C(n41), .Z(data_out[0]) );
  CANR2X1 U40 ( .A(n38), .B(data_in[1]), .C(n37), .D(data_in[9]), .Z(n26) );
  CANR2X1 U41 ( .A(n40), .B(data_in[17]), .C(n39), .D(data_in[25]), .Z(n25) );
  CANR1XL U42 ( .A(n26), .B(n25), .C(n41), .Z(data_out[1]) );
  CANR2X1 U43 ( .A(n38), .B(data_in[2]), .C(n37), .D(data_in[10]), .Z(n28) );
  CANR2X1 U44 ( .A(n40), .B(data_in[18]), .C(n39), .D(data_in[26]), .Z(n27) );
  CANR1XL U45 ( .A(n28), .B(n27), .C(n41), .Z(data_out[2]) );
  CANR2X1 U46 ( .A(n38), .B(data_in[3]), .C(n37), .D(data_in[11]), .Z(n30) );
  CANR2X1 U47 ( .A(n40), .B(data_in[19]), .C(n39), .D(data_in[27]), .Z(n29) );
  CANR1XL U48 ( .A(n30), .B(n29), .C(n41), .Z(data_out[3]) );
  CANR2X1 U49 ( .A(n38), .B(data_in[4]), .C(n37), .D(data_in[12]), .Z(n32) );
  CANR2X1 U50 ( .A(n40), .B(data_in[20]), .C(n39), .D(data_in[28]), .Z(n31) );
  CANR1XL U51 ( .A(n32), .B(n31), .C(n41), .Z(data_out[4]) );
  CANR2X1 U52 ( .A(n38), .B(data_in[5]), .C(n37), .D(data_in[13]), .Z(n34) );
  CANR2X1 U53 ( .A(n40), .B(data_in[21]), .C(n39), .D(data_in[29]), .Z(n33) );
  CANR1XL U54 ( .A(n34), .B(n33), .C(n41), .Z(data_out[5]) );
  CANR2X1 U55 ( .A(n38), .B(data_in[6]), .C(n37), .D(data_in[14]), .Z(n36) );
  CANR2X1 U56 ( .A(n40), .B(data_in[22]), .C(n39), .D(data_in[30]), .Z(n35) );
  CANR1XL U57 ( .A(n36), .B(n35), .C(n41), .Z(data_out[6]) );
  CANR2X1 U58 ( .A(n38), .B(data_in[7]), .C(n37), .D(data_in[15]), .Z(n43) );
  CANR2X1 U59 ( .A(n40), .B(data_in[23]), .C(n39), .D(data_in[31]), .Z(n42) );
  CANR1XL U60 ( .A(n43), .B(n42), .C(n41), .Z(data_out[7]) );
endmodule

