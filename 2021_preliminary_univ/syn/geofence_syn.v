/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed May 11 21:03:55 2022
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module mult_signed_1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
  CLKBUFX3 U3 ( .A(B[5]), .Y(SUM[5]) );
  CLKBUFX3 U4 ( .A(B[4]), .Y(SUM[4]) );
endmodule


module mult_signed_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(n1), .CO(carry[10]), .S(SUM[9]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XL U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2 U1 ( .A(B[8]), .B(A[8]), .Y(n1) );
  CLKBUFX3 U2 ( .A(A[1]), .Y(SUM[1]) );
  XOR2X1 U3 ( .A(B[8]), .B(A[8]), .Y(SUM[8]) );
  CLKBUFX3 U4 ( .A(A[7]), .Y(SUM[7]) );
  CLKBUFX3 U5 ( .A(A[6]), .Y(SUM[6]) );
  CLKBUFX3 U6 ( .A(A[5]), .Y(SUM[5]) );
  CLKBUFX3 U7 ( .A(A[4]), .Y(SUM[4]) );
  CLKBUFX3 U8 ( .A(A[3]), .Y(SUM[3]) );
  CLKBUFX3 U9 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module mult_signed_1_DW01_add_3 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  CLKBUFX3 U3 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module mult_signed_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  CLKBUFX2 U2 ( .A(B[0]), .Y(SUM[0]) );
  XOR2X1 U3 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
  CLKBUFX3 U4 ( .A(B[3]), .Y(SUM[3]) );
  CLKBUFX3 U5 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U6 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module mult_signed_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mult_signed_1_DW01_inc_1 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX2 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X2 U2 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
endmodule


module mult_signed_1_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mult_signed_1 ( a, b, out );
  input [10:0] a;
  input [10:0] b;
  output [21:0] out;
  wire   N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n43, n44, n45, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, N99, N92,
         N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78,
         N77, N76, N75, N74, N73, N268, N267, N266, N265, N264, N263, N262,
         N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251,
         N250, N249, N248, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N202,
         N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N166, N165, N164, N163, N158, N157, N156, N155, N154,
         N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143,
         N142, N141, N140, N139, N138, N136, N135, N134, N133, N132, N131,
         N130, N129, N128, N127, N126, N125, N124, N123, N114, N113, N112,
         N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101,
         N100, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N25, N24,
         N23, N22, N21, N20, N19, N18, N17, N16, N15,
         \add_5_root_add_0_root_add_33_10/carry[21] ,
         \add_5_root_add_0_root_add_33_10/carry[20] ,
         \add_5_root_add_0_root_add_33_10/carry[19] ,
         \add_5_root_add_0_root_add_33_10/carry[18] ,
         \add_5_root_add_0_root_add_33_10/carry[17] ,
         \add_5_root_add_0_root_add_33_10/carry[16] ,
         \add_5_root_add_0_root_add_33_10/carry[15] ,
         \add_5_root_add_0_root_add_33_10/carry[14] ,
         \add_5_root_add_0_root_add_33_10/carry[13] ,
         \add_5_root_add_0_root_add_33_10/carry[12] ,
         \add_5_root_add_0_root_add_33_10/carry[11] ,
         \add_5_root_add_0_root_add_33_10/carry[10] ,
         \add_5_root_add_0_root_add_33_10/carry[9] ,
         \add_5_root_add_0_root_add_33_10/carry[8] ,
         \add_5_root_add_0_root_add_33_10/carry[7] ,
         \add_5_root_add_0_root_add_33_10/carry[6] ,
         \add_5_root_add_0_root_add_33_10/carry[5] ,
         \add_5_root_add_0_root_add_33_10/carry[4] ,
         \add_6_root_add_0_root_add_33_10/carry[21] ,
         \add_6_root_add_0_root_add_33_10/carry[20] ,
         \add_6_root_add_0_root_add_33_10/carry[19] ,
         \add_6_root_add_0_root_add_33_10/carry[18] ,
         \add_6_root_add_0_root_add_33_10/carry[17] ,
         \add_6_root_add_0_root_add_33_10/carry[16] ,
         \add_6_root_add_0_root_add_33_10/carry[15] ,
         \add_6_root_add_0_root_add_33_10/carry[14] ,
         \add_6_root_add_0_root_add_33_10/carry[13] ,
         \add_6_root_add_0_root_add_33_10/carry[12] ,
         \add_6_root_add_0_root_add_33_10/carry[11] ,
         \add_6_root_add_0_root_add_33_10/carry[10] ,
         \add_6_root_add_0_root_add_33_10/carry[9] ,
         \add_6_root_add_0_root_add_33_10/carry[8] ,
         \add_6_root_add_0_root_add_33_10/carry[7] ,
         \add_6_root_add_0_root_add_33_10/carry[6] ,
         \add_9_root_add_0_root_add_33_10/carry[21] ,
         \add_9_root_add_0_root_add_33_10/carry[20] ,
         \add_9_root_add_0_root_add_33_10/carry[19] ,
         \add_9_root_add_0_root_add_33_10/carry[18] ,
         \add_9_root_add_0_root_add_33_10/carry[17] ,
         \add_9_root_add_0_root_add_33_10/carry[16] ,
         \add_9_root_add_0_root_add_33_10/carry[15] ,
         \add_9_root_add_0_root_add_33_10/carry[14] ,
         \add_9_root_add_0_root_add_33_10/carry[13] ,
         \add_9_root_add_0_root_add_33_10/carry[12] ,
         \add_9_root_add_0_root_add_33_10/carry[11] ,
         \add_7_root_add_0_root_add_33_10/carry[21] ,
         \add_7_root_add_0_root_add_33_10/carry[20] ,
         \add_7_root_add_0_root_add_33_10/carry[19] ,
         \add_7_root_add_0_root_add_33_10/carry[18] ,
         \add_7_root_add_0_root_add_33_10/carry[17] ,
         \add_7_root_add_0_root_add_33_10/carry[16] ,
         \add_7_root_add_0_root_add_33_10/carry[15] ,
         \add_7_root_add_0_root_add_33_10/carry[14] ,
         \add_7_root_add_0_root_add_33_10/carry[13] ,
         \add_7_root_add_0_root_add_33_10/carry[12] ,
         \add_7_root_add_0_root_add_33_10/carry[11] ,
         \add_7_root_add_0_root_add_33_10/carry[10] ,
         \add_7_root_add_0_root_add_33_10/carry[9] ,
         \add_7_root_add_0_root_add_33_10/carry[8] ,
         \add_8_root_add_0_root_add_33_10/carry[21] ,
         \add_8_root_add_0_root_add_33_10/carry[20] ,
         \add_8_root_add_0_root_add_33_10/carry[19] ,
         \add_8_root_add_0_root_add_33_10/carry[18] ,
         \add_8_root_add_0_root_add_33_10/carry[17] ,
         \add_8_root_add_0_root_add_33_10/carry[16] ,
         \add_8_root_add_0_root_add_33_10/carry[15] ,
         \add_8_root_add_0_root_add_33_10/carry[14] ,
         \add_8_root_add_0_root_add_33_10/carry[13] ,
         \add_8_root_add_0_root_add_33_10/carry[12] ,
         \add_8_root_add_0_root_add_33_10/carry[11] ,
         \add_8_root_add_0_root_add_33_10/carry[10] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n42, n46, n78;
  wire   [21:0] inter0;
  wire   [21:1] inter1;
  wire   [21:2] inter2;
  wire   [21:3] inter3;
  wire   [21:4] inter4;
  wire   [21:5] inter5;
  wire   [21:6] inter6;
  wire   [21:7] inter7;
  wire   [21:8] inter8;
  wire   [21:9] inter9;
  wire   [21:10] inter10;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1,
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3,
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  mult_signed_1_DW01_add_7 add_3_root_add_0_root_add_33_10 ( .A({N114, N113,
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101,
        N100, N99, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N224, N223, N222,
        N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210,
        N209, N208, N207, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N180,
        N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168,
        N167, N166, N165, N164, N163, SYNOPSYS_UNCONNECTED__0,
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2,
        SYNOPSYS_UNCONNECTED__3}) );
  mult_signed_1_DW01_add_5 add_4_root_add_0_root_add_33_10 ( .A({n20, n20, n20,
        n20, n20, n20, n20, n20, n20, n20, n20, inter1[10:1], 1'b0}), .B({N136,
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124,
        N123, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0),
        .SUM({N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258,
        N257, N256, N255, N254, N253, N252, N251, N250, N249, N248,
        SYNOPSYS_UNCONNECTED__4}) );
  mult_signed_1_DW01_add_3 add_2_root_add_0_root_add_33_10 ( .A({N268, N267,
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255,
        N254, N253, N252, N251, N250, N249, N248, 1'b0}), .B({N92, N91, N90,
        N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76,
        N75, N74, N73, 1'b0, 1'b0}), .CI(1'b0), .SUM({N158, N157, N156, N155,
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143,
        N142, N141, N140, N139, N138, SYNOPSYS_UNCONNECTED__5}) );
  mult_signed_1_DW01_add_1 add_1_root_add_0_root_add_33_10 ( .A({N180, N179,
        N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167,
        N166, N165, N164, N163, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N202, N201, N200,
        N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188,
        N187, N186, N185, N184, N183, N182, N181}), .CI(1'b0), .SUM({N246,
        N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234,
        N233, N232, N231, N230, N229, N228, N227, N226, N225}) );
  mult_signed_1_DW01_add_0 add_0_root_add_0_root_add_33_10 ( .A({N246, N245,
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233,
        N232, N231, N230, N229, N228, N227, N226, N225}), .B({N158, N157, N156,
        N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144,
        N143, N142, N141, N140, N139, N138, 1'b0}), .CI(1'b0), .SUM(out) );
  mult_signed_1_DW01_inc_1 add_0_root_add_11_ni ( .A({N37, N38, N39, N40, N41,
        N42, N43, N44, N45, N46, N47}), .SUM({N58, N57, N56, N55, N54, N53,
        N52, N51, N50, N49, N48}) );
  mult_signed_1_DW01_inc_0 add_0_root_add_10_ni ( .A({N15, N16, N17, N18, N19,
        N20, N21, N22, N23, N24, N25}), .SUM({N36, N35, N34, N33, N32, N31,
        N30, N29, N28, N27, N26}) );
  NOR2X1 U3 ( .A(n9), .B(n19), .Y(inter1[2]) );
  CLKBUFX3 U4 ( .A(n37), .Y(n13) );
  CLKBUFX3 U5 ( .A(n36), .Y(n14) );
  CLKBUFX3 U6 ( .A(n35), .Y(n15) );
  CLKBUFX3 U7 ( .A(n34), .Y(n16) );
  CLKBUFX3 U8 ( .A(n55), .Y(n25) );
  CLKBUFX3 U9 ( .A(n49), .Y(n28) );
  CLKBUFX3 U10 ( .A(n33), .Y(n17) );
  CLKBUFX3 U11 ( .A(n51), .Y(n27) );
  CLKBUFX3 U12 ( .A(n31), .Y(n42) );
  BUFX4 U13 ( .A(n64), .Y(n6) );
  CLKBUFX3 U14 ( .A(n57), .Y(n23) );
  CLKBUFX3 U15 ( .A(n47), .Y(n29) );
  CLKBUFX3 U16 ( .A(n59), .Y(n21) );
  CLKBUFX3 U17 ( .A(n53), .Y(n26) );
  CLKBUFX3 U18 ( .A(n61), .Y(n19) );
  NOR2X4 U19 ( .A(n46), .B(n78), .Y(n1) );
  NOR2X4 U20 ( .A(n74), .B(n77), .Y(n2) );
  NOR2X1 U21 ( .A(n5), .B(n19), .Y(inter1[1]) );
  NOR2X1 U22 ( .A(n9), .B(n6), .Y(N182) );
  NOR2X1 U23 ( .A(n5), .B(n21), .Y(N73) );
  INVX4 U24 ( .A(n77), .Y(n46) );
  BUFX8 U25 ( .A(n43), .Y(n3) );
  BUFX8 U26 ( .A(n45), .Y(n4) );
  CLKBUFX3 U27 ( .A(inter1[21]), .Y(n20) );
  AO22X1 U28 ( .A0(b[0]), .A1(n1), .B0(n3), .B1(N48), .Y(n75) );
  CLKINVX1 U29 ( .A(a[1]), .Y(N24) );
  CLKINVX1 U30 ( .A(a[0]), .Y(N25) );
  CLKINVX6 U31 ( .A(b[8]), .Y(N39) );
  NOR2XL U32 ( .A(n77), .B(n78), .Y(n45) );
  NOR2XL U33 ( .A(n46), .B(n74), .Y(n43) );
  NOR2XL U34 ( .A(n5), .B(n6), .Y(N181) );
  NAND2XL U35 ( .A(N36), .B(n2), .Y(n63) );
  NOR2XL U36 ( .A(n5), .B(n18), .Y(inter10[10]) );
  XOR3XL U37 ( .A(n8), .B(n24), .C(\add_5_root_add_0_root_add_33_10/carry[21] ), .Y(N202) );
  INVXL U38 ( .A(b[10]), .Y(N37) );
  NAND2X6 U39 ( .A(b[10]), .B(a[10]), .Y(n74) );
  NOR2XL U40 ( .A(n10), .B(n6), .Y(N183) );
  NOR2XL U41 ( .A(n10), .B(n19), .Y(inter1[3]) );
  NOR2XL U42 ( .A(n5), .B(n23), .Y(inter3[3]) );
  NOR2XL U43 ( .A(n11), .B(n6), .Y(inter0[3]) );
  NOR2XL U44 ( .A(n5), .B(n26), .Y(inter5[5]) );
  NOR2XL U45 ( .A(n11), .B(n21), .Y(inter2[5]) );
  NOR2XL U46 ( .A(n5), .B(n25), .Y(N207) );
  NOR2XL U47 ( .A(n5), .B(n27), .Y(N99) );
  NOR2XL U48 ( .A(n10), .B(n25), .Y(N209) );
  NOR2XL U49 ( .A(n5), .B(n28), .Y(inter7[7]) );
  NOR2XL U50 ( .A(n11), .B(n25), .Y(inter4[7]) );
  NOR2XL U51 ( .A(n5), .B(n29), .Y(N123) );
  NOR2XL U52 ( .A(n15), .B(n19), .Y(inter1[8]) );
  NOR2XL U53 ( .A(n5), .B(n42), .Y(inter9[9]) );
  NOR2XL U54 ( .A(n11), .B(n27), .Y(inter6[9]) );
  NOR2XL U55 ( .A(n10), .B(n29), .Y(inter8[10]) );
  NOR2XL U56 ( .A(n12), .B(n29), .Y(inter8[12]) );
  NOR2XL U57 ( .A(n10), .B(n18), .Y(inter10[12]) );
  NOR2XL U58 ( .A(n13), .B(n29), .Y(inter8[13]) );
  NOR2XL U59 ( .A(n11), .B(n18), .Y(inter10[13]) );
  NOR2XL U60 ( .A(n14), .B(n29), .Y(inter8[14]) );
  NOR2XL U61 ( .A(n12), .B(n18), .Y(inter10[14]) );
  NOR2XL U62 ( .A(n15), .B(n29), .Y(inter8[15]) );
  NOR2XL U63 ( .A(n13), .B(n18), .Y(inter10[15]) );
  NOR2XL U64 ( .A(n17), .B(n28), .Y(inter7[16]) );
  NOR2XL U65 ( .A(n42), .B(n13), .Y(inter9[14]) );
  NOR2XL U66 ( .A(n16), .B(n27), .Y(inter6[14]) );
  NOR2XL U67 ( .A(n42), .B(n14), .Y(inter9[15]) );
  NOR2XL U68 ( .A(n17), .B(n27), .Y(inter6[15]) );
  INVXL U69 ( .A(a[10]), .Y(N15) );
  NOR2XL U70 ( .A(n21), .B(n7), .Y(inter2[21]) );
  NOR2XL U71 ( .A(n16), .B(n29), .Y(inter8[16]) );
  NOR2XL U72 ( .A(n14), .B(n18), .Y(inter10[16]) );
  NOR2XL U73 ( .A(n17), .B(n29), .Y(inter8[17]) );
  NOR2XL U74 ( .A(n15), .B(n18), .Y(inter10[17]) );
  NOR2XL U75 ( .A(n42), .B(n15), .Y(inter9[16]) );
  NOR2XL U76 ( .A(n42), .B(n16), .Y(inter9[17]) );
  NOR2XL U77 ( .A(n42), .B(n17), .Y(inter9[18]) );
  NOR2X2 U78 ( .A(n25), .B(n7), .Y(inter4[21]) );
  NOR2XL U79 ( .A(n16), .B(n18), .Y(inter10[18]) );
  NOR2XL U80 ( .A(n17), .B(n18), .Y(inter10[19]) );
  CLKBUFX3 U81 ( .A(inter3[21]), .Y(n24) );
  NOR2XL U82 ( .A(n23), .B(n7), .Y(inter3[21]) );
  NOR2X2 U83 ( .A(n26), .B(n7), .Y(inter5[21]) );
  NOR2X1 U84 ( .A(n28), .B(n7), .Y(inter7[21]) );
  NOR2X1 U85 ( .A(n7), .B(n42), .Y(inter9[21]) );
  NOR2X1 U86 ( .A(n29), .B(n7), .Y(inter8[21]) );
  INVX3 U87 ( .A(b[3]), .Y(N44) );
  CLKINVX3 U88 ( .A(b[6]), .Y(N41) );
  CLKINVX1 U89 ( .A(n18), .Y(inter10[21]) );
  CLKINVX1 U90 ( .A(n74), .Y(n78) );
  CLKBUFX3 U91 ( .A(inter0[21]), .Y(n8) );
  NOR2X1 U92 ( .A(n6), .B(n7), .Y(inter0[21]) );
  ADDFXL U93 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[14] ), .S(N194) );
  CLKBUFX3 U94 ( .A(n63), .Y(n18) );
  NOR2X1 U95 ( .A(n19), .B(n7), .Y(inter1[21]) );
  ADDFXL U96 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[16] ), .S(N86) );
  ADDFXL U97 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[15] ), .S(N195) );
  ADDFXL U98 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[16] ), .S(N196) );
  ADDFXL U99 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[17] ), .S(N197) );
  ADDFXL U100 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[18] ), .S(N198) );
  ADDFXL U101 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[18] ), .S(N220) );
  ADDFXL U102 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[17] ), .S(N87) );
  ADDFXL U103 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[18] ), .S(N88) );
  ADDFXL U104 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[19] ), .S(N221) );
  ADDFXL U105 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[20] ), .S(N222) );
  ADDFXL U106 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[19] ), .S(N89) );
  ADDFXL U107 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[20] ), .S(N90) );
  ADDFXL U108 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[19] ), .S(N199) );
  ADDFXL U109 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[20] ), .S(N200) );
  ADDFXL U110 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[21] ), .S(N223) );
  ADDFXL U111 ( .A(n22), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[21] ), .S(N91) );
  ADDFXL U112 ( .A(n8), .B(n24), .CI(
        \add_5_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[21] ), .S(N201) );
  ADDFXL U113 ( .A(inter6[21]), .B(inter9[21]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[20] ), .S(N112) );
  XOR3X1 U114 ( .A(inter4[21]), .B(inter7[21]), .C(
        \add_7_root_add_0_root_add_33_10/carry[21] ), .Y(N224) );
  XOR3X1 U115 ( .A(n22), .B(inter5[21]), .C(
        \add_6_root_add_0_root_add_33_10/carry[21] ), .Y(N92) );
  XOR3X1 U116 ( .A(inter10[21]), .B(inter8[21]), .C(
        \add_9_root_add_0_root_add_33_10/carry[21] ), .Y(N136) );
  ADDFXL U117 ( .A(inter10[21]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[21] ), .S(N135) );
  ADDFXL U118 ( .A(inter6[21]), .B(inter9[21]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[21] ), .S(N113) );
  XOR3X1 U119 ( .A(inter6[21]), .B(inter9[21]), .C(
        \add_8_root_add_0_root_add_33_10/carry[21] ), .Y(N114) );
  AOI22X2 U120 ( .A0(N58), .A1(n78), .B0(b[10]), .B1(n74), .Y(n77) );
  AOI221XL U121 ( .A0(a[0]), .A1(n4), .B0(N26), .B1(n2), .C0(n75), .Y(n64) );
  AOI221XL U122 ( .A0(n1), .A1(b[1]), .B0(n3), .B1(N49), .C0(n62), .Y(n61) );
  AO22X1 U123 ( .A0(N27), .A1(n2), .B0(n4), .B1(a[1]), .Y(n62) );
  CLKBUFX3 U124 ( .A(n30), .Y(n5) );
  AOI221XL U125 ( .A0(n1), .A1(a[0]), .B0(n3), .B1(N26), .C0(n76), .Y(n30) );
  AO22X1 U126 ( .A0(n4), .A1(b[0]), .B0(N48), .B1(n2), .Y(n76) );
  CLKBUFX3 U127 ( .A(n41), .Y(n9) );
  AOI221XL U128 ( .A0(n1), .A1(a[1]), .B0(n3), .B1(N27), .C0(n73), .Y(n41) );
  AO22X1 U129 ( .A0(n4), .A1(b[1]), .B0(N49), .B1(n2), .Y(n73) );
  CLKINVX1 U130 ( .A(b[1]), .Y(N46) );
  NOR2X1 U131 ( .A(n9), .B(n21), .Y(N74) );
  ADDFXL U132 ( .A(inter0[5]), .B(inter3[5]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[5] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[6] ), .S(N186) );
  NOR2X1 U133 ( .A(n10), .B(n23), .Y(inter3[5]) );
  NOR2X1 U134 ( .A(n13), .B(n6), .Y(inter0[5]) );
  NOR2X1 U135 ( .A(n10), .B(n21), .Y(N75) );
  NOR2X1 U136 ( .A(n11), .B(n19), .Y(inter1[4]) );
  NOR2X1 U137 ( .A(n12), .B(n19), .Y(inter1[5]) );
  ADDFXL U138 ( .A(inter0[4]), .B(inter3[4]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[4] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[5] ), .S(N185) );
  NOR2X1 U139 ( .A(n9), .B(n23), .Y(inter3[4]) );
  NOR2X1 U140 ( .A(n12), .B(n6), .Y(inter0[4]) );
  NOR2X1 U141 ( .A(n9), .B(n25), .Y(N208) );
  ADDFXL U142 ( .A(inter0[6]), .B(inter3[6]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[6] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[7] ), .S(N187) );
  NOR2X1 U143 ( .A(n11), .B(n23), .Y(inter3[6]) );
  NOR2X1 U144 ( .A(n14), .B(n6), .Y(inter0[6]) );
  ADDFXL U145 ( .A(inter2[6]), .B(inter5[6]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[6] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[7] ), .S(N77) );
  NOR2X1 U146 ( .A(n9), .B(n26), .Y(inter5[6]) );
  NOR2X1 U147 ( .A(n12), .B(n21), .Y(inter2[6]) );
  ADDFXL U148 ( .A(inter0[7]), .B(inter3[7]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[7] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[8] ), .S(N188) );
  NOR2X1 U149 ( .A(n12), .B(n23), .Y(inter3[7]) );
  NOR2X1 U150 ( .A(n15), .B(n6), .Y(inter0[7]) );
  ADDFXL U151 ( .A(inter2[7]), .B(inter5[7]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[7] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[8] ), .S(N78) );
  NOR2X1 U152 ( .A(n10), .B(n26), .Y(inter5[7]) );
  NOR2X1 U153 ( .A(n13), .B(n21), .Y(inter2[7]) );
  NOR2X1 U154 ( .A(n13), .B(n19), .Y(inter1[6]) );
  NOR2X1 U155 ( .A(n14), .B(n19), .Y(inter1[7]) );
  NOR2X1 U156 ( .A(n9), .B(n27), .Y(N100) );
  ADDFXL U157 ( .A(inter4[8]), .B(inter7[8]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[9] ), .S(N211) );
  NOR2X1 U158 ( .A(n9), .B(n28), .Y(inter7[8]) );
  NOR2X1 U159 ( .A(n12), .B(n25), .Y(inter4[8]) );
  ADDFXL U160 ( .A(inter0[8]), .B(inter3[8]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[9] ), .S(N189) );
  NOR2X1 U161 ( .A(n13), .B(n23), .Y(inter3[8]) );
  NOR2X1 U162 ( .A(n16), .B(n6), .Y(inter0[8]) );
  ADDFXL U163 ( .A(inter2[8]), .B(inter5[8]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[9] ), .S(N79) );
  NOR2X1 U164 ( .A(n11), .B(n26), .Y(inter5[8]) );
  NOR2X1 U165 ( .A(n14), .B(n21), .Y(inter2[8]) );
  ADDFXL U166 ( .A(inter0[9]), .B(inter3[9]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[10] ), .S(N190) );
  NOR2X1 U167 ( .A(n14), .B(n23), .Y(inter3[9]) );
  NOR2X1 U168 ( .A(n17), .B(n6), .Y(inter0[9]) );
  NOR2X1 U169 ( .A(n10), .B(n27), .Y(N101) );
  ADDFXL U170 ( .A(inter4[9]), .B(inter7[9]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[10] ), .S(N212) );
  NOR2X1 U171 ( .A(n10), .B(n28), .Y(inter7[9]) );
  NOR2X1 U172 ( .A(n13), .B(n25), .Y(inter4[9]) );
  ADDFXL U173 ( .A(inter2[9]), .B(inter5[9]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[10] ), .S(N80) );
  NOR2X1 U174 ( .A(n12), .B(n26), .Y(inter5[9]) );
  NOR2X1 U175 ( .A(n15), .B(n21), .Y(inter2[9]) );
  ADDFXL U176 ( .A(n8), .B(inter3[10]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[11] ), .S(N191) );
  NOR2X1 U177 ( .A(n15), .B(n23), .Y(inter3[10]) );
  NOR2X1 U178 ( .A(n9), .B(n29), .Y(N124) );
  NOR2X1 U179 ( .A(n16), .B(n19), .Y(inter1[9]) );
  NOR2X1 U180 ( .A(n17), .B(n19), .Y(inter1[10]) );
  ADDFXL U181 ( .A(inter4[10]), .B(inter7[10]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[11] ), .S(N213) );
  NOR2X1 U182 ( .A(n11), .B(n28), .Y(inter7[10]) );
  NOR2X1 U183 ( .A(n14), .B(n25), .Y(inter4[10]) );
  ADDFXL U184 ( .A(inter4[11]), .B(inter7[11]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[12] ), .S(N214) );
  NOR2X1 U185 ( .A(n12), .B(n28), .Y(inter7[11]) );
  NOR2X1 U186 ( .A(n15), .B(n25), .Y(inter4[11]) );
  ADDFXL U187 ( .A(inter2[10]), .B(inter5[10]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[11] ), .S(N81) );
  NOR2X1 U188 ( .A(n13), .B(n26), .Y(inter5[10]) );
  NOR2X1 U189 ( .A(n16), .B(n21), .Y(inter2[10]) );
  ADDFXL U190 ( .A(inter2[11]), .B(inter5[11]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[12] ), .S(N82) );
  NOR2X1 U191 ( .A(n14), .B(n26), .Y(inter5[11]) );
  NOR2X1 U192 ( .A(n17), .B(n21), .Y(inter2[11]) );
  ADDFXL U193 ( .A(n8), .B(inter3[11]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[12] ), .S(N192) );
  NOR2X1 U194 ( .A(n16), .B(n23), .Y(inter3[11]) );
  ADDFXL U195 ( .A(inter6[10]), .B(inter9[10]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[11] ), .S(N103) );
  NOR2X1 U196 ( .A(n42), .B(n9), .Y(inter9[10]) );
  NOR2X1 U197 ( .A(n12), .B(n27), .Y(inter6[10]) );
  ADDFXL U198 ( .A(inter6[11]), .B(inter9[11]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[12] ), .S(N104) );
  NOR2X1 U199 ( .A(n42), .B(n10), .Y(inter9[11]) );
  NOR2X1 U200 ( .A(n13), .B(n27), .Y(inter6[11]) );
  ADDFXL U201 ( .A(inter10[11]), .B(inter8[11]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[12] ), .S(N126) );
  NOR2X1 U202 ( .A(n11), .B(n29), .Y(inter8[11]) );
  NOR2X1 U203 ( .A(n9), .B(n18), .Y(inter10[11]) );
  ADDFXL U204 ( .A(inter4[12]), .B(inter7[12]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[13] ), .S(N215) );
  NOR2X1 U205 ( .A(n13), .B(n28), .Y(inter7[12]) );
  NOR2X1 U206 ( .A(n16), .B(n25), .Y(inter4[12]) );
  ADDFXL U207 ( .A(inter4[13]), .B(inter7[13]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[14] ), .S(N216) );
  NOR2X1 U208 ( .A(n14), .B(n28), .Y(inter7[13]) );
  NOR2X1 U209 ( .A(n17), .B(n25), .Y(inter4[13]) );
  ADDFXL U210 ( .A(n22), .B(inter5[12]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[13] ), .S(N83) );
  NOR2X1 U211 ( .A(n15), .B(n26), .Y(inter5[12]) );
  ADDFXL U212 ( .A(n22), .B(inter5[13]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[14] ), .S(N84) );
  NOR2X1 U213 ( .A(n16), .B(n26), .Y(inter5[13]) );
  ADDFXL U214 ( .A(n8), .B(inter3[12]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[13] ), .S(N193) );
  NOR2X1 U215 ( .A(n17), .B(n23), .Y(inter3[12]) );
  CLKBUFX3 U216 ( .A(n32), .Y(n7) );
  AOI221XL U217 ( .A0(n74), .A1(a[10]), .B0(n78), .B1(N36), .C0(n46), .Y(n32)
         );
  ADDFXL U218 ( .A(inter4[21]), .B(inter7[14]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[15] ), .S(N217) );
  NOR2X1 U219 ( .A(n15), .B(n28), .Y(inter7[14]) );
  ADDFXL U220 ( .A(inter4[21]), .B(inter7[15]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[16] ), .S(N218) );
  NOR2X1 U221 ( .A(n16), .B(n28), .Y(inter7[15]) );
  ADDFXL U222 ( .A(inter10[12]), .B(inter8[12]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[13] ), .S(N127) );
  ADDFXL U223 ( .A(inter10[13]), .B(inter8[13]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[14] ), .S(N128) );
  ADDFXL U224 ( .A(n22), .B(inter5[14]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[15] ), .S(N85) );
  NOR2X1 U225 ( .A(n17), .B(n26), .Y(inter5[14]) );
  CLKBUFX3 U226 ( .A(inter2[21]), .Y(n22) );
  ADDFXL U227 ( .A(inter6[12]), .B(inter9[12]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[13] ), .S(N105) );
  NOR2X1 U228 ( .A(n42), .B(n11), .Y(inter9[12]) );
  NOR2X1 U229 ( .A(n14), .B(n27), .Y(inter6[12]) );
  ADDFXL U230 ( .A(inter6[13]), .B(inter9[13]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[14] ), .S(N106) );
  NOR2X1 U231 ( .A(n42), .B(n12), .Y(inter9[13]) );
  NOR2X1 U232 ( .A(n15), .B(n27), .Y(inter6[13]) );
  ADDFXL U233 ( .A(inter6[14]), .B(inter9[14]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[15] ), .S(N107) );
  ADDFXL U234 ( .A(inter4[21]), .B(inter7[16]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[17] ), .S(N219) );
  ADDFXL U235 ( .A(inter10[14]), .B(inter8[14]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[15] ), .S(N129) );
  ADDFXL U236 ( .A(inter10[15]), .B(inter8[15]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[16] ), .S(N130) );
  ADDFXL U237 ( .A(inter10[16]), .B(inter8[16]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[17] ), .S(N131) );
  ADDFXL U238 ( .A(inter6[21]), .B(inter9[16]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[17] ), .S(N109) );
  ADDFXL U239 ( .A(inter6[21]), .B(inter9[17]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[18] ), .S(N110) );
  ADDFXL U240 ( .A(inter6[15]), .B(inter9[15]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[16] ), .S(N108) );
  NOR2X2 U241 ( .A(n27), .B(n7), .Y(inter6[21]) );
  ADDFXL U242 ( .A(inter10[17]), .B(inter8[17]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[18] ), .S(N132) );
  ADDFXL U243 ( .A(inter6[21]), .B(inter9[18]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[19] ), .S(N111) );
  ADDFXL U244 ( .A(inter10[18]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[19] ), .S(N133) );
  ADDFXL U245 ( .A(inter10[19]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[20] ), .S(N134) );
  CLKINVX1 U246 ( .A(b[2]), .Y(N45) );
  CLKINVX1 U247 ( .A(b[4]), .Y(N43) );
  CLKINVX1 U248 ( .A(b[5]), .Y(N42) );
  CLKINVX1 U249 ( .A(b[7]), .Y(N40) );
  CLKINVX1 U250 ( .A(b[9]), .Y(N38) );
  AOI221XL U251 ( .A0(n1), .A1(b[3]), .B0(n3), .B1(N51), .C0(n58), .Y(n57) );
  AO22X1 U252 ( .A0(N29), .A1(n2), .B0(n4), .B1(a[3]), .Y(n58) );
  AOI221XL U253 ( .A0(n1), .A1(b[2]), .B0(n3), .B1(N50), .C0(n60), .Y(n59) );
  AO22X1 U254 ( .A0(N28), .A1(n2), .B0(n4), .B1(a[2]), .Y(n60) );
  BUFX4 U255 ( .A(n40), .Y(n10) );
  AOI221XL U256 ( .A0(n1), .A1(a[2]), .B0(n3), .B1(N28), .C0(n72), .Y(n40) );
  AO22X1 U257 ( .A0(n4), .A1(b[2]), .B0(N50), .B1(n2), .Y(n72) );
  BUFX4 U258 ( .A(n39), .Y(n11) );
  AOI221XL U259 ( .A0(n1), .A1(a[3]), .B0(n3), .B1(N29), .C0(n71), .Y(n39) );
  AO22X1 U260 ( .A0(n4), .A1(b[3]), .B0(N51), .B1(n2), .Y(n71) );
  AOI221XL U261 ( .A0(n1), .A1(b[4]), .B0(n3), .B1(N52), .C0(n56), .Y(n55) );
  AO22X1 U262 ( .A0(N30), .A1(n2), .B0(n4), .B1(a[4]), .Y(n56) );
  AOI221XL U263 ( .A0(n1), .A1(b[5]), .B0(n3), .B1(N53), .C0(n54), .Y(n53) );
  AO22X1 U264 ( .A0(N31), .A1(n2), .B0(n4), .B1(a[5]), .Y(n54) );
  BUFX4 U265 ( .A(n38), .Y(n12) );
  AOI221XL U266 ( .A0(n1), .A1(a[4]), .B0(n3), .B1(N30), .C0(n70), .Y(n38) );
  AO22X1 U267 ( .A0(n4), .A1(b[4]), .B0(N52), .B1(n2), .Y(n70) );
  AOI221XL U268 ( .A0(n1), .A1(a[5]), .B0(n3), .B1(N31), .C0(n69), .Y(n37) );
  AO22X1 U269 ( .A0(n4), .A1(b[5]), .B0(N53), .B1(n2), .Y(n69) );
  AOI221XL U270 ( .A0(n1), .A1(b[7]), .B0(n3), .B1(N55), .C0(n50), .Y(n49) );
  AO22X1 U271 ( .A0(N33), .A1(n2), .B0(n4), .B1(a[7]), .Y(n50) );
  AOI221XL U272 ( .A0(n1), .A1(b[6]), .B0(n3), .B1(N54), .C0(n52), .Y(n51) );
  AO22X1 U273 ( .A0(N32), .A1(n2), .B0(n4), .B1(a[6]), .Y(n52) );
  AOI221XL U274 ( .A0(n1), .A1(a[6]), .B0(n3), .B1(N32), .C0(n68), .Y(n36) );
  AO22X1 U275 ( .A0(n4), .A1(b[6]), .B0(N54), .B1(n2), .Y(n68) );
  CLKINVX1 U276 ( .A(a[3]), .Y(N22) );
  AOI221XL U277 ( .A0(n1), .A1(a[7]), .B0(n3), .B1(N33), .C0(n67), .Y(n35) );
  AO22X1 U278 ( .A0(n4), .A1(b[7]), .B0(N55), .B1(n2), .Y(n67) );
  CLKINVX1 U279 ( .A(a[2]), .Y(N23) );
  CLKINVX1 U280 ( .A(a[4]), .Y(N21) );
  CLKINVX1 U281 ( .A(a[5]), .Y(N20) );
  AOI221XL U282 ( .A0(n1), .A1(b[8]), .B0(n3), .B1(N56), .C0(n48), .Y(n47) );
  AO22X1 U283 ( .A0(N34), .A1(n2), .B0(n4), .B1(a[8]), .Y(n48) );
  AOI221XL U284 ( .A0(n1), .A1(a[8]), .B0(n3), .B1(N34), .C0(n66), .Y(n34) );
  AO22X1 U285 ( .A0(n4), .A1(b[8]), .B0(N56), .B1(n2), .Y(n66) );
  AOI221XL U286 ( .A0(n1), .A1(a[9]), .B0(n3), .B1(N35), .C0(n65), .Y(n33) );
  AO22X1 U287 ( .A0(n4), .A1(b[9]), .B0(N57), .B1(n2), .Y(n65) );
  AOI221XL U288 ( .A0(n1), .A1(b[9]), .B0(n3), .B1(N57), .C0(n44), .Y(n31) );
  AO22X1 U289 ( .A0(n4), .A1(a[9]), .B0(N35), .B1(n2), .Y(n44) );
  CLKINVX1 U290 ( .A(a[7]), .Y(N18) );
  CLKINVX1 U291 ( .A(a[6]), .Y(N19) );
  CLKINVX1 U292 ( .A(a[9]), .Y(N16) );
  CLKINVX1 U293 ( .A(a[8]), .Y(N17) );
  AND2X1 U294 ( .A(inter2[5]), .B(inter5[5]), .Y(
        \add_6_root_add_0_root_add_33_10/carry[6] ) );
  XOR2X1 U295 ( .A(inter5[5]), .B(inter2[5]), .Y(N76) );
  AND2X1 U296 ( .A(inter10[10]), .B(inter8[10]), .Y(
        \add_9_root_add_0_root_add_33_10/carry[11] ) );
  XOR2X1 U297 ( .A(inter8[10]), .B(inter10[10]), .Y(N125) );
  AND2X1 U298 ( .A(inter0[3]), .B(inter3[3]), .Y(
        \add_5_root_add_0_root_add_33_10/carry[4] ) );
  XOR2X1 U299 ( .A(inter3[3]), .B(inter0[3]), .Y(N184) );
  AND2X1 U300 ( .A(inter4[7]), .B(inter7[7]), .Y(
        \add_7_root_add_0_root_add_33_10/carry[8] ) );
  XOR2X1 U301 ( .A(inter7[7]), .B(inter4[7]), .Y(N210) );
  AND2X1 U302 ( .A(inter6[9]), .B(inter9[9]), .Y(
        \add_8_root_add_0_root_add_33_10/carry[10] ) );
  XOR2X1 U303 ( .A(inter9[9]), .B(inter6[9]), .Y(N102) );
  CLKINVX1 U304 ( .A(b[0]), .Y(N47) );
endmodule


module mult_signed_0_DW01_add_7 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
  CLKBUFX3 U3 ( .A(B[5]), .Y(SUM[5]) );
  CLKBUFX3 U4 ( .A(B[4]), .Y(SUM[4]) );
endmodule


module mult_signed_0_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(n1), .CO(carry[10]), .S(SUM[9]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2 U1 ( .A(B[8]), .B(A[8]), .Y(n1) );
  CLKBUFX3 U2 ( .A(A[1]), .Y(SUM[1]) );
  XOR2X1 U3 ( .A(B[8]), .B(A[8]), .Y(SUM[8]) );
  CLKBUFX3 U4 ( .A(A[7]), .Y(SUM[7]) );
  CLKBUFX3 U5 ( .A(A[6]), .Y(SUM[6]) );
  CLKBUFX3 U6 ( .A(A[5]), .Y(SUM[5]) );
  CLKBUFX3 U7 ( .A(A[4]), .Y(SUM[4]) );
  CLKBUFX3 U8 ( .A(A[3]), .Y(SUM[3]) );
  CLKBUFX3 U9 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module mult_signed_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  CLKBUFX3 U3 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module mult_signed_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CLKBUFX3 U1 ( .A(B[3]), .Y(SUM[3]) );
  AND2X2 U2 ( .A(B[4]), .B(A[4]), .Y(n1) );
  BUFX2 U3 ( .A(B[0]), .Y(SUM[0]) );
  CLKBUFX3 U4 ( .A(B[2]), .Y(SUM[2]) );
  CLKBUFX3 U5 ( .A(B[1]), .Y(SUM[1]) );
  XOR2X1 U6 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module mult_signed_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2XL U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mult_signed_0_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX2 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  XOR2X1 U1 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mult_signed_0_DW01_inc_1 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[10]), .B(A[10]), .Y(SUM[10]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module mult_signed_0 ( a, b, out );
  input [10:0] a;
  input [10:0] b;
  output [21:0] out;
  wire   N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N99, N92, N91, N90, N89, N88,
         N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74,
         N73, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258,
         N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N246,
         N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235,
         N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224,
         N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213,
         N212, N211, N210, N209, N208, N207, N202, N201, N200, N199, N198,
         N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187,
         N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176,
         N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165,
         N164, N163, N158, N157, N156, N155, N154, N153, N152, N151, N150,
         N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139,
         N138, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127,
         N126, N125, N124, N123, N114, N113, N112, N111, N110, N109, N108,
         N107, N106, N105, N104, N103, N102, N101, N100, N47, N46, N45, N44,
         N43, N42, N41, N40, N39, N38, N37, N25, N24, N23, N22, N21, N20, N19,
         N18, N17, N16, N15, \add_5_root_add_0_root_add_33_10/carry[21] ,
         \add_5_root_add_0_root_add_33_10/carry[20] ,
         \add_5_root_add_0_root_add_33_10/carry[19] ,
         \add_5_root_add_0_root_add_33_10/carry[18] ,
         \add_5_root_add_0_root_add_33_10/carry[17] ,
         \add_5_root_add_0_root_add_33_10/carry[16] ,
         \add_5_root_add_0_root_add_33_10/carry[15] ,
         \add_5_root_add_0_root_add_33_10/carry[14] ,
         \add_5_root_add_0_root_add_33_10/carry[13] ,
         \add_5_root_add_0_root_add_33_10/carry[12] ,
         \add_5_root_add_0_root_add_33_10/carry[11] ,
         \add_5_root_add_0_root_add_33_10/carry[10] ,
         \add_5_root_add_0_root_add_33_10/carry[9] ,
         \add_5_root_add_0_root_add_33_10/carry[8] ,
         \add_5_root_add_0_root_add_33_10/carry[7] ,
         \add_5_root_add_0_root_add_33_10/carry[6] ,
         \add_5_root_add_0_root_add_33_10/carry[5] ,
         \add_5_root_add_0_root_add_33_10/carry[4] ,
         \add_6_root_add_0_root_add_33_10/carry[21] ,
         \add_6_root_add_0_root_add_33_10/carry[20] ,
         \add_6_root_add_0_root_add_33_10/carry[19] ,
         \add_6_root_add_0_root_add_33_10/carry[18] ,
         \add_6_root_add_0_root_add_33_10/carry[17] ,
         \add_6_root_add_0_root_add_33_10/carry[16] ,
         \add_6_root_add_0_root_add_33_10/carry[15] ,
         \add_6_root_add_0_root_add_33_10/carry[14] ,
         \add_6_root_add_0_root_add_33_10/carry[13] ,
         \add_6_root_add_0_root_add_33_10/carry[12] ,
         \add_6_root_add_0_root_add_33_10/carry[11] ,
         \add_6_root_add_0_root_add_33_10/carry[10] ,
         \add_6_root_add_0_root_add_33_10/carry[9] ,
         \add_6_root_add_0_root_add_33_10/carry[8] ,
         \add_6_root_add_0_root_add_33_10/carry[7] ,
         \add_6_root_add_0_root_add_33_10/carry[6] ,
         \add_9_root_add_0_root_add_33_10/carry[21] ,
         \add_9_root_add_0_root_add_33_10/carry[20] ,
         \add_9_root_add_0_root_add_33_10/carry[19] ,
         \add_9_root_add_0_root_add_33_10/carry[18] ,
         \add_9_root_add_0_root_add_33_10/carry[17] ,
         \add_9_root_add_0_root_add_33_10/carry[16] ,
         \add_9_root_add_0_root_add_33_10/carry[15] ,
         \add_9_root_add_0_root_add_33_10/carry[14] ,
         \add_9_root_add_0_root_add_33_10/carry[13] ,
         \add_9_root_add_0_root_add_33_10/carry[12] ,
         \add_9_root_add_0_root_add_33_10/carry[11] ,
         \add_7_root_add_0_root_add_33_10/carry[21] ,
         \add_7_root_add_0_root_add_33_10/carry[20] ,
         \add_7_root_add_0_root_add_33_10/carry[19] ,
         \add_7_root_add_0_root_add_33_10/carry[18] ,
         \add_7_root_add_0_root_add_33_10/carry[17] ,
         \add_7_root_add_0_root_add_33_10/carry[16] ,
         \add_7_root_add_0_root_add_33_10/carry[15] ,
         \add_7_root_add_0_root_add_33_10/carry[14] ,
         \add_7_root_add_0_root_add_33_10/carry[13] ,
         \add_7_root_add_0_root_add_33_10/carry[12] ,
         \add_7_root_add_0_root_add_33_10/carry[11] ,
         \add_7_root_add_0_root_add_33_10/carry[10] ,
         \add_7_root_add_0_root_add_33_10/carry[9] ,
         \add_7_root_add_0_root_add_33_10/carry[8] ,
         \add_8_root_add_0_root_add_33_10/carry[21] ,
         \add_8_root_add_0_root_add_33_10/carry[20] ,
         \add_8_root_add_0_root_add_33_10/carry[19] ,
         \add_8_root_add_0_root_add_33_10/carry[18] ,
         \add_8_root_add_0_root_add_33_10/carry[17] ,
         \add_8_root_add_0_root_add_33_10/carry[16] ,
         \add_8_root_add_0_root_add_33_10/carry[15] ,
         \add_8_root_add_0_root_add_33_10/carry[14] ,
         \add_8_root_add_0_root_add_33_10/carry[13] ,
         \add_8_root_add_0_root_add_33_10/carry[12] ,
         \add_8_root_add_0_root_add_33_10/carry[11] ,
         \add_8_root_add_0_root_add_33_10/carry[10] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n42, n46, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;
  wire   [21:0] inter0;
  wire   [21:1] inter1;
  wire   [21:2] inter2;
  wire   [21:3] inter3;
  wire   [21:4] inter4;
  wire   [21:5] inter5;
  wire   [21:6] inter6;
  wire   [21:7] inter7;
  wire   [21:8] inter8;
  wire   [21:9] inter9;
  wire   [21:10] inter10;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1,
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3,
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  mult_signed_0_DW01_add_7 add_3_root_add_0_root_add_33_10 ( .A({N114, N113,
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101,
        N100, N99, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N224, N223, N222,
        N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210,
        N209, N208, N207, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N180,
        N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168,
        N167, N166, N165, N164, N163, SYNOPSYS_UNCONNECTED__0,
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2,
        SYNOPSYS_UNCONNECTED__3}) );
  mult_signed_0_DW01_add_5 add_4_root_add_0_root_add_33_10 ( .A({n19, n19, n19,
        n19, n19, n19, n19, n19, n19, n19, n19, inter1[10:1], 1'b0}), .B({N136,
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124,
        N123, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0),
        .SUM({N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258,
        N257, N256, N255, N254, N253, N252, N251, N250, N249, N248,
        SYNOPSYS_UNCONNECTED__4}) );
  mult_signed_0_DW01_add_3 add_2_root_add_0_root_add_33_10 ( .A({N268, N267,
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255,
        N254, N253, N252, N251, N250, N249, N248, 1'b0}), .B({N92, N91, N90,
        N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76,
        N75, N74, N73, 1'b0, 1'b0}), .CI(1'b0), .SUM({N158, N157, N156, N155,
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143,
        N142, N141, N140, N139, N138, SYNOPSYS_UNCONNECTED__5}) );
  mult_signed_0_DW01_add_1 add_1_root_add_0_root_add_33_10 ( .A({N180, N179,
        N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167,
        N166, N165, N164, N163, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N202, N201, N200,
        N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188,
        N187, N186, N185, N184, N183, N182, N181}), .CI(1'b0), .SUM({N246,
        N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234,
        N233, N232, N231, N230, N229, N228, N227, N226, N225}) );
  mult_signed_0_DW01_add_0 add_0_root_add_0_root_add_33_10 ( .A({N246, N245,
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233,
        N232, N231, N230, N229, N228, N227, N226, N225}), .B({N158, N157, N156,
        N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144,
        N143, N142, N141, N140, N139, N138, 1'b0}), .CI(1'b0), .SUM(out) );
  mult_signed_0_DW01_inc_0 add_0_root_add_11_ni ( .A({N37, N38, N39, N40, N41,
        N42, N43, N44, N45, N46, N47}), .SUM({N58, N57, N56, N55, N54, N53,
        N52, N51, N50, N49, N48}) );
  mult_signed_0_DW01_inc_1 add_0_root_add_10_ni ( .A({N15, N16, N17, N18, N19,
        N20, N21, N22, N23, N24, N25}), .SUM({N36, N35, N34, N33, N32, N31,
        N30, N29, N28, N27, N26}) );
  BUFX2 U3 ( .A(n122), .Y(n11) );
  CLKBUFX3 U4 ( .A(n123), .Y(n12) );
  CLKINVX1 U5 ( .A(b[8]), .Y(N39) );
  BUFX8 U6 ( .A(n116), .Y(n4) );
  CLKBUFX3 U7 ( .A(n124), .Y(n13) );
  CLKBUFX3 U8 ( .A(n125), .Y(n14) );
  CLKBUFX3 U9 ( .A(n126), .Y(n15) );
  CLKINVX1 U10 ( .A(b[0]), .Y(N47) );
  CLKBUFX3 U11 ( .A(n107), .Y(n24) );
  CLKBUFX3 U12 ( .A(n113), .Y(n27) );
  CLKBUFX3 U13 ( .A(n127), .Y(n16) );
  CLKBUFX3 U14 ( .A(n111), .Y(n26) );
  CLKBUFX3 U15 ( .A(n129), .Y(n29) );
  CLKBUFX3 U16 ( .A(n105), .Y(n22) );
  CLKBUFX3 U17 ( .A(n115), .Y(n28) );
  CLKBUFX3 U18 ( .A(n103), .Y(n20) );
  CLKBUFX3 U19 ( .A(n109), .Y(n25) );
  NOR2X4 U20 ( .A(n42), .B(n46), .Y(n1) );
  NOR2X4 U21 ( .A(n88), .B(n85), .Y(n2) );
  AOI221X4 U22 ( .A0(a[0]), .A1(n4), .B0(N26), .B1(n2), .C0(n87), .Y(n98) );
  CLKINVX1 U23 ( .A(n85), .Y(n42) );
  NOR2XL U24 ( .A(n8), .B(n18), .Y(inter1[2]) );
  NOR2X1 U25 ( .A(n5), .B(n98), .Y(N181) );
  NOR2XL U26 ( .A(n5), .B(n20), .Y(N73) );
  NOR2XL U27 ( .A(n10), .B(n98), .Y(inter0[3]) );
  BUFX8 U28 ( .A(n118), .Y(n3) );
  CLKINVX1 U29 ( .A(a[1]), .Y(N24) );
  CLKINVX1 U30 ( .A(a[0]), .Y(N25) );
  NOR2XL U31 ( .A(n85), .B(n46), .Y(n116) );
  NOR2XL U32 ( .A(n42), .B(n88), .Y(n118) );
  NAND2XL U33 ( .A(N36), .B(n2), .Y(n99) );
  NOR2XL U34 ( .A(n18), .B(n6), .Y(inter1[21]) );
  NOR2XL U35 ( .A(n5), .B(n17), .Y(inter10[10]) );
  XOR3XL U36 ( .A(n7), .B(n23), .C(\add_5_root_add_0_root_add_33_10/carry[21] ), .Y(N202) );
  INVXL U37 ( .A(b[10]), .Y(N37) );
  NAND2X6 U38 ( .A(b[10]), .B(a[10]), .Y(n88) );
  NOR2XL U39 ( .A(n9), .B(n98), .Y(N183) );
  NOR2XL U40 ( .A(n9), .B(n18), .Y(inter1[3]) );
  CLKINVX3 U41 ( .A(b[1]), .Y(N46) );
  NOR2XL U42 ( .A(n5), .B(n22), .Y(inter3[3]) );
  NOR2XL U43 ( .A(n5), .B(n25), .Y(inter5[5]) );
  NOR2XL U44 ( .A(n10), .B(n20), .Y(inter2[5]) );
  NOR2XL U45 ( .A(n5), .B(n26), .Y(N99) );
  NOR2XL U46 ( .A(n9), .B(n24), .Y(N209) );
  NOR2XL U47 ( .A(n5), .B(n27), .Y(inter7[7]) );
  NOR2XL U48 ( .A(n10), .B(n24), .Y(inter4[7]) );
  NOR2XL U49 ( .A(n5), .B(n28), .Y(N123) );
  NOR2XL U50 ( .A(n14), .B(n18), .Y(inter1[8]) );
  NOR2XL U51 ( .A(n5), .B(n29), .Y(inter9[9]) );
  NOR2XL U52 ( .A(n9), .B(n28), .Y(inter8[10]) );
  NOR2XL U53 ( .A(n10), .B(n26), .Y(inter6[9]) );
  NOR2XL U54 ( .A(n11), .B(n28), .Y(inter8[12]) );
  NOR2XL U55 ( .A(n9), .B(n17), .Y(inter10[12]) );
  NOR2XL U56 ( .A(n12), .B(n28), .Y(inter8[13]) );
  NOR2XL U57 ( .A(n10), .B(n17), .Y(inter10[13]) );
  NOR2XL U58 ( .A(n15), .B(n27), .Y(inter7[15]) );
  NOR2XL U59 ( .A(n16), .B(n27), .Y(inter7[16]) );
  NOR2XL U60 ( .A(n29), .B(n10), .Y(inter9[12]) );
  NOR2XL U61 ( .A(n13), .B(n26), .Y(inter6[12]) );
  NOR2XL U62 ( .A(n29), .B(n11), .Y(inter9[13]) );
  NOR2XL U63 ( .A(n14), .B(n26), .Y(inter6[13]) );
  NOR2XL U64 ( .A(n8), .B(n17), .Y(inter10[11]) );
  NOR2XL U65 ( .A(n10), .B(n28), .Y(inter8[11]) );
  INVXL U66 ( .A(a[10]), .Y(N15) );
  NOR2XL U67 ( .A(n13), .B(n28), .Y(inter8[14]) );
  NOR2XL U68 ( .A(n11), .B(n17), .Y(inter10[14]) );
  NOR2XL U69 ( .A(n14), .B(n28), .Y(inter8[15]) );
  NOR2XL U70 ( .A(n12), .B(n17), .Y(inter10[15]) );
  NOR2XL U71 ( .A(n29), .B(n14), .Y(inter9[16]) );
  NOR2XL U72 ( .A(n29), .B(n15), .Y(inter9[17]) );
  NOR2XL U73 ( .A(n29), .B(n12), .Y(inter9[14]) );
  NOR2XL U74 ( .A(n15), .B(n26), .Y(inter6[14]) );
  NOR2XL U75 ( .A(n29), .B(n13), .Y(inter9[15]) );
  NOR2XL U76 ( .A(n16), .B(n26), .Y(inter6[15]) );
  NOR2XL U77 ( .A(n20), .B(n6), .Y(inter2[21]) );
  NOR2XL U78 ( .A(n15), .B(n28), .Y(inter8[16]) );
  NOR2XL U79 ( .A(n13), .B(n17), .Y(inter10[16]) );
  NOR2XL U80 ( .A(n16), .B(n28), .Y(inter8[17]) );
  NOR2XL U81 ( .A(n14), .B(n17), .Y(inter10[17]) );
  NOR2XL U82 ( .A(n15), .B(n17), .Y(inter10[18]) );
  NOR2XL U83 ( .A(n29), .B(n16), .Y(inter9[18]) );
  CLKBUFX3 U84 ( .A(inter3[21]), .Y(n23) );
  NOR2XL U85 ( .A(n22), .B(n6), .Y(inter3[21]) );
  NOR2X2 U86 ( .A(n24), .B(n6), .Y(inter4[21]) );
  NOR2XL U87 ( .A(n16), .B(n17), .Y(inter10[19]) );
  NOR2X2 U88 ( .A(n25), .B(n6), .Y(inter5[21]) );
  NOR2X1 U89 ( .A(n27), .B(n6), .Y(inter7[21]) );
  NOR2X1 U90 ( .A(n28), .B(n6), .Y(inter8[21]) );
  NOR2X1 U91 ( .A(n6), .B(n29), .Y(inter9[21]) );
  CLKINVX3 U92 ( .A(b[3]), .Y(N44) );
  CLKINVX1 U93 ( .A(n17), .Y(inter10[21]) );
  CLKINVX1 U94 ( .A(n88), .Y(n46) );
  NOR2X1 U95 ( .A(n8), .B(n98), .Y(N182) );
  NOR2X1 U96 ( .A(n5), .B(n18), .Y(inter1[1]) );
  CLKBUFX3 U97 ( .A(inter0[21]), .Y(n7) );
  NOR2X1 U98 ( .A(n98), .B(n6), .Y(inter0[21]) );
  CLKBUFX3 U99 ( .A(n99), .Y(n17) );
  ADDFXL U100 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[14] ), .S(N194) );
  ADDFXL U101 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[15] ), .S(N195) );
  CLKBUFX3 U102 ( .A(inter1[21]), .Y(n19) );
  ADDFXL U103 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[16] ), .S(N86) );
  ADDFXL U104 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[17] ), .S(N87) );
  ADDFXL U105 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[16] ), .S(N196) );
  ADDFXL U106 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[17] ), .S(N197) );
  ADDFXL U107 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[18] ), .S(N198) );
  ADDFXL U108 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[18] ), .S(N220) );
  ADDFXL U109 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[18] ), .S(N88) );
  ADDFXL U110 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[19] ), .S(N199) );
  ADDFXL U111 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[19] ), .S(N221) );
  ADDFXL U112 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[20] ), .S(N222) );
  ADDFXL U113 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[19] ), .S(N89) );
  ADDFXL U114 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[20] ), .S(N90) );
  ADDFXL U115 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[20] ), .S(N200) );
  ADDFXL U116 ( .A(inter4[21]), .B(inter7[21]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[21] ), .S(N223) );
  ADDFXL U117 ( .A(n21), .B(inter5[21]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[21] ), .S(N91) );
  ADDFXL U118 ( .A(n7), .B(n23), .CI(
        \add_5_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[21] ), .S(N201) );
  ADDFXL U119 ( .A(inter6[21]), .B(inter9[21]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[20] ), .S(N112) );
  XOR3X1 U120 ( .A(n21), .B(inter5[21]), .C(
        \add_6_root_add_0_root_add_33_10/carry[21] ), .Y(N92) );
  ADDFXL U121 ( .A(inter10[21]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[21] ), .S(N135) );
  XOR3X1 U122 ( .A(inter10[21]), .B(inter8[21]), .C(
        \add_9_root_add_0_root_add_33_10/carry[21] ), .Y(N136) );
  ADDFXL U123 ( .A(inter6[21]), .B(inter9[21]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[20] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[21] ), .S(N113) );
  XOR3X1 U124 ( .A(inter6[21]), .B(inter9[21]), .C(
        \add_8_root_add_0_root_add_33_10/carry[21] ), .Y(N114) );
  XOR3X1 U125 ( .A(inter4[21]), .B(inter7[21]), .C(
        \add_7_root_add_0_root_add_33_10/carry[21] ), .Y(N224) );
  AOI22X2 U126 ( .A0(N58), .A1(n46), .B0(b[10]), .B1(n88), .Y(n85) );
  AO22X1 U127 ( .A0(b[0]), .A1(n1), .B0(n3), .B1(N48), .Y(n87) );
  CLKBUFX3 U128 ( .A(n101), .Y(n18) );
  AOI221XL U129 ( .A0(n1), .A1(b[1]), .B0(n3), .B1(N49), .C0(n100), .Y(n101)
         );
  AO22X1 U130 ( .A0(N27), .A1(n2), .B0(n4), .B1(a[1]), .Y(n100) );
  CLKBUFX3 U131 ( .A(n130), .Y(n5) );
  AOI221XL U132 ( .A0(n1), .A1(a[0]), .B0(n3), .B1(N26), .C0(n86), .Y(n130) );
  AO22X1 U133 ( .A0(n4), .A1(b[0]), .B0(N48), .B1(n2), .Y(n86) );
  CLKBUFX3 U134 ( .A(n119), .Y(n8) );
  AOI221XL U135 ( .A0(n1), .A1(a[1]), .B0(n3), .B1(N27), .C0(n89), .Y(n119) );
  AO22X1 U136 ( .A0(n4), .A1(b[1]), .B0(N49), .B1(n2), .Y(n89) );
  NOR2X1 U137 ( .A(n8), .B(n20), .Y(N74) );
  NOR2X1 U138 ( .A(n9), .B(n20), .Y(N75) );
  NOR2X1 U139 ( .A(n10), .B(n18), .Y(inter1[4]) );
  ADDFXL U140 ( .A(inter0[4]), .B(inter3[4]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[4] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[5] ), .S(N185) );
  NOR2X1 U141 ( .A(n8), .B(n22), .Y(inter3[4]) );
  NOR2X1 U142 ( .A(n11), .B(n98), .Y(inter0[4]) );
  ADDFXL U143 ( .A(inter0[5]), .B(inter3[5]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[5] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[6] ), .S(N186) );
  NOR2X1 U144 ( .A(n9), .B(n22), .Y(inter3[5]) );
  NOR2X1 U145 ( .A(n12), .B(n98), .Y(inter0[5]) );
  ADDFXL U146 ( .A(inter0[6]), .B(inter3[6]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[6] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[7] ), .S(N187) );
  NOR2X1 U147 ( .A(n10), .B(n22), .Y(inter3[6]) );
  NOR2X1 U148 ( .A(n13), .B(n98), .Y(inter0[6]) );
  NOR2X1 U149 ( .A(n11), .B(n18), .Y(inter1[5]) );
  NOR2X1 U150 ( .A(n12), .B(n18), .Y(inter1[6]) );
  NOR2X1 U151 ( .A(n8), .B(n24), .Y(N208) );
  NOR2X1 U152 ( .A(n5), .B(n24), .Y(N207) );
  NOR2X1 U153 ( .A(n8), .B(n26), .Y(N100) );
  ADDFXL U154 ( .A(inter2[6]), .B(inter5[6]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[6] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[7] ), .S(N77) );
  NOR2X1 U155 ( .A(n8), .B(n25), .Y(inter5[6]) );
  NOR2X1 U156 ( .A(n11), .B(n20), .Y(inter2[6]) );
  ADDFXL U157 ( .A(inter0[7]), .B(inter3[7]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[7] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[8] ), .S(N188) );
  NOR2X1 U158 ( .A(n11), .B(n22), .Y(inter3[7]) );
  NOR2X1 U159 ( .A(n14), .B(n98), .Y(inter0[7]) );
  ADDFXL U160 ( .A(inter2[7]), .B(inter5[7]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[7] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[8] ), .S(N78) );
  NOR2X1 U161 ( .A(n9), .B(n25), .Y(inter5[7]) );
  NOR2X1 U162 ( .A(n12), .B(n20), .Y(inter2[7]) );
  NOR2X1 U163 ( .A(n13), .B(n18), .Y(inter1[7]) );
  ADDFXL U164 ( .A(inter4[8]), .B(inter7[8]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[9] ), .S(N211) );
  NOR2X1 U165 ( .A(n8), .B(n27), .Y(inter7[8]) );
  NOR2X1 U166 ( .A(n11), .B(n24), .Y(inter4[8]) );
  ADDFXL U167 ( .A(inter0[8]), .B(inter3[8]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[9] ), .S(N189) );
  NOR2X1 U168 ( .A(n12), .B(n22), .Y(inter3[8]) );
  NOR2X1 U169 ( .A(n15), .B(n98), .Y(inter0[8]) );
  ADDFXL U170 ( .A(inter2[8]), .B(inter5[8]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[8] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[9] ), .S(N79) );
  NOR2X1 U171 ( .A(n10), .B(n25), .Y(inter5[8]) );
  NOR2X1 U172 ( .A(n13), .B(n20), .Y(inter2[8]) );
  ADDFXL U173 ( .A(inter0[9]), .B(inter3[9]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[10] ), .S(N190) );
  NOR2X1 U174 ( .A(n13), .B(n22), .Y(inter3[9]) );
  NOR2X1 U175 ( .A(n16), .B(n98), .Y(inter0[9]) );
  NOR2X1 U176 ( .A(n9), .B(n26), .Y(N101) );
  ADDFXL U177 ( .A(inter4[9]), .B(inter7[9]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[10] ), .S(N212) );
  NOR2X1 U178 ( .A(n9), .B(n27), .Y(inter7[9]) );
  NOR2X1 U179 ( .A(n12), .B(n24), .Y(inter4[9]) );
  ADDFXL U180 ( .A(inter2[9]), .B(inter5[9]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[9] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[10] ), .S(N80) );
  NOR2X1 U181 ( .A(n11), .B(n25), .Y(inter5[9]) );
  NOR2X1 U182 ( .A(n14), .B(n20), .Y(inter2[9]) );
  ADDFXL U183 ( .A(n7), .B(inter3[10]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[11] ), .S(N191) );
  NOR2X1 U184 ( .A(n14), .B(n22), .Y(inter3[10]) );
  NOR2X1 U185 ( .A(n8), .B(n28), .Y(N124) );
  NOR2X1 U186 ( .A(n15), .B(n18), .Y(inter1[9]) );
  NOR2X1 U187 ( .A(n16), .B(n18), .Y(inter1[10]) );
  ADDFXL U188 ( .A(inter4[10]), .B(inter7[10]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[11] ), .S(N213) );
  NOR2X1 U189 ( .A(n10), .B(n27), .Y(inter7[10]) );
  NOR2X1 U190 ( .A(n13), .B(n24), .Y(inter4[10]) );
  ADDFXL U191 ( .A(inter4[11]), .B(inter7[11]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[12] ), .S(N214) );
  NOR2X1 U192 ( .A(n11), .B(n27), .Y(inter7[11]) );
  NOR2X1 U193 ( .A(n14), .B(n24), .Y(inter4[11]) );
  ADDFXL U194 ( .A(inter2[10]), .B(inter5[10]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[11] ), .S(N81) );
  NOR2X1 U195 ( .A(n12), .B(n25), .Y(inter5[10]) );
  NOR2X1 U196 ( .A(n15), .B(n20), .Y(inter2[10]) );
  ADDFXL U197 ( .A(inter2[11]), .B(inter5[11]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[12] ), .S(N82) );
  NOR2X1 U198 ( .A(n13), .B(n25), .Y(inter5[11]) );
  NOR2X1 U199 ( .A(n16), .B(n20), .Y(inter2[11]) );
  ADDFXL U200 ( .A(n7), .B(inter3[11]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[12] ), .S(N192) );
  NOR2X1 U201 ( .A(n15), .B(n22), .Y(inter3[11]) );
  ADDFXL U202 ( .A(n7), .B(inter3[12]), .CI(
        \add_5_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_5_root_add_0_root_add_33_10/carry[13] ), .S(N193) );
  NOR2X1 U203 ( .A(n16), .B(n22), .Y(inter3[12]) );
  ADDFXL U204 ( .A(inter6[10]), .B(inter9[10]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[10] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[11] ), .S(N103) );
  NOR2X1 U205 ( .A(n29), .B(n8), .Y(inter9[10]) );
  NOR2X1 U206 ( .A(n11), .B(n26), .Y(inter6[10]) );
  ADDFXL U207 ( .A(inter6[11]), .B(inter9[11]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[12] ), .S(N104) );
  NOR2X1 U208 ( .A(n29), .B(n9), .Y(inter9[11]) );
  NOR2X1 U209 ( .A(n12), .B(n26), .Y(inter6[11]) );
  ADDFXL U210 ( .A(inter10[11]), .B(inter8[11]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[11] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[12] ), .S(N126) );
  ADDFXL U211 ( .A(inter4[12]), .B(inter7[12]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[13] ), .S(N215) );
  NOR2X1 U212 ( .A(n12), .B(n27), .Y(inter7[12]) );
  NOR2X1 U213 ( .A(n15), .B(n24), .Y(inter4[12]) );
  ADDFXL U214 ( .A(inter4[13]), .B(inter7[13]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[14] ), .S(N216) );
  NOR2X1 U215 ( .A(n13), .B(n27), .Y(inter7[13]) );
  NOR2X1 U216 ( .A(n16), .B(n24), .Y(inter4[13]) );
  ADDFXL U217 ( .A(n21), .B(inter5[12]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[13] ), .S(N83) );
  NOR2X1 U218 ( .A(n14), .B(n25), .Y(inter5[12]) );
  ADDFXL U219 ( .A(n21), .B(inter5[13]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[14] ), .S(N84) );
  NOR2X1 U220 ( .A(n15), .B(n25), .Y(inter5[13]) );
  CLKBUFX3 U221 ( .A(n128), .Y(n6) );
  AOI221XL U222 ( .A0(n88), .A1(a[10]), .B0(n46), .B1(N36), .C0(n42), .Y(n128)
         );
  ADDFXL U223 ( .A(inter6[12]), .B(inter9[12]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[13] ), .S(N105) );
  ADDFXL U224 ( .A(inter4[21]), .B(inter7[14]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[15] ), .S(N217) );
  NOR2X1 U225 ( .A(n14), .B(n27), .Y(inter7[14]) );
  ADDFXL U226 ( .A(inter4[21]), .B(inter7[15]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[16] ), .S(N218) );
  ADDFXL U227 ( .A(inter10[12]), .B(inter8[12]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[12] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[13] ), .S(N127) );
  ADDFXL U228 ( .A(inter10[13]), .B(inter8[13]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[14] ), .S(N128) );
  ADDFXL U229 ( .A(inter10[14]), .B(inter8[14]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[15] ), .S(N129) );
  ADDFXL U230 ( .A(n21), .B(inter5[14]), .CI(
        \add_6_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_6_root_add_0_root_add_33_10/carry[15] ), .S(N85) );
  NOR2X1 U231 ( .A(n16), .B(n25), .Y(inter5[14]) );
  CLKBUFX3 U232 ( .A(inter2[21]), .Y(n21) );
  ADDFXL U233 ( .A(inter6[13]), .B(inter9[13]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[13] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[14] ), .S(N106) );
  ADDFXL U234 ( .A(inter6[14]), .B(inter9[14]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[14] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[15] ), .S(N107) );
  ADDFXL U235 ( .A(inter4[21]), .B(inter7[16]), .CI(
        \add_7_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_7_root_add_0_root_add_33_10/carry[17] ), .S(N219) );
  ADDFXL U236 ( .A(inter10[15]), .B(inter8[15]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[16] ), .S(N130) );
  ADDFXL U237 ( .A(inter10[16]), .B(inter8[16]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[17] ), .S(N131) );
  ADDFXL U238 ( .A(inter6[21]), .B(inter9[16]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[16] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[17] ), .S(N109) );
  ADDFXL U239 ( .A(inter6[21]), .B(inter9[17]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[18] ), .S(N110) );
  ADDFXL U240 ( .A(inter6[15]), .B(inter9[15]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[15] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[16] ), .S(N108) );
  NOR2X2 U241 ( .A(n26), .B(n6), .Y(inter6[21]) );
  ADDFXL U242 ( .A(inter10[17]), .B(inter8[17]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[17] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[18] ), .S(N132) );
  ADDFXL U243 ( .A(inter6[21]), .B(inter9[18]), .CI(
        \add_8_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_8_root_add_0_root_add_33_10/carry[19] ), .S(N111) );
  ADDFXL U244 ( .A(inter10[18]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[18] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[19] ), .S(N133) );
  ADDFXL U245 ( .A(inter10[19]), .B(inter8[21]), .CI(
        \add_9_root_add_0_root_add_33_10/carry[19] ), .CO(
        \add_9_root_add_0_root_add_33_10/carry[20] ), .S(N134) );
  AOI221XL U246 ( .A0(n1), .A1(b[2]), .B0(n3), .B1(N50), .C0(n102), .Y(n103)
         );
  AO22X1 U247 ( .A0(N28), .A1(n2), .B0(n4), .B1(a[2]), .Y(n102) );
  BUFX4 U248 ( .A(n120), .Y(n9) );
  AOI221XL U249 ( .A0(n1), .A1(a[2]), .B0(n3), .B1(N28), .C0(n90), .Y(n120) );
  AO22X1 U250 ( .A0(n4), .A1(b[2]), .B0(N50), .B1(n2), .Y(n90) );
  CLKINVX1 U251 ( .A(b[2]), .Y(N45) );
  CLKINVX1 U252 ( .A(b[4]), .Y(N43) );
  CLKINVX1 U253 ( .A(b[5]), .Y(N42) );
  CLKINVX1 U254 ( .A(b[6]), .Y(N41) );
  CLKINVX1 U255 ( .A(b[7]), .Y(N40) );
  CLKINVX1 U256 ( .A(b[9]), .Y(N38) );
  AOI221XL U257 ( .A0(n1), .A1(b[3]), .B0(n3), .B1(N51), .C0(n104), .Y(n105)
         );
  AO22X1 U258 ( .A0(N29), .A1(n2), .B0(n4), .B1(a[3]), .Y(n104) );
  BUFX4 U259 ( .A(n121), .Y(n10) );
  AOI221XL U260 ( .A0(n1), .A1(a[3]), .B0(n3), .B1(N29), .C0(n91), .Y(n121) );
  AO22X1 U261 ( .A0(n4), .A1(b[3]), .B0(N51), .B1(n2), .Y(n91) );
  AOI221XL U262 ( .A0(n1), .A1(b[4]), .B0(n3), .B1(N52), .C0(n106), .Y(n107)
         );
  AO22X1 U263 ( .A0(N30), .A1(n2), .B0(n4), .B1(a[4]), .Y(n106) );
  AOI221XL U264 ( .A0(n1), .A1(b[5]), .B0(n3), .B1(N53), .C0(n108), .Y(n109)
         );
  AO22X1 U265 ( .A0(N31), .A1(n2), .B0(n4), .B1(a[5]), .Y(n108) );
  AOI221XL U266 ( .A0(n1), .A1(a[4]), .B0(n3), .B1(N30), .C0(n92), .Y(n122) );
  AO22X1 U267 ( .A0(n4), .A1(b[4]), .B0(N52), .B1(n2), .Y(n92) );
  AOI221XL U268 ( .A0(n1), .A1(a[5]), .B0(n3), .B1(N31), .C0(n93), .Y(n123) );
  AO22X1 U269 ( .A0(n4), .A1(b[5]), .B0(N53), .B1(n2), .Y(n93) );
  CLKINVX1 U270 ( .A(a[2]), .Y(N23) );
  CLKINVX1 U271 ( .A(a[3]), .Y(N22) );
  AOI221XL U272 ( .A0(n1), .A1(b[7]), .B0(n3), .B1(N55), .C0(n112), .Y(n113)
         );
  AO22X1 U273 ( .A0(N33), .A1(n2), .B0(n4), .B1(a[7]), .Y(n112) );
  AOI221XL U274 ( .A0(n1), .A1(b[6]), .B0(n3), .B1(N54), .C0(n110), .Y(n111)
         );
  AO22X1 U275 ( .A0(N32), .A1(n2), .B0(n4), .B1(a[6]), .Y(n110) );
  AOI221XL U276 ( .A0(n1), .A1(a[6]), .B0(n3), .B1(N32), .C0(n94), .Y(n124) );
  AO22X1 U277 ( .A0(n4), .A1(b[6]), .B0(N54), .B1(n2), .Y(n94) );
  CLKINVX1 U278 ( .A(a[4]), .Y(N21) );
  CLKINVX1 U279 ( .A(a[5]), .Y(N20) );
  AOI221XL U280 ( .A0(n1), .A1(a[7]), .B0(n3), .B1(N33), .C0(n95), .Y(n125) );
  AO22X1 U281 ( .A0(n4), .A1(b[7]), .B0(N55), .B1(n2), .Y(n95) );
  CLKINVX1 U282 ( .A(a[7]), .Y(N18) );
  AOI221XL U283 ( .A0(n1), .A1(b[8]), .B0(n3), .B1(N56), .C0(n114), .Y(n115)
         );
  AO22X1 U284 ( .A0(N34), .A1(n2), .B0(n4), .B1(a[8]), .Y(n114) );
  AOI221XL U285 ( .A0(n1), .A1(a[8]), .B0(n3), .B1(N34), .C0(n96), .Y(n126) );
  AO22X1 U286 ( .A0(n4), .A1(b[8]), .B0(N56), .B1(n2), .Y(n96) );
  AOI221XL U287 ( .A0(n1), .A1(a[9]), .B0(n3), .B1(N35), .C0(n97), .Y(n127) );
  AO22X1 U288 ( .A0(n4), .A1(b[9]), .B0(N57), .B1(n2), .Y(n97) );
  AOI221XL U289 ( .A0(n1), .A1(b[9]), .B0(n3), .B1(N57), .C0(n117), .Y(n129)
         );
  AO22X1 U290 ( .A0(n4), .A1(a[9]), .B0(N35), .B1(n2), .Y(n117) );
  CLKINVX1 U291 ( .A(a[6]), .Y(N19) );
  CLKINVX1 U292 ( .A(a[9]), .Y(N16) );
  CLKINVX1 U293 ( .A(a[8]), .Y(N17) );
  AND2X1 U294 ( .A(inter2[5]), .B(inter5[5]), .Y(
        \add_6_root_add_0_root_add_33_10/carry[6] ) );
  XOR2X1 U295 ( .A(inter5[5]), .B(inter2[5]), .Y(N76) );
  AND2X1 U296 ( .A(inter10[10]), .B(inter8[10]), .Y(
        \add_9_root_add_0_root_add_33_10/carry[11] ) );
  XOR2X1 U297 ( .A(inter8[10]), .B(inter10[10]), .Y(N125) );
  AND2X1 U298 ( .A(inter0[3]), .B(inter3[3]), .Y(
        \add_5_root_add_0_root_add_33_10/carry[4] ) );
  XOR2X1 U299 ( .A(inter3[3]), .B(inter0[3]), .Y(N184) );
  AND2X1 U300 ( .A(inter4[7]), .B(inter7[7]), .Y(
        \add_7_root_add_0_root_add_33_10/carry[8] ) );
  XOR2X1 U301 ( .A(inter7[7]), .B(inter4[7]), .Y(N210) );
  AND2X1 U302 ( .A(inter6[9]), .B(inter9[9]), .Y(
        \add_8_root_add_0_root_add_33_10/carry[10] ) );
  XOR2X1 U303 ( .A(inter9[9]), .B(inter6[9]), .Y(N102) );
endmodule


module cross_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   \carry[21] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;

  AOI2BB2X1 U1 ( .B0(n46), .B1(A[10]), .A0N(B[10]), .A1N(n47), .Y(n44) );
  NOR2X1 U2 ( .A(A[10]), .B(n46), .Y(n47) );
  OAI22X4 U3 ( .A0(n48), .A1(n21), .B0(B[9]), .B1(n49), .Y(n46) );
  AND2X8 U4 ( .A(n48), .B(n21), .Y(n49) );
  NOR2X1 U5 ( .A(B[1]), .B(n64), .Y(n15) );
  AND2X2 U6 ( .A(n52), .B(n22), .Y(n53) );
  NAND2X4 U7 ( .A(n5), .B(n6), .Y(n42) );
  OR2X1 U8 ( .A(n44), .B(n20), .Y(n5) );
  OR2X4 U9 ( .A(B[11]), .B(n45), .Y(n6) );
  AND2X2 U10 ( .A(n44), .B(n20), .Y(n45) );
  NAND2X4 U11 ( .A(n8), .B(n9), .Y(n34) );
  OR2X1 U12 ( .A(n7), .B(n18), .Y(n8) );
  AND2X2 U13 ( .A(n32), .B(n17), .Y(n33) );
  NAND2X2 U14 ( .A(n1), .B(n2), .Y(n27) );
  OR2X2 U15 ( .A(B[19]), .B(n29), .Y(n2) );
  AND2X2 U16 ( .A(n28), .B(n16), .Y(n29) );
  OR2XL U17 ( .A(n28), .B(n16), .Y(n1) );
  NAND2X4 U18 ( .A(n12), .B(n13), .Y(n30) );
  OR2X8 U19 ( .A(B[17]), .B(n33), .Y(n13) );
  OR2X8 U20 ( .A(B[7]), .B(n53), .Y(n4) );
  OR2XL U21 ( .A(n52), .B(n22), .Y(n3) );
  NAND2X4 U22 ( .A(n3), .B(n4), .Y(n50) );
  XNOR3X2 U23 ( .A(A[21]), .B(B[21]), .C(\carry[21] ), .Y(DIFF[21]) );
  OAI22X4 U24 ( .A0(n59), .A1(n24), .B0(B[3]), .B1(n60), .Y(n57) );
  CLKAND2X8 U25 ( .A(n59), .B(n24), .Y(n60) );
  OAI2BB2XL U26 ( .B0(B[20]), .B1(n26), .A0N(n27), .A1N(A[20]), .Y(\carry[21] ) );
  NOR2X1 U27 ( .A(A[20]), .B(n27), .Y(n26) );
  NOR2X1 U28 ( .A(A[8]), .B(n50), .Y(n51) );
  AOI2BB2XL U29 ( .B0(n30), .B1(A[18]), .A0N(B[18]), .A1N(n31), .Y(n28) );
  AOI2BB2XL U30 ( .B0(n54), .B1(A[6]), .A0N(B[6]), .A1N(n55), .Y(n52) );
  AOI2BB2X4 U31 ( .B0(n50), .B1(A[8]), .A0N(B[8]), .A1N(n51), .Y(n48) );
  AOI2BB2X1 U32 ( .B0(n61), .B1(A[2]), .A0N(B[2]), .A1N(n62), .Y(n59) );
  AOI2BB2XL U33 ( .B0(n34), .B1(A[16]), .A0N(B[16]), .A1N(n35), .Y(n32) );
  OR2XL U34 ( .A(n32), .B(n17), .Y(n12) );
  CLKINVX1 U35 ( .A(A[13]), .Y(n19) );
  AND2X2 U36 ( .A(n40), .B(n19), .Y(n41) );
  AOI2BB2X1 U37 ( .B0(n42), .B1(A[12]), .A0N(B[12]), .A1N(n43), .Y(n40) );
  NOR2X1 U38 ( .A(A[12]), .B(n42), .Y(n43) );
  AOI2BB2X1 U39 ( .B0(n38), .B1(A[14]), .A0N(B[14]), .A1N(n39), .Y(n7) );
  AOI2BB2X1 U40 ( .B0(n38), .B1(A[14]), .A0N(B[14]), .A1N(n39), .Y(n36) );
  OAI22X1 U41 ( .A0(n40), .A1(n19), .B0(B[13]), .B1(n41), .Y(n38) );
  NOR2X1 U42 ( .A(A[16]), .B(n34), .Y(n35) );
  NAND2X2 U43 ( .A(n56), .B(n23), .Y(n11) );
  CLKINVX1 U44 ( .A(B[5]), .Y(n10) );
  NOR2X1 U45 ( .A(A[6]), .B(n54), .Y(n55) );
  OR2X6 U46 ( .A(B[15]), .B(n37), .Y(n9) );
  CLKAND2X8 U47 ( .A(n36), .B(n18), .Y(n37) );
  NOR2X1 U48 ( .A(A[18]), .B(n30), .Y(n31) );
  NOR2XL U49 ( .A(A[14]), .B(n38), .Y(n39) );
  OAI2BB2X2 U50 ( .B0(n56), .B1(n23), .A0N(n10), .A1N(n11), .Y(n54) );
  NOR2XL U51 ( .A(A[4]), .B(n57), .Y(n58) );
  NOR2X1 U52 ( .A(A[2]), .B(n61), .Y(n62) );
  NOR2X1 U53 ( .A(n63), .B(n25), .Y(n14) );
  OR2X2 U54 ( .A(n14), .B(n15), .Y(n61) );
  CLKINVX1 U55 ( .A(A[17]), .Y(n17) );
  CLKINVX1 U56 ( .A(A[19]), .Y(n16) );
  CLKINVX1 U57 ( .A(A[9]), .Y(n21) );
  CLKINVX1 U58 ( .A(A[11]), .Y(n20) );
  CLKINVX1 U59 ( .A(A[15]), .Y(n18) );
  CLKINVX1 U60 ( .A(A[3]), .Y(n24) );
  CLKINVX1 U61 ( .A(A[5]), .Y(n23) );
  CLKINVX1 U62 ( .A(A[7]), .Y(n22) );
  INVX1 U63 ( .A(A[1]), .Y(n25) );
  AOI2BB2X1 U64 ( .B0(n57), .B1(A[4]), .A0N(B[4]), .A1N(n58), .Y(n56) );
  AND2X1 U65 ( .A(n63), .B(n25), .Y(n64) );
  NOR2BX1 U66 ( .AN(B[0]), .B(A[0]), .Y(n63) );
endmodule


module cross_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFHX4 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U5 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  NAND2X2 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U8 ( .A(carry[10]), .Y(DIFF[10]) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n11) );
endmodule


module cross_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n6), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n7), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n8), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n9), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  CLKINVX1 U1 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U2 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n10) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2X1 U6 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module cross_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  CLKINVX1 U1 ( .A(B[4]), .Y(n7) );
  INVX1 U2 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[9]), .Y(n2) );
  INVX1 U4 ( .A(B[7]), .Y(n4) );
  INVX1 U5 ( .A(B[3]), .Y(n8) );
  INVX1 U6 ( .A(B[6]), .Y(n5) );
  INVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U9 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n10) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module cross_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX1 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n6), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n7), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n8), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n9), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  CLKINVX1 U1 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U2 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n10) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2X1 U6 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module cross ( clk, reset, newData, bubbleSort, compare, X0, Y0, Xt, Yt,
        Xaddr0, Yaddr0, Xaddr1, Yaddr1, swapX0, swapY0, swapX1, swapY1,
        is_inside );
  input [9:0] X0;
  input [9:0] Y0;
  input [9:0] Xt;
  input [9:0] Yt;
  input [9:0] Xaddr0;
  input [9:0] Yaddr0;
  input [9:0] Xaddr1;
  input [9:0] Yaddr1;
  output [9:0] swapX0;
  output [9:0] swapY0;
  output [9:0] swapX1;
  output [9:0] swapY1;
  input clk, reset, newData, bubbleSort, compare;
  output is_inside;
  wire   \cp[21] , N33, n75, n77, n6, n7, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [9:0] vect0x_sub;
  wire   [9:0] vect0y_sub;
  wire   [9:0] vect1x_sub;
  wire   [9:0] vect1y_sub;
  wire   [9:0] vect0x_min;
  wire   [9:0] vect0y_min;
  wire   [9:0] vect1x_min;
  wire   [9:0] vect1y_min;
  wire   [10:0] vect0x;
  wire   [10:0] vect0y;
  wire   [10:0] vect1x;
  wire   [10:0] vect1y;
  wire   [21:0] term0;
  wire   [21:0] term1;
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
        SYNOPSYS_UNCONNECTED__20;

  mult_signed_1 mul0 ( .a(vect0x), .b(vect1y), .out(term0) );
  mult_signed_0 mul1 ( .a(vect1x), .b(vect0y), .out(term1) );
  cross_DW01_sub_0 sub_40 ( .A(term0), .B(term1), .CI(1'b0), .DIFF({\cp[21] ,
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1,
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3,
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5,
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7,
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9,
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11,
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13,
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15,
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17,
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19,
        SYNOPSYS_UNCONNECTED__20}) );
  cross_DW01_sub_1 sub_36 ( .A({1'b0, vect1y_sub}), .B({1'b0, vect1y_min}),
        .CI(1'b0), .DIFF(vect1y) );
  cross_DW01_sub_2 sub_35 ( .A({1'b0, vect1x_sub}), .B({1'b0, vect1x_min}),
        .CI(1'b0), .DIFF(vect1x) );
  cross_DW01_sub_3 sub_34 ( .A({1'b0, vect0y_sub}), .B({1'b0, vect0y_min}),
        .CI(1'b0), .DIFF(vect0y) );
  cross_DW01_sub_4 sub_33 ( .A({1'b0, vect0x_sub}), .B({1'b0, vect0x_min}),
        .CI(1'b0), .DIFF(vect0x) );
  DFFSX1 is_inside_reg ( .D(N33), .CK(clk), .SN(n70), .QN(n7) );
  NOR2XL U3 ( .A(n27), .B(n35), .Y(vect1y_sub[7]) );
  INVX3 U9 ( .A(Xaddr1[1]), .Y(n66) );
  CLKINVX3 U10 ( .A(Xaddr0[1]), .Y(n67) );
  CLKINVX1 U11 ( .A(Yaddr1[0]), .Y(n49) );
  CLKINVX1 U12 ( .A(Xaddr1[0]), .Y(n68) );
  OR2X1 U13 ( .A(n9), .B(n10), .Y(swapX1[1]) );
  NOR2X1 U14 ( .A(n28), .B(n22), .Y(n11) );
  NAND2X1 U15 ( .A(\cp[21] ), .B(n28), .Y(n6) );
  CLKBUFX3 U16 ( .A(n25), .Y(n27) );
  INVX16 U17 ( .A(n7), .Y(is_inside) );
  INVX3 U18 ( .A(n16), .Y(n13) );
  INVX3 U19 ( .A(n16), .Y(n12) );
  INVX4 U20 ( .A(n17), .Y(n14) );
  OAI22X1 U21 ( .A0(n69), .A1(n12), .B0(n18), .B1(n68), .Y(swapX1[0]) );
  BUFX2 U22 ( .A(n21), .Y(n19) );
  INVX1 U23 ( .A(n16), .Y(n15) );
  BUFX2 U24 ( .A(n21), .Y(n18) );
  NOR2X1 U25 ( .A(n25), .B(n48), .Y(vect0y_sub[0]) );
  NOR2X2 U26 ( .A(n25), .B(n69), .Y(vect0x_sub[0]) );
  CLKINVX1 U27 ( .A(Yaddr0[1]), .Y(n46) );
  OAI22X1 U28 ( .A0(n38), .A1(n14), .B0(n18), .B1(n39), .Y(swapY1[5]) );
  NOR2BX2 U29 ( .AN(compare), .B(n28), .Y(n75) );
  CLKINVX1 U30 ( .A(Xaddr0[7]), .Y(n55) );
  NOR2XL U31 ( .A(n67), .B(n12), .Y(n9) );
  NOR2XL U32 ( .A(n18), .B(n66), .Y(n10) );
  NOR2X4 U33 ( .A(n27), .B(n49), .Y(vect1y_sub[0]) );
  INVXL U34 ( .A(Yaddr0[8]), .Y(n32) );
  NOR2XL U35 ( .A(n27), .B(n31), .Y(vect1y_sub[9]) );
  CLKINVX1 U36 ( .A(n6), .Y(n21) );
  CLKBUFX2 U37 ( .A(n24), .Y(n26) );
  OAI22X1 U38 ( .A0(n61), .A1(n13), .B0(n19), .B1(n60), .Y(swapX1[4]) );
  OAI22X1 U39 ( .A0(n59), .A1(n13), .B0(n19), .B1(n58), .Y(swapX1[5]) );
  OAI22X1 U40 ( .A0(n57), .A1(n13), .B0(n19), .B1(n56), .Y(swapX1[6]) );
  OAI22X1 U41 ( .A0(n55), .A1(n13), .B0(n19), .B1(n54), .Y(swapX1[7]) );
  OAI22X1 U42 ( .A0(n53), .A1(n13), .B0(n19), .B1(n52), .Y(swapX1[8]) );
  OAI22X1 U43 ( .A0(n51), .A1(n13), .B0(n19), .B1(n50), .Y(swapX1[9]) );
  OAI22X1 U44 ( .A0(n65), .A1(n13), .B0(n18), .B1(n64), .Y(swapX1[2]) );
  OAI22X1 U45 ( .A0(n63), .A1(n13), .B0(n18), .B1(n62), .Y(swapX1[3]) );
  OAI22X1 U46 ( .A0(n48), .A1(n14), .B0(n19), .B1(n49), .Y(swapY1[0]) );
  OAI22X1 U47 ( .A0(n46), .A1(n14), .B0(n20), .B1(n47), .Y(swapY1[1]) );
  OAI22X1 U48 ( .A0(n44), .A1(n14), .B0(n19), .B1(n45), .Y(swapY1[2]) );
  OAI22X1 U49 ( .A0(n42), .A1(n14), .B0(n18), .B1(n43), .Y(swapY1[3]) );
  OAI22X1 U50 ( .A0(n40), .A1(n14), .B0(n18), .B1(n41), .Y(swapY1[4]) );
  NOR2X4 U51 ( .A(n26), .B(n68), .Y(vect1x_sub[0]) );
  NOR2X2 U52 ( .A(n27), .B(n47), .Y(vect1y_sub[1]) );
  INVXL U53 ( .A(Yaddr0[3]), .Y(n42) );
  INVXL U54 ( .A(Yaddr0[5]), .Y(n38) );
  INVXL U55 ( .A(Yaddr0[6]), .Y(n36) );
  NOR2XL U56 ( .A(n27), .B(n52), .Y(vect1x_sub[8]) );
  AO22XL U57 ( .A0(n22), .A1(Xaddr0[8]), .B0(n29), .B1(X0[8]), .Y(
        vect1x_min[8]) );
  NOR2X2 U58 ( .A(n27), .B(n45), .Y(vect1y_sub[2]) );
  AO22XL U59 ( .A0(n22), .A1(Yaddr0[2]), .B0(n29), .B1(Y0[2]), .Y(
        vect1y_min[2]) );
  NOR2XL U60 ( .A(n27), .B(n41), .Y(vect1y_sub[4]) );
  AO22XL U61 ( .A0(n22), .A1(Yaddr0[4]), .B0(n29), .B1(Y0[4]), .Y(
        vect1y_min[4]) );
  NOR2XL U62 ( .A(n26), .B(n64), .Y(vect1x_sub[2]) );
  AO22XL U63 ( .A0(n22), .A1(Xaddr0[2]), .B0(n29), .B1(X0[2]), .Y(
        vect1x_min[2]) );
  NOR2XL U64 ( .A(n26), .B(n62), .Y(vect1x_sub[3]) );
  AO22XL U65 ( .A0(n22), .A1(Xaddr0[3]), .B0(n29), .B1(X0[3]), .Y(
        vect1x_min[3]) );
  NOR2XL U66 ( .A(n27), .B(n60), .Y(vect1x_sub[4]) );
  AO22XL U67 ( .A0(n22), .A1(Xaddr0[4]), .B0(n29), .B1(X0[4]), .Y(
        vect1x_min[4]) );
  NOR2XL U68 ( .A(n27), .B(n58), .Y(vect1x_sub[5]) );
  AO22XL U69 ( .A0(n22), .A1(Xaddr0[5]), .B0(n29), .B1(X0[5]), .Y(
        vect1x_min[5]) );
  NOR2XL U70 ( .A(n27), .B(n56), .Y(vect1x_sub[6]) );
  AO22XL U71 ( .A0(n22), .A1(Xaddr0[6]), .B0(n29), .B1(X0[6]), .Y(
        vect1x_min[6]) );
  AO22XL U72 ( .A0(n22), .A1(Yaddr0[7]), .B0(n29), .B1(Y0[7]), .Y(
        vect1y_min[7]) );
  NOR2XL U73 ( .A(n27), .B(n50), .Y(vect1x_sub[9]) );
  AO22XL U74 ( .A0(n22), .A1(Xaddr0[9]), .B0(n29), .B1(X0[9]), .Y(
        vect1x_min[9]) );
  AO22XL U75 ( .A0(n22), .A1(Yaddr0[9]), .B0(Y0[9]), .B1(bubbleSort), .Y(
        vect1y_min[9]) );
  AO22XL U76 ( .A0(n22), .A1(Yaddr0[1]), .B0(n29), .B1(Y0[1]), .Y(
        vect1y_min[1]) );
  NOR2XL U77 ( .A(n25), .B(n53), .Y(vect0x_sub[8]) );
  AO22XL U78 ( .A0(n28), .A1(X0[8]), .B0(Xt[8]), .B1(n23), .Y(vect0x_min[8])
         );
  NOR2XL U79 ( .A(n26), .B(n34), .Y(vect0y_sub[7]) );
  AO22XL U80 ( .A0(n28), .A1(Y0[7]), .B0(Yt[7]), .B1(n23), .Y(vect0y_min[7])
         );
  NOR2XL U81 ( .A(n26), .B(n44), .Y(vect0y_sub[2]) );
  AO22XL U82 ( .A0(n28), .A1(Y0[2]), .B0(Yt[2]), .B1(n23), .Y(vect0y_min[2])
         );
  NOR2XL U83 ( .A(n26), .B(n42), .Y(vect0y_sub[3]) );
  AO22XL U84 ( .A0(n28), .A1(Y0[3]), .B0(Yt[3]), .B1(n23), .Y(vect0y_min[3])
         );
  NOR2XL U85 ( .A(n26), .B(n36), .Y(vect0y_sub[6]) );
  AO22XL U86 ( .A0(n28), .A1(Y0[6]), .B0(Yt[6]), .B1(n23), .Y(vect0y_min[6])
         );
  NOR2XL U87 ( .A(n26), .B(n38), .Y(vect0y_sub[5]) );
  AO22XL U88 ( .A0(n28), .A1(Y0[5]), .B0(Yt[5]), .B1(n23), .Y(vect0y_min[5])
         );
  NOR2XL U89 ( .A(n26), .B(n40), .Y(vect0y_sub[4]) );
  AO22XL U90 ( .A0(n28), .A1(Y0[4]), .B0(Yt[4]), .B1(n23), .Y(vect0y_min[4])
         );
  NOR2XL U91 ( .A(n25), .B(n65), .Y(vect0x_sub[2]) );
  AO22XL U92 ( .A0(n29), .A1(X0[2]), .B0(Xt[2]), .B1(n23), .Y(vect0x_min[2])
         );
  NOR2XL U93 ( .A(n25), .B(n63), .Y(vect0x_sub[3]) );
  AO22XL U94 ( .A0(n29), .A1(X0[3]), .B0(Xt[3]), .B1(n23), .Y(vect0x_min[3])
         );
  NOR2XL U95 ( .A(n25), .B(n61), .Y(vect0x_sub[4]) );
  AO22XL U96 ( .A0(n29), .A1(X0[4]), .B0(Xt[4]), .B1(n23), .Y(vect0x_min[4])
         );
  NOR2XL U97 ( .A(n25), .B(n59), .Y(vect0x_sub[5]) );
  AO22XL U98 ( .A0(n29), .A1(X0[5]), .B0(Xt[5]), .B1(n23), .Y(vect0x_min[5])
         );
  NOR2XL U99 ( .A(n25), .B(n57), .Y(vect0x_sub[6]) );
  AO22XL U100 ( .A0(n28), .A1(X0[6]), .B0(Xt[6]), .B1(n23), .Y(vect0x_min[6])
         );
  NOR2XL U101 ( .A(n26), .B(n30), .Y(vect0y_sub[9]) );
  NOR2XL U102 ( .A(n25), .B(n51), .Y(vect0x_sub[9]) );
  AO22XL U103 ( .A0(n28), .A1(X0[9]), .B0(Xt[9]), .B1(n23), .Y(vect0x_min[9])
         );
  NAND2XL U104 ( .A(\cp[21] ), .B(compare), .Y(n77) );
  AO22XL U105 ( .A0(n28), .A1(Y0[1]), .B0(Yt[1]), .B1(n23), .Y(vect0y_min[1])
         );
  AO22XL U106 ( .A0(n28), .A1(X0[1]), .B0(Xt[1]), .B1(n23), .Y(vect0x_min[1])
         );
  CLKBUFX3 U107 ( .A(n21), .Y(n17) );
  CLKBUFX3 U108 ( .A(n21), .Y(n20) );
  CLKBUFX3 U109 ( .A(n21), .Y(n16) );
  CLKBUFX3 U110 ( .A(n24), .Y(n25) );
  CLKBUFX3 U111 ( .A(n11), .Y(n24) );
  CLKBUFX3 U112 ( .A(bubbleSort), .Y(n29) );
  CLKBUFX3 U113 ( .A(bubbleSort), .Y(n28) );
  CLKBUFX3 U114 ( .A(n75), .Y(n23) );
  CLKBUFX3 U115 ( .A(n75), .Y(n22) );
  OAI22X2 U116 ( .A0(n36), .A1(n15), .B0(n20), .B1(n37), .Y(swapY1[6]) );
  OAI22X2 U117 ( .A0(n34), .A1(n15), .B0(n19), .B1(n35), .Y(swapY1[7]) );
  OAI22X2 U118 ( .A0(n32), .A1(n15), .B0(n18), .B1(n33), .Y(swapY1[8]) );
  OAI22X2 U119 ( .A0(n30), .A1(n15), .B0(n19), .B1(n31), .Y(swapY1[9]) );
  OAI22XL U120 ( .A0(n49), .A1(n13), .B0(n19), .B1(n48), .Y(swapY0[0]) );
  OAI22XL U121 ( .A0(n56), .A1(n12), .B0(n17), .B1(n57), .Y(swapX0[6]) );
  OAI22XL U122 ( .A0(n54), .A1(n12), .B0(n18), .B1(n55), .Y(swapX0[7]) );
  OAI22XL U123 ( .A0(n52), .A1(n12), .B0(n18), .B1(n53), .Y(swapX0[8]) );
  OAI22XL U124 ( .A0(n50), .A1(n12), .B0(n18), .B1(n51), .Y(swapX0[9]) );
  OAI22XL U125 ( .A0(n47), .A1(n13), .B0(n20), .B1(n46), .Y(swapY0[1]) );
  OAI22XL U126 ( .A0(n45), .A1(n13), .B0(n20), .B1(n44), .Y(swapY0[2]) );
  OAI22XL U127 ( .A0(n43), .A1(n13), .B0(n20), .B1(n42), .Y(swapY0[3]) );
  OAI22XL U128 ( .A0(n41), .A1(n14), .B0(n20), .B1(n40), .Y(swapY0[4]) );
  OAI22XL U129 ( .A0(n39), .A1(n14), .B0(n20), .B1(n38), .Y(swapY0[5]) );
  OAI22XL U130 ( .A0(n37), .A1(n14), .B0(n20), .B1(n36), .Y(swapY0[6]) );
  OAI22XL U131 ( .A0(n35), .A1(n14), .B0(n20), .B1(n34), .Y(swapY0[7]) );
  OAI22XL U132 ( .A0(n33), .A1(n14), .B0(n18), .B1(n32), .Y(swapY0[8]) );
  OAI22XL U133 ( .A0(n31), .A1(n14), .B0(n16), .B1(n30), .Y(swapY0[9]) );
  OAI22XL U134 ( .A0(n68), .A1(n12), .B0(n17), .B1(n69), .Y(swapX0[0]) );
  OAI22XL U135 ( .A0(n66), .A1(n12), .B0(n17), .B1(n67), .Y(swapX0[1]) );
  OAI22XL U136 ( .A0(n64), .A1(n12), .B0(n17), .B1(n65), .Y(swapX0[2]) );
  OAI22XL U137 ( .A0(n62), .A1(n12), .B0(n17), .B1(n63), .Y(swapX0[3]) );
  OAI22XL U138 ( .A0(n60), .A1(n12), .B0(n17), .B1(n61), .Y(swapX0[4]) );
  OAI22XL U139 ( .A0(n58), .A1(n12), .B0(n17), .B1(n59), .Y(swapX0[5]) );
  NOR2X1 U140 ( .A(n26), .B(n66), .Y(vect1x_sub[1]) );
  CLKINVX1 U141 ( .A(Xaddr0[0]), .Y(n69) );
  CLKINVX1 U142 ( .A(Xaddr0[2]), .Y(n65) );
  CLKINVX1 U143 ( .A(Xaddr0[3]), .Y(n63) );
  CLKINVX1 U144 ( .A(Yaddr0[0]), .Y(n48) );
  CLKINVX1 U145 ( .A(Yaddr0[2]), .Y(n44) );
  NOR2X1 U146 ( .A(n25), .B(n46), .Y(vect0y_sub[1]) );
  NOR2X1 U147 ( .A(n25), .B(n67), .Y(vect0x_sub[1]) );
  CLKINVX1 U148 ( .A(Xaddr0[4]), .Y(n61) );
  CLKINVX1 U149 ( .A(Xaddr0[5]), .Y(n59) );
  CLKINVX1 U150 ( .A(Xaddr0[6]), .Y(n57) );
  CLKINVX1 U151 ( .A(Xaddr0[8]), .Y(n53) );
  CLKINVX1 U152 ( .A(Xaddr0[9]), .Y(n51) );
  CLKINVX1 U153 ( .A(Yaddr0[4]), .Y(n40) );
  CLKINVX1 U154 ( .A(Yaddr0[7]), .Y(n34) );
  CLKINVX1 U155 ( .A(Yaddr0[9]), .Y(n30) );
  NOR2X1 U156 ( .A(n27), .B(n43), .Y(vect1y_sub[3]) );
  AO22X1 U157 ( .A0(n22), .A1(Yaddr0[3]), .B0(n29), .B1(Y0[3]), .Y(
        vect1y_min[3]) );
  NOR2X1 U158 ( .A(n27), .B(n39), .Y(vect1y_sub[5]) );
  AO22X1 U159 ( .A0(n22), .A1(Yaddr0[5]), .B0(n29), .B1(Y0[5]), .Y(
        vect1y_min[5]) );
  NOR2X1 U160 ( .A(n27), .B(n37), .Y(vect1y_sub[6]) );
  AO22X1 U161 ( .A0(n22), .A1(Yaddr0[6]), .B0(n29), .B1(Y0[6]), .Y(
        vect1y_min[6]) );
  NOR2X1 U162 ( .A(n27), .B(n33), .Y(vect1y_sub[8]) );
  AO22X1 U163 ( .A0(n22), .A1(Yaddr0[8]), .B0(n28), .B1(Y0[8]), .Y(
        vect1y_min[8]) );
  NOR2X1 U164 ( .A(n27), .B(n54), .Y(vect1x_sub[7]) );
  AO22X1 U165 ( .A0(n22), .A1(Xaddr0[7]), .B0(n29), .B1(X0[7]), .Y(
        vect1x_min[7]) );
  CLKINVX1 U166 ( .A(Xaddr1[6]), .Y(n56) );
  CLKINVX1 U167 ( .A(Xaddr1[2]), .Y(n64) );
  CLKINVX1 U168 ( .A(Xaddr1[3]), .Y(n62) );
  CLKINVX1 U169 ( .A(Xaddr1[4]), .Y(n60) );
  CLKINVX1 U170 ( .A(Xaddr1[5]), .Y(n58) );
  CLKINVX1 U171 ( .A(Yaddr1[1]), .Y(n47) );
  CLKINVX1 U172 ( .A(Yaddr1[2]), .Y(n45) );
  CLKINVX1 U173 ( .A(Yaddr1[3]), .Y(n43) );
  CLKINVX1 U174 ( .A(Yaddr1[4]), .Y(n41) );
  CLKINVX1 U175 ( .A(Yaddr1[5]), .Y(n39) );
  AO21XL U176 ( .A0(is_inside), .A1(n77), .B0(newData), .Y(N33) );
  AO22X1 U177 ( .A0(n23), .A1(Xaddr0[1]), .B0(n29), .B1(X0[1]), .Y(
        vect1x_min[1]) );
  AO22X1 U178 ( .A0(n22), .A1(Yaddr0[0]), .B0(n29), .B1(Y0[0]), .Y(
        vect1y_min[0]) );
  AO22X1 U179 ( .A0(n22), .A1(Xaddr0[0]), .B0(n29), .B1(X0[0]), .Y(
        vect1x_min[0]) );
  NOR2X1 U180 ( .A(n26), .B(n32), .Y(vect0y_sub[8]) );
  AO22X1 U181 ( .A0(n28), .A1(Y0[8]), .B0(Yt[8]), .B1(n23), .Y(vect0y_min[8])
         );
  NOR2X1 U182 ( .A(n25), .B(n55), .Y(vect0x_sub[7]) );
  AO22X1 U183 ( .A0(n28), .A1(X0[7]), .B0(Xt[7]), .B1(n23), .Y(vect0x_min[7])
         );
  AO22X1 U184 ( .A0(Y0[9]), .A1(n28), .B0(Yt[9]), .B1(n23), .Y(vect0y_min[9])
         );
  CLKINVX1 U185 ( .A(Xaddr1[7]), .Y(n54) );
  CLKINVX1 U186 ( .A(Xaddr1[8]), .Y(n52) );
  CLKINVX1 U187 ( .A(Xaddr1[9]), .Y(n50) );
  CLKINVX1 U188 ( .A(Yaddr1[8]), .Y(n33) );
  CLKINVX1 U189 ( .A(Yaddr1[9]), .Y(n31) );
  CLKINVX1 U190 ( .A(Yaddr1[6]), .Y(n37) );
  CLKINVX1 U191 ( .A(Yaddr1[7]), .Y(n35) );
  AO22X1 U192 ( .A0(n28), .A1(Y0[0]), .B0(Yt[0]), .B1(n23), .Y(vect0y_min[0])
         );
  AO22X1 U193 ( .A0(n28), .A1(X0[0]), .B0(Xt[0]), .B1(n23), .Y(vect0x_min[0])
         );
  CLKINVX1 U194 ( .A(reset), .Y(n70) );
endmodule


module fsm ( clk, reset, is_inside, newData, bubbleSort, compare, valid, addr0,
        addr1 );
  output [2:0] addr0;
  output [2:0] addr1;
  input clk, reset, is_inside;
  output newData, bubbleSort, compare, valid;
  wire   N31, N32, N33, N43, N44, N53, N77, N86, N89, N91, n9, n11, n12, n13,
         n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, N93, N92, n2, n5, n6, n7, n8, n10, n15, n33, n34,
         n35, n36, n37;
  wire   [1:0] global_cs;
  wire   [1:0] global_ns;
  wire   [2:0] count;
  wire   [2:0] round;
  wire   [2:0] cycle;
  assign newData = N77;
  assign compare = N86;
  assign bubbleSort = N89;

  OAI21X4 U18 ( .A0(n18), .A1(n5), .B0(n26), .Y(addr0[2]) );
  DFFRX1 \round_reg[1]  ( .D(n31), .CK(clk), .RN(n37), .Q(round[1]), .QN(n16)
         );
  DFFRX1 \round_reg[2]  ( .D(n30), .CK(clk), .RN(n37), .Q(round[2]), .QN(n14)
         );
  DFFRX1 \round_reg[0]  ( .D(n32), .CK(clk), .RN(n37), .Q(round[0]), .QN(n17)
         );
  DFFRX1 \count_reg[0]  ( .D(N31), .CK(clk), .RN(n37), .Q(count[0]), .QN(n13)
         );
  DFFNSRX1 valid_reg ( .D(N53), .CKN(clk), .SN(1'b1), .RN(n37), .QN(n2) );
  DFFSX1 \cycle_reg[0]  ( .D(n10), .CK(clk), .SN(n37), .Q(cycle[0]) );
  DFFRX1 \count_reg[1]  ( .D(N32), .CK(clk), .RN(n37), .Q(count[1]), .QN(n12)
         );
  DFFRX1 \count_reg[2]  ( .D(N33), .CK(clk), .RN(n37), .Q(count[2]), .QN(n11)
         );
  DFFRX1 \global_cs_reg[1]  ( .D(global_ns[1]), .CK(clk), .RN(n37), .Q(
        global_cs[1]), .QN(n9) );
  DFFRX1 \global_cs_reg[0]  ( .D(global_ns[0]), .CK(clk), .RN(n37), .Q(
        global_cs[0]), .QN(n6) );
  DFFRX1 \cycle_reg[2]  ( .D(N44), .CK(clk), .RN(n37), .Q(cycle[2]), .QN(n18)
         );
  DFFRX1 \cycle_reg[1]  ( .D(N43), .CK(clk), .RN(n37), .Q(cycle[1]) );
  INVX3 U4 ( .A(addr0[1]), .Y(n35) );
  OA21X2 U5 ( .A0(n34), .A1(addr1[0]), .B0(n25), .Y(addr1[1]) );
  OAI2BB1X2 U6 ( .A0N(N89), .A1N(cycle[1]), .B0(n27), .Y(addr0[1]) );
  CLKINVX1 U7 ( .A(N86), .Y(n36) );
  NOR2X2 U8 ( .A(n9), .B(global_cs[0]), .Y(N86) );
  INVX3 U9 ( .A(addr0[0]), .Y(addr1[0]) );
  INVX3 U10 ( .A(n5), .Y(N89) );
  NAND2BX2 U11 ( .AN(n6), .B(n9), .Y(n5) );
  INVX12 U12 ( .A(n2), .Y(valid) );
  INVX1 U13 ( .A(addr0[2]), .Y(n34) );
  AO22X4 U14 ( .A0(N89), .A1(cycle[0]), .B0(N86), .B1(count[0]), .Y(addr0[0])
         );
  AO21X1 U15 ( .A0(n12), .A1(N86), .B0(N89), .Y(n27) );
  XNOR2X1 U16 ( .A(n35), .B(addr0[0]), .Y(n25) );
  OAI21X2 U17 ( .A0(count[2]), .A1(n36), .B0(n5), .Y(n26) );
  NOR2X1 U19 ( .A(n5), .B(n24), .Y(N91) );
  NOR2XL U20 ( .A(n6), .B(n9), .Y(N53) );
  NOR2XL U21 ( .A(global_cs[0]), .B(global_cs[1]), .Y(N77) );
  AOI33XL U22 ( .A0(N77), .A1(n13), .A2(count[1]), .B0(N86), .B1(n12), .B2(
        count[0]), .Y(n23) );
  OAI32XL U23 ( .A0(n5), .A1(round[0]), .A2(N91), .B0(n17), .B1(n15), .Y(n32)
         );
  NAND3XL U24 ( .A(N89), .B(n15), .C(round[0]), .Y(n19) );
  AND2XL U25 ( .A(cycle[1]), .B(N91), .Y(N93) );
  AND2XL U26 ( .A(cycle[0]), .B(N91), .Y(N92) );
  AOI32XL U27 ( .A0(count[1]), .A1(n11), .A2(count[0]), .B0(count[2]), .B1(n12), .Y(n28) );
  NOR2XL U28 ( .A(count[0]), .B(global_cs[0]), .Y(N31) );
  NOR2XL U29 ( .A(global_cs[0]), .B(n29), .Y(N32) );
  XNOR2XL U30 ( .A(count[1]), .B(count[0]), .Y(n29) );
  CLKINVX1 U31 ( .A(N91), .Y(n15) );
  XNOR2X1 U32 ( .A(N93), .B(n10), .Y(N43) );
  OAI21XL U33 ( .A0(n5), .A1(n22), .B0(n36), .Y(global_ns[1]) );
  CLKINVX1 U34 ( .A(N92), .Y(n10) );
  OAI222XL U35 ( .A0(n33), .A1(n5), .B0(n23), .B1(n11), .C0(is_inside), .C1(
        n36), .Y(global_ns[0]) );
  CLKINVX1 U36 ( .A(n22), .Y(n33) );
  OAI32X1 U37 ( .A0(n16), .A1(round[2]), .A2(n19), .B0(n20), .B1(n14), .Y(n30)
         );
  OA21XL U38 ( .A0(round[1]), .A1(n5), .B0(n21), .Y(n20) );
  OA21XL U39 ( .A0(round[0]), .A1(n5), .B0(n15), .Y(n21) );
  NOR3X1 U40 ( .A(cycle[0]), .B(cycle[1]), .C(n18), .Y(n24) );
  NAND4X1 U41 ( .A(n24), .B(round[2]), .C(n17), .D(n16), .Y(n22) );
  OAI22XL U42 ( .A0(n21), .A1(n16), .B0(round[1]), .B1(n19), .Y(n31) );
  XOR2X1 U43 ( .A(n7), .B(n8), .Y(N44) );
  NAND2X1 U44 ( .A(N91), .B(cycle[2]), .Y(n7) );
  NAND2X1 U45 ( .A(N93), .B(N92), .Y(n8) );
  OAI2BB2XL U46 ( .B0(global_cs[0]), .B1(n28), .A0N(count[2]), .A1N(N31), .Y(
        N33) );
  INVX3 U47 ( .A(reset), .Y(n37) );
  OAI32X4 U48 ( .A0(addr1[0]), .A1(addr0[2]), .A2(n35), .B0(addr0[0]), .B1(n34), .Y(addr1[2]) );
endmodule


module mux8to1_3 ( in0, in1, in2, in3, in4, in5, sel, out );
  input [9:0] in0;
  input [9:0] in1;
  input [9:0] in2;
  input [9:0] in3;
  input [9:0] in4;
  input [9:0] in5;
  input [2:0] sel;
  output [9:0] out;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n29,
         n30, n31, n32;

  NAND2X1 U2 ( .A(n27), .B(n28), .Y(out[0]) );
  AOI222XL U3 ( .A0(in3[0]), .A1(n30), .B0(in5[0]), .B1(n6), .C0(in4[0]), .C1(
        n7), .Y(n28) );
  AOI222XL U4 ( .A0(in0[0]), .A1(n1), .B0(in2[0]), .B1(n2), .C0(in1[0]), .C1(
        n29), .Y(n27) );
  INVX1 U5 ( .A(sel[1]), .Y(n31) );
  CLKINVX1 U6 ( .A(sel[0]), .Y(n32) );
  AND3X2 U7 ( .A(sel[2]), .B(sel[0]), .C(n31), .Y(n6) );
  AND3X2 U8 ( .A(sel[2]), .B(n32), .C(n31), .Y(n7) );
  CLKBUFX3 U9 ( .A(n8), .Y(n1) );
  NOR3X1 U10 ( .A(sel[1]), .B(sel[2]), .C(sel[0]), .Y(n8) );
  CLKBUFX3 U11 ( .A(n5), .Y(n30) );
  NOR3X1 U12 ( .A(n32), .B(sel[2]), .C(n31), .Y(n5) );
  CLKBUFX3 U13 ( .A(n9), .Y(n2) );
  NOR3XL U14 ( .A(sel[0]), .B(sel[2]), .C(n31), .Y(n9) );
  CLKBUFX3 U15 ( .A(n10), .Y(n29) );
  NOR3XL U16 ( .A(sel[1]), .B(sel[2]), .C(n32), .Y(n10) );
  NAND2X1 U17 ( .A(n25), .B(n26), .Y(out[1]) );
  AOI222XL U18 ( .A0(in3[1]), .A1(n30), .B0(in5[1]), .B1(n6), .C0(in4[1]),
        .C1(n7), .Y(n26) );
  AOI222XL U19 ( .A0(in0[1]), .A1(n1), .B0(in2[1]), .B1(n2), .C0(in1[1]), .C1(
        n29), .Y(n25) );
  NAND2X1 U20 ( .A(n23), .B(n24), .Y(out[2]) );
  AOI222XL U21 ( .A0(in3[2]), .A1(n30), .B0(in5[2]), .B1(n6), .C0(in4[2]),
        .C1(n7), .Y(n24) );
  AOI222XL U22 ( .A0(in0[2]), .A1(n1), .B0(in2[2]), .B1(n2), .C0(in1[2]), .C1(
        n29), .Y(n23) );
  NAND2X1 U23 ( .A(n21), .B(n22), .Y(out[3]) );
  AOI222XL U24 ( .A0(in3[3]), .A1(n30), .B0(in5[3]), .B1(n6), .C0(in4[3]),
        .C1(n7), .Y(n22) );
  AOI222XL U25 ( .A0(in0[3]), .A1(n1), .B0(in2[3]), .B1(n2), .C0(in1[3]), .C1(
        n29), .Y(n21) );
  NAND2X1 U26 ( .A(n19), .B(n20), .Y(out[4]) );
  AOI222XL U27 ( .A0(in3[4]), .A1(n30), .B0(in5[4]), .B1(n6), .C0(in4[4]),
        .C1(n7), .Y(n20) );
  AOI222XL U28 ( .A0(in0[4]), .A1(n1), .B0(in2[4]), .B1(n2), .C0(in1[4]), .C1(
        n29), .Y(n19) );
  NAND2X1 U29 ( .A(n17), .B(n18), .Y(out[5]) );
  AOI222XL U30 ( .A0(in3[5]), .A1(n30), .B0(in5[5]), .B1(n6), .C0(in4[5]),
        .C1(n7), .Y(n18) );
  AOI222XL U31 ( .A0(in0[5]), .A1(n1), .B0(in2[5]), .B1(n2), .C0(in1[5]), .C1(
        n29), .Y(n17) );
  NAND2X1 U32 ( .A(n15), .B(n16), .Y(out[6]) );
  AOI222XL U33 ( .A0(in3[6]), .A1(n30), .B0(in5[6]), .B1(n6), .C0(in4[6]),
        .C1(n7), .Y(n16) );
  AOI222XL U34 ( .A0(in0[6]), .A1(n1), .B0(in2[6]), .B1(n2), .C0(in1[6]), .C1(
        n29), .Y(n15) );
  NAND2X1 U35 ( .A(n13), .B(n14), .Y(out[7]) );
  AOI222XL U36 ( .A0(in3[7]), .A1(n30), .B0(in5[7]), .B1(n6), .C0(in4[7]),
        .C1(n7), .Y(n14) );
  AOI222XL U37 ( .A0(in0[7]), .A1(n1), .B0(in2[7]), .B1(n2), .C0(in1[7]), .C1(
        n29), .Y(n13) );
  NAND2X1 U38 ( .A(n11), .B(n12), .Y(out[8]) );
  AOI222XL U39 ( .A0(in3[8]), .A1(n30), .B0(in5[8]), .B1(n6), .C0(in4[8]),
        .C1(n7), .Y(n12) );
  AOI222XL U40 ( .A0(in0[8]), .A1(n1), .B0(in2[8]), .B1(n2), .C0(in1[8]), .C1(
        n29), .Y(n11) );
  NAND2X1 U41 ( .A(n3), .B(n4), .Y(out[9]) );
  AOI222XL U42 ( .A0(in3[9]), .A1(n30), .B0(in5[9]), .B1(n6), .C0(in4[9]),
        .C1(n7), .Y(n4) );
  AOI222XL U43 ( .A0(in0[9]), .A1(n1), .B0(in2[9]), .B1(n2), .C0(in1[9]), .C1(
        n29), .Y(n3) );
endmodule


module mux8to1_2 ( in0, in1, in2, in3, in4, in5, sel, out );
  input [9:0] in0;
  input [9:0] in1;
  input [9:0] in2;
  input [9:0] in3;
  input [9:0] in4;
  input [9:0] in5;
  input [2:0] sel;
  output [9:0] out;
  wire   n1, n2, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;

  NAND2X1 U2 ( .A(n34), .B(n33), .Y(out[0]) );
  AOI222XL U3 ( .A0(in3[0]), .A1(n30), .B0(in5[0]), .B1(n55), .C0(in4[0]),
        .C1(n54), .Y(n33) );
  AOI222XL U4 ( .A0(in0[0]), .A1(n1), .B0(in2[0]), .B1(n2), .C0(in1[0]), .C1(
        n29), .Y(n34) );
  INVX1 U5 ( .A(sel[1]), .Y(n31) );
  CLKINVX1 U6 ( .A(sel[0]), .Y(n32) );
  AND3X2 U7 ( .A(sel[2]), .B(sel[0]), .C(n31), .Y(n55) );
  AND3X2 U8 ( .A(sel[2]), .B(n32), .C(n31), .Y(n54) );
  CLKBUFX3 U9 ( .A(n56), .Y(n30) );
  NOR3X1 U10 ( .A(n32), .B(sel[2]), .C(n31), .Y(n56) );
  CLKBUFX3 U11 ( .A(n53), .Y(n1) );
  NOR3X1 U12 ( .A(sel[1]), .B(sel[2]), .C(sel[0]), .Y(n53) );
  CLKBUFX3 U13 ( .A(n52), .Y(n2) );
  NOR3XL U14 ( .A(sel[0]), .B(sel[2]), .C(n31), .Y(n52) );
  CLKBUFX3 U15 ( .A(n51), .Y(n29) );
  NOR3XL U16 ( .A(sel[1]), .B(sel[2]), .C(n32), .Y(n51) );
  NAND2X1 U17 ( .A(n36), .B(n35), .Y(out[1]) );
  AOI222XL U18 ( .A0(in3[1]), .A1(n30), .B0(in5[1]), .B1(n55), .C0(in4[1]),
        .C1(n54), .Y(n35) );
  AOI222XL U19 ( .A0(in0[1]), .A1(n1), .B0(in2[1]), .B1(n2), .C0(in1[1]), .C1(
        n29), .Y(n36) );
  NAND2X1 U20 ( .A(n38), .B(n37), .Y(out[2]) );
  AOI222XL U21 ( .A0(in3[2]), .A1(n30), .B0(in5[2]), .B1(n55), .C0(in4[2]),
        .C1(n54), .Y(n37) );
  AOI222XL U22 ( .A0(in0[2]), .A1(n1), .B0(in2[2]), .B1(n2), .C0(in1[2]), .C1(
        n29), .Y(n38) );
  NAND2X1 U23 ( .A(n40), .B(n39), .Y(out[3]) );
  AOI222XL U24 ( .A0(in3[3]), .A1(n30), .B0(in5[3]), .B1(n55), .C0(in4[3]),
        .C1(n54), .Y(n39) );
  AOI222XL U25 ( .A0(in0[3]), .A1(n1), .B0(in2[3]), .B1(n2), .C0(in1[3]), .C1(
        n29), .Y(n40) );
  NAND2X1 U26 ( .A(n48), .B(n47), .Y(out[7]) );
  AOI222XL U27 ( .A0(in0[7]), .A1(n1), .B0(in2[7]), .B1(n2), .C0(in1[7]), .C1(
        n29), .Y(n48) );
  AOI222XL U28 ( .A0(in3[7]), .A1(n30), .B0(in5[7]), .B1(n55), .C0(in4[7]),
        .C1(n54), .Y(n47) );
  NAND2X1 U29 ( .A(n50), .B(n49), .Y(out[8]) );
  AOI222XL U30 ( .A0(in0[8]), .A1(n1), .B0(in2[8]), .B1(n2), .C0(in1[8]), .C1(
        n29), .Y(n50) );
  AOI222XL U31 ( .A0(in3[8]), .A1(n30), .B0(in5[8]), .B1(n55), .C0(in4[8]),
        .C1(n54), .Y(n49) );
  NAND2X1 U32 ( .A(n58), .B(n57), .Y(out[9]) );
  AOI222XL U33 ( .A0(in0[9]), .A1(n1), .B0(in2[9]), .B1(n2), .C0(in1[9]), .C1(
        n29), .Y(n58) );
  AOI222XL U34 ( .A0(in3[9]), .A1(n30), .B0(in5[9]), .B1(n55), .C0(in4[9]),
        .C1(n54), .Y(n57) );
  NAND2X1 U35 ( .A(n42), .B(n41), .Y(out[4]) );
  AOI222XL U36 ( .A0(in3[4]), .A1(n30), .B0(in5[4]), .B1(n55), .C0(in4[4]),
        .C1(n54), .Y(n41) );
  AOI222XL U37 ( .A0(in0[4]), .A1(n1), .B0(in2[4]), .B1(n2), .C0(in1[4]), .C1(
        n29), .Y(n42) );
  NAND2X1 U38 ( .A(n44), .B(n43), .Y(out[5]) );
  AOI222XL U39 ( .A0(in3[5]), .A1(n30), .B0(in5[5]), .B1(n55), .C0(in4[5]),
        .C1(n54), .Y(n43) );
  AOI222XL U40 ( .A0(in0[5]), .A1(n1), .B0(in2[5]), .B1(n2), .C0(in1[5]), .C1(
        n29), .Y(n44) );
  NAND2X1 U41 ( .A(n46), .B(n45), .Y(out[6]) );
  AOI222XL U42 ( .A0(in3[6]), .A1(n30), .B0(in5[6]), .B1(n55), .C0(in4[6]),
        .C1(n54), .Y(n45) );
  AOI222XL U43 ( .A0(in0[6]), .A1(n1), .B0(in2[6]), .B1(n2), .C0(in1[6]), .C1(
        n29), .Y(n46) );
endmodule


module mux8to1_1 ( in0, in1, in2, in3, in4, in5, sel, out );
  input [9:0] in0;
  input [9:0] in1;
  input [9:0] in2;
  input [9:0] in3;
  input [9:0] in4;
  input [9:0] in5;
  input [2:0] sel;
  output [9:0] out;
  wire   n1, n2, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;

  AOI222XL U2 ( .A0(in0[1]), .A1(n1), .B0(in2[1]), .B1(n2), .C0(in1[1]), .C1(
        n29), .Y(n36) );
  NAND2X1 U3 ( .A(n34), .B(n33), .Y(out[0]) );
  AOI222XL U4 ( .A0(in0[0]), .A1(n1), .B0(in2[0]), .B1(n2), .C0(in1[0]), .C1(
        n29), .Y(n34) );
  AOI222XL U5 ( .A0(in3[0]), .A1(n30), .B0(in5[0]), .B1(n55), .C0(in4[0]),
        .C1(n54), .Y(n33) );
  AOI222X4 U6 ( .A0(in3[1]), .A1(n30), .B0(in5[1]), .B1(n55), .C0(in4[1]),
        .C1(n54), .Y(n35) );
  INVXL U7 ( .A(sel[0]), .Y(n32) );
  NAND2X2 U8 ( .A(n36), .B(n35), .Y(out[1]) );
  CLKBUFX3 U9 ( .A(n51), .Y(n29) );
  NOR3X1 U10 ( .A(sel[1]), .B(sel[2]), .C(n32), .Y(n51) );
  CLKINVX1 U11 ( .A(sel[1]), .Y(n31) );
  AND3X2 U12 ( .A(sel[2]), .B(n32), .C(n31), .Y(n54) );
  CLKBUFX3 U13 ( .A(n56), .Y(n30) );
  NOR3X1 U14 ( .A(n32), .B(sel[2]), .C(n31), .Y(n56) );
  CLKBUFX3 U15 ( .A(n52), .Y(n2) );
  NOR3X1 U16 ( .A(sel[0]), .B(sel[2]), .C(n31), .Y(n52) );
  AND3X2 U17 ( .A(sel[2]), .B(sel[0]), .C(n31), .Y(n55) );
  CLKBUFX3 U18 ( .A(n53), .Y(n1) );
  NOR3XL U19 ( .A(sel[1]), .B(sel[2]), .C(sel[0]), .Y(n53) );
  NAND2X1 U20 ( .A(n46), .B(n45), .Y(out[6]) );
  AOI222XL U21 ( .A0(in0[6]), .A1(n1), .B0(in2[6]), .B1(n2), .C0(in1[6]), .C1(
        n29), .Y(n46) );
  AOI222XL U22 ( .A0(in3[6]), .A1(n30), .B0(in5[6]), .B1(n55), .C0(in4[6]),
        .C1(n54), .Y(n45) );
  NAND2X1 U23 ( .A(n38), .B(n37), .Y(out[2]) );
  AOI222XL U24 ( .A0(in3[2]), .A1(n30), .B0(in5[2]), .B1(n55), .C0(in4[2]),
        .C1(n54), .Y(n37) );
  AOI222XL U25 ( .A0(in0[2]), .A1(n1), .B0(in2[2]), .B1(n2), .C0(in1[2]), .C1(
        n29), .Y(n38) );
  NAND2X1 U26 ( .A(n40), .B(n39), .Y(out[3]) );
  AOI222XL U27 ( .A0(in3[3]), .A1(n30), .B0(in5[3]), .B1(n55), .C0(in4[3]),
        .C1(n54), .Y(n39) );
  AOI222XL U28 ( .A0(in0[3]), .A1(n1), .B0(in2[3]), .B1(n2), .C0(in1[3]), .C1(
        n29), .Y(n40) );
  NAND2X1 U29 ( .A(n42), .B(n41), .Y(out[4]) );
  AOI222XL U30 ( .A0(in3[4]), .A1(n30), .B0(in5[4]), .B1(n55), .C0(in4[4]),
        .C1(n54), .Y(n41) );
  AOI222XL U31 ( .A0(in0[4]), .A1(n1), .B0(in2[4]), .B1(n2), .C0(in1[4]), .C1(
        n29), .Y(n42) );
  NAND2X1 U32 ( .A(n44), .B(n43), .Y(out[5]) );
  AOI222XL U33 ( .A0(in3[5]), .A1(n30), .B0(in5[5]), .B1(n55), .C0(in4[5]),
        .C1(n54), .Y(n43) );
  AOI222XL U34 ( .A0(in0[5]), .A1(n1), .B0(in2[5]), .B1(n2), .C0(in1[5]), .C1(
        n29), .Y(n44) );
  NAND2X1 U35 ( .A(n48), .B(n47), .Y(out[7]) );
  AOI222XL U36 ( .A0(in0[7]), .A1(n1), .B0(in2[7]), .B1(n2), .C0(in1[7]), .C1(
        n29), .Y(n48) );
  AOI222XL U37 ( .A0(in3[7]), .A1(n30), .B0(in5[7]), .B1(n55), .C0(in4[7]),
        .C1(n54), .Y(n47) );
  NAND2X1 U38 ( .A(n50), .B(n49), .Y(out[8]) );
  AOI222XL U39 ( .A0(in0[8]), .A1(n1), .B0(in2[8]), .B1(n2), .C0(in1[8]), .C1(
        n29), .Y(n50) );
  AOI222XL U40 ( .A0(in3[8]), .A1(n30), .B0(in5[8]), .B1(n55), .C0(in4[8]),
        .C1(n54), .Y(n49) );
  NAND2X1 U41 ( .A(n58), .B(n57), .Y(out[9]) );
  AOI222XL U42 ( .A0(in0[9]), .A1(n1), .B0(in2[9]), .B1(n2), .C0(in1[9]), .C1(
        n29), .Y(n58) );
  AOI222XL U43 ( .A0(in3[9]), .A1(n30), .B0(in5[9]), .B1(n55), .C0(in4[9]),
        .C1(n54), .Y(n57) );
endmodule


module mux8to1_0 ( in0, in1, in2, in3, in4, in5, sel, out );
  input [9:0] in0;
  input [9:0] in1;
  input [9:0] in2;
  input [9:0] in3;
  input [9:0] in4;
  input [9:0] in5;
  input [2:0] sel;
  output [9:0] out;
  wire   n1, n2, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;

  NAND2X1 U2 ( .A(n34), .B(n33), .Y(out[0]) );
  CLKINVX1 U3 ( .A(sel[1]), .Y(n31) );
  AOI222XL U4 ( .A0(in3[0]), .A1(n30), .B0(in5[0]), .B1(n55), .C0(in4[0]),
        .C1(n54), .Y(n33) );
  AOI222XL U5 ( .A0(in0[0]), .A1(n1), .B0(in2[0]), .B1(n2), .C0(in1[0]), .C1(
        n29), .Y(n34) );
  INVXL U6 ( .A(sel[0]), .Y(n32) );
  AND3X2 U7 ( .A(sel[2]), .B(n32), .C(n31), .Y(n54) );
  CLKBUFX3 U8 ( .A(n56), .Y(n30) );
  NOR3X1 U9 ( .A(n32), .B(sel[2]), .C(n31), .Y(n56) );
  CLKBUFX3 U10 ( .A(n51), .Y(n29) );
  NOR3X1 U11 ( .A(sel[1]), .B(sel[2]), .C(n32), .Y(n51) );
  AND3X2 U12 ( .A(sel[2]), .B(sel[0]), .C(n31), .Y(n55) );
  CLKBUFX3 U13 ( .A(n53), .Y(n1) );
  NOR3X1 U14 ( .A(sel[1]), .B(sel[2]), .C(sel[0]), .Y(n53) );
  CLKBUFX3 U15 ( .A(n52), .Y(n2) );
  NOR3X1 U16 ( .A(sel[0]), .B(sel[2]), .C(n31), .Y(n52) );
  NAND2X1 U17 ( .A(n36), .B(n35), .Y(out[1]) );
  AOI222XL U18 ( .A0(in3[1]), .A1(n30), .B0(in5[1]), .B1(n55), .C0(in4[1]),
        .C1(n54), .Y(n35) );
  AOI222XL U19 ( .A0(in0[1]), .A1(n1), .B0(in2[1]), .B1(n2), .C0(in1[1]), .C1(
        n29), .Y(n36) );
  NAND2X1 U20 ( .A(n38), .B(n37), .Y(out[2]) );
  AOI222XL U21 ( .A0(in3[2]), .A1(n30), .B0(in5[2]), .B1(n55), .C0(in4[2]),
        .C1(n54), .Y(n37) );
  AOI222XL U22 ( .A0(in0[2]), .A1(n1), .B0(in2[2]), .B1(n2), .C0(in1[2]), .C1(
        n29), .Y(n38) );
  NAND2X1 U23 ( .A(n40), .B(n39), .Y(out[3]) );
  AOI222XL U24 ( .A0(in3[3]), .A1(n30), .B0(in5[3]), .B1(n55), .C0(in4[3]),
        .C1(n54), .Y(n39) );
  AOI222XL U25 ( .A0(in0[3]), .A1(n1), .B0(in2[3]), .B1(n2), .C0(in1[3]), .C1(
        n29), .Y(n40) );
  NAND2X1 U26 ( .A(n42), .B(n41), .Y(out[4]) );
  AOI222XL U27 ( .A0(in3[4]), .A1(n30), .B0(in5[4]), .B1(n55), .C0(in4[4]),
        .C1(n54), .Y(n41) );
  AOI222XL U28 ( .A0(in0[4]), .A1(n1), .B0(in2[4]), .B1(n2), .C0(in1[4]), .C1(
        n29), .Y(n42) );
  NAND2X1 U29 ( .A(n44), .B(n43), .Y(out[5]) );
  AOI222XL U30 ( .A0(in3[5]), .A1(n30), .B0(in5[5]), .B1(n55), .C0(in4[5]),
        .C1(n54), .Y(n43) );
  AOI222XL U31 ( .A0(in0[5]), .A1(n1), .B0(in2[5]), .B1(n2), .C0(in1[5]), .C1(
        n29), .Y(n44) );
  NAND2X1 U32 ( .A(n50), .B(n49), .Y(out[8]) );
  AOI222XL U33 ( .A0(in0[8]), .A1(n1), .B0(in2[8]), .B1(n2), .C0(in1[8]), .C1(
        n29), .Y(n50) );
  AOI222XL U34 ( .A0(in3[8]), .A1(n30), .B0(in5[8]), .B1(n55), .C0(in4[8]),
        .C1(n54), .Y(n49) );
  NAND2X1 U35 ( .A(n58), .B(n57), .Y(out[9]) );
  AOI222XL U36 ( .A0(in0[9]), .A1(n1), .B0(in2[9]), .B1(n2), .C0(in1[9]), .C1(
        n29), .Y(n58) );
  AOI222XL U37 ( .A0(in3[9]), .A1(n30), .B0(in5[9]), .B1(n55), .C0(in4[9]),
        .C1(n54), .Y(n57) );
  NAND2X1 U38 ( .A(n46), .B(n45), .Y(out[6]) );
  AOI222XL U39 ( .A0(in3[6]), .A1(n30), .B0(in5[6]), .B1(n55), .C0(in4[6]),
        .C1(n54), .Y(n45) );
  AOI222XL U40 ( .A0(in0[6]), .A1(n1), .B0(in2[6]), .B1(n2), .C0(in1[6]), .C1(
        n29), .Y(n46) );
  NAND2X1 U41 ( .A(n48), .B(n47), .Y(out[7]) );
  AOI222XL U42 ( .A0(in3[7]), .A1(n30), .B0(in5[7]), .B1(n55), .C0(in4[7]),
        .C1(n54), .Y(n47) );
  AOI222XL U43 ( .A0(in0[7]), .A1(n1), .B0(in2[7]), .B1(n2), .C0(in1[7]), .C1(
        n29), .Y(n48) );
endmodule


module xyreg_2w2r ( clk, reset, X, Y, newData, bubbleSort, addr0, addr1, X0,
        Y0, Xt, Yt, Xaddr0, Xaddr1, Yaddr0, Yaddr1, swapX0, swapY0, swapX1,
        swapY1 );
  input [9:0] X;
  input [9:0] Y;
  input [2:0] addr0;
  input [2:0] addr1;
  output [9:0] X0;
  output [9:0] Y0;
  output [9:0] Xt;
  output [9:0] Yt;
  output [9:0] Xaddr0;
  output [9:0] Xaddr1;
  output [9:0] Yaddr0;
  output [9:0] Yaddr1;
  input [9:0] swapX0;
  input [9:0] swapY0;
  input [9:0] swapX1;
  input [9:0] swapY1;
  input clk, reset, newData, bubbleSort;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, n2, n4, n5, n6, n8,
         n10, n12, n14, n16, n17, n19, n20, n21, n22, n24, n26, n28, n30, n32,
         n34, n36, n38, n40, n42, n44, n46, n48, n50, n52, n54, n55, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n68, n69, n70, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n98, n100, n102, n104, n106, n108,
         n110, n112, n114, n116, n118, n119, n120, n122, n123, n124, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n152, n153,
         n154, n155, n156, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n1,
         n3, n7, n9, n11, n13, n15, n18, n23, n25, n27, n29, n31, n33, n35,
         n37, n39, n41, n43, n45, n47, n49, n51, n53, n56, n67, n71, n96, n97,
         n99, n101, n103, n105, n107, n109, n111, n113, n115, n117, n121, n125,
         n137, n148, n149, n150, n151, n157, n171, n274, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426;
  wire   [9:0] X5;
  wire   [9:0] Y5;
  wire   [9:0] X4;
  wire   [9:0] Y4;
  wire   [9:0] X3;
  wire   [9:0] Y3;
  wire   [9:0] X2;
  wire   [9:0] Y2;
  wire   [9:0] X1;
  wire   [9:0] Y1;

  mux8to1_3 mux_x0 ( .in0(X0), .in1(X1), .in2(X2), .in3(X3), .in4(X4), .in5(X5), .sel(addr0), .out(Xaddr0) );
  mux8to1_2 mux_x1 ( .in0(Y0), .in1(Y1), .in2(Y2), .in3(Y3), .in4(Y4), .in5(Y5), .sel(addr0), .out(Yaddr0) );
  mux8to1_1 mux_y0 ( .in0(X0), .in1(X1), .in2(X2), .in3(X3), .in4(X4), .in5(X5), .sel(addr1), .out(Xaddr1) );
  mux8to1_0 mux_y1 ( .in0(Y0), .in1(Y1), .in2(Y2), .in3(Y3), .in4(Y4), .in5(Y5), .sel(addr1), .out(Yaddr1) );
  DFFRX1 \Yt_reg[9]  ( .D(n253), .CK(clk), .RN(n105), .Q(Yt[9]), .QN(n193) );
  DFFRX1 \Xt_reg[9]  ( .D(n243), .CK(clk), .RN(n103), .Q(Xt[9]), .QN(n183) );
  DFFRX1 \Yt_reg[8]  ( .D(n252), .CK(clk), .RN(n105), .Q(Yt[8]), .QN(n192) );
  DFFRX1 \Yt_reg[7]  ( .D(n251), .CK(clk), .RN(n105), .Q(Yt[7]), .QN(n191) );
  DFFRX1 \Yt_reg[6]  ( .D(n250), .CK(clk), .RN(n105), .Q(Yt[6]), .QN(n190) );
  DFFRX1 \Yt_reg[5]  ( .D(n249), .CK(clk), .RN(n105), .Q(Yt[5]), .QN(n189) );
  DFFRX1 \Yt_reg[4]  ( .D(n248), .CK(clk), .RN(n105), .Q(Yt[4]), .QN(n188) );
  DFFRX1 \Yt_reg[3]  ( .D(n247), .CK(clk), .RN(n105), .Q(Yt[3]), .QN(n187) );
  DFFRX1 \Xt_reg[8]  ( .D(n242), .CK(clk), .RN(n103), .Q(Xt[8]), .QN(n182) );
  DFFRX1 \Xt_reg[7]  ( .D(n241), .CK(clk), .RN(n103), .Q(Xt[7]), .QN(n181) );
  DFFRX1 \Xt_reg[6]  ( .D(n240), .CK(clk), .RN(n103), .Q(Xt[6]), .QN(n180) );
  DFFRX1 \Xt_reg[5]  ( .D(n239), .CK(clk), .RN(n103), .Q(Xt[5]), .QN(n179) );
  DFFRX1 \Xt_reg[4]  ( .D(n238), .CK(clk), .RN(n103), .Q(Xt[4]), .QN(n178) );
  DFFRX1 \Xt_reg[3]  ( .D(n237), .CK(clk), .RN(n103), .Q(Xt[3]), .QN(n177) );
  DFFRX1 \Y4_reg[9]  ( .D(N55), .CK(clk), .RN(n125), .Q(Y4[9]), .QN(n295) );
  DFFRX1 \Y4_reg[8]  ( .D(N54), .CK(clk), .RN(n125), .Q(Y4[8]), .QN(n296) );
  DFFRX1 \Y4_reg[7]  ( .D(N53), .CK(clk), .RN(n125), .Q(Y4[7]), .QN(n297) );
  DFFRX1 \Y4_reg[6]  ( .D(N52), .CK(clk), .RN(n125), .Q(Y4[6]), .QN(n298) );
  DFFRX1 \X4_reg[9]  ( .D(N45), .CK(clk), .RN(n125), .Q(X4[9]), .QN(n305) );
  DFFRX1 \X4_reg[8]  ( .D(N44), .CK(clk), .RN(n125), .Q(X4[8]), .QN(n306) );
  DFFRX1 \X4_reg[7]  ( .D(N43), .CK(clk), .RN(n121), .Q(X4[7]), .QN(n307) );
  DFFRX1 \X4_reg[6]  ( .D(N42), .CK(clk), .RN(n121), .Q(X4[6]), .QN(n308) );
  DFFRX1 \Y1_reg[9]  ( .D(N142), .CK(clk), .RN(n111), .Q(Y1[9]), .QN(n232) );
  DFFRX1 \Y1_reg[8]  ( .D(N141), .CK(clk), .RN(n111), .Q(Y1[8]), .QN(n230) );
  DFFRX1 \Y1_reg[7]  ( .D(N140), .CK(clk), .RN(n111), .Q(Y1[7]), .QN(n228) );
  DFFRX1 \Y1_reg[6]  ( .D(N139), .CK(clk), .RN(n111), .Q(Y1[6]), .QN(n226) );
  DFFRX1 \X1_reg[9]  ( .D(N132), .CK(clk), .RN(n111), .Q(X1[9]), .QN(n212) );
  DFFRX1 \X1_reg[8]  ( .D(N131), .CK(clk), .RN(n111), .Q(X1[8]), .QN(n210) );
  DFFRX1 \X1_reg[7]  ( .D(N130), .CK(clk), .RN(n109), .Q(X1[7]), .QN(n208) );
  DFFRX1 \X1_reg[6]  ( .D(N129), .CK(clk), .RN(n109), .Q(X1[6]), .QN(n206) );
  DFFRX1 \Y5_reg[9]  ( .D(N25), .CK(clk), .RN(n148), .Q(Y5[9]), .QN(n275) );
  DFFRX1 \Y5_reg[8]  ( .D(N24), .CK(clk), .RN(n148), .Q(Y5[8]), .QN(n276) );
  DFFRX1 \Y5_reg[7]  ( .D(N23), .CK(clk), .RN(n148), .Q(Y5[7]), .QN(n277) );
  DFFRX1 \Y5_reg[6]  ( .D(N22), .CK(clk), .RN(n148), .Q(Y5[6]), .QN(n278) );
  DFFRX1 \Y5_reg[5]  ( .D(N21), .CK(clk), .RN(n148), .Q(Y5[5]), .QN(n279) );
  DFFRX1 \X5_reg[9]  ( .D(N15), .CK(clk), .RN(n137), .Q(X5[9]), .QN(n285) );
  DFFRX1 \X5_reg[8]  ( .D(N14), .CK(clk), .RN(n137), .Q(X5[8]), .QN(n286) );
  DFFRX1 \X5_reg[7]  ( .D(N13), .CK(clk), .RN(n137), .Q(X5[7]), .QN(n287) );
  DFFRX1 \X5_reg[6]  ( .D(N12), .CK(clk), .RN(n137), .Q(X5[6]), .QN(n288) );
  DFFRX1 \X5_reg[5]  ( .D(N11), .CK(clk), .RN(n137), .Q(X5[5]), .QN(n289) );
  DFFRX1 \Y2_reg[9]  ( .D(N113), .CK(clk), .RN(n115), .Q(Y2[9]), .QN(n335) );
  DFFRX1 \Y2_reg[8]  ( .D(N112), .CK(clk), .RN(n115), .Q(Y2[8]), .QN(n336) );
  DFFRX1 \Y2_reg[7]  ( .D(N111), .CK(clk), .RN(n115), .Q(Y2[7]), .QN(n337) );
  DFFRX1 \Y2_reg[6]  ( .D(N110), .CK(clk), .RN(n115), .Q(Y2[6]), .QN(n338) );
  DFFRX1 \X2_reg[9]  ( .D(N103), .CK(clk), .RN(n113), .Q(X2[9]), .QN(n345) );
  DFFRX1 \X2_reg[8]  ( .D(N102), .CK(clk), .RN(n113), .Q(X2[8]), .QN(n346) );
  DFFRX1 \X2_reg[7]  ( .D(N101), .CK(clk), .RN(n113), .Q(X2[7]), .QN(n347) );
  DFFRX1 \X2_reg[6]  ( .D(N100), .CK(clk), .RN(n113), .Q(X2[6]), .QN(n348) );
  DFFRX1 \Y3_reg[9]  ( .D(N84), .CK(clk), .RN(n121), .Q(Y3[9]), .QN(n315) );
  DFFRX1 \Y3_reg[8]  ( .D(N83), .CK(clk), .RN(n121), .Q(Y3[8]), .QN(n316) );
  DFFRX1 \Y3_reg[7]  ( .D(N82), .CK(clk), .RN(n121), .Q(Y3[7]), .QN(n317) );
  DFFRX1 \Y3_reg[6]  ( .D(N81), .CK(clk), .RN(n121), .Q(Y3[6]), .QN(n318) );
  DFFRX1 \Y3_reg[5]  ( .D(N80), .CK(clk), .RN(n117), .Q(Y3[5]), .QN(n319) );
  DFFRX1 \X3_reg[9]  ( .D(N74), .CK(clk), .RN(n117), .Q(X3[9]), .QN(n325) );
  DFFRX1 \X3_reg[8]  ( .D(N73), .CK(clk), .RN(n117), .Q(X3[8]), .QN(n326) );
  DFFRX1 \X3_reg[7]  ( .D(N72), .CK(clk), .RN(n117), .Q(X3[7]), .QN(n327) );
  DFFRX1 \X3_reg[6]  ( .D(N71), .CK(clk), .RN(n117), .Q(X3[6]), .QN(n328) );
  DFFRX1 \X3_reg[5]  ( .D(N70), .CK(clk), .RN(n117), .Q(X3[5]), .QN(n329) );
  DFFRX1 \Y0_reg[8]  ( .D(n272), .CK(clk), .RN(n109), .Q(Y0[8]), .QN(n231) );
  DFFRX1 \Y0_reg[7]  ( .D(n271), .CK(clk), .RN(n109), .Q(Y0[7]), .QN(n229) );
  DFFRX1 \Y0_reg[6]  ( .D(n270), .CK(clk), .RN(n109), .Q(Y0[6]), .QN(n227) );
  DFFRX1 \Y0_reg[5]  ( .D(n269), .CK(clk), .RN(n107), .Q(Y0[5]), .QN(n225) );
  DFFRX1 \X0_reg[9]  ( .D(n263), .CK(clk), .RN(n107), .Q(X0[9]), .QN(n213) );
  DFFRX1 \X0_reg[8]  ( .D(n262), .CK(clk), .RN(n107), .Q(X0[8]), .QN(n211) );
  DFFRX1 \X0_reg[7]  ( .D(n261), .CK(clk), .RN(n107), .Q(X0[7]), .QN(n209) );
  DFFRX1 \X0_reg[6]  ( .D(n260), .CK(clk), .RN(n107), .Q(X0[6]), .QN(n207) );
  DFFRX1 \X0_reg[5]  ( .D(n259), .CK(clk), .RN(n107), .Q(X0[5]), .QN(n205) );
  DFFRX1 \Y0_reg[9]  ( .D(n273), .CK(clk), .RN(n109), .Q(Y0[9]), .QN(n233) );
  DFFRX1 \Yt_reg[2]  ( .D(n246), .CK(clk), .RN(n105), .Q(Yt[2]), .QN(n186) );
  DFFRX1 \Yt_reg[1]  ( .D(n245), .CK(clk), .RN(n103), .Q(Yt[1]), .QN(n185) );
  DFFRX1 \Yt_reg[0]  ( .D(n244), .CK(clk), .RN(n103), .Q(Yt[0]), .QN(n184) );
  DFFRX1 \Xt_reg[2]  ( .D(n236), .CK(clk), .RN(n103), .Q(Xt[2]), .QN(n176) );
  DFFRX1 \Xt_reg[1]  ( .D(n235), .CK(clk), .RN(n103), .Q(Xt[1]), .QN(n175) );
  DFFRX1 \Xt_reg[0]  ( .D(n234), .CK(clk), .RN(n103), .Q(Xt[0]), .QN(n174) );
  DFFRX1 \Y4_reg[5]  ( .D(N51), .CK(clk), .RN(n125), .Q(Y4[5]), .QN(n299) );
  DFFRX1 \Y4_reg[4]  ( .D(N50), .CK(clk), .RN(n125), .Q(Y4[4]), .QN(n300) );
  DFFRX1 \Y4_reg[3]  ( .D(N49), .CK(clk), .RN(n125), .Q(Y4[3]), .QN(n301) );
  DFFRX1 \Y4_reg[2]  ( .D(N48), .CK(clk), .RN(n125), .Q(Y4[2]), .QN(n302) );
  DFFRX1 \Y4_reg[1]  ( .D(N47), .CK(clk), .RN(n125), .Q(Y4[1]), .QN(n303) );
  DFFRX1 \X4_reg[5]  ( .D(N41), .CK(clk), .RN(n121), .Q(X4[5]), .QN(n309) );
  DFFRX1 \X4_reg[4]  ( .D(N40), .CK(clk), .RN(n121), .Q(X4[4]), .QN(n310) );
  DFFRX1 \X4_reg[3]  ( .D(N39), .CK(clk), .RN(n121), .Q(X4[3]), .QN(n311) );
  DFFRX1 \X4_reg[2]  ( .D(N38), .CK(clk), .RN(n121), .Q(X4[2]), .QN(n312) );
  DFFRX1 \X4_reg[1]  ( .D(N37), .CK(clk), .RN(n121), .Q(X4[1]), .QN(n313) );
  DFFRX1 \X4_reg[0]  ( .D(N36), .CK(clk), .RN(n121), .Q(X4[0]), .QN(n314) );
  DFFRX1 \Y1_reg[5]  ( .D(N138), .CK(clk), .RN(n111), .Q(Y1[5]), .QN(n224) );
  DFFRX1 \Y1_reg[4]  ( .D(N137), .CK(clk), .RN(n111), .Q(Y1[4]), .QN(n222) );
  DFFRX1 \Y1_reg[3]  ( .D(N136), .CK(clk), .RN(n111), .Q(Y1[3]), .QN(n220) );
  DFFRX1 \Y1_reg[2]  ( .D(N135), .CK(clk), .RN(n111), .Q(Y1[2]), .QN(n218) );
  DFFRX1 \Y1_reg[1]  ( .D(N134), .CK(clk), .RN(n111), .Q(Y1[1]), .QN(n216) );
  DFFRX1 \X1_reg[5]  ( .D(N128), .CK(clk), .RN(n109), .Q(X1[5]), .QN(n204) );
  DFFRX1 \X1_reg[4]  ( .D(N127), .CK(clk), .RN(n109), .Q(X1[4]), .QN(n202) );
  DFFRX1 \X1_reg[3]  ( .D(N126), .CK(clk), .RN(n109), .Q(X1[3]), .QN(n200) );
  DFFRX1 \X1_reg[2]  ( .D(N125), .CK(clk), .RN(n109), .Q(X1[2]), .QN(n198) );
  DFFRX1 \X1_reg[1]  ( .D(N124), .CK(clk), .RN(n109), .Q(X1[1]), .QN(n196) );
  DFFRX1 \X1_reg[0]  ( .D(N123), .CK(clk), .RN(n109), .Q(X1[0]), .QN(n194) );
  DFFRX1 \Y5_reg[4]  ( .D(N20), .CK(clk), .RN(n148), .Q(Y5[4]), .QN(n280) );
  DFFRX1 \Y5_reg[3]  ( .D(N19), .CK(clk), .RN(n148), .Q(Y5[3]), .QN(n281) );
  DFFRX1 \Y5_reg[2]  ( .D(N18), .CK(clk), .RN(n148), .Q(Y5[2]), .QN(n282) );
  DFFRX1 \Y5_reg[1]  ( .D(N17), .CK(clk), .RN(n137), .Q(Y5[1]), .QN(n283) );
  DFFRX1 \X5_reg[4]  ( .D(N10), .CK(clk), .RN(n137), .Q(X5[4]), .QN(n290) );
  DFFRX1 \X5_reg[3]  ( .D(N9), .CK(clk), .RN(n137), .Q(X5[3]), .QN(n291) );
  DFFRX1 \X5_reg[2]  ( .D(N8), .CK(clk), .RN(n137), .Q(X5[2]), .QN(n292) );
  DFFRX1 \X5_reg[1]  ( .D(N7), .CK(clk), .RN(n137), .Q(X5[1]), .QN(n293) );
  DFFRX1 \X5_reg[0]  ( .D(N6), .CK(clk), .RN(n137), .Q(X5[0]), .QN(n294) );
  DFFRX1 \Y2_reg[5]  ( .D(N109), .CK(clk), .RN(n115), .Q(Y2[5]), .QN(n339) );
  DFFRX1 \Y2_reg[4]  ( .D(N108), .CK(clk), .RN(n115), .Q(Y2[4]), .QN(n340) );
  DFFRX1 \Y2_reg[3]  ( .D(N107), .CK(clk), .RN(n115), .Q(Y2[3]), .QN(n341) );
  DFFRX1 \Y2_reg[2]  ( .D(N106), .CK(clk), .RN(n115), .Q(Y2[2]), .QN(n342) );
  DFFRX1 \Y2_reg[1]  ( .D(N105), .CK(clk), .RN(n113), .Q(Y2[1]), .QN(n343) );
  DFFRX1 \X2_reg[5]  ( .D(N99), .CK(clk), .RN(n113), .Q(X2[5]), .QN(n349) );
  DFFRX1 \X2_reg[4]  ( .D(N98), .CK(clk), .RN(n113), .Q(X2[4]), .QN(n350) );
  DFFRX1 \X2_reg[3]  ( .D(N97), .CK(clk), .RN(n113), .Q(X2[3]), .QN(n351) );
  DFFRX1 \X2_reg[2]  ( .D(N96), .CK(clk), .RN(n113), .Q(X2[2]), .QN(n352) );
  DFFRX1 \X2_reg[1]  ( .D(N95), .CK(clk), .RN(n113), .Q(X2[1]), .QN(n353) );
  DFFRX1 \X2_reg[0]  ( .D(N94), .CK(clk), .RN(n113), .Q(X2[0]), .QN(n354) );
  DFFRX1 \Y3_reg[4]  ( .D(N79), .CK(clk), .RN(n117), .Q(Y3[4]), .QN(n320) );
  DFFRX1 \Y3_reg[3]  ( .D(N78), .CK(clk), .RN(n117), .Q(Y3[3]), .QN(n321) );
  DFFRX1 \Y3_reg[2]  ( .D(N77), .CK(clk), .RN(n117), .Q(Y3[2]), .QN(n322) );
  DFFRX1 \Y3_reg[1]  ( .D(N76), .CK(clk), .RN(n117), .Q(Y3[1]), .QN(n323) );
  DFFRX1 \X3_reg[4]  ( .D(N69), .CK(clk), .RN(n117), .Q(X3[4]), .QN(n330) );
  DFFRX1 \X3_reg[3]  ( .D(N68), .CK(clk), .RN(n115), .Q(X3[3]), .QN(n331) );
  DFFRX1 \X3_reg[2]  ( .D(N67), .CK(clk), .RN(n115), .Q(X3[2]), .QN(n332) );
  DFFRX1 \X3_reg[1]  ( .D(N66), .CK(clk), .RN(n115), .Q(X3[1]), .QN(n333) );
  DFFRX1 \X3_reg[0]  ( .D(N65), .CK(clk), .RN(n115), .Q(X3[0]), .QN(n334) );
  DFFRX1 \Y0_reg[4]  ( .D(n268), .CK(clk), .RN(n107), .Q(Y0[4]), .QN(n223) );
  DFFRX1 \Y0_reg[3]  ( .D(n267), .CK(clk), .RN(n107), .Q(Y0[3]), .QN(n221) );
  DFFRX1 \Y0_reg[2]  ( .D(n266), .CK(clk), .RN(n107), .Q(Y0[2]), .QN(n219) );
  DFFRX1 \X0_reg[4]  ( .D(n258), .CK(clk), .RN(n107), .Q(X0[4]), .QN(n203) );
  DFFRX1 \X0_reg[3]  ( .D(n257), .CK(clk), .RN(n105), .Q(X0[3]), .QN(n201) );
  DFFRX1 \X0_reg[2]  ( .D(n256), .CK(clk), .RN(n105), .Q(X0[2]), .QN(n199) );
  DFFRX1 \Y4_reg[0]  ( .D(N46), .CK(clk), .RN(n125), .Q(Y4[0]), .QN(n304) );
  DFFRX1 \Y1_reg[0]  ( .D(N133), .CK(clk), .RN(n111), .Q(Y1[0]), .QN(n214) );
  DFFRX1 \Y5_reg[0]  ( .D(N16), .CK(clk), .RN(n137), .Q(Y5[0]), .QN(n284) );
  DFFRX1 \Y2_reg[0]  ( .D(N104), .CK(clk), .RN(n113), .Q(Y2[0]), .QN(n344) );
  DFFRX1 \Y3_reg[0]  ( .D(N75), .CK(clk), .RN(n117), .Q(Y3[0]), .QN(n324) );
  DFFRX1 \Y0_reg[1]  ( .D(n265), .CK(clk), .RN(n107), .Q(Y0[1]), .QN(n217) );
  DFFRX1 \X0_reg[1]  ( .D(n255), .CK(clk), .RN(n105), .Q(X0[1]), .QN(n197) );
  DFFRX1 \Y0_reg[0]  ( .D(n264), .CK(clk), .RN(n107), .Q(Y0[0]), .QN(n215) );
  DFFRX1 \X0_reg[0]  ( .D(n254), .CK(clk), .RN(n105), .Q(X0[0]), .QN(n195) );
  INVX3 U3 ( .A(n363), .Y(n274) );
  CLKINVX1 U4 ( .A(swapX1[1]), .Y(n410) );
  AOI2BB2XL U5 ( .B0(n35), .B1(swapY1[8]), .A0N(n37), .A1N(n230), .Y(n123) );
  AOI2BB2XL U6 ( .B0(n35), .B1(swapY1[9]), .A0N(n37), .A1N(n232), .Y(n120) );
  AOI2BB2XL U7 ( .B0(n35), .B1(swapY1[6]), .A0N(n37), .A1N(n226), .Y(n127) );
  AOI2BB2XL U8 ( .B0(n35), .B1(swapY1[7]), .A0N(n37), .A1N(n228), .Y(n124) );
  AOI2BB2X1 U9 ( .B0(n35), .B1(swapX1[1]), .A0N(n37), .A1N(n196), .Y(n144) );
  AOI2BB2X1 U10 ( .B0(n71), .B1(swapX1[1]), .A0N(n96), .A1N(n333), .Y(n61) );
  AOI2BB2X1 U11 ( .B0(swapX1[1]), .B1(n25), .A0N(n27), .A1N(n353), .Y(n14) );
  AOI2BB2X1 U12 ( .B0(n43), .B1(swapX1[1]), .A0N(n49), .A1N(n313), .Y(n90) );
  CLKINVX1 U13 ( .A(n1), .Y(n45) );
  CLKINVX1 U14 ( .A(n1), .Y(n43) );
  INVXL U15 ( .A(addr1[1]), .Y(n423) );
  NAND3X1 U16 ( .A(n93), .B(n274), .C(n92), .Y(n1) );
  NOR3BXL U17 ( .AN(bubbleSort), .B(addr1[2]), .C(n424), .Y(n65) );
  NAND2XL U18 ( .A(n65), .B(addr1[1]), .Y(n64) );
  NAND4BXL U19 ( .AN(addr1[2]), .B(n424), .C(addr1[1]), .D(bubbleSort), .Y(
        n170) );
  CLKINVX1 U20 ( .A(n5), .Y(n23) );
  NOR3BXL U21 ( .AN(bubbleSort), .B(addr0[1]), .C(n422), .Y(n95) );
  NAND2X1 U22 ( .A(n66), .B(addr0[1]), .Y(n63) );
  AOI2BB2XL U23 ( .B0(n35), .B1(swapY1[0]), .A0N(n37), .A1N(n214), .Y(n133) );
  AOI2BB2XL U24 ( .B0(n43), .B1(swapY1[0]), .A0N(n49), .A1N(n304), .Y(n81) );
  AOI2BB2XL U25 ( .B0(n35), .B1(swapY1[1]), .A0N(n37), .A1N(n216), .Y(n132) );
  AOI2BB2XL U26 ( .B0(n35), .B1(swapY1[2]), .A0N(n37), .A1N(n218), .Y(n131) );
  AOI2BB2XL U27 ( .B0(n35), .B1(swapY1[3]), .A0N(n37), .A1N(n220), .Y(n130) );
  AOI2BB2XL U28 ( .B0(n45), .B1(swapY1[1]), .A0N(n49), .A1N(n303), .Y(n80) );
  AOI2BB2XL U29 ( .B0(n47), .B1(swapY1[2]), .A0N(n49), .A1N(n302), .Y(n79) );
  AOI2BB2XL U30 ( .B0(n45), .B1(swapY1[3]), .A0N(n49), .A1N(n301), .Y(n78) );
  AOI2BB2XL U31 ( .B0(swapY1[0]), .B1(n71), .A0N(n96), .A1N(n324), .Y(n46) );
  AOI2BB2XL U32 ( .B0(swapY1[1]), .B1(n25), .A0N(n27), .A1N(n343), .Y(n163) );
  AOI2BB2XL U33 ( .B0(swapY1[1]), .B1(n71), .A0N(n96), .A1N(n323), .Y(n44) );
  AOI2BB2XL U34 ( .B0(swapY1[2]), .B1(n71), .A0N(n96), .A1N(n322), .Y(n42) );
  AOI2BB2XL U35 ( .B0(n45), .B1(swapY1[8]), .A0N(n49), .A1N(n296), .Y(n73) );
  AOI2BB2XL U36 ( .B0(n43), .B1(swapY1[9]), .A0N(n49), .A1N(n295), .Y(n70) );
  AOI2BB2XL U37 ( .B0(n35), .B1(swapY1[4]), .A0N(n37), .A1N(n222), .Y(n129) );
  AOI2BB2XL U38 ( .B0(n35), .B1(swapY1[5]), .A0N(n37), .A1N(n224), .Y(n128) );
  AOI2BB2XL U39 ( .B0(n43), .B1(swapY1[4]), .A0N(n49), .A1N(n300), .Y(n77) );
  AOI2BB2XL U40 ( .B0(n43), .B1(swapY1[5]), .A0N(n49), .A1N(n299), .Y(n76) );
  AOI2BB2XL U41 ( .B0(n47), .B1(swapY1[6]), .A0N(n49), .A1N(n298), .Y(n75) );
  AOI2BB2XL U42 ( .B0(n47), .B1(swapY1[7]), .A0N(n49), .A1N(n297), .Y(n74) );
  AOI2BB2XL U43 ( .B0(swapY1[4]), .B1(n25), .A0N(n27), .A1N(n340), .Y(n160) );
  AOI2BB2XL U44 ( .B0(swapY1[7]), .B1(n25), .A0N(n27), .A1N(n337), .Y(n155) );
  AOI2BB2XL U45 ( .B0(n35), .B1(swapX1[0]), .A0N(n37), .A1N(n194), .Y(n145) );
  AOI2BB2XL U46 ( .B0(n35), .B1(swapX1[2]), .A0N(n37), .A1N(n198), .Y(n143) );
  AOI2BB2XL U47 ( .B0(n35), .B1(swapX1[3]), .A0N(n37), .A1N(n200), .Y(n142) );
  AOI2BB2XL U48 ( .B0(n35), .B1(swapX1[4]), .A0N(n37), .A1N(n202), .Y(n141) );
  AOI2BB2XL U49 ( .B0(n35), .B1(swapX1[5]), .A0N(n37), .A1N(n204), .Y(n140) );
  AOI2BB2XL U50 ( .B0(n56), .B1(swapX1[0]), .A0N(n96), .A1N(n334), .Y(n62) );
  AOI2BB2XL U51 ( .B0(n71), .B1(swapX1[2]), .A0N(n96), .A1N(n332), .Y(n60) );
  AOI2BB2XL U52 ( .B0(n71), .B1(swapX1[3]), .A0N(n96), .A1N(n331), .Y(n59) );
  AOI2BB2XL U53 ( .B0(n71), .B1(swapX1[4]), .A0N(n96), .A1N(n330), .Y(n58) );
  AOI2BB2XL U54 ( .B0(n71), .B1(swapX1[5]), .A0N(n96), .A1N(n329), .Y(n55) );
  AOI2BB2XL U55 ( .B0(n45), .B1(swapX1[0]), .A0N(n49), .A1N(n314), .Y(n91) );
  AOI2BB2XL U56 ( .B0(n45), .B1(swapX1[2]), .A0N(n49), .A1N(n312), .Y(n89) );
  AOI2BB2XL U57 ( .B0(n47), .B1(swapX1[3]), .A0N(n49), .A1N(n311), .Y(n88) );
  AOI2BB2XL U58 ( .B0(n45), .B1(swapX1[4]), .A0N(n49), .A1N(n310), .Y(n87) );
  AOI2BB2XL U59 ( .B0(n43), .B1(swapX1[5]), .A0N(n49), .A1N(n309), .Y(n86) );
  AOI2BB2XL U60 ( .B0(n35), .B1(swapX1[7]), .A0N(n37), .A1N(n208), .Y(n136) );
  AOI2BB2XL U61 ( .B0(n31), .B1(swapX1[8]), .A0N(n37), .A1N(n210), .Y(n135) );
  AOI2BB2XL U62 ( .B0(n35), .B1(swapX1[9]), .A0N(n37), .A1N(n212), .Y(n134) );
  AOI2BB2XL U63 ( .B0(n47), .B1(swapX1[7]), .A0N(n49), .A1N(n307), .Y(n84) );
  AOI2BB2XL U64 ( .B0(n47), .B1(swapX1[8]), .A0N(n49), .A1N(n306), .Y(n83) );
  AOI2BB2XL U65 ( .B0(n45), .B1(swapX1[9]), .A0N(n49), .A1N(n305), .Y(n82) );
  AOI2BB2XL U66 ( .B0(n35), .B1(swapX1[6]), .A0N(n37), .A1N(n206), .Y(n139) );
  AOI2BB2XL U67 ( .B0(n43), .B1(swapX1[6]), .A0N(n49), .A1N(n308), .Y(n85) );
  AOI2BB2XL U68 ( .B0(swapX1[8]), .B1(n25), .A0N(n27), .A1N(n346), .Y(n166) );
  AOI2BB2XL U69 ( .B0(swapX1[7]), .B1(n71), .A0N(n96), .A1N(n327), .Y(n52) );
  AOI2BB2XL U70 ( .B0(swapX1[8]), .B1(n71), .A0N(n96), .A1N(n326), .Y(n50) );
  AOI2BB2XL U71 ( .B0(swapX1[9]), .B1(n71), .A0N(n96), .A1N(n325), .Y(n48) );
  AOI2BB2XL U72 ( .B0(swapX1[6]), .B1(n71), .A0N(n96), .A1N(n328), .Y(n54) );
  AOI2BB2XL U73 ( .B0(swapY1[0]), .B1(n25), .A0N(n27), .A1N(n344), .Y(n164) );
  AOI2BB2XL U74 ( .B0(swapY1[2]), .B1(n25), .A0N(n27), .A1N(n342), .Y(n162) );
  AOI2BB2XL U75 ( .B0(swapY1[3]), .B1(n25), .A0N(n27), .A1N(n341), .Y(n161) );
  AOI2BB2XL U76 ( .B0(swapY1[8]), .B1(n25), .A0N(n27), .A1N(n336), .Y(n154) );
  AOI2BB2XL U77 ( .B0(swapY1[9]), .B1(n25), .A0N(n27), .A1N(n335), .Y(n153) );
  AOI2BB2XL U78 ( .B0(swapY1[5]), .B1(n25), .A0N(n27), .A1N(n339), .Y(n159) );
  AOI2BB2XL U79 ( .B0(swapY1[6]), .B1(n25), .A0N(n27), .A1N(n338), .Y(n156) );
  AOI2BB2XL U80 ( .B0(swapX1[5]), .B1(n25), .A0N(n27), .A1N(n349), .Y(n4) );
  AOI2BB2XL U81 ( .B0(swapX1[7]), .B1(n25), .A0N(n27), .A1N(n347), .Y(n167) );
  AOI2BB2XL U82 ( .B0(swapX1[9]), .B1(n25), .A0N(n27), .A1N(n345), .Y(n165) );
  AOI2BB2XL U83 ( .B0(swapX1[6]), .B1(n25), .A0N(n27), .A1N(n348), .Y(n168) );
  AOI2BB2XL U84 ( .B0(swapY1[3]), .B1(n71), .A0N(n96), .A1N(n321), .Y(n40) );
  AOI2BB2XL U85 ( .B0(swapY1[8]), .B1(n71), .A0N(n96), .A1N(n316), .Y(n28) );
  AOI2BB2XL U86 ( .B0(swapY1[9]), .B1(n71), .A0N(n96), .A1N(n315), .Y(n24) );
  AOI2BB2XL U87 ( .B0(swapY1[4]), .B1(n71), .A0N(n96), .A1N(n320), .Y(n38) );
  AOI2BB2XL U88 ( .B0(swapY1[5]), .B1(n71), .A0N(n96), .A1N(n319), .Y(n34) );
  AOI2BB2XL U89 ( .B0(swapY1[6]), .B1(n71), .A0N(n96), .A1N(n318), .Y(n32) );
  AOI2BB2XL U90 ( .B0(swapY1[7]), .B1(n71), .A0N(n96), .A1N(n317), .Y(n30) );
  AOI2BB2XL U91 ( .B0(swapX1[0]), .B1(n25), .A0N(n27), .A1N(n354), .Y(n16) );
  AOI2BB2XL U92 ( .B0(swapX1[2]), .B1(n25), .A0N(n27), .A1N(n352), .Y(n12) );
  AOI2BB2XL U93 ( .B0(swapX1[3]), .B1(n25), .A0N(n27), .A1N(n351), .Y(n10) );
  AOI2BB2XL U94 ( .B0(swapX1[4]), .B1(n25), .A0N(n27), .A1N(n350), .Y(n8) );
  INVX3 U95 ( .A(n364), .Y(n151) );
  INVX3 U96 ( .A(n359), .Y(n358) );
  INVX3 U97 ( .A(n149), .Y(n157) );
  INVX3 U98 ( .A(n361), .Y(n356) );
  INVX3 U99 ( .A(n149), .Y(n171) );
  INVX3 U100 ( .A(n360), .Y(n357) );
  INVX3 U101 ( .A(n362), .Y(n355) );
  CLKBUFX3 U102 ( .A(n380), .Y(n361) );
  CLKBUFX3 U103 ( .A(n381), .Y(n359) );
  CLKBUFX3 U104 ( .A(n381), .Y(n360) );
  CLKBUFX3 U105 ( .A(n379), .Y(n364) );
  CLKBUFX3 U106 ( .A(n380), .Y(n363) );
  CLKBUFX3 U107 ( .A(n380), .Y(n362) );
  CLKBUFX3 U108 ( .A(n379), .Y(n365) );
  CLKBUFX3 U109 ( .A(n379), .Y(n366) );
  CLKBUFX3 U110 ( .A(n378), .Y(n367) );
  CLKBUFX3 U111 ( .A(n377), .Y(n371) );
  CLKBUFX3 U112 ( .A(n377), .Y(n370) );
  CLKBUFX3 U113 ( .A(n378), .Y(n369) );
  CLKBUFX3 U114 ( .A(n378), .Y(n368) );
  CLKBUFX3 U115 ( .A(n377), .Y(n372) );
  CLKBUFX3 U116 ( .A(n378), .Y(n376) );
  CLKBUFX3 U117 ( .A(n149), .Y(n375) );
  CLKBUFX3 U118 ( .A(n149), .Y(n374) );
  CLKBUFX3 U119 ( .A(n377), .Y(n373) );
  NAND2X1 U120 ( .A(n65), .B(n423), .Y(n147) );
  INVX3 U121 ( .A(n23), .Y(n25) );
  CLKINVX1 U122 ( .A(n1), .Y(n47) );
  INVX3 U123 ( .A(n3), .Y(n7) );
  CLKINVX1 U124 ( .A(n17), .Y(n3) );
  NAND2BX1 U125 ( .AN(n173), .B(n274), .Y(n17) );
  INVX3 U126 ( .A(n39), .Y(n41) );
  CLKINVX1 U127 ( .A(n69), .Y(n39) );
  NAND2BX1 U128 ( .AN(n93), .B(n274), .Y(n69) );
  CLKBUFX3 U129 ( .A(n150), .Y(n379) );
  CLKBUFX3 U130 ( .A(n150), .Y(n380) );
  CLKBUFX3 U131 ( .A(n150), .Y(n381) );
  CLKBUFX3 U132 ( .A(n149), .Y(n377) );
  CLKBUFX3 U133 ( .A(n149), .Y(n378) );
  CLKBUFX3 U134 ( .A(n101), .Y(n103) );
  CLKBUFX3 U135 ( .A(n426), .Y(n105) );
  CLKBUFX3 U136 ( .A(n101), .Y(n107) );
  CLKBUFX3 U137 ( .A(n426), .Y(n109) );
  CLKBUFX3 U138 ( .A(n101), .Y(n111) );
  CLKBUFX3 U139 ( .A(n97), .Y(n113) );
  CLKBUFX3 U140 ( .A(n97), .Y(n115) );
  CLKBUFX3 U141 ( .A(n97), .Y(n117) );
  CLKBUFX3 U142 ( .A(n99), .Y(n121) );
  CLKBUFX3 U143 ( .A(n101), .Y(n125) );
  CLKBUFX3 U144 ( .A(n99), .Y(n137) );
  CLKBUFX3 U145 ( .A(n99), .Y(n148) );
  NAND2X1 U146 ( .A(addr0[0]), .B(n95), .Y(n173) );
  NAND3X1 U147 ( .A(bubbleSort), .B(n423), .C(addr1[2]), .Y(n94) );
  NOR3BXL U148 ( .AN(n169), .B(n360), .C(n170), .Y(n5) );
  CLKBUFX3 U149 ( .A(n72), .Y(n49) );
  NAND3BX1 U150 ( .AN(n92), .B(n93), .C(n274), .Y(n72) );
  CLKBUFX3 U151 ( .A(n6), .Y(n27) );
  NAND3X1 U152 ( .A(n169), .B(n151), .C(n170), .Y(n6) );
  CLKBUFX3 U153 ( .A(n26), .Y(n96) );
  NAND3X1 U154 ( .A(n63), .B(n151), .C(n64), .Y(n26) );
  CLKBUFX3 U155 ( .A(n122), .Y(n37) );
  NAND3X1 U156 ( .A(n146), .B(n151), .C(n147), .Y(n122) );
  INVX3 U157 ( .A(n67), .Y(n71) );
  CLKINVX1 U158 ( .A(n56), .Y(n67) );
  NOR3BXL U159 ( .AN(n63), .B(n361), .C(n64), .Y(n56) );
  INVX3 U160 ( .A(n11), .Y(n13) );
  CLKINVX1 U161 ( .A(n21), .Y(n11) );
  OAI211X1 U162 ( .A0(n94), .A1(n424), .B0(n173), .C0(n358), .Y(n21) );
  AND3X2 U163 ( .A(bubbleSort), .B(n422), .C(addr0[0]), .Y(n66) );
  INVX3 U164 ( .A(n33), .Y(n35) );
  CLKINVX1 U165 ( .A(n31), .Y(n33) );
  NOR3BXL U166 ( .AN(n146), .B(n359), .C(n147), .Y(n31) );
  NAND2X1 U167 ( .A(n95), .B(n425), .Y(n93) );
  CLKINVX1 U168 ( .A(addr0[0]), .Y(n425) );
  CLKBUFX3 U169 ( .A(n119), .Y(n29) );
  NAND2BX1 U170 ( .AN(n146), .B(n274), .Y(n119) );
  INVX3 U171 ( .A(n15), .Y(n18) );
  CLKINVX1 U172 ( .A(n2), .Y(n15) );
  NAND2BX1 U173 ( .AN(n169), .B(n274), .Y(n2) );
  INVX3 U174 ( .A(n51), .Y(n53) );
  CLKINVX1 U175 ( .A(n22), .Y(n51) );
  NAND2BX1 U176 ( .AN(n63), .B(n274), .Y(n22) );
  CLKBUFX3 U177 ( .A(newData), .Y(n150) );
  CLKBUFX3 U178 ( .A(newData), .Y(n149) );
  CLKBUFX3 U179 ( .A(n99), .Y(n97) );
  CLKINVX1 U180 ( .A(swapY0[0]), .Y(n401) );
  CLKINVX1 U181 ( .A(swapX0[6]), .Y(n415) );
  CLKINVX1 U182 ( .A(swapX0[7]), .Y(n414) );
  CLKINVX1 U183 ( .A(swapX0[8]), .Y(n413) );
  CLKINVX1 U184 ( .A(swapX0[9]), .Y(n412) );
  CLKINVX1 U185 ( .A(swapY0[1]), .Y(n400) );
  CLKINVX1 U186 ( .A(swapY0[2]), .Y(n399) );
  CLKINVX1 U187 ( .A(swapY0[3]), .Y(n398) );
  CLKINVX1 U188 ( .A(swapY0[4]), .Y(n397) );
  CLKINVX1 U189 ( .A(swapY0[5]), .Y(n396) );
  CLKINVX1 U190 ( .A(swapY0[6]), .Y(n395) );
  CLKINVX1 U191 ( .A(swapY0[7]), .Y(n394) );
  CLKINVX1 U192 ( .A(swapY0[8]), .Y(n393) );
  CLKINVX1 U193 ( .A(swapY0[9]), .Y(n392) );
  CLKINVX1 U194 ( .A(swapX0[0]), .Y(n421) );
  CLKINVX1 U195 ( .A(swapX0[1]), .Y(n420) );
  CLKINVX1 U196 ( .A(swapX0[2]), .Y(n419) );
  CLKINVX1 U197 ( .A(swapX0[3]), .Y(n418) );
  CLKINVX1 U198 ( .A(swapX0[4]), .Y(n417) );
  CLKINVX1 U199 ( .A(swapX0[5]), .Y(n416) );
  NOR2XL U200 ( .A(n94), .B(addr1[0]), .Y(n92) );
  NAND2BX1 U201 ( .AN(addr0[1]), .B(n66), .Y(n146) );
  CLKBUFX3 U202 ( .A(n19), .Y(n9) );
  NAND4BXL U203 ( .AN(n94), .B(addr1[0]), .C(n173), .D(n151), .Y(n19) );
  INVXL U204 ( .A(addr0[2]), .Y(n422) );
  INVX1 U205 ( .A(addr1[0]), .Y(n424) );
  NAND4X1 U206 ( .A(bubbleSort), .B(addr0[1]), .C(n425), .D(n422), .Y(n169) );
  CLKBUFX3 U207 ( .A(n426), .Y(n101) );
  CLKBUFX3 U208 ( .A(n426), .Y(n99) );
  OAI221XL U209 ( .A0(n421), .A1(n29), .B0(n354), .B1(n355), .C0(n145), .Y(
        N123) );
  OAI221XL U210 ( .A0(n420), .A1(n29), .B0(n353), .B1(n355), .C0(n144), .Y(
        N124) );
  OAI221XL U211 ( .A0(n419), .A1(n29), .B0(n352), .B1(n355), .C0(n143), .Y(
        N125) );
  OAI221XL U212 ( .A0(n418), .A1(n29), .B0(n351), .B1(n355), .C0(n142), .Y(
        N126) );
  OAI221XL U213 ( .A0(n417), .A1(n29), .B0(n350), .B1(n355), .C0(n141), .Y(
        N127) );
  OAI221XL U214 ( .A0(n416), .A1(n29), .B0(n349), .B1(n355), .C0(n140), .Y(
        N128) );
  OAI221XL U215 ( .A0(n415), .A1(n29), .B0(n348), .B1(n355), .C0(n139), .Y(
        N129) );
  OAI221XL U216 ( .A0(n414), .A1(n29), .B0(n347), .B1(n355), .C0(n136), .Y(
        N130) );
  OAI221XL U217 ( .A0(n413), .A1(n29), .B0(n346), .B1(n355), .C0(n135), .Y(
        N131) );
  OAI221XL U218 ( .A0(n412), .A1(n29), .B0(n345), .B1(n355), .C0(n134), .Y(
        N132) );
  OAI221XL U219 ( .A0(n401), .A1(n29), .B0(n344), .B1(n355), .C0(n133), .Y(
        N133) );
  OAI221XL U220 ( .A0(n400), .A1(n29), .B0(n343), .B1(n356), .C0(n132), .Y(
        N134) );
  OAI221XL U221 ( .A0(n399), .A1(n29), .B0(n342), .B1(n355), .C0(n131), .Y(
        N135) );
  OAI221XL U222 ( .A0(n398), .A1(n29), .B0(n341), .B1(n355), .C0(n130), .Y(
        N136) );
  OAI221XL U223 ( .A0(n397), .A1(n29), .B0(n340), .B1(n356), .C0(n129), .Y(
        N137) );
  OAI221XL U224 ( .A0(n396), .A1(n29), .B0(n339), .B1(n355), .C0(n128), .Y(
        N138) );
  OAI221XL U225 ( .A0(n395), .A1(n29), .B0(n338), .B1(n355), .C0(n127), .Y(
        N139) );
  OAI221XL U226 ( .A0(n394), .A1(n29), .B0(n337), .B1(n356), .C0(n124), .Y(
        N140) );
  OAI221XL U227 ( .A0(n393), .A1(n29), .B0(n336), .B1(n356), .C0(n123), .Y(
        N141) );
  OAI221XL U228 ( .A0(n392), .A1(n29), .B0(n335), .B1(n356), .C0(n120), .Y(
        N142) );
  OAI221XL U229 ( .A0(n18), .A1(n421), .B0(n334), .B1(n358), .C0(n16), .Y(N94)
         );
  OAI221XL U230 ( .A0(n18), .A1(n420), .B0(n333), .B1(n358), .C0(n14), .Y(N95)
         );
  OAI221XL U231 ( .A0(n18), .A1(n419), .B0(n332), .B1(n358), .C0(n12), .Y(N96)
         );
  OAI221XL U232 ( .A0(n18), .A1(n418), .B0(n331), .B1(n358), .C0(n10), .Y(N97)
         );
  OAI221XL U233 ( .A0(n18), .A1(n417), .B0(n330), .B1(n358), .C0(n8), .Y(N98)
         );
  OAI221XL U234 ( .A0(n2), .A1(n416), .B0(n329), .B1(n274), .C0(n4), .Y(N99)
         );
  OAI221XL U235 ( .A0(n18), .A1(n415), .B0(n328), .B1(n274), .C0(n168), .Y(
        N100) );
  OAI221XL U236 ( .A0(n2), .A1(n414), .B0(n327), .B1(n274), .C0(n167), .Y(N101) );
  OAI221XL U237 ( .A0(n18), .A1(n413), .B0(n326), .B1(n355), .C0(n166), .Y(
        N102) );
  OAI221XL U238 ( .A0(n2), .A1(n412), .B0(n325), .B1(n274), .C0(n165), .Y(N103) );
  OAI221XL U239 ( .A0(n18), .A1(n401), .B0(n324), .B1(n274), .C0(n164), .Y(
        N104) );
  OAI221XL U240 ( .A0(n2), .A1(n400), .B0(n323), .B1(n355), .C0(n163), .Y(N105) );
  OAI221XL U241 ( .A0(n18), .A1(n399), .B0(n322), .B1(n274), .C0(n162), .Y(
        N106) );
  OAI221XL U242 ( .A0(n2), .A1(n398), .B0(n321), .B1(n274), .C0(n161), .Y(N107) );
  OAI221XL U243 ( .A0(n18), .A1(n397), .B0(n320), .B1(n355), .C0(n160), .Y(
        N108) );
  OAI221XL U244 ( .A0(n18), .A1(n396), .B0(n319), .B1(n274), .C0(n159), .Y(
        N109) );
  OAI221XL U245 ( .A0(n18), .A1(n395), .B0(n318), .B1(n274), .C0(n156), .Y(
        N110) );
  OAI221XL U246 ( .A0(n2), .A1(n394), .B0(n317), .B1(n355), .C0(n155), .Y(N111) );
  OAI221XL U247 ( .A0(n18), .A1(n393), .B0(n316), .B1(n274), .C0(n154), .Y(
        N112) );
  OAI221XL U248 ( .A0(n18), .A1(n392), .B0(n315), .B1(n274), .C0(n153), .Y(
        N113) );
  OAI221XL U249 ( .A0(n421), .A1(n53), .B0(n314), .B1(n357), .C0(n62), .Y(N65)
         );
  OAI221XL U250 ( .A0(n420), .A1(n22), .B0(n313), .B1(n357), .C0(n61), .Y(N66)
         );
  OAI221XL U251 ( .A0(n419), .A1(n53), .B0(n312), .B1(n357), .C0(n60), .Y(N67)
         );
  OAI221XL U252 ( .A0(n418), .A1(n22), .B0(n311), .B1(n357), .C0(n59), .Y(N68)
         );
  OAI221XL U253 ( .A0(n417), .A1(n53), .B0(n310), .B1(n357), .C0(n58), .Y(N69)
         );
  OAI221XL U254 ( .A0(n416), .A1(n53), .B0(n309), .B1(n357), .C0(n55), .Y(N70)
         );
  OAI221XL U255 ( .A0(n53), .A1(n415), .B0(n308), .B1(n357), .C0(n54), .Y(N71)
         );
  OAI221XL U256 ( .A0(n22), .A1(n414), .B0(n307), .B1(n357), .C0(n52), .Y(N72)
         );
  OAI221XL U257 ( .A0(n53), .A1(n413), .B0(n306), .B1(n357), .C0(n50), .Y(N73)
         );
  OAI221XL U258 ( .A0(n22), .A1(n412), .B0(n305), .B1(n357), .C0(n48), .Y(N74)
         );
  OAI221XL U259 ( .A0(n53), .A1(n401), .B0(n304), .B1(n357), .C0(n46), .Y(N75)
         );
  OAI221XL U260 ( .A0(n22), .A1(n400), .B0(n303), .B1(n357), .C0(n44), .Y(N76)
         );
  OAI221XL U261 ( .A0(n53), .A1(n399), .B0(n302), .B1(n357), .C0(n42), .Y(N77)
         );
  OAI221XL U262 ( .A0(n22), .A1(n398), .B0(n301), .B1(n358), .C0(n40), .Y(N78)
         );
  OAI221XL U263 ( .A0(n53), .A1(n397), .B0(n300), .B1(n358), .C0(n38), .Y(N79)
         );
  OAI221XL U264 ( .A0(n53), .A1(n396), .B0(n299), .B1(n358), .C0(n34), .Y(N80)
         );
  OAI221XL U265 ( .A0(n53), .A1(n395), .B0(n298), .B1(n358), .C0(n32), .Y(N81)
         );
  OAI221XL U266 ( .A0(n53), .A1(n394), .B0(n297), .B1(n358), .C0(n30), .Y(N82)
         );
  OAI221XL U267 ( .A0(n53), .A1(n393), .B0(n296), .B1(n358), .C0(n28), .Y(N83)
         );
  OAI221XL U268 ( .A0(n53), .A1(n392), .B0(n295), .B1(n358), .C0(n24), .Y(N84)
         );
  OAI221XL U269 ( .A0(n421), .A1(n41), .B0(n294), .B1(n356), .C0(n91), .Y(N36)
         );
  OAI221XL U270 ( .A0(n420), .A1(n69), .B0(n293), .B1(n356), .C0(n90), .Y(N37)
         );
  OAI221XL U271 ( .A0(n419), .A1(n41), .B0(n292), .B1(n356), .C0(n89), .Y(N38)
         );
  OAI221XL U272 ( .A0(n418), .A1(n69), .B0(n291), .B1(n356), .C0(n88), .Y(N39)
         );
  OAI221XL U273 ( .A0(n417), .A1(n41), .B0(n290), .B1(n356), .C0(n87), .Y(N40)
         );
  OAI221XL U274 ( .A0(n416), .A1(n69), .B0(n289), .B1(n356), .C0(n86), .Y(N41)
         );
  OAI221XL U275 ( .A0(n415), .A1(n41), .B0(n288), .B1(n356), .C0(n85), .Y(N42)
         );
  OAI221XL U276 ( .A0(n414), .A1(n69), .B0(n287), .B1(n356), .C0(n84), .Y(N43)
         );
  OAI221XL U277 ( .A0(n413), .A1(n41), .B0(n286), .B1(n356), .C0(n83), .Y(N44)
         );
  OAI221XL U278 ( .A0(n412), .A1(n69), .B0(n285), .B1(n356), .C0(n82), .Y(N45)
         );
  OAI221XL U279 ( .A0(n401), .A1(n41), .B0(n284), .B1(n356), .C0(n81), .Y(N46)
         );
  OAI221XL U280 ( .A0(n400), .A1(n69), .B0(n283), .B1(n356), .C0(n80), .Y(N47)
         );
  OAI221XL U281 ( .A0(n399), .A1(n41), .B0(n282), .B1(n356), .C0(n79), .Y(N48)
         );
  OAI221XL U282 ( .A0(n398), .A1(n41), .B0(n281), .B1(n356), .C0(n78), .Y(N49)
         );
  OAI221XL U283 ( .A0(n397), .A1(n41), .B0(n280), .B1(n357), .C0(n77), .Y(N50)
         );
  OAI221XL U284 ( .A0(n396), .A1(n41), .B0(n279), .B1(n357), .C0(n76), .Y(N51)
         );
  OAI221XL U285 ( .A0(n395), .A1(n41), .B0(n278), .B1(n357), .C0(n75), .Y(N52)
         );
  OAI221XL U286 ( .A0(n394), .A1(n41), .B0(n277), .B1(n357), .C0(n74), .Y(N53)
         );
  OAI221XL U287 ( .A0(n393), .A1(n41), .B0(n276), .B1(n357), .C0(n73), .Y(N54)
         );
  OAI221XL U288 ( .A0(n392), .A1(n41), .B0(n275), .B1(n357), .C0(n70), .Y(N55)
         );
  OAI221XL U289 ( .A0(n421), .A1(n7), .B0(n411), .B1(n9), .C0(n68), .Y(N6) );
  AOI2BB2X1 U290 ( .B0(X[0]), .B1(n374), .A0N(n13), .A1N(n294), .Y(n68) );
  CLKINVX1 U291 ( .A(swapX1[0]), .Y(n411) );
  OAI221XL U292 ( .A0(n420), .A1(n17), .B0(n410), .B1(n9), .C0(n57), .Y(N7) );
  AOI2BB2X1 U293 ( .B0(X[1]), .B1(n373), .A0N(n13), .A1N(n293), .Y(n57) );
  OAI221XL U294 ( .A0(n419), .A1(n7), .B0(n409), .B1(n9), .C0(n36), .Y(N8) );
  AOI2BB2X1 U295 ( .B0(X[2]), .B1(n373), .A0N(n13), .A1N(n292), .Y(n36) );
  CLKINVX1 U296 ( .A(swapX1[2]), .Y(n409) );
  OAI221XL U297 ( .A0(n418), .A1(n17), .B0(n408), .B1(n9), .C0(n20), .Y(N9) );
  AOI2BB2X1 U298 ( .B0(X[3]), .B1(n373), .A0N(n13), .A1N(n291), .Y(n20) );
  CLKINVX1 U299 ( .A(swapX1[3]), .Y(n408) );
  OAI221XL U300 ( .A0(n417), .A1(n7), .B0(n407), .B1(n9), .C0(n172), .Y(N10)
         );
  AOI2BB2X1 U301 ( .B0(X[4]), .B1(n372), .A0N(n13), .A1N(n290), .Y(n172) );
  CLKINVX1 U302 ( .A(swapX1[4]), .Y(n407) );
  OAI221XL U303 ( .A0(n416), .A1(n7), .B0(n406), .B1(n9), .C0(n158), .Y(N11)
         );
  AOI2BB2X1 U304 ( .B0(X[5]), .B1(n365), .A0N(n21), .A1N(n289), .Y(n158) );
  CLKINVX1 U305 ( .A(swapX1[5]), .Y(n406) );
  OAI221XL U306 ( .A0(n7), .A1(n415), .B0(n9), .B1(n405), .C0(n152), .Y(N12)
         );
  AOI2BB2X1 U307 ( .B0(X[6]), .B1(n366), .A0N(n13), .A1N(n288), .Y(n152) );
  CLKINVX1 U308 ( .A(swapX1[6]), .Y(n405) );
  OAI221XL U309 ( .A0(n17), .A1(n414), .B0(n9), .B1(n404), .C0(n138), .Y(N13)
         );
  AOI2BB2X1 U310 ( .B0(X[7]), .B1(n376), .A0N(n13), .A1N(n287), .Y(n138) );
  CLKINVX1 U311 ( .A(swapX1[7]), .Y(n404) );
  OAI221XL U312 ( .A0(n7), .A1(n413), .B0(n9), .B1(n403), .C0(n126), .Y(N14)
         );
  AOI2BB2X1 U313 ( .B0(X[8]), .B1(n376), .A0N(n13), .A1N(n286), .Y(n126) );
  CLKINVX1 U314 ( .A(swapX1[8]), .Y(n403) );
  OAI221XL U315 ( .A0(n17), .A1(n412), .B0(n9), .B1(n402), .C0(n118), .Y(N15)
         );
  AOI2BB2X1 U316 ( .B0(X[9]), .B1(n376), .A0N(n13), .A1N(n285), .Y(n118) );
  CLKINVX1 U317 ( .A(swapX1[9]), .Y(n402) );
  OAI221XL U318 ( .A0(n7), .A1(n401), .B0(n9), .B1(n391), .C0(n116), .Y(N16)
         );
  AOI2BB2X1 U319 ( .B0(Y[0]), .B1(n376), .A0N(n13), .A1N(n284), .Y(n116) );
  CLKINVX1 U320 ( .A(swapY1[0]), .Y(n391) );
  OAI221XL U321 ( .A0(n17), .A1(n400), .B0(n9), .B1(n390), .C0(n114), .Y(N17)
         );
  AOI2BB2X1 U322 ( .B0(Y[1]), .B1(n375), .A0N(n13), .A1N(n283), .Y(n114) );
  CLKINVX1 U323 ( .A(swapY1[1]), .Y(n390) );
  OAI221XL U324 ( .A0(n7), .A1(n399), .B0(n9), .B1(n389), .C0(n112), .Y(N18)
         );
  AOI2BB2X1 U325 ( .B0(Y[2]), .B1(n375), .A0N(n13), .A1N(n282), .Y(n112) );
  CLKINVX1 U326 ( .A(swapY1[2]), .Y(n389) );
  OAI221XL U327 ( .A0(n17), .A1(n398), .B0(n9), .B1(n388), .C0(n110), .Y(N19)
         );
  AOI2BB2X1 U328 ( .B0(Y[3]), .B1(n375), .A0N(n21), .A1N(n281), .Y(n110) );
  CLKINVX1 U329 ( .A(swapY1[3]), .Y(n388) );
  OAI221XL U330 ( .A0(n7), .A1(n397), .B0(n9), .B1(n387), .C0(n108), .Y(N20)
         );
  AOI2BB2X1 U331 ( .B0(Y[4]), .B1(n375), .A0N(n13), .A1N(n280), .Y(n108) );
  CLKINVX1 U332 ( .A(swapY1[4]), .Y(n387) );
  OAI221XL U333 ( .A0(n7), .A1(n396), .B0(n9), .B1(n386), .C0(n106), .Y(N21)
         );
  AOI2BB2X1 U334 ( .B0(Y[5]), .B1(n366), .A0N(n21), .A1N(n279), .Y(n106) );
  CLKINVX1 U335 ( .A(swapY1[5]), .Y(n386) );
  OAI221XL U336 ( .A0(n7), .A1(n395), .B0(n9), .B1(n385), .C0(n104), .Y(N22)
         );
  AOI2BB2X1 U337 ( .B0(Y[6]), .B1(n374), .A0N(n13), .A1N(n278), .Y(n104) );
  CLKINVX1 U338 ( .A(swapY1[6]), .Y(n385) );
  OAI221XL U339 ( .A0(n7), .A1(n394), .B0(n9), .B1(n384), .C0(n102), .Y(N23)
         );
  AOI2BB2X1 U340 ( .B0(Y[7]), .B1(n374), .A0N(n21), .A1N(n277), .Y(n102) );
  CLKINVX1 U341 ( .A(swapY1[7]), .Y(n384) );
  OAI221XL U342 ( .A0(n7), .A1(n393), .B0(n9), .B1(n383), .C0(n100), .Y(N24)
         );
  AOI2BB2X1 U343 ( .B0(Y[8]), .B1(n374), .A0N(n13), .A1N(n276), .Y(n100) );
  CLKINVX1 U344 ( .A(swapY1[8]), .Y(n383) );
  OAI221XL U345 ( .A0(n7), .A1(n392), .B0(n9), .B1(n382), .C0(n98), .Y(N25) );
  AOI2BB2X1 U346 ( .B0(Y[9]), .B1(n373), .A0N(n13), .A1N(n275), .Y(n98) );
  CLKINVX1 U347 ( .A(swapY1[9]), .Y(n382) );
  OAI22XL U348 ( .A0(n363), .A1(n176), .B0(n199), .B1(n157), .Y(n236) );
  OAI22XL U349 ( .A0(n366), .A1(n177), .B0(n201), .B1(n157), .Y(n237) );
  OAI22XL U350 ( .A0(n364), .A1(n179), .B0(n205), .B1(n157), .Y(n239) );
  OAI22XL U351 ( .A0(n365), .A1(n180), .B0(n207), .B1(n157), .Y(n240) );
  OAI22XL U352 ( .A0(n365), .A1(n183), .B0(n213), .B1(n157), .Y(n243) );
  OAI22XL U353 ( .A0(n362), .A1(n174), .B0(n195), .B1(n171), .Y(n234) );
  OAI22XL U354 ( .A0(n365), .A1(n175), .B0(n197), .B1(n171), .Y(n235) );
  OAI22XL U355 ( .A0(n365), .A1(n178), .B0(n203), .B1(n171), .Y(n238) );
  OAI22XL U356 ( .A0(n366), .A1(n181), .B0(n209), .B1(n171), .Y(n241) );
  OAI22XL U357 ( .A0(n365), .A1(n182), .B0(n211), .B1(n171), .Y(n242) );
  OAI22XL U358 ( .A0(n366), .A1(n184), .B0(n215), .B1(n171), .Y(n244) );
  OAI22XL U359 ( .A0(n366), .A1(n185), .B0(n217), .B1(n171), .Y(n245) );
  OAI22XL U360 ( .A0(n366), .A1(n186), .B0(n219), .B1(n171), .Y(n246) );
  OAI22XL U361 ( .A0(n374), .A1(n187), .B0(n221), .B1(n171), .Y(n247) );
  OAI22XL U362 ( .A0(n375), .A1(n188), .B0(n223), .B1(n171), .Y(n248) );
  OAI22XL U363 ( .A0(n374), .A1(n189), .B0(n225), .B1(n171), .Y(n249) );
  OAI22XL U364 ( .A0(n367), .A1(n190), .B0(n227), .B1(n171), .Y(n250) );
  OAI22XL U365 ( .A0(n375), .A1(n191), .B0(n229), .B1(n171), .Y(n251) );
  OAI22XL U366 ( .A0(n367), .A1(n192), .B0(n231), .B1(n171), .Y(n252) );
  OAI22XL U367 ( .A0(n367), .A1(n193), .B0(n233), .B1(n171), .Y(n253) );
  OAI22XL U368 ( .A0(n194), .A1(n151), .B0(n367), .B1(n195), .Y(n254) );
  OAI22XL U369 ( .A0(n196), .A1(n151), .B0(n372), .B1(n197), .Y(n255) );
  OAI22XL U370 ( .A0(n198), .A1(n151), .B0(n372), .B1(n199), .Y(n256) );
  OAI22XL U371 ( .A0(n200), .A1(n157), .B0(n371), .B1(n201), .Y(n257) );
  OAI22XL U372 ( .A0(n202), .A1(n157), .B0(n372), .B1(n203), .Y(n258) );
  OAI22XL U373 ( .A0(n204), .A1(n151), .B0(n371), .B1(n205), .Y(n259) );
  OAI22XL U374 ( .A0(n206), .A1(n157), .B0(n371), .B1(n207), .Y(n260) );
  OAI22XL U375 ( .A0(n208), .A1(n157), .B0(n370), .B1(n209), .Y(n261) );
  OAI22XL U376 ( .A0(n210), .A1(n151), .B0(n371), .B1(n211), .Y(n262) );
  OAI22XL U377 ( .A0(n212), .A1(n151), .B0(n370), .B1(n213), .Y(n263) );
  OAI22XL U378 ( .A0(n214), .A1(n157), .B0(n370), .B1(n215), .Y(n264) );
  OAI22XL U379 ( .A0(n216), .A1(n151), .B0(n370), .B1(n217), .Y(n265) );
  OAI22XL U380 ( .A0(n218), .A1(n157), .B0(n369), .B1(n219), .Y(n266) );
  OAI22XL U381 ( .A0(n220), .A1(n157), .B0(n369), .B1(n221), .Y(n267) );
  OAI22XL U382 ( .A0(n222), .A1(n151), .B0(n369), .B1(n223), .Y(n268) );
  OAI22XL U383 ( .A0(n224), .A1(n157), .B0(n369), .B1(n225), .Y(n269) );
  OAI22XL U384 ( .A0(n226), .A1(n151), .B0(n368), .B1(n227), .Y(n270) );
  OAI22XL U385 ( .A0(n228), .A1(n151), .B0(n368), .B1(n229), .Y(n271) );
  OAI22XL U386 ( .A0(n230), .A1(n157), .B0(n368), .B1(n231), .Y(n272) );
  OAI22XL U387 ( .A0(n232), .A1(n157), .B0(n368), .B1(n233), .Y(n273) );
  CLKINVX1 U388 ( .A(reset), .Y(n426) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   newData, bubbleSort, compare, n1, n2;
  wire   [9:0] X0;
  wire   [9:0] Y0;
  wire   [9:0] Xt;
  wire   [9:0] Yt;
  wire   [9:0] Xaddr0;
  wire   [9:0] Yaddr0;
  wire   [9:0] Xaddr1;
  wire   [9:0] Yaddr1;
  wire   [9:0] swapX0;
  wire   [9:0] swapY0;
  wire   [9:0] swapX1;
  wire   [9:0] swapY1;
  wire   [2:0] addr0;
  wire   [2:0] addr1;

  cross cross_product ( .clk(clk), .reset(reset), .newData(n2), .bubbleSort(n1), .compare(compare), .X0(X0), .Y0(Y0), .Xt(Xt), .Yt(Yt), .Xaddr0(Xaddr0),
        .Yaddr0(Yaddr0), .Xaddr1(Xaddr1), .Yaddr1(Yaddr1), .swapX0(swapX0),
        .swapY0(swapY0), .swapX1(swapX1), .swapY1(swapY1), .is_inside(
        is_inside) );
  fsm finite_state_machine ( .clk(clk), .reset(reset), .is_inside(is_inside),
        .newData(newData), .bubbleSort(bubbleSort), .compare(compare), .valid(
        valid), .addr0(addr0), .addr1(addr1) );
  xyreg_2w2r xyregister_2w2r ( .clk(clk), .reset(reset), .X(X), .Y(Y),
        .newData(n2), .bubbleSort(n1), .addr0(addr0), .addr1(addr1), .X0(X0),
        .Y0(Y0), .Xt(Xt), .Yt(Yt), .Xaddr0(Xaddr0), .Xaddr1(Xaddr1), .Yaddr0(
        Yaddr0), .Yaddr1(Yaddr1), .swapX0(swapX0), .swapY0(swapY0), .swapX1(
        swapX1), .swapY1(swapY1) );
  CLKBUFX2 U1 ( .A(bubbleSort), .Y(n1) );
  CLKBUFX3 U2 ( .A(newData), .Y(n2) );
endmodule

