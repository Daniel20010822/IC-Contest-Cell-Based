/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jul 30 10:05:40 2022
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2X1 U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2X1 U4 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  XOR2X1 U5 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  AND2X2 U6 ( .A(A[7]), .B(carry[7]), .Y(n3) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N87, N88, N89, N90, N91, N92, N93, N94, N95, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, \Job[0][2] , \Job[0][1] , \Job[0][0] ,
         \Job[1][2] , \Job[1][1] , \Job[1][0] , \Job[2][2] , \Job[2][1] ,
         \Job[2][0] , \Job[3][2] , \Job[3][1] , \Job[3][0] , \Job[4][2] ,
         \Job[4][1] , \Job[4][0] , \Job[5][2] , \Job[5][1] , \Job[5][0] ,
         \Job[6][2] , \Job[6][1] , \Job[6][0] , \Job[7][2] , \Job[7][1] ,
         \Job[7][0] , N126, N127, N128, N227, N228, N229, N230, N231, N232,
         N320, N321, N322, N323, N324, N325, N363, N364, N365, N366, N367,
         N368, N369, N370, N371, N372, N386, N387, N428, N429, N430, N435, n55,
         n56, n57, n58, n59, n60, n61, n62, n64, n65, n66, n68, n69, n70, n71,
         n72, n74, n76, n79, n80, n81, n82, n83, n84, n85, n89, n90, n91, n92,
         n95, n96, n97, n99, n100, n101, n104, n105, n106, n107, n109, n110,
         n111, n112, n114, n115, n116, n117, n119, n123, n124, n126, n127,
         n130, n131, n134, n135, n136, n138, n140, n142, n143, n145, n146,
         n147, n148, n149, n150, n151, n152, n154, n156, n157, n158, n159,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n176, n178, n179, n180, n181, n182, n183, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n197, n199,
         n201, n202, n203, n204, n208, n209, n211, n212, n214, n215, n216,
         n218, n219, n221, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n240, n241, n243, n244, n245, n248, n249, n252,
         n253, n255, n256, n258, n259, n260, n262, n265, n267, n268, n269,
         n271, n272, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n289, n290, n291, n293, n295, n296, n297,
         n299, n300, n301, n302, n303, n304, n305, n307, n309, n310, n311,
         n312, n313, n315, n316, n335, n347, n353, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n417, n419, n422, n426, n427, n428, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n515,
         n516, n519, n521, n523, n524, n548, n549, n550, n551, n552, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n576, n577,
         n578, n579, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747;
  wire   [2:0] g_ns;
  wire   [9:0] CurCost;

  JAM_DW01_add_0 add_174 ( .A(CurCost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N372, N371, N370, N369, N368, N367, N366, N365, N364, N363}) );
  DFFNSRX1 \curmin_reg[0]  ( .D(n462), .CKN(CLK), .SN(n582), .RN(1'b1), .QN(
        n711) );
  DFFNSRX1 \curmin_reg[1]  ( .D(n463), .CKN(CLK), .SN(n582), .RN(1'b1), .QN(
        n712) );
  DFFNSRX1 \curmin_reg[2]  ( .D(n461), .CKN(CLK), .SN(n581), .RN(1'b1), .QN(
        n422) );
  DFFNSRX1 \CurCost_reg[9]  ( .D(n478), .CKN(CLK), .SN(1'b1), .RN(n582), .Q(
        CurCost[9]), .QN(n316) );
  DFFNSRX1 \CurCost_reg[5]  ( .D(n482), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[5]), .QN(n682) );
  DFFNSRX1 \CurCost_reg[6]  ( .D(n481), .CKN(CLK), .SN(1'b1), .RN(n581), .Q(
        CurCost[6]), .QN(n310) );
  DFFNSRX1 \pos_reg[2]  ( .D(n457), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(N95), 
        .QN(n419) );
  DFFNSRX1 \Job_reg[4][0]  ( .D(n444), .CKN(CLK), .SN(1'b1), .RN(n581), .Q(
        \Job[4][0] ), .QN(n406) );
  DFFNSRX1 \CurCost_reg[8]  ( .D(n479), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[8]), .QN(n680) );
  DFFNSRX1 \Job_reg[7][0]  ( .D(n453), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[7][0] ), .QN(n415) );
  DFFNSRX1 \Job_reg[7][2]  ( .D(n451), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[7][2] ), .QN(n413) );
  DFFNSRX1 \Job_reg[2][2]  ( .D(n436), .CKN(CLK), .SN(1'b1), .RN(n582), .Q(
        \Job[2][2] ), .QN(n398) );
  DFFNSRX1 \Job_reg[2][0]  ( .D(n438), .CKN(CLK), .SN(1'b1), .RN(n581), .Q(
        \Job[2][0] ), .QN(n400) );
  DFFNSRX1 \Job_reg[6][0]  ( .D(n450), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        \Job[6][0] ), .QN(n412) );
  DFFNSRX1 \Job_reg[6][2]  ( .D(n448), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        \Job[6][2] ), .QN(n410) );
  DFFNSRX1 \CurCost_reg[7]  ( .D(n480), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[7]), .QN(n312) );
  DFFNSRX1 \Job_reg[5][0]  ( .D(n447), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[5][0] ), .QN(n409) );
  DFFNSRX1 \Job_reg[3][0]  ( .D(n441), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[3][0] ), .QN(n403) );
  DFFNSRX1 \CurCost_reg[4]  ( .D(n483), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[4]), .QN(n683) );
  DFFNSRX1 \Job_reg[0][1]  ( .D(n431), .CKN(CLK), .SN(1'b1), .RN(n581), .Q(
        \Job[0][1] ), .QN(n393) );
  DFFNSRX1 \Job_reg[0][2]  ( .D(n432), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[0][2] ), .QN(n392) );
  DFFNSRX1 \Job_reg[0][0]  ( .D(n460), .CKN(CLK), .SN(1'b1), .RN(n582), .Q(
        \Job[0][0] ), .QN(n394) );
  DFFNSRX1 \pos_reg[1]  ( .D(n458), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(N94), 
        .QN(n636) );
  DFFNSRX1 \CurCost_reg[3]  ( .D(n484), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[3]), .QN(n304) );
  DFFNSRX1 \pos_reg[0]  ( .D(n459), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(N93), 
        .QN(n637) );
  DFFNSRX1 \CurCost_reg[2]  ( .D(n485), .CKN(CLK), .SN(1'b1), .RN(n581), .Q(
        CurCost[2]), .QN(n302) );
  DFFNSRX1 \CurCost_reg[1]  ( .D(n487), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[1]), .QN(n684) );
  DFFNSRX1 \Job_reg[1][2]  ( .D(n433), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[1][2] ), .QN(n395) );
  DFFNSRX1 \Job_reg[1][1]  ( .D(n434), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[1][1] ), .QN(n396) );
  DFFNSRX1 \Job_reg[5][1]  ( .D(n446), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[5][1] ), .QN(n408) );
  DFFNSRX1 \Job_reg[5][2]  ( .D(n445), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[5][2] ), .QN(n407) );
  DFFNSRX1 \Job_reg[3][1]  ( .D(n440), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[3][1] ), .QN(n402) );
  DFFNSRX1 \CurCost_reg[0]  ( .D(n486), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(
        CurCost[0]), .QN(n300) );
  DFFNSRX2 \anchor_reg[1]  ( .D(n347), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(N91), .QN(n417) );
  DFFNSRX1 \g_cs_reg[0]  ( .D(g_ns[0]), .CKN(CLK), .SN(1'b1), .RN(n582), .Q(
        n515), .QN(n391) );
  DFFNSRX1 \swap_reg[1]  ( .D(n455), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(N88), 
        .QN(n601) );
  DFFNSRX1 \Job_reg[3][2]  ( .D(n439), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[3][2] ), .QN(n401) );
  DFFNSRX1 \Job_reg[4][1]  ( .D(n443), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        \Job[4][1] ), .QN(n405) );
  DFFNSRX1 \Job_reg[4][2]  ( .D(n442), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[4][2] ), .QN(n404) );
  DFFNSRX1 \Job_reg[7][1]  ( .D(n452), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        \Job[7][1] ), .QN(n414) );
  DFFNSRX1 \Job_reg[2][1]  ( .D(n437), .CKN(CLK), .SN(n581), .RN(1'b1), .Q(
        \Job[2][1] ), .QN(n399) );
  DFFNSRX1 \Job_reg[6][1]  ( .D(n449), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        \Job[6][1] ), .QN(n411) );
  DFFNSRX1 \g_cs_reg[1]  ( .D(g_ns[1]), .CKN(CLK), .SN(1'b1), .RN(n581), .QN(
        n390) );
  DFFNSRX1 \MinCost_reg[0]  ( .D(n476), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        n756), .QN(n299) );
  DFFNSRX1 \MinCost_reg[3]  ( .D(n474), .CKN(CLK), .SN(n685), .RN(1'b1), .Q(
        n754), .QN(n303) );
  DFFNSRX1 \MinCost_reg[1]  ( .D(n477), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        n755), .QN(n297) );
  DFFNSRX1 \MinCost_reg[6]  ( .D(n471), .CKN(CLK), .SN(n582), .RN(1'b1), .QN(
        n309) );
  DFFNSRX1 \MinCost_reg[7]  ( .D(n470), .CKN(CLK), .SN(n582), .RN(1'b1), .QN(
        n311) );
  DFFNSRX1 \MinCost_reg[9]  ( .D(n468), .CKN(CLK), .SN(n581), .RN(1'b1), .QN(
        n315) );
  DFFNSRX1 \MatchCount_reg[1]  ( .D(n465), .CKN(CLK), .SN(1'b1), .RN(n583), 
        .QN(n428) );
  DFFNSRX1 \MatchCount_reg[2]  ( .D(n467), .CKN(CLK), .SN(1'b1), .RN(n583), 
        .QN(n427) );
  DFFNSRX1 \anchor_reg[2]  ( .D(n335), .CKN(CLK), .SN(n685), .RN(1'b1), .Q(N92), .QN(n619) );
  DFFNSRX1 \Job_reg[1][0]  ( .D(n435), .CKN(CLK), .SN(n685), .RN(1'b1), .Q(
        \Job[1][0] ), .QN(n397) );
  DFFNSRX1 \W_reg[2]  ( .D(N430), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(n656), 
        .QN(n430) );
  DFFNSRX2 \W_reg[1]  ( .D(N429), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(n655), 
        .QN(n295) );
  DFFNSRX1 \g_cs_reg[2]  ( .D(g_ns[2]), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(
        n706), .QN(n389) );
  DFFNSRX4 \anchor_reg[0]  ( .D(n353), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(N90), .QN(n574) );
  DFFNSRX1 \MatchCount_reg[3]  ( .D(n464), .CKN(CLK), .SN(1'b1), .RN(n685), 
        .QN(n426) );
  DFFNSRX1 \MinCost_reg[2]  ( .D(n475), .CKN(CLK), .SN(n685), .RN(1'b1), .QN(
        n301) );
  DFFNSRX2 \swap_reg[2]  ( .D(n454), .CKN(CLK), .SN(1'b1), .RN(n583), .Q(N89), 
        .QN(n600) );
  DFFNSRX1 \MatchCount_reg[0]  ( .D(n466), .CKN(CLK), .SN(n685), .RN(1'b1), 
        .QN(n516) );
  DFFNSRX1 \MinCost_reg[8]  ( .D(n469), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        n751), .QN(n313) );
  DFFNSRX1 \MinCost_reg[4]  ( .D(n473), .CKN(CLK), .SN(n582), .RN(1'b1), .Q(
        n753), .QN(n305) );
  DFFNSRX1 \MinCost_reg[5]  ( .D(n472), .CKN(CLK), .SN(n583), .RN(1'b1), .Q(
        n752), .QN(n307) );
  DFFNSRX1 \W_reg[0]  ( .D(N428), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(n654), 
        .QN(n296) );
  DFFNSRX2 \swap_reg[0]  ( .D(n456), .CKN(CLK), .SN(1'b1), .RN(n685), .Q(N87), 
        .QN(n602) );
  OR2X1 U410 ( .A(n707), .B(MatchCount[0]), .Y(n551) );
  OAI221X1 U411 ( .A0(n194), .A1(n578), .B0(n183), .B1(n179), .C0(n161), .Y(
        n186) );
  INVX16 U412 ( .A(n519), .Y(W[0]) );
  CLKINVX1 U413 ( .A(n654), .Y(n519) );
  INVX12 U414 ( .A(n521), .Y(W[1]) );
  CLKINVX1 U415 ( .A(n655), .Y(n521) );
  INVX12 U416 ( .A(n301), .Y(MinCost[2]) );
  INVX12 U417 ( .A(n426), .Y(MatchCount[3]) );
  NOR2X2 U418 ( .A(n417), .B(N90), .Y(n616) );
  INVX3 U419 ( .A(RST), .Y(n685) );
  INVXL U420 ( .A(N92), .Y(n523) );
  INVX4 U421 ( .A(n523), .Y(n524) );
  INVX16 U422 ( .A(n516), .Y(MatchCount[0]) );
  OAI222XL U434 ( .A0(N321), .A1(n712), .B0(n422), .B1(N320), .C0(N322), .C1(
        n711), .Y(n228) );
  OAI22X1 U435 ( .A0(n419), .A1(n627), .B0(N95), .B1(n626), .Y(N321) );
  OAI22X1 U436 ( .A0(n635), .A1(n419), .B0(N95), .B1(n634), .Y(N320) );
  BUFX12 U437 ( .A(n749), .Y(J[1]) );
  OAI2BB2XL U438 ( .B0(n656), .B1(n644), .A0N(n656), .A1N(n577), .Y(n749) );
  INVX12 U439 ( .A(n307), .Y(MinCost[5]) );
  NAND2X1 U440 ( .A(N325), .B(n699), .Y(n111) );
  OAI22X1 U441 ( .A0(n619), .A1(n606), .B0(n524), .B1(n605), .Y(N325) );
  NAND2X1 U442 ( .A(N323), .B(n699), .Y(n99) );
  OAI22X1 U443 ( .A0(n618), .A1(n619), .B0(n524), .B1(n617), .Y(N323) );
  INVX16 U444 ( .A(n427), .Y(MatchCount[2]) );
  INVX16 U445 ( .A(n428), .Y(MatchCount[1]) );
  INVX12 U446 ( .A(n315), .Y(MinCost[9]) );
  INVX12 U447 ( .A(n311), .Y(MinCost[7]) );
  INVX12 U448 ( .A(n309), .Y(MinCost[6]) );
  BUFX12 U449 ( .A(n750), .Y(J[0]) );
  OAI2BB2XL U450 ( .B0(n656), .B1(n640), .A0N(n656), .A1N(n576), .Y(n750) );
  INVX12 U451 ( .A(n305), .Y(MinCost[4]) );
  INVX12 U452 ( .A(n297), .Y(MinCost[1]) );
  INVX12 U453 ( .A(n303), .Y(MinCost[3]) );
  INVX12 U454 ( .A(n313), .Y(MinCost[8]) );
  BUFX12 U455 ( .A(N435), .Y(Valid) );
  NOR2X1 U456 ( .A(n700), .B(n389), .Y(N435) );
  NAND2X1 U457 ( .A(N324), .B(n699), .Y(n106) );
  OAI22X2 U458 ( .A0(n619), .A1(n610), .B0(n524), .B1(n609), .Y(N324) );
  OR2X1 U459 ( .A(n554), .B(n555), .Y(N386) );
  NOR3X1 U460 ( .A(n548), .B(n549), .C(n550), .Y(n669) );
  AND2XL U461 ( .A(n752), .B(n682), .Y(n548) );
  AND2XL U462 ( .A(n753), .B(n683), .Y(n549) );
  AND2X2 U463 ( .A(n665), .B(n664), .Y(n550) );
  OR2XL U464 ( .A(N387), .B(N386), .Y(n552) );
  NAND3X1 U465 ( .A(n551), .B(n552), .C(n248), .Y(n241) );
  INVX12 U466 ( .A(n299), .Y(MinCost[0]) );
  NOR2X1 U467 ( .A(n708), .B(N386), .Y(n249) );
  INVXL U468 ( .A(N321), .Y(n721) );
  NOR2BXL U469 ( .AN(CurCost[3]), .B(n754), .Y(n676) );
  NOR2XL U470 ( .A(n683), .B(n753), .Y(n675) );
  NOR2BXL U471 ( .AN(n756), .B(CurCost[0]), .Y(n662) );
  NOR2XL U472 ( .A(n682), .B(n752), .Y(n667) );
  NOR2XL U473 ( .A(n680), .B(n751), .Y(n660) );
  NOR2BXL U474 ( .AN(CurCost[0]), .B(n756), .Y(n657) );
  CLKINVX1 U475 ( .A(n179), .Y(n694) );
  NAND2XL U476 ( .A(n248), .B(n249), .Y(n243) );
  NAND2X1 U477 ( .A(n92), .B(n694), .Y(n149) );
  OAI21X1 U478 ( .A0(n89), .A1(n578), .B0(n91), .Y(n82) );
  AOI2BB1X1 U479 ( .A0N(n219), .A1N(n170), .B0(n578), .Y(n76) );
  NOR2X1 U480 ( .A(n199), .B(n524), .Y(n136) );
  AO21XL U481 ( .A0(n684), .A1(n662), .B0(n755), .Y(n661) );
  OAI32XL U482 ( .A0(MatchCount[2]), .A1(n428), .A2(n236), .B0(n427), .B1(n240), .Y(n467) );
  NAND4X1 U483 ( .A(n694), .B(n417), .C(n574), .D(n524), .Y(n161) );
  CLKINVX1 U484 ( .A(n182), .Y(n695) );
  NOR3X1 U485 ( .A(n524), .B(n417), .C(N90), .Y(n116) );
  NOR3X1 U486 ( .A(n524), .B(n574), .C(n732), .Y(n92) );
  CLKINVX1 U487 ( .A(n601), .Y(n734) );
  CLKINVX1 U488 ( .A(n417), .Y(n732) );
  NOR3X2 U489 ( .A(n734), .B(n602), .C(N89), .Y(n83) );
  NAND3X1 U490 ( .A(n390), .B(n515), .C(n389), .Y(n56) );
  NOR3X2 U491 ( .A(n706), .B(n390), .C(n515), .Y(n248) );
  CLKINVX1 U492 ( .A(n410), .Y(n736) );
  CLKINVX1 U493 ( .A(n636), .Y(n733) );
  NOR2X1 U494 ( .A(CurCost[9]), .B(n315), .Y(n554) );
  NOR2X1 U495 ( .A(n679), .B(n672), .Y(n555) );
  AOI32XL U496 ( .A0(n671), .A1(n681), .A2(n670), .B0(n751), .B1(n680), .Y(
        n672) );
  NAND3BXL U497 ( .AN(N386), .B(n674), .C(n673), .Y(n677) );
  NOR2X1 U498 ( .A(n693), .B(n692), .Y(n114) );
  CLKINVX1 U499 ( .A(n91), .Y(n692) );
  CLKINVX1 U500 ( .A(n150), .Y(n690) );
  CLKINVX1 U501 ( .A(n249), .Y(n707) );
  CLKINVX1 U502 ( .A(n221), .Y(n703) );
  INVX3 U503 ( .A(n579), .Y(n697) );
  NAND2X2 U504 ( .A(n170), .B(n694), .Y(n91) );
  NOR2BX1 U505 ( .AN(n192), .B(n193), .Y(n189) );
  CLKINVX1 U506 ( .A(n117), .Y(n689) );
  NAND2X1 U507 ( .A(n192), .B(n193), .Y(n185) );
  CLKINVX1 U508 ( .A(n154), .Y(n691) );
  INVX3 U509 ( .A(n149), .Y(n693) );
  NAND2X1 U510 ( .A(n136), .B(n694), .Y(n150) );
  NAND2X1 U511 ( .A(n694), .B(n82), .Y(n79) );
  NAND2X1 U512 ( .A(n699), .B(n82), .Y(n81) );
  NAND2BX1 U513 ( .AN(n219), .B(n76), .Y(n74) );
  NAND2X1 U514 ( .A(n219), .B(n76), .Y(n72) );
  CLKINVX1 U515 ( .A(n138), .Y(n688) );
  OAI211X1 U516 ( .A0(MatchCount[0]), .A1(n243), .B0(n579), .C0(n245), .Y(n466) );
  OAI21XL U517 ( .A0(n708), .A1(n696), .B0(MatchCount[0]), .Y(n245) );
  CLKINVX1 U518 ( .A(N387), .Y(n708) );
  NAND3X1 U519 ( .A(n249), .B(MatchCount[0]), .C(n248), .Y(n236) );
  OAI2BB2XL U520 ( .B0(n236), .B1(MatchCount[1]), .A0N(MatchCount[1]), .A1N(
        n241), .Y(n465) );
  INVXL U521 ( .A(N323), .Y(n719) );
  OAI22XL U522 ( .A0(N320), .A1(n719), .B0(n231), .B1(n232), .Y(n230) );
  NOR2XL U523 ( .A(N324), .B(n721), .Y(n232) );
  AOI211XL U524 ( .A0(N324), .A1(n721), .B0(n717), .C0(N325), .Y(n231) );
  AO21X1 U525 ( .A0(n203), .A1(n704), .B0(n705), .Y(n221) );
  OAI22XL U526 ( .A0(n703), .A1(n712), .B0(n721), .B1(n221), .Y(n463) );
  OAI22XL U527 ( .A0(n703), .A1(n711), .B0(n717), .B1(n221), .Y(n462) );
  CLKBUFX3 U528 ( .A(n244), .Y(n579) );
  NAND2XL U529 ( .A(N386), .B(n248), .Y(n244) );
  INVXL U530 ( .A(N324), .Y(n718) );
  INVXL U531 ( .A(N320), .Y(n722) );
  INVXL U532 ( .A(N325), .Y(n716) );
  CLKINVX1 U533 ( .A(N322), .Y(n717) );
  NAND2X1 U534 ( .A(N126), .B(n699), .Y(n97) );
  NAND2X1 U535 ( .A(N127), .B(n699), .Y(n105) );
  NAND2X1 U536 ( .A(N128), .B(n699), .Y(n110) );
  INVX1 U537 ( .A(N128), .Y(n715) );
  INVX1 U538 ( .A(N127), .Y(n727) );
  INVX1 U539 ( .A(N126), .Y(n728) );
  OAI211X1 U540 ( .A0(n135), .A1(n578), .B0(n126), .C0(n114), .Y(n117) );
  NOR2X1 U541 ( .A(n723), .B(n136), .Y(n135) );
  NAND2X1 U542 ( .A(n114), .B(n115), .Y(n95) );
  OAI21XL U543 ( .A0(n725), .A1(n116), .B0(n699), .Y(n115) );
  NAND4X1 U544 ( .A(n114), .B(n168), .C(n161), .D(n150), .Y(n154) );
  OAI21XL U545 ( .A0(n724), .A1(n169), .B0(n699), .Y(n168) );
  NOR2BX1 U546 ( .AN(n186), .B(n179), .Y(n188) );
  NAND2X1 U547 ( .A(n705), .B(n515), .Y(n179) );
  OAI221XL U548 ( .A0(n700), .A1(n252), .B0(n696), .B1(n57), .C0(n253), .Y(
        g_ns[2]) );
  NOR2XL U549 ( .A(N435), .B(n699), .Y(n253) );
  NOR3X1 U550 ( .A(N90), .B(n524), .C(n732), .Y(n170) );
  NOR4X1 U551 ( .A(n136), .B(n170), .C(n116), .D(n197), .Y(n183) );
  OR2X1 U552 ( .A(n169), .B(n92), .Y(n197) );
  NAND2X1 U553 ( .A(N90), .B(n732), .Y(n199) );
  NOR2BX1 U554 ( .AN(n186), .B(n578), .Y(n192) );
  CLKINVX1 U555 ( .A(n218), .Y(n705) );
  NAND4BXL U556 ( .AN(N435), .B(n286), .C(n287), .D(n696), .Y(g_ns[1]) );
  NAND3X1 U557 ( .A(n698), .B(n687), .C(n289), .Y(n286) );
  CLKINVX1 U558 ( .A(n226), .Y(n700) );
  NOR2X1 U559 ( .A(n83), .B(n92), .Y(n89) );
  NAND2X2 U560 ( .A(n116), .B(n694), .Y(n126) );
  NAND4X1 U561 ( .A(n126), .B(n149), .C(n150), .D(n151), .Y(n138) );
  OA22X1 U562 ( .A0(n143), .A1(n578), .B0(n152), .B1(n732), .Y(n151) );
  NOR2X1 U563 ( .A(n179), .B(n695), .Y(n174) );
  NOR3X1 U564 ( .A(n734), .B(N87), .C(N89), .Y(n219) );
  CLKINVX1 U565 ( .A(n159), .Y(n724) );
  NAND3X1 U566 ( .A(n734), .B(N89), .C(N87), .Y(n193) );
  NAND2BX1 U567 ( .AN(n181), .B(n180), .Y(n171) );
  CLKINVX1 U568 ( .A(n215), .Y(n704) );
  NAND2X1 U569 ( .A(n180), .B(n181), .Y(n172) );
  NOR2X1 U570 ( .A(n578), .B(n695), .Y(n180) );
  CLKINVX1 U571 ( .A(n124), .Y(n723) );
  NAND2BX1 U572 ( .AN(n69), .B(n71), .Y(n64) );
  INVX3 U573 ( .A(n578), .Y(n699) );
  CLKINVX1 U574 ( .A(n143), .Y(n726) );
  CLKINVX1 U575 ( .A(n58), .Y(n730) );
  NOR2X1 U576 ( .A(\Job[1][2] ), .B(n256), .Y(n269) );
  CLKINVX1 U577 ( .A(n61), .Y(n714) );
  NAND2X1 U578 ( .A(n218), .B(n215), .Y(n202) );
  AOI21X1 U579 ( .A0(n199), .A1(n524), .B0(n136), .Y(n201) );
  OAI21XL U580 ( .A0(N90), .A1(n732), .B0(n199), .Y(n208) );
  AOI2BB1X1 U581 ( .A0N(n215), .A1N(n720), .B0(n705), .Y(n216) );
  NAND2X1 U582 ( .A(n704), .B(n720), .Y(n211) );
  INVX3 U583 ( .A(n248), .Y(n696) );
  NAND2X1 U584 ( .A(n226), .B(n252), .Y(n287) );
  CLKINVX1 U585 ( .A(n100), .Y(n725) );
  INVX3 U586 ( .A(n56), .Y(n698) );
  NAND3X1 U587 ( .A(n733), .B(n735), .C(n720), .Y(n252) );
  CLKBUFX3 U588 ( .A(n685), .Y(n583) );
  CLKBUFX3 U589 ( .A(n685), .Y(n581) );
  CLKBUFX3 U590 ( .A(n685), .Y(n582) );
  CLKINVX1 U591 ( .A(n674), .Y(n679) );
  CLKINVX1 U592 ( .A(n660), .Y(n681) );
  AOI21X1 U593 ( .A0(n249), .A1(n428), .B0(n241), .Y(n240) );
  OAI21XL U594 ( .A0(n426), .A1(n234), .B0(n235), .Y(n464) );
  NAND4BX1 U595 ( .AN(n236), .B(n426), .C(MatchCount[1]), .D(MatchCount[2]), 
        .Y(n235) );
  OA21XL U596 ( .A0(n707), .A1(MatchCount[2]), .B0(n240), .Y(n234) );
  OAI222XL U597 ( .A0(n201), .A1(n202), .B0(n203), .B1(n204), .C0(n600), .C1(
        n703), .Y(n454) );
  NAND2X1 U598 ( .A(n704), .B(n735), .Y(n204) );
  OAI222XL U599 ( .A0(n202), .A1(n208), .B0(n203), .B1(n209), .C0(n601), .C1(
        n703), .Y(n455) );
  NAND2X1 U600 ( .A(n704), .B(n733), .Y(n209) );
  OAI222XL U601 ( .A0(N90), .A1(n202), .B0(n203), .B1(n211), .C0(n602), .C1(
        n703), .Y(n456) );
  OAI22XL U602 ( .A0(n422), .A1(n703), .B0(n722), .B1(n221), .Y(n461) );
  NAND3X1 U603 ( .A(n227), .B(n228), .C(n229), .Y(n203) );
  OAI21XL U604 ( .A0(n422), .A1(N320), .B0(n233), .Y(n227) );
  OAI21XL U605 ( .A0(N323), .A1(n722), .B0(n230), .Y(n229) );
  OAI22XL U606 ( .A0(n402), .A1(n117), .B0(n689), .B1(n127), .Y(n440) );
  AOI221XL U607 ( .A0(n692), .A1(n740), .B0(n693), .B1(n737), .C0(n130), .Y(
        n127) );
  OAI222XL U608 ( .A0(n106), .A1(n124), .B0(n723), .B1(n105), .C0(n414), .C1(
        n126), .Y(n130) );
  OAI22XL U609 ( .A0(n405), .A1(n138), .B0(n688), .B1(n145), .Y(n443) );
  AOI221XL U610 ( .A0(n690), .A1(n739), .B0(n693), .B1(n740), .C0(n146), .Y(
        n145) );
  OAI222XL U611 ( .A0(n106), .A1(n143), .B0(n726), .B1(n105), .C0(n411), .C1(
        n126), .Y(n146) );
  OAI22XL U612 ( .A0(n299), .A1(n697), .B0(n300), .B1(n579), .Y(n476) );
  OAI22XL U613 ( .A0(n301), .A1(n697), .B0(n302), .B1(n579), .Y(n475) );
  OAI22XL U614 ( .A0(n303), .A1(n697), .B0(n304), .B1(n579), .Y(n474) );
  OAI22XL U615 ( .A0(n305), .A1(n697), .B0(n683), .B1(n579), .Y(n473) );
  OAI22XL U616 ( .A0(n307), .A1(n697), .B0(n682), .B1(n579), .Y(n472) );
  OAI22XL U617 ( .A0(n309), .A1(n697), .B0(n310), .B1(n579), .Y(n471) );
  OAI22XL U618 ( .A0(n311), .A1(n697), .B0(n312), .B1(n579), .Y(n470) );
  OAI22XL U619 ( .A0(n313), .A1(n697), .B0(n680), .B1(n579), .Y(n469) );
  OAI22XL U620 ( .A0(n315), .A1(n697), .B0(n316), .B1(n579), .Y(n468) );
  OAI22XL U621 ( .A0(n297), .A1(n697), .B0(n684), .B1(n579), .Y(n477) );
  OAI22XL U622 ( .A0(n406), .A1(n138), .B0(n688), .B1(n147), .Y(n444) );
  AOI221XL U623 ( .A0(n690), .A1(n729), .B0(n693), .B1(n731), .C0(n148), .Y(
        n147) );
  OAI222XL U624 ( .A0(n111), .A1(n143), .B0(n726), .B1(n110), .C0(n412), .C1(
        n126), .Y(n148) );
  OAI22XL U625 ( .A0(n403), .A1(n117), .B0(n689), .B1(n131), .Y(n441) );
  AOI221XL U626 ( .A0(n692), .A1(n731), .B0(n693), .B1(n713), .C0(n134), .Y(
        n131) );
  OAI222XL U627 ( .A0(n111), .A1(n124), .B0(n723), .B1(n110), .C0(n415), .C1(
        n126), .Y(n134) );
  OAI222XL U628 ( .A0(n414), .A1(n79), .B0(n84), .B1(n81), .C0(n396), .C1(n82), 
        .Y(n434) );
  AOI2BB2XL U629 ( .B0(N324), .B1(n83), .A0N(n727), .A1N(n83), .Y(n84) );
  OAI222XL U630 ( .A0(n72), .A1(n719), .B0(n74), .B1(n728), .C0(n392), .C1(n76), .Y(n432) );
  OAI222XL U631 ( .A0(n72), .A1(n718), .B0(n74), .B1(n727), .C0(n393), .C1(n76), .Y(n431) );
  OAI221XL U632 ( .A0(n719), .A1(n171), .B0(n728), .B1(n172), .C0(n173), .Y(
        n448) );
  AOI22X1 U633 ( .A0(N232), .A1(n174), .B0(n695), .B1(n736), .Y(n173) );
  OAI221XL U634 ( .A0(n718), .A1(n171), .B0(n727), .B1(n172), .C0(n176), .Y(
        n449) );
  AOI22X1 U635 ( .A0(N231), .A1(n174), .B0(n695), .B1(n737), .Y(n176) );
  OAI22XL U636 ( .A0(n401), .A1(n117), .B0(n689), .B1(n119), .Y(n439) );
  AOI221XL U637 ( .A0(n692), .A1(n747), .B0(n693), .B1(n736), .C0(n123), .Y(
        n119) );
  OAI222XL U638 ( .A0(n99), .A1(n124), .B0(n723), .B1(n97), .C0(n413), .C1(
        n126), .Y(n123) );
  OAI22XL U639 ( .A0(n404), .A1(n138), .B0(n688), .B1(n140), .Y(n442) );
  AOI221XL U640 ( .A0(n690), .A1(n738), .B0(n693), .B1(n747), .C0(n142), .Y(
        n140) );
  OAI222XL U641 ( .A0(n99), .A1(n143), .B0(n726), .B1(n97), .C0(n410), .C1(
        n126), .Y(n142) );
  OAI221XL U642 ( .A0(n727), .A1(n185), .B0(n414), .B1(n186), .C0(n190), .Y(
        n452) );
  AOI22XL U643 ( .A0(N228), .A1(n188), .B0(n189), .B1(N324), .Y(n190) );
  OAI22XL U644 ( .A0(n407), .A1(n154), .B0(n691), .B1(n156), .Y(n445) );
  AOI211X1 U645 ( .A0(n690), .A1(n736), .B0(n157), .C0(n158), .Y(n156) );
  OAI222XL U646 ( .A0(n404), .A1(n149), .B0(n401), .B1(n91), .C0(n413), .C1(
        n161), .Y(n157) );
  OAI22XL U647 ( .A0(n99), .A1(n159), .B0(n724), .B1(n97), .Y(n158) );
  OAI22XL U648 ( .A0(n408), .A1(n154), .B0(n691), .B1(n162), .Y(n446) );
  AOI211X1 U649 ( .A0(n690), .A1(n737), .B0(n163), .C0(n164), .Y(n162) );
  OAI222XL U650 ( .A0(n405), .A1(n149), .B0(n402), .B1(n91), .C0(n414), .C1(
        n161), .Y(n163) );
  OAI22XL U651 ( .A0(n106), .A1(n159), .B0(n724), .B1(n105), .Y(n164) );
  OAI22XL U652 ( .A0(n409), .A1(n154), .B0(n691), .B1(n165), .Y(n447) );
  AOI211X1 U653 ( .A0(n690), .A1(n713), .B0(n166), .C0(n167), .Y(n165) );
  OAI222XL U654 ( .A0(n406), .A1(n149), .B0(n403), .B1(n91), .C0(n415), .C1(
        n161), .Y(n166) );
  OAI22XL U655 ( .A0(n111), .A1(n159), .B0(n724), .B1(n110), .Y(n167) );
  AO22X1 U656 ( .A0(n712), .A1(N321), .B0(N320), .B1(n422), .Y(n233) );
  OAI2BB2XL U657 ( .B0(n400), .B1(n95), .A0N(n95), .A1N(n109), .Y(n438) );
  OAI221XL U658 ( .A0(n110), .A1(n725), .B0(n111), .B1(n100), .C0(n112), .Y(
        n109) );
  AOI2BB2X1 U659 ( .B0(n729), .B1(n693), .A0N(n412), .A1N(n91), .Y(n112) );
  OAI2BB2XL U660 ( .B0(n399), .B1(n95), .A0N(n95), .A1N(n104), .Y(n437) );
  OAI221XL U661 ( .A0(n105), .A1(n725), .B0(n106), .B1(n100), .C0(n107), .Y(
        n104) );
  AOI2BB2X1 U662 ( .B0(n739), .B1(n693), .A0N(n411), .A1N(n91), .Y(n107) );
  OAI2BB2XL U663 ( .B0(n398), .B1(n95), .A0N(n95), .A1N(n96), .Y(n436) );
  OAI221XL U664 ( .A0(n97), .A1(n725), .B0(n99), .B1(n100), .C0(n101), .Y(n96)
         );
  AOI2BB2X1 U665 ( .B0(n738), .B1(n693), .A0N(n410), .A1N(n91), .Y(n101) );
  CLKINVX1 U666 ( .A(n641), .Y(n576) );
  CLKINVX1 U667 ( .A(n645), .Y(n577) );
  AND2X2 U668 ( .A(n296), .B(n295), .Y(n647) );
  OAI222XL U669 ( .A0(n413), .A1(n79), .B0(n80), .B1(n81), .C0(n395), .C1(n82), 
        .Y(n433) );
  AOI2BB2XL U670 ( .B0(N323), .B1(n83), .A0N(n728), .A1N(n83), .Y(n80) );
  OAI222XL U671 ( .A0(n415), .A1(n79), .B0(n85), .B1(n81), .C0(n397), .C1(n82), 
        .Y(n435) );
  AOI2BB2XL U672 ( .B0(n83), .B1(N325), .A0N(n715), .A1N(n83), .Y(n85) );
  OAI222XL U673 ( .A0(n72), .A1(n716), .B0(n74), .B1(n715), .C0(n394), .C1(n76), .Y(n460) );
  OAI221XL U674 ( .A0(n728), .A1(n185), .B0(n413), .B1(n186), .C0(n187), .Y(
        n451) );
  AOI22XL U675 ( .A0(N229), .A1(n188), .B0(n189), .B1(N323), .Y(n187) );
  OAI221XL U676 ( .A0(n715), .A1(n185), .B0(n415), .B1(n186), .C0(n191), .Y(
        n453) );
  AOI22XL U677 ( .A0(N227), .A1(n188), .B0(n189), .B1(N325), .Y(n191) );
  OAI221XL U678 ( .A0(n716), .A1(n171), .B0(n715), .B1(n172), .C0(n178), .Y(
        n450) );
  AOI22X1 U679 ( .A0(N230), .A1(n174), .B0(n695), .B1(n713), .Y(n178) );
  OA21XL U680 ( .A0(n199), .A1(n619), .B0(n193), .Y(n194) );
  NOR2X1 U681 ( .A(n390), .B(n391), .Y(n226) );
  NOR3X1 U682 ( .A(n574), .B(n619), .C(n732), .Y(n169) );
  NAND2X1 U683 ( .A(n390), .B(n706), .Y(n218) );
  CLKBUFX3 U684 ( .A(n90), .Y(n578) );
  NAND2X1 U685 ( .A(n391), .B(n705), .Y(n90) );
  OAI211X1 U686 ( .A0(n395), .A1(n743), .B0(n271), .C0(n272), .Y(n70) );
  NAND3X1 U687 ( .A(n275), .B(n742), .C(n399), .Y(n271) );
  OAI221XL U688 ( .A0(n400), .A1(\Job[1][0] ), .B0(n399), .B1(n742), .C0(n275), 
        .Y(n272) );
  NAND2X1 U689 ( .A(n395), .B(n743), .Y(n275) );
  NAND2X1 U690 ( .A(n226), .B(n389), .Y(n215) );
  OAI211X1 U691 ( .A0(n399), .A1(n745), .B0(n746), .C0(n400), .Y(n268) );
  OAI22XL U692 ( .A0(n401), .A1(n744), .B0(n265), .B1(n743), .Y(n69) );
  CLKINVX1 U693 ( .A(n267), .Y(n744) );
  NOR2BX1 U694 ( .AN(n401), .B(n267), .Y(n265) );
  OAI2BB1X1 U695 ( .A0N(n745), .A1N(n399), .B0(n268), .Y(n267) );
  NAND4BX1 U696 ( .AN(n59), .B(n730), .C(n714), .D(n255), .Y(n57) );
  AOI211X1 U697 ( .A0(n256), .A1(\Job[1][2] ), .B0(n258), .C0(n64), .Y(n255)
         );
  OAI21XL U698 ( .A0(n269), .A1(\Job[0][2] ), .B0(n70), .Y(n258) );
  OAI222XL U699 ( .A0(n578), .A1(n181), .B0(n417), .B1(n152), .C0(n183), .C1(
        n179), .Y(n182) );
  AOI32X1 U700 ( .A0(n698), .A1(n714), .A2(n55), .B0(n619), .B1(n56), .Y(n335)
         );
  NOR3BXL U701 ( .AN(n57), .B(n58), .C(n59), .Y(n55) );
  NAND3X1 U702 ( .A(n602), .B(N89), .C(n601), .Y(n143) );
  OAI2BB1X1 U703 ( .A0N(n736), .A1N(n283), .B0(n284), .Y(n59) );
  OAI21XL U704 ( .A0(n736), .A1(n283), .B0(n407), .Y(n284) );
  OAI21XL U705 ( .A0(n411), .A1(n740), .B0(n285), .Y(n283) );
  OAI211X1 U706 ( .A0(n408), .A1(n737), .B0(n713), .C0(n409), .Y(n285) );
  NAND3X1 U707 ( .A(N87), .B(N89), .C(n601), .Y(n159) );
  CLKINVX1 U708 ( .A(n411), .Y(n737) );
  OAI2BB1X1 U709 ( .A0N(n738), .A1N(n277), .B0(n278), .Y(n61) );
  OAI21XL U710 ( .A0(n277), .A1(n738), .B0(n410), .Y(n278) );
  OAI21XL U711 ( .A0(n414), .A1(n737), .B0(n279), .Y(n277) );
  OAI211X1 U712 ( .A0(n411), .A1(n739), .B0(n729), .C0(n412), .Y(n279) );
  NAND3X1 U713 ( .A(N87), .B(n734), .C(n600), .Y(n124) );
  OAI2BB1X1 U714 ( .A0N(n747), .A1N(n280), .B0(n281), .Y(n58) );
  OAI21XL U715 ( .A0(n280), .A1(n747), .B0(n404), .Y(n281) );
  OAI2BB1X1 U716 ( .A0N(n740), .A1N(n405), .B0(n282), .Y(n280) );
  OAI211X1 U717 ( .A0(n405), .A1(n740), .B0(n731), .C0(n406), .Y(n282) );
  OAI2BB2XL U718 ( .B0(n696), .B1(n680), .A0N(N371), .A1N(n698), .Y(n479) );
  CLKINVX1 U719 ( .A(n408), .Y(n740) );
  NAND3X1 U720 ( .A(n734), .B(N89), .C(n602), .Y(n181) );
  CLKINVX1 U721 ( .A(n412), .Y(n713) );
  NAND3X1 U722 ( .A(n574), .B(n524), .C(n699), .Y(n152) );
  OA21XL U723 ( .A0(n404), .A1(n259), .B0(n260), .Y(n71) );
  OAI2BB1X1 U724 ( .A0N(n404), .A1N(n259), .B0(n401), .Y(n260) );
  AOI2BB1X1 U725 ( .A0N(n405), .A1N(n745), .B0(n262), .Y(n259) );
  AOI211X1 U726 ( .A0(n745), .A1(n405), .B0(n406), .C0(n746), .Y(n262) );
  CLKINVX1 U727 ( .A(n396), .Y(n742) );
  OAI2BB2XL U728 ( .B0(n574), .B1(n698), .A0N(n698), .A1N(n65), .Y(n353) );
  OAI21XL U729 ( .A0(n66), .A1(n61), .B0(n57), .Y(n65) );
  AOI21X1 U730 ( .A0(n730), .A1(n68), .B0(n59), .Y(n66) );
  OAI21XL U731 ( .A0(n69), .A1(n70), .B0(n71), .Y(n68) );
  CLKINVX1 U732 ( .A(n414), .Y(n739) );
  OAI2BB1X1 U733 ( .A0N(n742), .A1N(n393), .B0(n276), .Y(n256) );
  OAI211X1 U734 ( .A0(n393), .A1(n742), .B0(\Job[1][0] ), .C0(n394), .Y(n276)
         );
  OAI21XL U735 ( .A0(n417), .A1(n698), .B0(n60), .Y(n347) );
  OAI21XL U736 ( .A0(n61), .A1(n62), .B0(n698), .Y(n60) );
  OAI31XL U737 ( .A0(n58), .A1(n741), .A2(n59), .B0(n57), .Y(n62) );
  CLKINVX1 U738 ( .A(n64), .Y(n741) );
  CLKINVX1 U739 ( .A(n415), .Y(n729) );
  CLKINVX1 U740 ( .A(n402), .Y(n745) );
  OAI2BB2XL U741 ( .B0(n696), .B1(n316), .A0N(N372), .A1N(n698), .Y(n478) );
  OAI2BB2XL U742 ( .B0(n696), .B1(n312), .A0N(N370), .A1N(n698), .Y(n480) );
  OAI2BB2XL U743 ( .B0(n696), .B1(n310), .A0N(N369), .A1N(n698), .Y(n481) );
  OAI2BB2XL U744 ( .B0(n696), .B1(n682), .A0N(N368), .A1N(n698), .Y(n482) );
  CLKINVX1 U745 ( .A(n398), .Y(n743) );
  CLKINVX1 U746 ( .A(n409), .Y(n731) );
  CLKINVX1 U747 ( .A(n403), .Y(n746) );
  OAI222XL U748 ( .A0(n215), .A1(n720), .B0(N90), .B1(n202), .C0(n637), .C1(
        n218), .Y(n459) );
  OAI222XL U749 ( .A0(n636), .A1(n216), .B0(n211), .B1(n733), .C0(n202), .C1(
        n208), .Y(n458) );
  BUFX12 U750 ( .A(n656), .Y(W[2]) );
  OAI32X1 U751 ( .A0(n687), .A1(n56), .A2(n686), .B0(n430), .B1(n290), .Y(N430) );
  CLKINVX1 U752 ( .A(n289), .Y(n686) );
  OAI211X1 U753 ( .A0(n389), .A1(n391), .B0(n290), .C0(n291), .Y(g_ns[0]) );
  AOI211X1 U754 ( .A0(n430), .A1(n698), .B0(n701), .C0(n293), .Y(n291) );
  AOI2BB1X1 U755 ( .A0N(n390), .A1N(n389), .B0(n515), .Y(n293) );
  CLKINVX1 U756 ( .A(n287), .Y(n701) );
  AOI211X1 U757 ( .A0(n296), .A1(n295), .B0(n56), .C0(n289), .Y(N429) );
  NOR2X1 U758 ( .A(n296), .B(n295), .Y(n289) );
  NAND3X1 U759 ( .A(n602), .B(n734), .C(n600), .Y(n100) );
  AOI21X1 U760 ( .A0(n698), .A1(n295), .B0(N428), .Y(n290) );
  CLKINVX1 U761 ( .A(n413), .Y(n738) );
  CLKINVX1 U762 ( .A(n637), .Y(n720) );
  CLKINVX1 U763 ( .A(n407), .Y(n747) );
  CLKINVX1 U764 ( .A(n430), .Y(n687) );
  OAI21XL U765 ( .A0(n201), .A1(n202), .B0(n212), .Y(n457) );
  AOI32X1 U766 ( .A0(n702), .A1(n733), .A2(n419), .B0(n214), .B1(n735), .Y(
        n212) );
  OAI21XL U767 ( .A0(n215), .A1(n733), .B0(n216), .Y(n214) );
  CLKINVX1 U768 ( .A(n211), .Y(n702) );
  CLKINVX1 U769 ( .A(n419), .Y(n735) );
  OAI2BB2XL U770 ( .B0(n696), .B1(n683), .A0N(N367), .A1N(n698), .Y(n483) );
  OAI2BB2XL U771 ( .B0(n696), .B1(n304), .A0N(N366), .A1N(n698), .Y(n484) );
  OAI2BB2XL U772 ( .B0(n696), .B1(n302), .A0N(N365), .A1N(n698), .Y(n485) );
  OAI2BB2XL U773 ( .B0(n696), .B1(n300), .A0N(N363), .A1N(n698), .Y(n486) );
  OAI2BB2XL U774 ( .B0(n696), .B1(n684), .A0N(N364), .A1N(n698), .Y(n487) );
  AND2X2 U775 ( .A(n296), .B(n698), .Y(N428) );
  OA22X1 U776 ( .A0(\Job[4][0] ), .A1(n417), .B0(\Job[2][0] ), .B1(N91), .Y(
        n561) );
  NOR2X1 U777 ( .A(n574), .B(N91), .Y(n559) );
  NOR2X1 U778 ( .A(n574), .B(n417), .Y(n558) );
  AOI222XL U779 ( .A0(n561), .A1(n574), .B0(n559), .B1(\Job[3][0] ), .C0(n558), 
        .C1(\Job[5][0] ), .Y(n556) );
  OAI2BB2XL U780 ( .B0(n524), .B1(n556), .A0N(\Job[7][0] ), .A1N(n524), .Y(
        N230) );
  OA22X1 U781 ( .A0(\Job[4][1] ), .A1(n417), .B0(\Job[2][1] ), .B1(N91), .Y(
        n564) );
  AOI222XL U782 ( .A0(n564), .A1(n574), .B0(n559), .B1(\Job[3][1] ), .C0(n558), 
        .C1(\Job[5][1] ), .Y(n557) );
  OAI2BB2XL U783 ( .B0(n524), .B1(n557), .A0N(\Job[7][1] ), .A1N(n524), .Y(
        N231) );
  OA22X1 U784 ( .A0(\Job[4][2] ), .A1(n417), .B0(\Job[2][2] ), .B1(N91), .Y(
        n569) );
  AOI222XL U785 ( .A0(n569), .A1(n574), .B0(n559), .B1(\Job[3][2] ), .C0(n558), 
        .C1(\Job[5][2] ), .Y(n560) );
  OAI2BB2XL U786 ( .B0(n524), .B1(n560), .A0N(\Job[7][2] ), .A1N(n524), .Y(
        N232) );
  NOR2X1 U787 ( .A(N90), .B(N91), .Y(n568) );
  NOR2X1 U788 ( .A(n417), .B(N90), .Y(n567) );
  AOI222XL U789 ( .A0(N90), .A1(n561), .B0(\Job[1][0] ), .B1(n568), .C0(
        \Job[3][0] ), .C1(n567), .Y(n563) );
  AND2X1 U790 ( .A(n524), .B(n574), .Y(n571) );
  AND2X1 U791 ( .A(n524), .B(N90), .Y(n570) );
  AOI22X1 U792 ( .A0(\Job[5][0] ), .A1(n571), .B0(\Job[6][0] ), .B1(n570), .Y(
        n562) );
  OAI21XL U793 ( .A0(n524), .A1(n563), .B0(n562), .Y(N227) );
  AOI222XL U794 ( .A0(N90), .A1(n564), .B0(\Job[1][1] ), .B1(n568), .C0(
        \Job[3][1] ), .C1(n567), .Y(n566) );
  AOI22X1 U795 ( .A0(\Job[5][1] ), .A1(n571), .B0(\Job[6][1] ), .B1(n570), .Y(
        n565) );
  OAI21XL U796 ( .A0(n524), .A1(n566), .B0(n565), .Y(N228) );
  AOI222XL U797 ( .A0(N90), .A1(n569), .B0(\Job[1][2] ), .B1(n568), .C0(
        \Job[3][2] ), .C1(n567), .Y(n573) );
  AOI22X1 U798 ( .A0(\Job[5][2] ), .A1(n571), .B0(\Job[6][2] ), .B1(n570), .Y(
        n572) );
  OAI21XL U799 ( .A0(n524), .A1(n573), .B0(n572), .Y(N229) );
  BUFX12 U800 ( .A(n748), .Y(J[2]) );
  NOR2X1 U801 ( .A(n601), .B(N87), .Y(n597) );
  NOR2X1 U802 ( .A(n601), .B(n602), .Y(n596) );
  NOR2X1 U803 ( .A(n602), .B(N88), .Y(n594) );
  NOR2X1 U804 ( .A(N87), .B(N88), .Y(n593) );
  AO22X1 U805 ( .A0(\Job[5][0] ), .A1(n594), .B0(\Job[4][0] ), .B1(n593), .Y(
        n584) );
  AOI221XL U806 ( .A0(\Job[6][0] ), .A1(n597), .B0(\Job[7][0] ), .B1(n596), 
        .C0(n584), .Y(n587) );
  AO22X1 U807 ( .A0(\Job[1][0] ), .A1(n594), .B0(\Job[0][0] ), .B1(n593), .Y(
        n585) );
  AOI221XL U808 ( .A0(\Job[2][0] ), .A1(n597), .B0(\Job[3][0] ), .B1(n596), 
        .C0(n585), .Y(n586) );
  OAI22XL U809 ( .A0(n600), .A1(n587), .B0(N89), .B1(n586), .Y(N128) );
  AO22X1 U810 ( .A0(\Job[5][1] ), .A1(n594), .B0(\Job[4][1] ), .B1(n593), .Y(
        n588) );
  AOI221XL U811 ( .A0(\Job[6][1] ), .A1(n597), .B0(\Job[7][1] ), .B1(n596), 
        .C0(n588), .Y(n591) );
  AO22X1 U812 ( .A0(\Job[1][1] ), .A1(n594), .B0(\Job[0][1] ), .B1(n593), .Y(
        n589) );
  AOI221XL U813 ( .A0(\Job[2][1] ), .A1(n597), .B0(\Job[3][1] ), .B1(n596), 
        .C0(n589), .Y(n590) );
  OAI22XL U814 ( .A0(n600), .A1(n591), .B0(N89), .B1(n590), .Y(N127) );
  AO22X1 U815 ( .A0(\Job[5][2] ), .A1(n594), .B0(\Job[4][2] ), .B1(n593), .Y(
        n592) );
  AOI221XL U816 ( .A0(\Job[6][2] ), .A1(n597), .B0(\Job[7][2] ), .B1(n596), 
        .C0(n592), .Y(n599) );
  AO22X1 U817 ( .A0(\Job[1][2] ), .A1(n594), .B0(\Job[0][2] ), .B1(n593), .Y(
        n595) );
  AOI221XL U818 ( .A0(\Job[2][2] ), .A1(n597), .B0(\Job[3][2] ), .B1(n596), 
        .C0(n595), .Y(n598) );
  OAI22XL U819 ( .A0(n599), .A1(n600), .B0(N89), .B1(n598), .Y(N126) );
  NOR2X1 U820 ( .A(n417), .B(n574), .Y(n615) );
  NOR2X1 U821 ( .A(n574), .B(N91), .Y(n613) );
  NOR2X1 U822 ( .A(N90), .B(N91), .Y(n612) );
  AO22X1 U823 ( .A0(\Job[5][0] ), .A1(n613), .B0(\Job[4][0] ), .B1(n612), .Y(
        n603) );
  AOI221XL U824 ( .A0(\Job[6][0] ), .A1(n616), .B0(\Job[7][0] ), .B1(n615), 
        .C0(n603), .Y(n606) );
  AO22X1 U825 ( .A0(\Job[1][0] ), .A1(n613), .B0(\Job[0][0] ), .B1(n612), .Y(
        n604) );
  AOI221XL U826 ( .A0(\Job[2][0] ), .A1(n616), .B0(\Job[3][0] ), .B1(n615), 
        .C0(n604), .Y(n605) );
  AO22X1 U827 ( .A0(\Job[5][1] ), .A1(n613), .B0(\Job[4][1] ), .B1(n612), .Y(
        n607) );
  AOI221XL U828 ( .A0(\Job[6][1] ), .A1(n616), .B0(\Job[7][1] ), .B1(n615), 
        .C0(n607), .Y(n610) );
  AO22X1 U829 ( .A0(\Job[1][1] ), .A1(n613), .B0(\Job[0][1] ), .B1(n612), .Y(
        n608) );
  AOI221XL U830 ( .A0(\Job[2][1] ), .A1(n616), .B0(\Job[3][1] ), .B1(n615), 
        .C0(n608), .Y(n609) );
  AO22X1 U831 ( .A0(\Job[5][2] ), .A1(n613), .B0(\Job[4][2] ), .B1(n612), .Y(
        n611) );
  AOI221XL U832 ( .A0(\Job[6][2] ), .A1(n616), .B0(\Job[7][2] ), .B1(n615), 
        .C0(n611), .Y(n618) );
  AO22X1 U833 ( .A0(\Job[1][2] ), .A1(n613), .B0(\Job[0][2] ), .B1(n612), .Y(
        n614) );
  AOI221XL U834 ( .A0(\Job[2][2] ), .A1(n616), .B0(\Job[3][2] ), .B1(n615), 
        .C0(n614), .Y(n617) );
  NOR2X1 U835 ( .A(n636), .B(N93), .Y(n633) );
  NOR2X1 U836 ( .A(n636), .B(n637), .Y(n632) );
  NOR2X1 U837 ( .A(n637), .B(N94), .Y(n630) );
  NOR2X1 U838 ( .A(N93), .B(N94), .Y(n629) );
  AO22X1 U839 ( .A0(\Job[5][0] ), .A1(n630), .B0(\Job[4][0] ), .B1(n629), .Y(
        n620) );
  AOI221XL U840 ( .A0(\Job[6][0] ), .A1(n633), .B0(\Job[7][0] ), .B1(n632), 
        .C0(n620), .Y(n623) );
  AO22X1 U841 ( .A0(\Job[1][0] ), .A1(n630), .B0(\Job[0][0] ), .B1(n629), .Y(
        n621) );
  AOI221XL U842 ( .A0(\Job[2][0] ), .A1(n633), .B0(\Job[3][0] ), .B1(n632), 
        .C0(n621), .Y(n622) );
  OAI22XL U843 ( .A0(n419), .A1(n623), .B0(N95), .B1(n622), .Y(N322) );
  AO22X1 U844 ( .A0(\Job[5][1] ), .A1(n630), .B0(\Job[4][1] ), .B1(n629), .Y(
        n624) );
  AOI221XL U845 ( .A0(\Job[6][1] ), .A1(n633), .B0(\Job[7][1] ), .B1(n632), 
        .C0(n624), .Y(n627) );
  AO22X1 U846 ( .A0(\Job[1][1] ), .A1(n630), .B0(\Job[0][1] ), .B1(n629), .Y(
        n625) );
  AOI221XL U847 ( .A0(\Job[2][1] ), .A1(n633), .B0(\Job[3][1] ), .B1(n632), 
        .C0(n625), .Y(n626) );
  AO22X1 U848 ( .A0(\Job[5][2] ), .A1(n630), .B0(\Job[4][2] ), .B1(n629), .Y(
        n628) );
  AOI221XL U849 ( .A0(\Job[6][2] ), .A1(n633), .B0(\Job[7][2] ), .B1(n632), 
        .C0(n628), .Y(n635) );
  AO22X1 U850 ( .A0(\Job[1][2] ), .A1(n630), .B0(\Job[0][2] ), .B1(n629), .Y(
        n631) );
  AOI221XL U851 ( .A0(\Job[2][2] ), .A1(n633), .B0(\Job[3][2] ), .B1(n632), 
        .C0(n631), .Y(n634) );
  NOR2X1 U852 ( .A(n295), .B(W[0]), .Y(n651) );
  NOR2X1 U853 ( .A(n295), .B(n296), .Y(n650) );
  NOR2X1 U854 ( .A(n296), .B(W[1]), .Y(n648) );
  AO22X1 U855 ( .A0(\Job[5][0] ), .A1(n648), .B0(\Job[4][0] ), .B1(n647), .Y(
        n638) );
  AOI221XL U856 ( .A0(\Job[6][0] ), .A1(n651), .B0(\Job[7][0] ), .B1(n650), 
        .C0(n638), .Y(n641) );
  AO22X1 U857 ( .A0(\Job[1][0] ), .A1(n648), .B0(\Job[0][0] ), .B1(n647), .Y(
        n639) );
  AOI221XL U858 ( .A0(\Job[2][0] ), .A1(n651), .B0(\Job[3][0] ), .B1(n650), 
        .C0(n639), .Y(n640) );
  AO22X1 U859 ( .A0(\Job[5][1] ), .A1(n648), .B0(\Job[4][1] ), .B1(n647), .Y(
        n642) );
  AOI221XL U860 ( .A0(\Job[6][1] ), .A1(n651), .B0(\Job[7][1] ), .B1(n650), 
        .C0(n642), .Y(n645) );
  AO22X1 U861 ( .A0(\Job[1][1] ), .A1(n648), .B0(\Job[0][1] ), .B1(n647), .Y(
        n643) );
  AOI221XL U862 ( .A0(\Job[2][1] ), .A1(n651), .B0(\Job[3][1] ), .B1(n650), 
        .C0(n643), .Y(n644) );
  AO22X1 U863 ( .A0(\Job[5][2] ), .A1(n648), .B0(\Job[4][2] ), .B1(n647), .Y(
        n646) );
  AOI221XL U864 ( .A0(\Job[6][2] ), .A1(n651), .B0(\Job[7][2] ), .B1(n650), 
        .C0(n646), .Y(n653) );
  AO22X1 U865 ( .A0(\Job[1][2] ), .A1(n648), .B0(\Job[0][2] ), .B1(n647), .Y(
        n649) );
  AOI221XL U866 ( .A0(\Job[2][2] ), .A1(n651), .B0(\Job[3][2] ), .B1(n650), 
        .C0(n649), .Y(n652) );
  OAI22XL U867 ( .A0(n653), .A1(n430), .B0(n656), .B1(n652), .Y(n748) );
  OAI22XL U868 ( .A0(CurCost[1]), .A1(n657), .B0(n657), .B1(n297), .Y(n659) );
  NAND2X1 U869 ( .A(CurCost[7]), .B(n311), .Y(n671) );
  NAND2X1 U870 ( .A(CurCost[6]), .B(n309), .Y(n666) );
  NOR3BXL U871 ( .AN(n666), .B(n660), .C(n667), .Y(n658) );
  NAND3X1 U872 ( .A(n659), .B(n671), .C(n658), .Y(n678) );
  NAND2X1 U873 ( .A(CurCost[9]), .B(n315), .Y(n674) );
  NOR2X1 U874 ( .A(n676), .B(n675), .Y(n665) );
  NAND2X1 U875 ( .A(CurCost[2]), .B(n301), .Y(n673) );
  OAI211X1 U876 ( .A0(n662), .A1(n684), .B0(n661), .C0(n673), .Y(n663) );
  OAI221XL U877 ( .A0(CurCost[2]), .A1(n301), .B0(CurCost[3]), .B1(n303), .C0(
        n663), .Y(n664) );
  NAND2BX1 U878 ( .AN(n667), .B(n666), .Y(n668) );
  OAI222XL U879 ( .A0(n669), .A1(n668), .B0(CurCost[6]), .B1(n309), .C0(
        CurCost[7]), .C1(n311), .Y(n670) );
  NOR4X1 U880 ( .A(n678), .B(n677), .C(n676), .D(n675), .Y(N387) );
endmodule

