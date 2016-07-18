
module decoder_2 ( clk, rst, en, data_in, sel, data_out );
  input [31:0] data_in;
  output [15:0] data_out;
  input clk, rst, en, sel;
  wire   n3, n4;

  CNR2IX1 U20 ( .B(en), .A(sel), .Z(n3) );
  CAN2X1 U21 ( .A(sel), .B(en), .Z(n4) );
  CAOR2XL U22 ( .A(n4), .B(data_in[23]), .C(n3), .D(data_in[7]), .Z(
        data_out[7]) );
  CAOR2XL U23 ( .A(n4), .B(data_in[29]), .C(n3), .D(data_in[13]), .Z(
        data_out[13]) );
  CAOR2XL U24 ( .A(n4), .B(data_in[17]), .C(n3), .D(data_in[1]), .Z(
        data_out[1]) );
  CAOR2XL U25 ( .A(n4), .B(data_in[18]), .C(n3), .D(data_in[2]), .Z(
        data_out[2]) );
  CAOR2XL U26 ( .A(n4), .B(data_in[26]), .C(n3), .D(data_in[10]), .Z(
        data_out[10]) );
  CAOR2XL U27 ( .A(n4), .B(data_in[22]), .C(n3), .D(data_in[6]), .Z(
        data_out[6]) );
  CAOR2XL U28 ( .A(n4), .B(data_in[19]), .C(n3), .D(data_in[3]), .Z(
        data_out[3]) );
  CAOR2XL U29 ( .A(n4), .B(data_in[16]), .C(n3), .D(data_in[0]), .Z(
        data_out[0]) );
  CAOR2XL U30 ( .A(n4), .B(data_in[25]), .C(n3), .D(data_in[9]), .Z(
        data_out[9]) );
  CAOR2XL U31 ( .A(n4), .B(data_in[28]), .C(n3), .D(data_in[12]), .Z(
        data_out[12]) );
  CAOR2XL U32 ( .A(n4), .B(data_in[20]), .C(n3), .D(data_in[4]), .Z(
        data_out[4]) );
  CAOR2XL U33 ( .A(n4), .B(data_in[31]), .C(n3), .D(data_in[15]), .Z(
        data_out[15]) );
  CAOR2XL U34 ( .A(n4), .B(data_in[27]), .C(n3), .D(data_in[11]), .Z(
        data_out[11]) );
  CAOR2XL U35 ( .A(n4), .B(data_in[24]), .C(n3), .D(data_in[8]), .Z(
        data_out[8]) );
  CAOR2XL U36 ( .A(n4), .B(data_in[21]), .C(n3), .D(data_in[5]), .Z(
        data_out[5]) );
  CAOR2XL U37 ( .A(n4), .B(data_in[30]), .C(n3), .D(data_in[14]), .Z(
        data_out[14]) );
endmodule

