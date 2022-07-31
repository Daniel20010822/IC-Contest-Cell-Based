/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Aug  6 14:42:54 2021
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module FSM ( clk, reset, gray_ready, lbp_addr, lbp_valid, gray_req, finish, 
        cycle, cycle4, initialize );
  input [13:0] lbp_addr;
  output [3:0] cycle;
  input clk, reset, gray_ready;
  output lbp_valid, gray_req, finish, cycle4, initialize;
  wire   \cs[0] , N43, N89, N92, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n1, n2, n3, n4, n5;
  wire   [1:0] ns;
  assign finish = N43;
  assign cycle4 = N89;
  assign initialize = N92;

  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n5), .QN(n6) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n5), .Q(\cs[0] ), .QN(n7) );
  DFFRX1 \cycle_reg[3]  ( .D(n29), .CK(clk), .RN(n5), .Q(cycle[3]), .QN(n8) );
  DFFRX1 \cycle_reg[1]  ( .D(n27), .CK(clk), .RN(n5), .Q(cycle[1]) );
  DFFRX1 \cycle_reg[2]  ( .D(n28), .CK(clk), .RN(n5), .Q(cycle[2]) );
  DFFRX1 \cycle_reg[0]  ( .D(n30), .CK(clk), .RN(n5), .Q(cycle[0]), .QN(n9) );
  CLKINVX1 U3 ( .A(n19), .Y(n3) );
  NOR2X1 U4 ( .A(N92), .B(N89), .Y(n19) );
  CLKINVX1 U5 ( .A(N92), .Y(n2) );
  CLKINVX1 U6 ( .A(N89), .Y(n4) );
  NOR2BX1 U7 ( .AN(n26), .B(n4), .Y(lbp_valid) );
  NOR2X1 U8 ( .A(lbp_valid), .B(n25), .Y(gray_req) );
  OA21XL U9 ( .A0(n2), .A1(n26), .B0(n4), .Y(n25) );
  AND2X2 U10 ( .A(\cs[0] ), .B(n6), .Y(N92) );
  NOR2X1 U11 ( .A(n6), .B(\cs[0] ), .Y(N89) );
  NOR4X1 U12 ( .A(lbp_addr[3]), .B(lbp_addr[2]), .C(lbp_addr[1]), .D(n6), .Y(
        n15) );
  NOR4X1 U13 ( .A(lbp_addr[7]), .B(lbp_addr[6]), .C(lbp_addr[5]), .D(
        lbp_addr[4]), .Y(n16) );
  AOI2BB2X1 U14 ( .B0(n10), .B1(N92), .A0N(n24), .A1N(n4), .Y(n17) );
  NOR3X1 U15 ( .A(n20), .B(cycle[3]), .C(cycle[2]), .Y(n24) );
  OAI22XL U16 ( .A0(n9), .A1(n3), .B0(cycle[0]), .B1(n17), .Y(n30) );
  OAI22XL U17 ( .A0(n8), .A1(n3), .B0(n17), .B1(n22), .Y(n29) );
  XNOR2X1 U18 ( .A(cycle[3]), .B(n23), .Y(n22) );
  NOR2BX1 U19 ( .AN(cycle[2]), .B(n20), .Y(n23) );
  NAND2X1 U20 ( .A(cycle[1]), .B(cycle[0]), .Y(n20) );
  NAND4X1 U21 ( .A(lbp_addr[12]), .B(lbp_addr[11]), .C(lbp_addr[10]), .D(
        lbp_addr[0]), .Y(n14) );
  OAI21XL U22 ( .A0(n2), .A1(n10), .B0(n6), .Y(ns[1]) );
  OR4X1 U23 ( .A(cycle[1]), .B(n8), .C(n9), .D(cycle[2]), .Y(n10) );
  OAI31XL U24 ( .A0(n20), .A1(cycle[2]), .A2(n17), .B0(n21), .Y(n28) );
  OAI21XL U25 ( .A0(n19), .A1(n20), .B0(cycle[2]), .Y(n21) );
  OAI31XL U26 ( .A0(n9), .A1(cycle[1]), .A2(n17), .B0(n18), .Y(n27) );
  OAI21XL U27 ( .A0(n19), .A1(n9), .B0(cycle[1]), .Y(n18) );
  OAI211X1 U28 ( .A0(n11), .A1(n12), .B0(n1), .C0(n13), .Y(ns[0]) );
  CLKINVX1 U29 ( .A(N43), .Y(n1) );
  NAND4BX1 U30 ( .AN(n14), .B(lbp_addr[13]), .C(lbp_addr[9]), .D(lbp_addr[8]), 
        .Y(n12) );
  NAND2X1 U31 ( .A(n15), .B(n16), .Y(n11) );
  AOI32X1 U32 ( .A0(n7), .A1(n6), .A2(gray_ready), .B0(N92), .B1(n10), .Y(n13)
         );
  NOR2X1 U33 ( .A(n6), .B(n7), .Y(N43) );
  NOR4X1 U34 ( .A(cycle[0]), .B(cycle[1]), .C(cycle[2]), .D(cycle[3]), .Y(n26)
         );
  CLKINVX1 U35 ( .A(reset), .Y(n5) );
endmodule


module gray_addr_ctrl_DW01_add_3 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [6:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module gray_addr_ctrl_DW01_add_2 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [6:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module gray_addr_ctrl ( clk, reset, gray_addr, lbp_addr, cycle, right, down, 
        left, initialize );
  output [13:0] gray_addr;
  input [13:0] lbp_addr;
  input [3:0] cycle;
  input clk, reset, right, down, left, initialize;
  wire   N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78,
         N80, N81, N82, N83, N84, N85, N86, N94, N95, N96, N97, N98, N99, N100,
         N118, N119, N120, N121, N122, N123, N124, N130, N131, N132, N133,
         N134, N135, N136, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, N64, N61, N60, N59, N93, N90, N89, N88, N87,
         \sub_84/carry[6] , \sub_84/carry[5] , \sub_84/carry[4] ,
         \sub_84/carry[3] , \add_79/carry[6] , \add_79/carry[5] ,
         \add_79/carry[4] , \add_79/carry[3] , \add_76/carry[6] ,
         \add_76/carry[5] , \add_76/carry[4] , \add_76/carry[3] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  assign N72 = lbp_addr[0];
  assign N80 = lbp_addr[7];

  gray_addr_ctrl_DW01_add_3 add_0_root_r401 ( .A({lbp_addr[13:8], N80}), .B({
        N64, N64, N64, N61, N60, N59, N87}), .CI(1'b0), .SUM({N71, N70, N69, 
        N68, N67, N66, N65}) );
  gray_addr_ctrl_DW01_add_2 add_0_root_sub_0_root_add_80 ( .A({lbp_addr[6:1], 
        N72}), .B({N93, N93, N93, N90, N89, N88, N87}), .CI(1'b0), .SUM({N100, 
        N99, N98, N97, N96, N95, N94}) );
  DFFRX1 \gray_addr_row_reg[1]  ( .D(N124), .CK(clk), .RN(n16), .Q(
        gray_addr[8]) );
  DFFRX1 \gray_addr_row_reg[0]  ( .D(N123), .CK(clk), .RN(n16), .Q(
        gray_addr[7]) );
  DFFRX1 \gray_addr_col_reg[6]  ( .D(N136), .CK(clk), .RN(n16), .Q(
        gray_addr[6]) );
  DFFRX1 \gray_addr_col_reg[5]  ( .D(N135), .CK(clk), .RN(n16), .Q(
        gray_addr[5]) );
  DFFRX1 \gray_addr_col_reg[4]  ( .D(N134), .CK(clk), .RN(n16), .Q(
        gray_addr[4]) );
  DFFRX1 \gray_addr_col_reg[3]  ( .D(N133), .CK(clk), .RN(n16), .Q(
        gray_addr[3]) );
  DFFRX1 \gray_addr_col_reg[2]  ( .D(N132), .CK(clk), .RN(n16), .Q(
        gray_addr[2]) );
  DFFRX1 \gray_addr_row_reg[6]  ( .D(n6), .CK(clk), .RN(n16), .Q(gray_addr[13]) );
  DFFRX1 \gray_addr_row_reg[5]  ( .D(n7), .CK(clk), .RN(n16), .Q(gray_addr[12]) );
  DFFRX1 \gray_addr_row_reg[4]  ( .D(n8), .CK(clk), .RN(n16), .Q(gray_addr[11]) );
  DFFRX1 \gray_addr_row_reg[3]  ( .D(n9), .CK(clk), .RN(n16), .Q(gray_addr[10]) );
  DFFRX1 \gray_addr_row_reg[2]  ( .D(n10), .CK(clk), .RN(n16), .Q(gray_addr[9]) );
  DFFRX1 \gray_addr_col_reg[1]  ( .D(N131), .CK(clk), .RN(n16), .Q(
        gray_addr[1]) );
  DFFRX1 \gray_addr_col_reg[0]  ( .D(N130), .CK(clk), .RN(n16), .Q(
        gray_addr[0]) );
  NOR3BXL U3 ( .AN(n60), .B(cycle[2]), .C(cycle[3]), .Y(n79) );
  CLKINVX1 U4 ( .A(n56), .Y(n11) );
  AND3X2 U5 ( .A(n74), .B(n76), .C(n75), .Y(n39) );
  NAND3BX1 U6 ( .AN(n74), .B(n75), .C(n76), .Y(n56) );
  OR2X1 U7 ( .A(n41), .B(n11), .Y(n63) );
  CLKBUFX3 U8 ( .A(n40), .Y(n1) );
  NOR2BX1 U9 ( .AN(n75), .B(n76), .Y(n40) );
  NOR2X1 U10 ( .A(n77), .B(n52), .Y(n41) );
  NOR2BX1 U11 ( .AN(n77), .B(n52), .Y(n75) );
  NAND2X1 U12 ( .A(down), .B(n79), .Y(n76) );
  NAND2X1 U13 ( .A(right), .B(n79), .Y(n77) );
  NAND2X1 U14 ( .A(left), .B(n79), .Y(n74) );
  OAI21XL U15 ( .A0(n14), .A1(n15), .B0(n13), .Y(n70) );
  NAND2X1 U16 ( .A(n44), .B(n45), .Y(N134) );
  AOI22X1 U17 ( .A0(gray_addr[4]), .A1(n39), .B0(N120), .B1(n11), .Y(n45) );
  AOI22X1 U18 ( .A0(N98), .A1(n1), .B0(N76), .B1(n41), .Y(n44) );
  OR2X1 U19 ( .A(cycle[1]), .B(cycle[0]), .Y(n4) );
  OR2X1 U20 ( .A(cycle[1]), .B(cycle[0]), .Y(n2) );
  CLKINVX1 U21 ( .A(n66), .Y(n9) );
  AOI222XL U22 ( .A0(N83), .A1(n1), .B0(N68), .B1(n63), .C0(gray_addr[10]), 
        .C1(n39), .Y(n66) );
  NAND2X1 U23 ( .A(n42), .B(n43), .Y(N135) );
  AOI22X1 U24 ( .A0(gray_addr[5]), .A1(n39), .B0(N121), .B1(n11), .Y(n43) );
  AOI22X1 U25 ( .A0(N99), .A1(n1), .B0(N77), .B1(n41), .Y(n42) );
  NAND2X1 U26 ( .A(n46), .B(n47), .Y(N133) );
  AOI22X1 U27 ( .A0(gray_addr[3]), .A1(n39), .B0(N119), .B1(n11), .Y(n47) );
  AOI22X1 U28 ( .A0(N97), .A1(n1), .B0(N75), .B1(n41), .Y(n46) );
  NAND2X1 U29 ( .A(n37), .B(n38), .Y(N136) );
  AOI22X1 U30 ( .A0(gray_addr[6]), .A1(n39), .B0(N122), .B1(n11), .Y(n38) );
  AOI22X1 U31 ( .A0(N100), .A1(n1), .B0(N78), .B1(n41), .Y(n37) );
  CLKINVX1 U32 ( .A(n62), .Y(n6) );
  AOI222XL U33 ( .A0(N86), .A1(n1), .B0(N71), .B1(n63), .C0(gray_addr[13]), 
        .C1(n39), .Y(n62) );
  CLKINVX1 U34 ( .A(n65), .Y(n8) );
  AOI222XL U35 ( .A0(N84), .A1(n1), .B0(N69), .B1(n63), .C0(gray_addr[11]), 
        .C1(n39), .Y(n65) );
  CLKINVX1 U36 ( .A(n64), .Y(n7) );
  AOI222XL U37 ( .A0(N85), .A1(n1), .B0(N70), .B1(n63), .C0(gray_addr[12]), 
        .C1(n39), .Y(n64) );
  NAND2X1 U38 ( .A(cycle[1]), .B(cycle[0]), .Y(n60) );
  AND2X2 U39 ( .A(initialize), .B(n78), .Y(n52) );
  OAI21XL U40 ( .A0(cycle[2]), .A1(cycle[1]), .B0(cycle[3]), .Y(n78) );
  NAND2X1 U41 ( .A(n48), .B(n49), .Y(N132) );
  AOI22X1 U42 ( .A0(gray_addr[2]), .A1(n39), .B0(N118), .B1(n11), .Y(n49) );
  AOI22X1 U43 ( .A0(N96), .A1(n1), .B0(N74), .B1(n41), .Y(n48) );
  NAND2X1 U44 ( .A(n50), .B(n51), .Y(N131) );
  AOI22X1 U45 ( .A0(N95), .A1(n1), .B0(N73), .B1(n41), .Y(n50) );
  AOI222XL U46 ( .A0(N73), .A1(n11), .B0(n52), .B1(n53), .C0(gray_addr[1]), 
        .C1(n39), .Y(n51) );
  CLKINVX1 U47 ( .A(lbp_addr[1]), .Y(N73) );
  NAND2X1 U48 ( .A(n71), .B(n72), .Y(N123) );
  AOI22X1 U49 ( .A0(gray_addr[7]), .A1(n39), .B0(N80), .B1(n1), .Y(n71) );
  AOI22X1 U50 ( .A0(n52), .A1(n73), .B0(N65), .B1(n63), .Y(n72) );
  OAI21XL U51 ( .A0(cycle[2]), .A1(n60), .B0(n54), .Y(n73) );
  NAND2X1 U52 ( .A(n68), .B(n69), .Y(N124) );
  AOI22X1 U53 ( .A0(gray_addr[8]), .A1(n39), .B0(N81), .B1(n1), .Y(n68) );
  AOI22X1 U54 ( .A0(n52), .A1(n70), .B0(N66), .B1(n63), .Y(n69) );
  CLKINVX1 U55 ( .A(lbp_addr[8]), .Y(N81) );
  OAI211X1 U56 ( .A0(n56), .A1(n12), .B0(n57), .C0(n58), .Y(N130) );
  CLKINVX1 U57 ( .A(N72), .Y(n12) );
  AOI22X1 U58 ( .A0(N94), .A1(n1), .B0(N72), .B1(n41), .Y(n58) );
  AOI32X1 U59 ( .A0(n59), .A1(n13), .A2(n52), .B0(gray_addr[0]), .B1(n39), .Y(
        n57) );
  CLKINVX1 U60 ( .A(n67), .Y(n10) );
  AOI222XL U61 ( .A0(N82), .A1(n1), .B0(N67), .B1(n63), .C0(gray_addr[9]), 
        .C1(n39), .Y(n67) );
  CLKINVX1 U62 ( .A(cycle[2]), .Y(n15) );
  NAND2X1 U63 ( .A(cycle[2]), .B(n14), .Y(n54) );
  CLKINVX1 U64 ( .A(cycle[1]), .Y(n14) );
  CLKINVX1 U65 ( .A(cycle[3]), .Y(n13) );
  OAI221XL U66 ( .A0(n15), .A1(n60), .B0(cycle[0]), .B1(n54), .C0(n61), .Y(n59) );
  NAND3X1 U67 ( .A(n14), .B(n15), .C(cycle[0]), .Y(n61) );
  OAI211X1 U68 ( .A0(N87), .A1(n54), .B0(n55), .C0(n13), .Y(n53) );
  NAND3X1 U69 ( .A(N87), .B(n15), .C(cycle[1]), .Y(n55) );
  CLKINVX1 U70 ( .A(reset), .Y(n16) );
  XNOR2X1 U71 ( .A(lbp_addr[6]), .B(\sub_84/carry[6] ), .Y(N122) );
  OR2X1 U72 ( .A(lbp_addr[5]), .B(\sub_84/carry[5] ), .Y(\sub_84/carry[6] ) );
  XNOR2X1 U73 ( .A(\sub_84/carry[5] ), .B(lbp_addr[5]), .Y(N121) );
  OR2X1 U74 ( .A(lbp_addr[4]), .B(\sub_84/carry[4] ), .Y(\sub_84/carry[5] ) );
  XNOR2X1 U75 ( .A(\sub_84/carry[4] ), .B(lbp_addr[4]), .Y(N120) );
  OR2X1 U76 ( .A(lbp_addr[3]), .B(\sub_84/carry[3] ), .Y(\sub_84/carry[4] ) );
  XNOR2X1 U77 ( .A(\sub_84/carry[3] ), .B(lbp_addr[3]), .Y(N119) );
  OR2X1 U78 ( .A(lbp_addr[2]), .B(lbp_addr[1]), .Y(\sub_84/carry[3] ) );
  XNOR2X1 U79 ( .A(lbp_addr[1]), .B(lbp_addr[2]), .Y(N118) );
  XOR2X1 U80 ( .A(lbp_addr[6]), .B(\add_76/carry[6] ), .Y(N78) );
  AND2X1 U81 ( .A(\add_76/carry[5] ), .B(lbp_addr[5]), .Y(\add_76/carry[6] )
         );
  XOR2X1 U82 ( .A(lbp_addr[5]), .B(\add_76/carry[5] ), .Y(N77) );
  AND2X1 U83 ( .A(\add_76/carry[4] ), .B(lbp_addr[4]), .Y(\add_76/carry[5] )
         );
  XOR2X1 U84 ( .A(lbp_addr[4]), .B(\add_76/carry[4] ), .Y(N76) );
  AND2X1 U85 ( .A(\add_76/carry[3] ), .B(lbp_addr[3]), .Y(\add_76/carry[4] )
         );
  XOR2X1 U86 ( .A(lbp_addr[3]), .B(\add_76/carry[3] ), .Y(N75) );
  AND2X1 U87 ( .A(lbp_addr[1]), .B(lbp_addr[2]), .Y(\add_76/carry[3] ) );
  XOR2X1 U88 ( .A(lbp_addr[2]), .B(lbp_addr[1]), .Y(N74) );
  XOR2X1 U89 ( .A(lbp_addr[13]), .B(\add_79/carry[6] ), .Y(N86) );
  AND2X1 U90 ( .A(\add_79/carry[5] ), .B(lbp_addr[12]), .Y(\add_79/carry[6] )
         );
  XOR2X1 U91 ( .A(lbp_addr[12]), .B(\add_79/carry[5] ), .Y(N85) );
  AND2X1 U92 ( .A(\add_79/carry[4] ), .B(lbp_addr[11]), .Y(\add_79/carry[5] )
         );
  XOR2X1 U93 ( .A(lbp_addr[11]), .B(\add_79/carry[4] ), .Y(N84) );
  AND2X1 U94 ( .A(\add_79/carry[3] ), .B(lbp_addr[10]), .Y(\add_79/carry[4] )
         );
  XOR2X1 U95 ( .A(lbp_addr[10]), .B(\add_79/carry[3] ), .Y(N83) );
  AND2X1 U96 ( .A(lbp_addr[8]), .B(lbp_addr[9]), .Y(\add_79/carry[3] ) );
  XOR2X1 U97 ( .A(lbp_addr[9]), .B(lbp_addr[8]), .Y(N82) );
  OAI2BB1X1 U98 ( .A0N(cycle[0]), .A1N(cycle[1]), .B0(n2), .Y(N59) );
  OR2X1 U99 ( .A(n2), .B(cycle[2]), .Y(n3) );
  OAI2BB1X1 U100 ( .A0N(n2), .A1N(cycle[2]), .B0(n3), .Y(N60) );
  NOR2X1 U101 ( .A(n3), .B(cycle[3]), .Y(N64) );
  AO21X1 U102 ( .A0(n3), .A1(cycle[3]), .B0(N64), .Y(N61) );
  CLKINVX1 U103 ( .A(cycle[0]), .Y(N87) );
  OAI2BB1X1 U104 ( .A0N(cycle[0]), .A1N(cycle[1]), .B0(n4), .Y(N88) );
  OR2X1 U105 ( .A(n4), .B(cycle[2]), .Y(n5) );
  OAI2BB1X1 U106 ( .A0N(n4), .A1N(cycle[2]), .B0(n5), .Y(N89) );
  NOR2X1 U107 ( .A(n5), .B(cycle[3]), .Y(N93) );
  AO21X1 U108 ( .A0(n5), .A1(cycle[3]), .B0(N93), .Y(N90) );
endmodule


module lbp_addr_ctrl_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module lbp_addr_ctrl_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module lbp_addr_ctrl ( clk, reset, lbp_addr, cycle, cycle4, right, down, left, 
        initialize );
  output [13:0] lbp_addr;
  input [3:0] cycle;
  input clk, reset, cycle4, initialize;
  output right, down, left;
  wire   N13, N14, N15, N16, N17, N18, N19, N30, N31, N32, N33, N34, N35, N37,
         N38, N39, N40, N41, N42, N43, n20, n46, n47, n48, n49, n50, n51, n52,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n53, n54, n55, n56, n57, n58;

  lbp_addr_ctrl_DW01_inc_0 add_33 ( .A(lbp_addr[13:7]), .SUM({N43, N42, N41, 
        N40, N39, N38, N37}) );
  lbp_addr_ctrl_DW01_inc_1 r372 ( .A(lbp_addr[6:0]), .SUM({N19, N18, N17, N16, 
        N15, N14, N13}) );
  DFFRXL \lbp_addr_row_reg[6]  ( .D(n46), .CK(clk), .RN(n58), .Q(lbp_addr[13]), 
        .QN(n34) );
  DFFRX1 \lbp_addr_row_reg[4]  ( .D(n48), .CK(clk), .RN(n58), .Q(lbp_addr[11]), 
        .QN(n36) );
  DFFRX1 \lbp_addr_row_reg[5]  ( .D(n47), .CK(clk), .RN(n58), .Q(lbp_addr[12]), 
        .QN(n35) );
  DFFSX1 \lbp_addr_row_reg[0]  ( .D(n52), .CK(clk), .SN(n58), .Q(lbp_addr[7]), 
        .QN(n40) );
  DFFRX1 \lbp_addr_row_reg[2]  ( .D(n50), .CK(clk), .RN(n58), .Q(lbp_addr[9]), 
        .QN(n38) );
  DFFRX1 \lbp_addr_row_reg[3]  ( .D(n49), .CK(clk), .RN(n58), .Q(lbp_addr[10]), 
        .QN(n37) );
  DFFRX1 \lbp_addr_row_reg[1]  ( .D(n51), .CK(clk), .RN(n58), .Q(lbp_addr[8]), 
        .QN(n39) );
  DFFRX1 \lbp_addr_col_reg[3]  ( .D(n54), .CK(clk), .RN(n58), .Q(lbp_addr[3])
         );
  DFFRX1 \lbp_addr_col_reg[2]  ( .D(n55), .CK(clk), .RN(n58), .Q(lbp_addr[2])
         );
  DFFRX1 \lbp_addr_col_reg[5]  ( .D(n45), .CK(clk), .RN(n58), .Q(lbp_addr[5]), 
        .QN(n41) );
  DFFRX1 \lbp_addr_col_reg[6]  ( .D(n44), .CK(clk), .RN(n58), .Q(lbp_addr[6]), 
        .QN(n42) );
  DFFRX1 \lbp_addr_col_reg[0]  ( .D(n57), .CK(clk), .RN(n58), .Q(lbp_addr[0]), 
        .QN(n20) );
  DFFRX1 \lbp_addr_col_reg[1]  ( .D(n56), .CK(clk), .RN(n58), .Q(lbp_addr[1])
         );
  DFFRX1 \lbp_addr_col_reg[4]  ( .D(n53), .CK(clk), .RN(n58), .Q(lbp_addr[4]), 
        .QN(n43) );
  OR2X1 U3 ( .A(lbp_addr[1]), .B(lbp_addr[0]), .Y(n1) );
  OAI2BB1X1 U4 ( .A0N(lbp_addr[0]), .A1N(lbp_addr[1]), .B0(n1), .Y(N30) );
  OR2X1 U5 ( .A(n1), .B(lbp_addr[2]), .Y(n2) );
  OAI2BB1X1 U6 ( .A0N(n1), .A1N(lbp_addr[2]), .B0(n2), .Y(N31) );
  NOR2X1 U7 ( .A(n2), .B(lbp_addr[3]), .Y(n3) );
  AO21X1 U8 ( .A0(n2), .A1(lbp_addr[3]), .B0(n3), .Y(N32) );
  NAND2X1 U9 ( .A(n3), .B(n43), .Y(n4) );
  OAI21XL U10 ( .A0(n3), .A1(n43), .B0(n4), .Y(N33) );
  XNOR2X1 U11 ( .A(lbp_addr[5]), .B(n4), .Y(N34) );
  NOR2X1 U12 ( .A(lbp_addr[5]), .B(n4), .Y(n5) );
  XOR2X1 U13 ( .A(lbp_addr[6]), .B(n5), .Y(N35) );
  CLKINVX1 U14 ( .A(n6), .Y(right) );
  CLKINVX1 U15 ( .A(n7), .Y(n44) );
  AOI222XL U16 ( .A0(N35), .A1(n8), .B0(n9), .B1(lbp_addr[6]), .C0(N19), .C1(
        n10), .Y(n7) );
  CLKINVX1 U17 ( .A(n11), .Y(n45) );
  AOI222XL U18 ( .A0(N34), .A1(n8), .B0(n9), .B1(lbp_addr[5]), .C0(N18), .C1(
        n10), .Y(n11) );
  CLKINVX1 U19 ( .A(n12), .Y(n53) );
  AOI222XL U20 ( .A0(N33), .A1(n8), .B0(n9), .B1(lbp_addr[4]), .C0(N17), .C1(
        n10), .Y(n12) );
  CLKINVX1 U21 ( .A(n13), .Y(n54) );
  AOI222XL U22 ( .A0(N32), .A1(n8), .B0(n9), .B1(lbp_addr[3]), .C0(N16), .C1(
        n10), .Y(n13) );
  CLKINVX1 U23 ( .A(n14), .Y(n55) );
  AOI222XL U24 ( .A0(N31), .A1(n8), .B0(n9), .B1(lbp_addr[2]), .C0(N15), .C1(
        n10), .Y(n14) );
  CLKINVX1 U25 ( .A(n15), .Y(n56) );
  AOI222XL U26 ( .A0(N30), .A1(n8), .B0(n9), .B1(lbp_addr[1]), .C0(N14), .C1(
        n10), .Y(n15) );
  CLKINVX1 U27 ( .A(n16), .Y(n57) );
  AOI222XL U28 ( .A0(n20), .A1(n8), .B0(n9), .B1(lbp_addr[0]), .C0(N13), .C1(
        n10), .Y(n16) );
  OAI21XL U29 ( .A0(n17), .A1(n6), .B0(n18), .Y(n10) );
  OAI21XL U30 ( .A0(n19), .A1(n21), .B0(n22), .Y(n9) );
  CLKINVX1 U31 ( .A(n18), .Y(n19) );
  NAND4BX1 U32 ( .AN(cycle[0]), .B(initialize), .C(cycle[3]), .D(n23), .Y(n18)
         );
  NOR2X1 U33 ( .A(cycle[2]), .B(cycle[1]), .Y(n23) );
  CLKINVX1 U34 ( .A(reset), .Y(n58) );
  OAI2BB2XL U35 ( .B0(n40), .B1(n24), .A0N(N37), .A1N(n25), .Y(n52) );
  OAI2BB2XL U36 ( .B0(n39), .B1(n24), .A0N(N38), .A1N(n25), .Y(n51) );
  OAI2BB2XL U37 ( .B0(n38), .B1(n24), .A0N(N39), .A1N(n25), .Y(n50) );
  OAI2BB2XL U38 ( .B0(n37), .B1(n24), .A0N(N40), .A1N(n25), .Y(n49) );
  OAI2BB2XL U39 ( .B0(n36), .B1(n24), .A0N(N41), .A1N(n25), .Y(n48) );
  OAI2BB2XL U40 ( .B0(n35), .B1(n24), .A0N(N42), .A1N(n25), .Y(n47) );
  OAI2BB2XL U41 ( .B0(n34), .B1(n24), .A0N(N43), .A1N(n25), .Y(n46) );
  CLKINVX1 U42 ( .A(n22), .Y(n25) );
  AND2X1 U43 ( .A(n26), .B(n21), .Y(n24) );
  NAND2X1 U44 ( .A(n26), .B(n22), .Y(n21) );
  NAND2BX1 U45 ( .AN(n17), .B(down), .Y(n22) );
  AOI2BB1X1 U46 ( .A0N(n17), .A1N(n6), .B0(n8), .Y(n26) );
  NOR2X1 U47 ( .A(n27), .B(n17), .Y(n8) );
  NAND4BBXL U48 ( .AN(cycle[2]), .BN(cycle[3]), .C(cycle[1]), .D(cycle[0]), 
        .Y(n17) );
  CLKINVX1 U49 ( .A(n27), .Y(left) );
  AND4X1 U50 ( .A(n28), .B(n6), .C(n27), .D(n29), .Y(down) );
  NAND2X1 U51 ( .A(n40), .B(n30), .Y(n27) );
  NAND4BX1 U52 ( .AN(n40), .B(cycle4), .C(n31), .D(n29), .Y(n6) );
  CLKINVX1 U53 ( .A(initialize), .Y(n29) );
  MXI2X1 U54 ( .A(n30), .B(n31), .S0(n20), .Y(n28) );
  NAND4X1 U55 ( .A(lbp_addr[3]), .B(lbp_addr[2]), .C(lbp_addr[1]), .D(n32), 
        .Y(n31) );
  NOR3X1 U56 ( .A(n43), .B(n41), .C(n42), .Y(n32) );
  NAND4X1 U57 ( .A(n42), .B(n43), .C(n41), .D(n33), .Y(n30) );
  NOR3X1 U58 ( .A(lbp_addr[2]), .B(lbp_addr[1]), .C(lbp_addr[3]), .Y(n33) );
endmodule


module gray_data_matrix ( clk, reset, gray_data, lbp_data, right, down, left, 
        initialize, cycle );
  input [7:0] gray_data;
  output [7:0] lbp_data;
  input [3:0] cycle;
  input clk, reset, right, down, left, initialize;
  wire   n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408;

  DFFRX1 \g2_reg[6]  ( .D(n224), .CK(clk), .RN(n106), .Q(n20), .QN(n75) );
  DFFRX1 \g2_reg[2]  ( .D(n228), .CK(clk), .RN(n104), .Q(n8), .QN(n79) );
  DFFRX1 \g2_reg[1]  ( .D(n229), .CK(clk), .RN(n103), .Q(n9), .QN(n80) );
  DFFRX1 \g2_reg[0]  ( .D(n230), .CK(clk), .RN(n103), .Q(n23), .QN(n81) );
  DFFRX1 \g4_reg[6]  ( .D(n232), .CK(clk), .RN(n106), .Q(n4), .QN(n67) );
  DFFRX1 \g4_reg[2]  ( .D(n236), .CK(clk), .RN(n104), .Q(n18), .QN(n71) );
  DFFRX1 \g4_reg[1]  ( .D(n237), .CK(clk), .RN(n103), .Q(n19), .QN(n72) );
  DFFRX1 \g4_reg[0]  ( .D(n238), .CK(clk), .RN(n103), .Q(n7), .QN(n73) );
  DFFRX1 \g0_reg[6]  ( .D(n208), .CK(clk), .RN(n106), .Q(n31), .QN(n401) );
  DFFRX1 \g0_reg[0]  ( .D(n214), .CK(clk), .RN(n103), .QN(n403) );
  DFFRX1 \g2_reg[3]  ( .D(n227), .CK(clk), .RN(n104), .Q(n21), .QN(n78) );
  DFFRX1 \g2_reg[4]  ( .D(n226), .CK(clk), .RN(n105), .Q(n22), .QN(n77) );
  DFFRX1 \g4_reg[3]  ( .D(n235), .CK(clk), .RN(n104), .Q(n5), .QN(n70) );
  DFFRX1 \g0_reg[3]  ( .D(n211), .CK(clk), .RN(n104), .QN(n407) );
  DFFRX1 \g0_reg[4]  ( .D(n210), .CK(clk), .RN(n105), .QN(n405) );
  DFFRX1 \g4_reg[4]  ( .D(n234), .CK(clk), .RN(n105), .Q(n6), .QN(n69) );
  DFFRX1 \g1_reg[6]  ( .D(n216), .CK(clk), .RN(n106), .Q(n30), .QN(n35) );
  DFFRX1 \g3_reg[6]  ( .D(n240), .CK(clk), .RN(n106), .Q(n26), .QN(n91) );
  DFFRX1 \g7_reg[6]  ( .D(n272), .CK(clk), .RN(n108), .Q(n29), .QN(n59) );
  DFFRX1 \g0_reg[1]  ( .D(n213), .CK(clk), .RN(n103), .Q(n100), .QN(n404) );
  DFFRX1 \g1_reg[0]  ( .D(n222), .CK(clk), .RN(n103), .QN(n41) );
  DFFRX1 \g7_reg[0]  ( .D(n278), .CK(clk), .RN(n107), .QN(n65) );
  DFFRX1 \g0_reg[7]  ( .D(n207), .CK(clk), .RN(n106), .QN(n400) );
  DFFRX1 \g0_reg[5]  ( .D(n209), .CK(clk), .RN(n105), .QN(n406) );
  DFFRX1 \g5_reg[6]  ( .D(n256), .CK(clk), .RN(n108), .Q(n28), .QN(n43) );
  DFFRX1 \g0_reg[2]  ( .D(n212), .CK(clk), .RN(n104), .QN(n402) );
  DFFRX1 \g6_reg[6]  ( .D(n264), .CK(clk), .RN(n108), .Q(n27), .QN(n51) );
  DFFRX1 \g2_reg[7]  ( .D(n223), .CK(clk), .RN(n106), .Q(n25), .QN(n74) );
  DFFRX1 \g2_reg[5]  ( .D(n225), .CK(clk), .RN(n105), .Q(n24), .QN(n76) );
  DFFRX1 \g5_reg[0]  ( .D(n262), .CK(clk), .RN(n107), .QN(n49) );
  DFFRX1 \g1_reg[4]  ( .D(n218), .CK(clk), .RN(n105), .QN(n37) );
  DFFRX1 \g4_reg[7]  ( .D(n231), .CK(clk), .RN(n106), .Q(n11), .QN(n66) );
  DFFRX1 \g4_reg[5]  ( .D(n233), .CK(clk), .RN(n105), .Q(n10), .QN(n68) );
  DFFRX1 \g6_reg[0]  ( .D(n270), .CK(clk), .RN(n107), .QN(n57) );
  DFFRX1 \g7_reg[4]  ( .D(n274), .CK(clk), .RN(n108), .QN(n61) );
  DFFRX1 \g1_reg[3]  ( .D(n219), .CK(clk), .RN(n104), .QN(n38) );
  DFFRX1 \g7_reg[3]  ( .D(n275), .CK(clk), .RN(n107), .QN(n62) );
  DFFRX1 \g3_reg[0]  ( .D(n254), .CK(clk), .RN(n103), .QN(n97) );
  DFFRX1 \g5_reg[4]  ( .D(n258), .CK(clk), .RN(n108), .QN(n45) );
  DFFRX1 \g5_reg[3]  ( .D(n259), .CK(clk), .RN(n107), .QN(n46) );
  DFFRX1 \g1_reg[1]  ( .D(n221), .CK(clk), .RN(n103), .Q(n99), .QN(n40) );
  DFFRX1 \g7_reg[1]  ( .D(n277), .CK(clk), .RN(n107), .Q(n98), .QN(n64) );
  DFFRX1 \g3_reg[1]  ( .D(n245), .CK(clk), .RN(n103), .QN(n96) );
  DFFRX1 \g1_reg[7]  ( .D(n215), .CK(clk), .RN(n106), .QN(n34) );
  DFFRX1 \g1_reg[5]  ( .D(n217), .CK(clk), .RN(n105), .QN(n36) );
  DFFRX1 \g6_reg[3]  ( .D(n267), .CK(clk), .RN(n107), .QN(n54) );
  DFFRX1 \g7_reg[7]  ( .D(n271), .CK(clk), .RN(n108), .QN(n58) );
  DFFRX1 \g7_reg[5]  ( .D(n273), .CK(clk), .RN(n108), .QN(n60) );
  DFFRX1 \g6_reg[4]  ( .D(n266), .CK(clk), .RN(n108), .QN(n53) );
  DFFRX1 \g3_reg[3]  ( .D(n243), .CK(clk), .RN(n104), .QN(n94) );
  DFFRX1 \g3_reg[4]  ( .D(n242), .CK(clk), .RN(n105), .QN(n93) );
  DFFRX1 \g1_reg[2]  ( .D(n220), .CK(clk), .RN(n104), .QN(n39) );
  DFFRX1 \g7_reg[2]  ( .D(n276), .CK(clk), .RN(n107), .QN(n63) );
  DFFRX1 \g5_reg[1]  ( .D(n261), .CK(clk), .RN(n107), .Q(n33), .QN(n48) );
  DFFRX1 \g5_reg[7]  ( .D(n255), .CK(clk), .RN(n108), .QN(n42) );
  DFFRX1 \g5_reg[5]  ( .D(n257), .CK(clk), .RN(n108), .QN(n44) );
  DFFRX1 \g6_reg[1]  ( .D(n269), .CK(clk), .RN(n107), .Q(n32), .QN(n56) );
  DFFRX1 \g5_reg[2]  ( .D(n260), .CK(clk), .RN(n107), .QN(n47) );
  DFFRX1 \g6_reg[7]  ( .D(n263), .CK(clk), .RN(n108), .QN(n50) );
  DFFRX1 \g6_reg[5]  ( .D(n265), .CK(clk), .RN(n108), .QN(n52) );
  DFFRX1 \g3_reg[7]  ( .D(n239), .CK(clk), .RN(n106), .QN(n90) );
  DFFRX1 \g3_reg[5]  ( .D(n241), .CK(clk), .RN(n105), .QN(n92) );
  DFFRX1 \g6_reg[2]  ( .D(n268), .CK(clk), .RN(n107), .QN(n55) );
  DFFRX1 \g3_reg[2]  ( .D(n244), .CK(clk), .RN(n104), .QN(n95) );
  DFFRX1 \gc_reg[0]  ( .D(n253), .CK(clk), .RN(n103), .Q(n16), .QN(n89) );
  DFFRX1 \gc_reg[7]  ( .D(n246), .CK(clk), .RN(n106), .Q(n13), .QN(n82) );
  DFFRX1 \gc_reg[5]  ( .D(n248), .CK(clk), .RN(n105), .Q(n12), .QN(n84) );
  DFFRX1 \gc_reg[1]  ( .D(n252), .CK(clk), .RN(n103), .Q(n3), .QN(n88) );
  DFFRX1 \gc_reg[2]  ( .D(n251), .CK(clk), .RN(n104), .Q(n2), .QN(n87) );
  DFFRX1 \gc_reg[3]  ( .D(n250), .CK(clk), .RN(n104), .Q(n14), .QN(n86) );
  DFFRX1 \gc_reg[4]  ( .D(n249), .CK(clk), .RN(n105), .Q(n15), .QN(n85) );
  DFFRX1 \gc_reg[6]  ( .D(n247), .CK(clk), .RN(n106), .Q(n17), .QN(n83) );
  NAND2X1 U2 ( .A(n182), .B(n194), .Y(n1) );
  CLKINVX1 U3 ( .A(n171), .Y(n123) );
  NAND2X1 U4 ( .A(n290), .B(n194), .Y(n147) );
  NAND2X1 U5 ( .A(n136), .B(n137), .Y(n114) );
  CLKINVX1 U6 ( .A(n151), .Y(n160) );
  CLKBUFX3 U7 ( .A(n110), .Y(n103) );
  CLKBUFX3 U8 ( .A(n110), .Y(n104) );
  CLKBUFX3 U9 ( .A(n110), .Y(n105) );
  CLKBUFX3 U10 ( .A(n109), .Y(n106) );
  CLKBUFX3 U11 ( .A(n109), .Y(n107) );
  CLKBUFX3 U12 ( .A(n109), .Y(n108) );
  NOR2BX1 U13 ( .AN(n182), .B(n141), .Y(n170) );
  NOR2X1 U14 ( .A(n291), .B(n141), .Y(n186) );
  AOI2BB1X1 U15 ( .A0N(n140), .A1N(n141), .B0(initialize), .Y(n122) );
  NOR2X1 U16 ( .A(n170), .B(initialize), .Y(n149) );
  NOR2X1 U17 ( .A(n186), .B(initialize), .Y(n200) );
  CLKINVX1 U18 ( .A(initialize), .Y(n172) );
  CLKBUFX3 U19 ( .A(n408), .Y(n110) );
  CLKBUFX3 U20 ( .A(n408), .Y(n109) );
  NAND2X1 U21 ( .A(n290), .B(n136), .Y(n101) );
  NAND2X1 U22 ( .A(n290), .B(n136), .Y(n102) );
  CLKINVX1 U23 ( .A(reset), .Y(n408) );
  OAI222XL U24 ( .A0(n65), .A1(n111), .B0(n112), .B1(n113), .C0(n57), .C1(n114), .Y(n278) );
  OAI222XL U25 ( .A0(n64), .A1(n111), .B0(n112), .B1(n115), .C0(n56), .C1(n114), .Y(n277) );
  OAI222XL U26 ( .A0(n63), .A1(n111), .B0(n112), .B1(n116), .C0(n55), .C1(n114), .Y(n276) );
  OAI222XL U27 ( .A0(n62), .A1(n111), .B0(n112), .B1(n117), .C0(n54), .C1(n114), .Y(n275) );
  OAI222XL U28 ( .A0(n61), .A1(n111), .B0(n112), .B1(n118), .C0(n53), .C1(n114), .Y(n274) );
  OAI222XL U29 ( .A0(n60), .A1(n111), .B0(n112), .B1(n119), .C0(n52), .C1(n114), .Y(n273) );
  OAI222XL U30 ( .A0(n59), .A1(n111), .B0(n112), .B1(n120), .C0(n51), .C1(n114), .Y(n272) );
  OAI222XL U31 ( .A0(n58), .A1(n111), .B0(n112), .B1(n121), .C0(n50), .C1(n114), .Y(n271) );
  NOR2BX1 U32 ( .AN(n122), .B(n123), .Y(n112) );
  AND2X1 U33 ( .A(n124), .B(n125), .Y(n111) );
  OAI221XL U34 ( .A0(n65), .A1(n122), .B0(n113), .B1(n1), .C0(n126), .Y(n270)
         );
  OA22X1 U35 ( .A0(n127), .A1(n57), .B0(n114), .B1(n49), .Y(n126) );
  OAI221XL U36 ( .A0(n64), .A1(n122), .B0(n115), .B1(n1), .C0(n128), .Y(n269)
         );
  OA22X1 U37 ( .A0(n127), .A1(n56), .B0(n114), .B1(n48), .Y(n128) );
  OAI221XL U38 ( .A0(n63), .A1(n122), .B0(n116), .B1(n1), .C0(n129), .Y(n268)
         );
  OA22X1 U39 ( .A0(n127), .A1(n55), .B0(n114), .B1(n47), .Y(n129) );
  OAI221XL U40 ( .A0(n62), .A1(n122), .B0(n117), .B1(n1), .C0(n130), .Y(n267)
         );
  OA22X1 U41 ( .A0(n127), .A1(n54), .B0(n114), .B1(n46), .Y(n130) );
  OAI221XL U42 ( .A0(n61), .A1(n122), .B0(n118), .B1(n1), .C0(n131), .Y(n266)
         );
  OA22X1 U43 ( .A0(n127), .A1(n53), .B0(n114), .B1(n45), .Y(n131) );
  OAI221XL U44 ( .A0(n60), .A1(n122), .B0(n119), .B1(n1), .C0(n132), .Y(n265)
         );
  OA22X1 U45 ( .A0(n114), .A1(n44), .B0(n127), .B1(n52), .Y(n132) );
  OAI221XL U46 ( .A0(n59), .A1(n122), .B0(n120), .B1(n1), .C0(n133), .Y(n264)
         );
  OA22X1 U47 ( .A0(n127), .A1(n51), .B0(n114), .B1(n43), .Y(n133) );
  OAI221XL U48 ( .A0(n58), .A1(n122), .B0(n121), .B1(n1), .C0(n134), .Y(n263)
         );
  OA22X1 U49 ( .A0(n114), .A1(n42), .B0(n127), .B1(n50), .Y(n134) );
  AND2X1 U50 ( .A(n135), .B(n125), .Y(n127) );
  OAI222XL U51 ( .A0(n113), .A1(n138), .B0(n49), .B1(n139), .C0(n57), .C1(n122), .Y(n262) );
  OAI222XL U52 ( .A0(n115), .A1(n138), .B0(n48), .B1(n139), .C0(n56), .C1(n122), .Y(n261) );
  OAI222XL U53 ( .A0(n116), .A1(n138), .B0(n47), .B1(n139), .C0(n55), .C1(n122), .Y(n260) );
  OAI222XL U54 ( .A0(n117), .A1(n138), .B0(n46), .B1(n139), .C0(n54), .C1(n122), .Y(n259) );
  OAI222XL U55 ( .A0(n118), .A1(n138), .B0(n45), .B1(n139), .C0(n53), .C1(n122), .Y(n258) );
  OAI222XL U56 ( .A0(n119), .A1(n138), .B0(n44), .B1(n139), .C0(n52), .C1(n122), .Y(n257) );
  OAI222XL U57 ( .A0(n120), .A1(n138), .B0(n43), .B1(n139), .C0(n51), .C1(n122), .Y(n256) );
  OAI222XL U58 ( .A0(n121), .A1(n138), .B0(n42), .B1(n139), .C0(n50), .C1(n122), .Y(n255) );
  AND2X1 U59 ( .A(n142), .B(n125), .Y(n139) );
  NAND2X1 U60 ( .A(n140), .B(n143), .Y(n125) );
  NAND2X1 U61 ( .A(n144), .B(n145), .Y(n138) );
  OAI21XL U62 ( .A0(n140), .A1(n146), .B0(n147), .Y(n145) );
  OAI221XL U63 ( .A0(n97), .A1(n148), .B0(n89), .B1(n149), .C0(n150), .Y(n254)
         );
  OA22X1 U64 ( .A0(n151), .A1(n113), .B0(n147), .B1(n49), .Y(n150) );
  OAI221XL U65 ( .A0(n89), .A1(n152), .B0(n73), .B1(n149), .C0(n153), .Y(n253)
         );
  OA22X1 U66 ( .A0(n151), .A1(n97), .B0(n57), .B1(n1), .Y(n153) );
  OAI221XL U67 ( .A0(n88), .A1(n152), .B0(n72), .B1(n149), .C0(n154), .Y(n252)
         );
  OA22X1 U68 ( .A0(n151), .A1(n96), .B0(n56), .B1(n1), .Y(n154) );
  OAI221XL U69 ( .A0(n87), .A1(n152), .B0(n71), .B1(n149), .C0(n155), .Y(n251)
         );
  OA22X1 U70 ( .A0(n151), .A1(n95), .B0(n55), .B1(n1), .Y(n155) );
  OAI221XL U71 ( .A0(n86), .A1(n152), .B0(n70), .B1(n149), .C0(n156), .Y(n250)
         );
  OA22X1 U72 ( .A0(n151), .A1(n94), .B0(n54), .B1(n1), .Y(n156) );
  OAI221XL U73 ( .A0(n85), .A1(n152), .B0(n69), .B1(n149), .C0(n157), .Y(n249)
         );
  OA22X1 U74 ( .A0(n151), .A1(n93), .B0(n53), .B1(n1), .Y(n157) );
  OAI221XL U75 ( .A0(n84), .A1(n152), .B0(n68), .B1(n149), .C0(n158), .Y(n248)
         );
  OA22X1 U76 ( .A0(n151), .A1(n92), .B0(n52), .B1(n1), .Y(n158) );
  OAI221XL U77 ( .A0(n83), .A1(n152), .B0(n67), .B1(n149), .C0(n159), .Y(n247)
         );
  AOI2BB2X1 U78 ( .B0(n160), .B1(n26), .A0N(n51), .A1N(n1), .Y(n159) );
  OAI221XL U79 ( .A0(n82), .A1(n152), .B0(n66), .B1(n149), .C0(n161), .Y(n246)
         );
  OA22X1 U80 ( .A0(n151), .A1(n90), .B0(n50), .B1(n1), .Y(n161) );
  AND2X1 U81 ( .A(n135), .B(n162), .Y(n152) );
  OAI221XL U82 ( .A0(n96), .A1(n148), .B0(n88), .B1(n149), .C0(n163), .Y(n245)
         );
  AOI2BB2X1 U83 ( .B0(n160), .B1(gray_data[1]), .A0N(n147), .A1N(n48), .Y(n163) );
  OAI221XL U84 ( .A0(n95), .A1(n148), .B0(n87), .B1(n149), .C0(n164), .Y(n244)
         );
  AOI2BB2X1 U85 ( .B0(n160), .B1(gray_data[2]), .A0N(n147), .A1N(n47), .Y(n164) );
  OAI221XL U86 ( .A0(n94), .A1(n148), .B0(n86), .B1(n149), .C0(n165), .Y(n243)
         );
  AOI2BB2X1 U87 ( .B0(n160), .B1(gray_data[3]), .A0N(n147), .A1N(n46), .Y(n165) );
  OAI221XL U88 ( .A0(n93), .A1(n148), .B0(n85), .B1(n149), .C0(n166), .Y(n242)
         );
  AOI2BB2X1 U89 ( .B0(n160), .B1(gray_data[4]), .A0N(n147), .A1N(n45), .Y(n166) );
  OAI221XL U90 ( .A0(n92), .A1(n148), .B0(n84), .B1(n149), .C0(n167), .Y(n241)
         );
  AOI2BB2X1 U91 ( .B0(n160), .B1(gray_data[5]), .A0N(n147), .A1N(n44), .Y(n167) );
  OAI221XL U92 ( .A0(n91), .A1(n148), .B0(n83), .B1(n149), .C0(n168), .Y(n240)
         );
  AOI2BB2X1 U93 ( .B0(n160), .B1(gray_data[6]), .A0N(n147), .A1N(n43), .Y(n168) );
  OAI221XL U94 ( .A0(n90), .A1(n148), .B0(n82), .B1(n149), .C0(n169), .Y(n239)
         );
  AOI2BB2X1 U95 ( .B0(n160), .B1(gray_data[7]), .A0N(n147), .A1N(n42), .Y(n169) );
  AND2X1 U96 ( .A(n142), .B(n162), .Y(n148) );
  OAI221XL U97 ( .A0(n65), .A1(n171), .B0(n49), .B1(n172), .C0(n173), .Y(n238)
         );
  AOI222XL U98 ( .A0(n160), .A1(n16), .B0(n170), .B1(gray_data[0]), .C0(n174), 
        .C1(n7), .Y(n173) );
  OAI221XL U99 ( .A0(n64), .A1(n171), .B0(n48), .B1(n172), .C0(n175), .Y(n237)
         );
  AOI222XL U100 ( .A0(n160), .A1(n3), .B0(n170), .B1(gray_data[1]), .C0(n174), 
        .C1(n19), .Y(n175) );
  OAI221XL U101 ( .A0(n63), .A1(n171), .B0(n47), .B1(n172), .C0(n176), .Y(n236) );
  AOI222XL U102 ( .A0(n160), .A1(n2), .B0(n170), .B1(gray_data[2]), .C0(n174), 
        .C1(n18), .Y(n176) );
  OAI221XL U103 ( .A0(n62), .A1(n171), .B0(n46), .B1(n172), .C0(n177), .Y(n235) );
  AOI222XL U104 ( .A0(n160), .A1(n14), .B0(n170), .B1(gray_data[3]), .C0(n174), 
        .C1(n5), .Y(n177) );
  OAI221XL U105 ( .A0(n61), .A1(n171), .B0(n45), .B1(n172), .C0(n178), .Y(n234) );
  AOI222XL U106 ( .A0(n160), .A1(n15), .B0(n170), .B1(gray_data[4]), .C0(n174), 
        .C1(n6), .Y(n178) );
  OAI221XL U107 ( .A0(n60), .A1(n171), .B0(n44), .B1(n172), .C0(n179), .Y(n233) );
  AOI222XL U108 ( .A0(n160), .A1(n12), .B0(n170), .B1(gray_data[5]), .C0(n174), 
        .C1(n10), .Y(n179) );
  OAI221XL U109 ( .A0(n59), .A1(n171), .B0(n43), .B1(n172), .C0(n180), .Y(n232) );
  AOI222XL U110 ( .A0(n160), .A1(n17), .B0(n170), .B1(gray_data[6]), .C0(n174), 
        .C1(n4), .Y(n180) );
  OAI221XL U111 ( .A0(n58), .A1(n171), .B0(n42), .B1(n172), .C0(n181), .Y(n231) );
  AOI222XL U112 ( .A0(n160), .A1(n13), .B0(n170), .B1(gray_data[7]), .C0(n174), 
        .C1(n11), .Y(n181) );
  NAND2X1 U113 ( .A(n124), .B(n162), .Y(n174) );
  NAND2BX1 U114 ( .AN(n182), .B(n143), .Y(n162) );
  NAND2X1 U115 ( .A(n182), .B(n136), .Y(n151) );
  OAI221XL U116 ( .A0(n41), .A1(n183), .B0(n97), .B1(n172), .C0(n184), .Y(n230) );
  AOI222XL U117 ( .A0(n185), .A1(n23), .B0(n186), .B1(gray_data[0]), .C0(n123), 
        .C1(n7), .Y(n184) );
  OAI221XL U118 ( .A0(n40), .A1(n102), .B0(n96), .B1(n172), .C0(n187), .Y(n229) );
  AOI222XL U119 ( .A0(n185), .A1(n9), .B0(n186), .B1(gray_data[1]), .C0(n123), 
        .C1(n19), .Y(n187) );
  OAI221XL U120 ( .A0(n39), .A1(n101), .B0(n95), .B1(n172), .C0(n188), .Y(n228) );
  AOI222XL U121 ( .A0(n185), .A1(n8), .B0(n186), .B1(gray_data[2]), .C0(n123), 
        .C1(n18), .Y(n188) );
  OAI221XL U122 ( .A0(n38), .A1(n183), .B0(n94), .B1(n172), .C0(n189), .Y(n227) );
  AOI222XL U123 ( .A0(n185), .A1(n21), .B0(n186), .B1(gray_data[3]), .C0(n123), 
        .C1(n5), .Y(n189) );
  OAI221XL U124 ( .A0(n37), .A1(n102), .B0(n93), .B1(n172), .C0(n190), .Y(n226) );
  AOI222XL U125 ( .A0(n185), .A1(n22), .B0(n186), .B1(gray_data[4]), .C0(n123), 
        .C1(n6), .Y(n190) );
  OAI221XL U126 ( .A0(n36), .A1(n101), .B0(n92), .B1(n172), .C0(n191), .Y(n225) );
  AOI222XL U127 ( .A0(n185), .A1(n24), .B0(n186), .B1(gray_data[5]), .C0(n123), 
        .C1(n10), .Y(n191) );
  OAI221XL U128 ( .A0(n35), .A1(n183), .B0(n91), .B1(n172), .C0(n192), .Y(n224) );
  AOI222XL U129 ( .A0(n185), .A1(n20), .B0(n186), .B1(gray_data[6]), .C0(n123), 
        .C1(n4), .Y(n192) );
  OAI221XL U130 ( .A0(n34), .A1(n102), .B0(n90), .B1(n172), .C0(n193), .Y(n223) );
  AOI222XL U131 ( .A0(n185), .A1(n25), .B0(n186), .B1(gray_data[7]), .C0(n123), 
        .C1(n11), .Y(n193) );
  NAND2X1 U132 ( .A(n137), .B(n194), .Y(n171) );
  NAND2X1 U133 ( .A(n124), .B(n195), .Y(n185) );
  OA21XL U134 ( .A0(n137), .A1(n196), .B0(n144), .Y(n124) );
  CLKINVX1 U135 ( .A(n140), .Y(n137) );
  NAND3X1 U136 ( .A(cycle[0]), .B(n197), .C(cycle[1]), .Y(n140) );
  OAI221XL U137 ( .A0(n41), .A1(n198), .B0(n89), .B1(n1), .C0(n199), .Y(n222)
         );
  OA22X1 U138 ( .A0(n101), .A1(n403), .B0(n81), .B1(n200), .Y(n199) );
  OAI221XL U139 ( .A0(n40), .A1(n198), .B0(n88), .B1(n1), .C0(n201), .Y(n221)
         );
  OA22X1 U140 ( .A0(n183), .A1(n404), .B0(n80), .B1(n200), .Y(n201) );
  OAI221XL U141 ( .A0(n39), .A1(n198), .B0(n87), .B1(n1), .C0(n202), .Y(n220)
         );
  OA22X1 U142 ( .A0(n102), .A1(n402), .B0(n79), .B1(n200), .Y(n202) );
  OAI221XL U143 ( .A0(n38), .A1(n198), .B0(n86), .B1(n1), .C0(n203), .Y(n219)
         );
  OA22X1 U144 ( .A0(n101), .A1(n407), .B0(n78), .B1(n200), .Y(n203) );
  OAI221XL U145 ( .A0(n37), .A1(n198), .B0(n85), .B1(n1), .C0(n204), .Y(n218)
         );
  OA22X1 U146 ( .A0(n183), .A1(n405), .B0(n77), .B1(n200), .Y(n204) );
  OAI221XL U147 ( .A0(n36), .A1(n198), .B0(n84), .B1(n1), .C0(n205), .Y(n217)
         );
  OA22X1 U148 ( .A0(n102), .A1(n406), .B0(n76), .B1(n200), .Y(n205) );
  OAI221XL U149 ( .A0(n35), .A1(n198), .B0(n83), .B1(n1), .C0(n206), .Y(n216)
         );
  OA22X1 U150 ( .A0(n101), .A1(n401), .B0(n75), .B1(n200), .Y(n206) );
  OAI221XL U151 ( .A0(n34), .A1(n198), .B0(n82), .B1(n1), .C0(n279), .Y(n215)
         );
  OA22X1 U152 ( .A0(n183), .A1(n400), .B0(n74), .B1(n200), .Y(n279) );
  AND2X1 U153 ( .A(n135), .B(n195), .Y(n198) );
  OA21XL U154 ( .A0(n182), .A1(n196), .B0(n144), .Y(n135) );
  NOR3BXL U155 ( .AN(n197), .B(cycle[0]), .C(n280), .Y(n182) );
  OAI221XL U156 ( .A0(n41), .A1(n200), .B0(n97), .B1(n147), .C0(n281), .Y(n214) );
  OA22X1 U157 ( .A0(n282), .A1(n403), .B0(n102), .B1(n113), .Y(n281) );
  CLKINVX1 U158 ( .A(gray_data[0]), .Y(n113) );
  OAI221XL U159 ( .A0(n40), .A1(n200), .B0(n96), .B1(n147), .C0(n283), .Y(n213) );
  OA22X1 U160 ( .A0(n282), .A1(n404), .B0(n101), .B1(n115), .Y(n283) );
  CLKINVX1 U161 ( .A(gray_data[1]), .Y(n115) );
  OAI221XL U162 ( .A0(n39), .A1(n200), .B0(n95), .B1(n147), .C0(n284), .Y(n212) );
  OA22X1 U163 ( .A0(n282), .A1(n402), .B0(n183), .B1(n116), .Y(n284) );
  CLKINVX1 U164 ( .A(gray_data[2]), .Y(n116) );
  OAI221XL U165 ( .A0(n38), .A1(n200), .B0(n94), .B1(n147), .C0(n285), .Y(n211) );
  OA22X1 U166 ( .A0(n282), .A1(n407), .B0(n102), .B1(n117), .Y(n285) );
  CLKINVX1 U167 ( .A(gray_data[3]), .Y(n117) );
  OAI221XL U168 ( .A0(n37), .A1(n200), .B0(n93), .B1(n147), .C0(n286), .Y(n210) );
  OA22X1 U169 ( .A0(n282), .A1(n405), .B0(n101), .B1(n118), .Y(n286) );
  CLKINVX1 U170 ( .A(gray_data[4]), .Y(n118) );
  OAI221XL U171 ( .A0(n36), .A1(n200), .B0(n92), .B1(n147), .C0(n287), .Y(n209) );
  OA22X1 U172 ( .A0(n282), .A1(n406), .B0(n183), .B1(n119), .Y(n287) );
  CLKINVX1 U173 ( .A(gray_data[5]), .Y(n119) );
  OAI221XL U174 ( .A0(n35), .A1(n200), .B0(n91), .B1(n147), .C0(n288), .Y(n208) );
  OA22X1 U175 ( .A0(n282), .A1(n401), .B0(n102), .B1(n120), .Y(n288) );
  CLKINVX1 U176 ( .A(gray_data[6]), .Y(n120) );
  OAI221XL U177 ( .A0(n34), .A1(n200), .B0(n90), .B1(n147), .C0(n289), .Y(n207) );
  OA22X1 U178 ( .A0(n282), .A1(n400), .B0(n101), .B1(n121), .Y(n289) );
  CLKINVX1 U179 ( .A(gray_data[7]), .Y(n121) );
  NAND2X1 U180 ( .A(n290), .B(n136), .Y(n183) );
  NOR2BX1 U181 ( .AN(n144), .B(n146), .Y(n136) );
  AND2X1 U182 ( .A(n142), .B(n195), .Y(n282) );
  NAND2X1 U183 ( .A(n291), .B(n143), .Y(n195) );
  NAND2X1 U184 ( .A(n141), .B(n146), .Y(n143) );
  CLKINVX1 U185 ( .A(n292), .Y(n146) );
  OA21XL U186 ( .A0(n290), .A1(n196), .B0(n144), .Y(n142) );
  NAND2BX1 U187 ( .AN(left), .B(n292), .Y(n144) );
  NOR3X1 U188 ( .A(initialize), .B(right), .C(down), .Y(n292) );
  CLKINVX1 U189 ( .A(n194), .Y(n196) );
  NOR3BXL U190 ( .AN(down), .B(right), .C(initialize), .Y(n194) );
  CLKINVX1 U191 ( .A(n291), .Y(n290) );
  NAND2X1 U192 ( .A(right), .B(n172), .Y(n141) );
  NAND3X1 U193 ( .A(n197), .B(n280), .C(cycle[0]), .Y(n291) );
  CLKINVX1 U194 ( .A(cycle[1]), .Y(n280) );
  NOR2X1 U195 ( .A(cycle[2]), .B(cycle[3]), .Y(n197) );
  OAI211X1 U196 ( .A0(n58), .A1(n13), .B0(n293), .C0(n294), .Y(lbp_data[7]) );
  NAND3X1 U197 ( .A(n295), .B(n29), .C(n83), .Y(n294) );
  OAI211X1 U198 ( .A0(n83), .A1(n29), .B0(n295), .C0(n296), .Y(n293) );
  OAI211X1 U199 ( .A0(n60), .A1(n12), .B0(n297), .C0(n298), .Y(n296) );
  NAND3BX1 U200 ( .AN(n61), .B(n299), .C(n85), .Y(n298) );
  OAI211X1 U201 ( .A0(n300), .A1(n301), .B0(n299), .C0(n302), .Y(n297) );
  AOI2BB2X1 U202 ( .B0(n61), .B1(n15), .A0N(n301), .A1N(n303), .Y(n302) );
  AOI21X1 U203 ( .A0(n2), .A1(n63), .B0(n304), .Y(n303) );
  NAND2X1 U204 ( .A(n60), .B(n12), .Y(n299) );
  OAI32X1 U205 ( .A0(n2), .A1(n63), .A2(n304), .B0(n62), .B1(n14), .Y(n301) );
  AND2X1 U206 ( .A(n62), .B(n14), .Y(n304) );
  OA21XL U207 ( .A0(n88), .A1(n98), .B0(n305), .Y(n300) );
  OAI211X1 U208 ( .A0(n3), .A1(n64), .B0(n65), .C0(n16), .Y(n305) );
  NAND2X1 U209 ( .A(n58), .B(n13), .Y(n295) );
  OAI211X1 U210 ( .A0(n50), .A1(n13), .B0(n306), .C0(n307), .Y(lbp_data[6]) );
  NAND3X1 U211 ( .A(n308), .B(n27), .C(n83), .Y(n307) );
  OAI211X1 U212 ( .A0(n83), .A1(n27), .B0(n308), .C0(n309), .Y(n306) );
  OAI211X1 U213 ( .A0(n52), .A1(n12), .B0(n310), .C0(n311), .Y(n309) );
  NAND3BX1 U214 ( .AN(n53), .B(n312), .C(n85), .Y(n311) );
  OAI211X1 U215 ( .A0(n313), .A1(n314), .B0(n312), .C0(n315), .Y(n310) );
  AOI2BB2X1 U216 ( .B0(n53), .B1(n15), .A0N(n314), .A1N(n316), .Y(n315) );
  AOI21X1 U217 ( .A0(n2), .A1(n55), .B0(n317), .Y(n316) );
  NAND2X1 U218 ( .A(n52), .B(n12), .Y(n312) );
  OAI32X1 U219 ( .A0(n2), .A1(n55), .A2(n317), .B0(n54), .B1(n14), .Y(n314) );
  NOR2BX1 U220 ( .AN(n54), .B(n86), .Y(n317) );
  OA21XL U221 ( .A0(n88), .A1(n32), .B0(n318), .Y(n313) );
  OAI211X1 U222 ( .A0(n3), .A1(n56), .B0(n57), .C0(n16), .Y(n318) );
  NAND2X1 U223 ( .A(n50), .B(n13), .Y(n308) );
  OAI211X1 U224 ( .A0(n42), .A1(n13), .B0(n319), .C0(n320), .Y(lbp_data[5]) );
  NAND3X1 U225 ( .A(n321), .B(n28), .C(n83), .Y(n320) );
  OAI211X1 U226 ( .A0(n83), .A1(n28), .B0(n321), .C0(n322), .Y(n319) );
  OAI211X1 U227 ( .A0(n44), .A1(n12), .B0(n323), .C0(n324), .Y(n322) );
  NAND3BX1 U228 ( .AN(n45), .B(n325), .C(n85), .Y(n324) );
  OAI211X1 U229 ( .A0(n326), .A1(n327), .B0(n325), .C0(n328), .Y(n323) );
  AOI2BB2X1 U230 ( .B0(n45), .B1(n15), .A0N(n327), .A1N(n329), .Y(n328) );
  AOI21X1 U231 ( .A0(n2), .A1(n47), .B0(n330), .Y(n329) );
  NAND2X1 U232 ( .A(n44), .B(n12), .Y(n325) );
  OAI32X1 U233 ( .A0(n2), .A1(n47), .A2(n330), .B0(n46), .B1(n14), .Y(n327) );
  AND2X1 U234 ( .A(n46), .B(n14), .Y(n330) );
  OA21XL U235 ( .A0(n88), .A1(n33), .B0(n331), .Y(n326) );
  OAI211X1 U236 ( .A0(n3), .A1(n48), .B0(n49), .C0(n16), .Y(n331) );
  NAND2X1 U237 ( .A(n42), .B(n13), .Y(n321) );
  OAI211X1 U238 ( .A0(n66), .A1(n13), .B0(n332), .C0(n333), .Y(lbp_data[4]) );
  NAND3X1 U239 ( .A(n334), .B(n4), .C(n83), .Y(n333) );
  OAI211X1 U240 ( .A0(n83), .A1(n4), .B0(n334), .C0(n335), .Y(n332) );
  OAI211X1 U241 ( .A0(n68), .A1(n12), .B0(n336), .C0(n337), .Y(n335) );
  NAND3X1 U242 ( .A(n338), .B(n6), .C(n85), .Y(n337) );
  OAI211X1 U243 ( .A0(n339), .A1(n340), .B0(n338), .C0(n341), .Y(n336) );
  AOI22X1 U244 ( .A0(n342), .A1(n343), .B0(n69), .B1(n15), .Y(n341) );
  OAI21XL U245 ( .A0(n87), .A1(n18), .B0(n344), .Y(n343) );
  NAND2X1 U246 ( .A(n68), .B(n12), .Y(n338) );
  CLKINVX1 U247 ( .A(n342), .Y(n340) );
  AOI32X1 U248 ( .A0(n87), .A1(n18), .A2(n344), .B0(n5), .B1(n86), .Y(n342) );
  NAND2X1 U249 ( .A(n70), .B(n14), .Y(n344) );
  AOI2BB1X1 U250 ( .A0N(n88), .A1N(n19), .B0(n345), .Y(n339) );
  AOI211X1 U251 ( .A0(n88), .A1(n19), .B0(n7), .C0(n89), .Y(n345) );
  NAND2X1 U252 ( .A(n66), .B(n13), .Y(n334) );
  OAI211X1 U253 ( .A0(n90), .A1(n13), .B0(n346), .C0(n347), .Y(lbp_data[3]) );
  NAND3X1 U254 ( .A(n348), .B(n26), .C(n83), .Y(n347) );
  OAI211X1 U255 ( .A0(n83), .A1(n26), .B0(n348), .C0(n349), .Y(n346) );
  OAI211X1 U256 ( .A0(n92), .A1(n12), .B0(n350), .C0(n351), .Y(n349) );
  NAND3BX1 U257 ( .AN(n93), .B(n352), .C(n85), .Y(n351) );
  OAI211X1 U258 ( .A0(n353), .A1(n354), .B0(n352), .C0(n355), .Y(n350) );
  AOI2BB2X1 U259 ( .B0(n93), .B1(n15), .A0N(n354), .A1N(n356), .Y(n355) );
  AOI21X1 U260 ( .A0(n2), .A1(n95), .B0(n357), .Y(n356) );
  NAND2X1 U261 ( .A(n92), .B(n12), .Y(n352) );
  OAI32X1 U262 ( .A0(n2), .A1(n95), .A2(n357), .B0(n94), .B1(n14), .Y(n354) );
  NOR2BX1 U263 ( .AN(n94), .B(n86), .Y(n357) );
  CLKINVX1 U264 ( .A(n358), .Y(n353) );
  OAI2BB1X1 U265 ( .A0N(n3), .A1N(n96), .B0(n359), .Y(n358) );
  OAI211X1 U266 ( .A0(n3), .A1(n96), .B0(n97), .C0(n16), .Y(n359) );
  NAND2X1 U267 ( .A(n90), .B(n13), .Y(n348) );
  OAI211X1 U268 ( .A0(n74), .A1(n13), .B0(n360), .C0(n361), .Y(lbp_data[2]) );
  NAND3X1 U269 ( .A(n362), .B(n20), .C(n83), .Y(n361) );
  OAI211X1 U270 ( .A0(n83), .A1(n20), .B0(n362), .C0(n363), .Y(n360) );
  OAI211X1 U271 ( .A0(n76), .A1(n12), .B0(n364), .C0(n365), .Y(n363) );
  NAND3X1 U272 ( .A(n366), .B(n22), .C(n85), .Y(n365) );
  OAI211X1 U273 ( .A0(n367), .A1(n368), .B0(n366), .C0(n369), .Y(n364) );
  AOI22X1 U274 ( .A0(n370), .A1(n371), .B0(n77), .B1(n15), .Y(n369) );
  OAI21XL U275 ( .A0(n87), .A1(n8), .B0(n372), .Y(n371) );
  NAND2X1 U276 ( .A(n76), .B(n12), .Y(n366) );
  CLKINVX1 U277 ( .A(n370), .Y(n368) );
  AOI32X1 U278 ( .A0(n87), .A1(n8), .A2(n372), .B0(n21), .B1(n86), .Y(n370) );
  NAND2X1 U279 ( .A(n78), .B(n14), .Y(n372) );
  AOI2BB1X1 U280 ( .A0N(n88), .A1N(n9), .B0(n373), .Y(n367) );
  AOI211X1 U281 ( .A0(n88), .A1(n9), .B0(n23), .C0(n89), .Y(n373) );
  NAND2X1 U282 ( .A(n74), .B(n13), .Y(n362) );
  OAI211X1 U283 ( .A0(n34), .A1(n13), .B0(n374), .C0(n375), .Y(lbp_data[1]) );
  NAND3X1 U284 ( .A(n376), .B(n30), .C(n83), .Y(n375) );
  OAI211X1 U285 ( .A0(n83), .A1(n30), .B0(n376), .C0(n377), .Y(n374) );
  OAI211X1 U286 ( .A0(n36), .A1(n12), .B0(n378), .C0(n379), .Y(n377) );
  NAND3BX1 U287 ( .AN(n37), .B(n380), .C(n85), .Y(n379) );
  OAI211X1 U288 ( .A0(n381), .A1(n382), .B0(n380), .C0(n383), .Y(n378) );
  AOI2BB2X1 U289 ( .B0(n37), .B1(n15), .A0N(n382), .A1N(n384), .Y(n383) );
  AOI21X1 U290 ( .A0(n2), .A1(n39), .B0(n385), .Y(n384) );
  NAND2X1 U291 ( .A(n36), .B(n12), .Y(n380) );
  OAI32X1 U292 ( .A0(n2), .A1(n39), .A2(n385), .B0(n38), .B1(n14), .Y(n382) );
  AND2X1 U293 ( .A(n38), .B(n14), .Y(n385) );
  OA21XL U294 ( .A0(n88), .A1(n99), .B0(n386), .Y(n381) );
  OAI211X1 U295 ( .A0(n3), .A1(n40), .B0(n41), .C0(n16), .Y(n386) );
  NAND2X1 U296 ( .A(n34), .B(n13), .Y(n376) );
  OAI211X1 U297 ( .A0(n400), .A1(n13), .B0(n387), .C0(n388), .Y(lbp_data[0])
         );
  NAND3X1 U298 ( .A(n389), .B(n31), .C(n83), .Y(n388) );
  OAI211X1 U299 ( .A0(n83), .A1(n31), .B0(n389), .C0(n390), .Y(n387) );
  OAI211X1 U300 ( .A0(n406), .A1(n12), .B0(n391), .C0(n392), .Y(n390) );
  NAND3BX1 U301 ( .AN(n405), .B(n393), .C(n85), .Y(n392) );
  OAI211X1 U302 ( .A0(n394), .A1(n395), .B0(n393), .C0(n396), .Y(n391) );
  AOI2BB2X1 U303 ( .B0(n405), .B1(n15), .A0N(n395), .A1N(n397), .Y(n396) );
  AOI21X1 U304 ( .A0(n2), .A1(n402), .B0(n398), .Y(n397) );
  NAND2X1 U305 ( .A(n406), .B(n12), .Y(n393) );
  OAI32X1 U306 ( .A0(n2), .A1(n402), .A2(n398), .B0(n407), .B1(n14), .Y(n395)
         );
  NOR2BX1 U307 ( .AN(n407), .B(n86), .Y(n398) );
  OA21XL U308 ( .A0(n88), .A1(n100), .B0(n399), .Y(n394) );
  OAI211X1 U309 ( .A0(n3), .A1(n404), .B0(n403), .C0(n16), .Y(n399) );
  NAND2X1 U310 ( .A(n400), .B(n13), .Y(n389) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   cycle4, initialize, right, down, left;
  wire   [3:0] cycle;

  FSM fsm ( .clk(clk), .reset(reset), .gray_ready(gray_ready), .lbp_addr(
        lbp_addr), .lbp_valid(lbp_valid), .gray_req(gray_req), .finish(finish), 
        .cycle(cycle), .cycle4(cycle4), .initialize(initialize) );
  gray_addr_ctrl gray_addr_ctrl ( .clk(clk), .reset(reset), .gray_addr(
        gray_addr), .lbp_addr(lbp_addr), .cycle(cycle), .right(right), .down(
        down), .left(left), .initialize(initialize) );
  lbp_addr_ctrl lbp_addr_ctrl ( .clk(clk), .reset(reset), .lbp_addr(lbp_addr), 
        .cycle(cycle), .cycle4(cycle4), .right(right), .down(down), .left(left), .initialize(initialize) );
  gray_data_matrix gray_data_matrix ( .clk(clk), .reset(reset), .gray_data(
        gray_data), .lbp_data(lbp_data), .right(right), .down(down), .left(
        left), .initialize(initialize), .cycle(cycle) );
endmodule

