/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Mon Aug  1 20:39:05 2022
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
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, n865, n866, n867, n868,
         n869, n870, n871, n872, n873, \nextJob[0][2] , \nextJob[0][1] ,
         \nextJob[0][0] , \nextJob[1][2] , \nextJob[1][1] , \nextJob[1][0] ,
         \nextJob[2][2] , \nextJob[2][1] , \nextJob[2][0] , \nextJob[3][2] ,
         \nextJob[3][1] , \nextJob[3][0] , \nextJob[4][2] , \nextJob[4][1] ,
         \nextJob[4][0] , \nextJob[5][2] , \nextJob[5][1] , \nextJob[5][0] ,
         \nextJob[6][2] , \nextJob[6][1] , \nextJob[6][0] , \nextJob[7][2] ,
         \nextJob[7][1] , \nextJob[7][0] , \Job[0][2] , \Job[0][1] ,
         \Job[0][0] , \Job[1][2] , \Job[1][1] , \Job[1][0] , \Job[2][2] ,
         \Job[2][1] , \Job[2][0] , \Job[3][2] , \Job[3][1] , \Job[3][0] ,
         \Job[4][2] , \Job[4][1] , \Job[4][0] , \Job[5][2] , \Job[5][1] ,
         \Job[5][0] , \Job[6][2] , \Job[6][1] , \Job[6][0] , \Job[7][2] ,
         \Job[7][1] , \Job[7][0] , N143, N144, N145, N244, N245, N246, N247,
         N248, N249, N342, N343, N344, N345, N346, N347, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N408, N440, N441, N442,
         N449, n53, n54, n57, n58, n59, n61, n63, n64, n66, n68, n70, n71, n72,
         n73, n74, n75, n77, n78, n80, n81, n82, n84, n87, n88, n89, n90, n91,
         n95, n99, n101, n102, n103, n105, n106, n110, n112, n114, n115, n116,
         n118, n119, n121, n122, n123, n124, n126, n127, n128, n129, n130,
         n131, n132, n133, n137, n139, n140, n141, n143, n146, n147, n150,
         n152, n153, n155, n156, n158, n159, n161, n162, n163, n164, n165,
         n166, n167, n169, n170, n171, n173, n174, n177, n178, n179, n182,
         n183, n184, n186, n187, n188, n189, n190, n192, n193, n194, n195,
         n197, n199, n200, n201, n202, n203, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n216, n217, n218, n219, n220, n221, n223,
         n225, n226, n227, n229, n230, n232, n233, n234, n235, n237, n239,
         n241, n242, n244, n245, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n266, n268, n270, n273, n274, n276, n277, n278,
         n280, n282, n285, n286, n287, n288, n291, n292, n293, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n316, n317, n318, n322,
         n323, n326, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n397, n439, n443, n452, n455,
         n457, n458, n459, n460, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n587, n588, n589, n590, n591, n592, n593, n595, n597, n599,
         n634, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864;
  wire   [2:0] perm_cs;
  wire   [2:0] cost_ns;
  wire   [2:0] perm_ns;
  wire   [9:0] CurCost;

  JAM_DW01_add_0 add_196 ( .A(CurCost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N394, N393, N392, N391, N390, N389, N388, N387, N386, N385}) );
  DFFNSRX1 \Job_reg[4][2]  ( .D(n495), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[4][2] ), .QN(n345) );
  DFFNSRX1 \Job_reg[0][2]  ( .D(n523), .CKN(CLK), .SN(1'b1), .RN(n680), .Q(
        \Job[0][2] ), .QN(n331) );
  DFFNSRX1 \Job_reg[1][2]  ( .D(n481), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[1][2] ), .QN(n352) );
  DFFNSRX1 \Job_reg[5][2]  ( .D(n501), .CKN(CLK), .SN(n677), .RN(1'b1), .Q(
        \Job[5][2] ), .QN(n342) );
  DFFNSRX1 \Job_reg[6][2]  ( .D(n507), .CKN(CLK), .SN(n679), .RN(1'b1), .Q(
        \Job[6][2] ), .QN(n339) );
  DFFNSRX1 \Job_reg[2][2]  ( .D(n487), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[2][2] ), .QN(n349) );
  DFFNSRX1 \Job_reg[3][2]  ( .D(n491), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[3][2] ), .QN(n347) );
  DFFNSRX1 \Job_reg[7][2]  ( .D(n513), .CKN(CLK), .SN(n796), .RN(1'b1), .Q(
        \Job[7][2] ), .QN(n336) );
  DFFNSRX1 \perm_cs_reg[0]  ( .D(perm_ns[0]), .CKN(CLK), .SN(1'b1), .RN(n680), 
        .Q(perm_cs[0]), .QN(n592) );
  DFFNSRX1 \curmin_reg[2]  ( .D(n533), .CKN(CLK), .SN(n679), .RN(1'b1), .QN(
        n460) );
  DFFNSRX1 \Job_reg[0][1]  ( .D(n531), .CKN(CLK), .SN(1'b1), .RN(n680), .Q(
        \Job[0][1] ), .QN(n330) );
  DFFNSRX1 \Job_reg[0][0]  ( .D(n521), .CKN(CLK), .SN(1'b1), .RN(n677), .Q(
        \Job[0][0] ), .QN(n332) );
  DFFNSRX1 \Job_reg[1][1]  ( .D(n479), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[1][1] ), .QN(n353) );
  DFFNSRX1 \Job_reg[1][0]  ( .D(n483), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[1][0] ), .QN(n351) );
  DFFNSRX1 \Job_reg[2][1]  ( .D(n485), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[2][1] ), .QN(n350) );
  DFFNSRX1 \Job_reg[2][0]  ( .D(n489), .CKN(CLK), .SN(1'b1), .RN(n677), .Q(
        \Job[2][0] ), .QN(n348) );
  DFFNSRX1 \Job_reg[3][1]  ( .D(n519), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[3][1] ), .QN(n333) );
  DFFNSRX1 \Job_reg[3][0]  ( .D(n493), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[3][0] ), .QN(n346) );
  DFFNSRX1 \perm_cs_reg[1]  ( .D(perm_ns[1]), .CKN(CLK), .SN(1'b1), .RN(n680), 
        .Q(perm_cs[1]), .QN(n587) );
  DFFNSRX1 \cost_cs_reg[2]  ( .D(cost_ns[2]), .CKN(CLK), .SN(1'b1), .RN(n681), 
        .Q(n593), .QN(n452) );
  DFFNSRX1 \cost_cs_reg[0]  ( .D(cost_ns[0]), .CKN(CLK), .SN(1'b1), .RN(n681), 
        .QN(n354) );
  DFFNSRX1 \Job_reg[5][0]  ( .D(n505), .CKN(CLK), .SN(n679), .RN(1'b1), .Q(
        \Job[5][0] ), .QN(n340) );
  DFFNSRX1 \Job_reg[5][1]  ( .D(n503), .CKN(CLK), .SN(1'b1), .RN(n677), .Q(
        \Job[5][1] ), .QN(n341) );
  DFFNSRX1 \Job_reg[6][1]  ( .D(n509), .CKN(CLK), .SN(n677), .RN(1'b1), .Q(
        \Job[6][1] ), .QN(n338) );
  DFFNSRX1 \Job_reg[6][0]  ( .D(n511), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[6][0] ), .QN(n337) );
  DFFNSRX1 \Job_reg[7][1]  ( .D(n515), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[7][1] ), .QN(n335) );
  DFFNSRX1 \Job_reg[7][0]  ( .D(n517), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(
        \Job[7][0] ), .QN(n334) );
  DFFNSRX1 \CurCost_reg[9]  ( .D(n550), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[9]), .QN(n464) );
  DFFNSRX1 \CurCost_reg[8]  ( .D(n551), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[8]), .QN(n465) );
  DFFNSRX1 \CurCost_reg[7]  ( .D(n552), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[7]), .QN(n466) );
  DFFNSRX1 \Job_reg[4][1]  ( .D(n497), .CKN(CLK), .SN(1'b1), .RN(n682), .Q(
        \Job[4][1] ), .QN(n344) );
  DFFNSRX1 \Job_reg[4][0]  ( .D(n499), .CKN(CLK), .SN(1'b1), .RN(n677), .Q(
        \Job[4][0] ), .QN(n343) );
  DFFNSRX1 \nextJob_reg[6][0]  ( .D(n512), .CKN(CLK), .SN(1'b1), .RN(n682), 
        .Q(\nextJob[6][0] ), .QN(n589) );
  DFFNSRX1 \CurCost_reg[4]  ( .D(n555), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[4]), .QN(n469) );
  DFFNSRX1 \CurCost_reg[5]  ( .D(n554), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[5]), .QN(n468) );
  DFFNSRX1 \CurCost_reg[6]  ( .D(n553), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[6]), .QN(n467) );
  DFFNSRX1 \nextJob_reg[0][0]  ( .D(n522), .CKN(CLK), .SN(1'b1), .RN(n677), 
        .Q(\nextJob[0][0] ), .QN(n863) );
  DFFNSRX1 \nextJob_reg[0][2]  ( .D(n524), .CKN(CLK), .SN(1'b1), .RN(n677), 
        .Q(\nextJob[0][2] ), .QN(n864) );
  DFFNSRX1 \pos_reg[2]  ( .D(n528), .CKN(CLK), .SN(1'b1), .RN(n680), .Q(N98), 
        .QN(n457) );
  DFFNSRX1 \nextJob_reg[1][2]  ( .D(n482), .CKN(CLK), .SN(1'b1), .RN(n682), 
        .Q(\nextJob[1][2] ), .QN(n850) );
  DFFNSRX1 \nextJob_reg[2][0]  ( .D(n490), .CKN(CLK), .SN(1'b1), .RN(n677), 
        .Q(\nextJob[2][0] ), .QN(n862) );
  DFFNSRX1 \pos_reg[1]  ( .D(n529), .CKN(CLK), .SN(1'b1), .RN(n680), .Q(N97), 
        .QN(n458) );
  DFFNSRX1 \CurCost_reg[3]  ( .D(n556), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[3]), .QN(n470) );
  DFFNSRX1 \pos_reg[0]  ( .D(n530), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(N96), 
        .QN(n459) );
  DFFNSRX1 \CurCost_reg[2]  ( .D(n557), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[2]), .QN(n471) );
  DFFNSRX1 \CurCost_reg[1]  ( .D(n558), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[1]), .QN(n472) );
  DFFNSRX1 \CurCost_reg[0]  ( .D(n559), .CKN(CLK), .SN(1'b1), .RN(n681), .Q(
        CurCost[0]), .QN(n473) );
  DFFNSRX1 \nextJob_reg[0][1]  ( .D(n532), .CKN(CLK), .SN(1'b1), .RN(n681), 
        .Q(\nextJob[0][1] ), .QN(n591) );
  DFFNSRX2 \anchor_reg[1]  ( .D(n439), .CKN(CLK), .SN(n678), .RN(1'b1), .Q(N94), .QN(n455) );
  DFFNSRX1 \nextJob_reg[4][0]  ( .D(n500), .CKN(CLK), .SN(1'b1), .RN(n677), 
        .Q(\nextJob[4][0] ), .QN(n588) );
  DFFNSRX1 \perm_cs_reg[2]  ( .D(perm_ns[2]), .CKN(CLK), .SN(1'b1), .RN(n680), 
        .Q(perm_cs[2]) );
  DFFNSRX1 \MinCost_reg[3]  ( .D(n546), .CKN(CLK), .SN(n680), .RN(1'b1), .Q(
        n871), .QN(n790) );
  DFFNSRX1 \MinCost_reg[1]  ( .D(n548), .CKN(CLK), .SN(n680), .RN(1'b1), .Q(
        n872), .QN(n788) );
  DFFNSRX1 \MinCost_reg[2]  ( .D(n547), .CKN(CLK), .SN(n677), .RN(1'b1), .QN(
        n789) );
  DFFNSRX1 \MinCost_reg[6]  ( .D(n543), .CKN(CLK), .SN(n679), .RN(1'b1), .QN(
        n791) );
  DFFNSRX1 \MinCost_reg[7]  ( .D(n542), .CKN(CLK), .SN(n679), .RN(1'b1), .QN(
        n792) );
  DFFNSRX1 \MinCost_reg[9]  ( .D(n540), .CKN(CLK), .SN(n680), .RN(1'b1), .QN(
        n793) );
  DFFNSRX1 \MatchCount_reg[1]  ( .D(n538), .CKN(CLK), .SN(1'b1), .RN(n682), 
        .QN(n476) );
  DFFNSRX1 \MatchCount_reg[2]  ( .D(n537), .CKN(CLK), .SN(1'b1), .RN(n682), 
        .QN(n475) );
  DFFNSRX1 \nextJob_reg[4][1]  ( .D(n498), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .Q(\nextJob[4][1] ), .QN(n858) );
  DFFNSRX1 \nextJob_reg[1][1]  ( .D(n480), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .Q(\nextJob[1][1] ), .QN(n856) );
  DFFNSRX1 \nextJob_reg[2][2]  ( .D(n488), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .Q(\nextJob[2][2] ), .QN(n851) );
  DFFNSRX1 \nextJob_reg[3][2]  ( .D(n492), .CKN(CLK), .SN(1'b1), .RN(n682), 
        .Q(\nextJob[3][2] ), .QN(n852) );
  DFFNSRX1 \nextJob_reg[7][2]  ( .D(n514), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[7][2] ), .QN(n849) );
  DFFNSRX1 \nextJob_reg[7][0]  ( .D(n518), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[7][0] ), .QN(n860) );
  DFFNSRX1 \nextJob_reg[7][1]  ( .D(n516), .CKN(CLK), .SN(n677), .RN(1'b1), 
        .Q(\nextJob[7][1] ), .QN(n855) );
  DFFNSRX1 \nextJob_reg[5][2]  ( .D(n502), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[5][2] ), .QN(n853) );
  DFFNSRX1 \nextJob_reg[5][0]  ( .D(n506), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[5][0] ), .QN(n845) );
  DFFNSRX1 \nextJob_reg[3][1]  ( .D(n520), .CKN(CLK), .SN(n678), .RN(1'b1), 
        .Q(\nextJob[3][1] ), .QN(n822) );
  DFFNSRX1 \nextJob_reg[3][0]  ( .D(n494), .CKN(CLK), .SN(n679), .RN(1'b1), 
        .Q(\nextJob[3][0] ), .QN(n844) );
  DFFNSRX1 \MatchCount_reg[0]  ( .D(n539), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(n634), .QN(n477) );
  DFFNSRX1 \nextJob_reg[4][2]  ( .D(n496), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[4][2] ), .QN(n854) );
  DFFNSRX1 \nextJob_reg[6][2]  ( .D(n508), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[6][2] ), .QN(n590) );
  DFFNSRX1 \nextJob_reg[6][1]  ( .D(n510), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[6][1] ) );
  DFFNSRX1 \nextJob_reg[1][0]  ( .D(n484), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[1][0] ), .QN(n861) );
  DFFNSRX1 \nextJob_reg[2][1]  ( .D(n486), .CKN(CLK), .SN(n796), .RN(1'b1), 
        .Q(\nextJob[2][1] ), .QN(n859) );
  DFFNSRX1 \curmin_reg[0]  ( .D(n535), .CKN(CLK), .SN(n796), .RN(1'b1), .QN(
        n832) );
  DFFNSRX1 \curmin_reg[1]  ( .D(n534), .CKN(CLK), .SN(n796), .RN(1'b1), .Q(
        n329), .QN(n831) );
  DFFNSRX1 \cost_cs_reg[1]  ( .D(cost_ns[1]), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .Q(n810) );
  DFFNSRX2 \W_reg[1]  ( .D(N441), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(n764), 
        .QN(n316) );
  DFFNSRX4 \anchor_reg[2]  ( .D(n397), .CKN(CLK), .SN(n796), .RN(1'b1), .Q(N95), .QN(n728) );
  DFFNSRX1 \W_reg[2]  ( .D(N442), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(n765), 
        .QN(n478) );
  DFFNSRX2 \anchor_reg[0]  ( .D(n443), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(N93), .QN(n665) );
  DFFNSRX1 \MatchCount_reg[3]  ( .D(n536), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .QN(n474) );
  DFFNSRX2 \swap_reg[2]  ( .D(n525), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(N92), 
        .QN(n709) );
  DFFNSRX2 \nextJob_reg[5][1]  ( .D(n504), .CKN(CLK), .SN(1'b1), .RN(n796), 
        .Q(\nextJob[5][1] ), .QN(n857) );
  DFFNSRX2 \swap_reg[0]  ( .D(n527), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(N90), 
        .QN(n710) );
  DFFNSRX2 \swap_reg[1]  ( .D(n526), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(N91), 
        .QN(n711) );
  DFFNSRX1 \W_reg[0]  ( .D(N440), .CKN(CLK), .SN(1'b1), .RN(n796), .Q(n763), 
        .QN(n317) );
  DFFNSRX1 \MinCost_reg[8]  ( .D(n541), .CKN(CLK), .SN(n679), .RN(1'b1), .Q(
        n868), .QN(n326) );
  DFFNSRX1 \MinCost_reg[4]  ( .D(n545), .CKN(CLK), .SN(n679), .RN(1'b1), .Q(
        n870), .QN(n322) );
  DFFNSRX1 \MinCost_reg[0]  ( .D(n549), .CKN(CLK), .SN(n677), .RN(1'b1), .Q(
        n873), .QN(n318) );
  DFFNSRX1 \MinCost_reg[5]  ( .D(n544), .CKN(CLK), .SN(n680), .RN(1'b1), .Q(
        n869), .QN(n323) );
  NAND2X1 U485 ( .A(n452), .B(n810), .Y(n280) );
  CLKINVX1 U486 ( .A(N449), .Y(n808) );
  INVX12 U487 ( .A(n599), .Y(W[1]) );
  CLKINVX1 U488 ( .A(n764), .Y(n599) );
  INVX4 U489 ( .A(RST), .Y(n796) );
  NOR2X2 U490 ( .A(n711), .B(n710), .Y(n705) );
  NOR2X2 U491 ( .A(n711), .B(N90), .Y(n706) );
  NOR3X1 U492 ( .A(n711), .B(n709), .C(N90), .Y(n200) );
  NOR3X2 U493 ( .A(n710), .B(n711), .C(N92), .Y(n143) );
  NOR3XL U494 ( .A(n711), .B(n709), .C(n710), .Y(n213) );
  INVX12 U495 ( .A(n474), .Y(MatchCount[3]) );
  INVXL U496 ( .A(n634), .Y(n595) );
  INVX12 U497 ( .A(n595), .Y(MatchCount[0]) );
  NOR2X2 U498 ( .A(n455), .B(N93), .Y(n725) );
  CLKINVX1 U499 ( .A(n763), .Y(n597) );
  INVX12 U500 ( .A(n597), .Y(W[0]) );
  INVX16 U501 ( .A(n478), .Y(W[2]) );
  OAI22X1 U532 ( .A0(CurCost[9]), .A1(n793), .B0(n794), .B1(n781), .Y(N408) );
  NAND2X1 U533 ( .A(N347), .B(n672), .Y(n128) );
  OAI22X1 U534 ( .A0(n728), .A1(n715), .B0(N95), .B1(n714), .Y(N347) );
  BUFX12 U535 ( .A(n866), .Y(J[1]) );
  OAI2BB2XL U536 ( .B0(W[2]), .B1(n753), .A0N(n765), .A1N(n668), .Y(n866) );
  INVX12 U537 ( .A(n323), .Y(MinCost[5]) );
  OAI22X1 U538 ( .A0(n744), .A1(n746), .B0(N98), .B1(n743), .Y(N342) );
  NAND2X1 U539 ( .A(N345), .B(n672), .Y(n123) );
  OAI22X1 U540 ( .A0(n727), .A1(n728), .B0(N95), .B1(n726), .Y(N345) );
  INVX16 U541 ( .A(n475), .Y(MatchCount[2]) );
  INVX16 U542 ( .A(n476), .Y(MatchCount[1]) );
  INVX12 U543 ( .A(n793), .Y(MinCost[9]) );
  INVX12 U544 ( .A(n792), .Y(MinCost[7]) );
  INVX12 U545 ( .A(n791), .Y(MinCost[6]) );
  INVX12 U546 ( .A(n789), .Y(MinCost[2]) );
  BUFX12 U547 ( .A(n867), .Y(J[0]) );
  OAI2BB2XL U548 ( .B0(W[2]), .B1(n749), .A0N(n765), .A1N(n667), .Y(n867) );
  INVX12 U549 ( .A(n318), .Y(MinCost[0]) );
  INVX12 U550 ( .A(n788), .Y(MinCost[1]) );
  INVX12 U551 ( .A(n790), .Y(MinCost[3]) );
  INVX12 U552 ( .A(n322), .Y(MinCost[4]) );
  INVX12 U553 ( .A(n326), .Y(MinCost[8]) );
  AOI32XL U554 ( .A0(n780), .A1(n795), .A2(n779), .B0(n868), .B1(n465), .Y(
        n781) );
  NAND2X1 U555 ( .A(N346), .B(n672), .Y(n116) );
  OAI22X1 U556 ( .A0(n728), .A1(n719), .B0(N95), .B1(n718), .Y(N346) );
  INVX12 U557 ( .A(n808), .Y(Valid) );
  NOR2X1 U558 ( .A(n280), .B(n354), .Y(N449) );
  NAND3BXL U559 ( .AN(N408), .B(n783), .C(n782), .Y(n786) );
  AO21XL U560 ( .A0(n472), .A1(n771), .B0(n872), .Y(n770) );
  NOR2BXL U561 ( .AN(CurCost[3]), .B(n871), .Y(n785) );
  NOR2XL U562 ( .A(n469), .B(n870), .Y(n784) );
  NOR2BXL U563 ( .AN(n873), .B(CurCost[0]), .Y(n771) );
  NOR2XL U564 ( .A(n468), .B(n869), .Y(n776) );
  NOR2XL U565 ( .A(n465), .B(n868), .Y(n769) );
  NOR2BXL U566 ( .AN(CurCost[0]), .B(n873), .Y(n766) );
  NAND2X1 U567 ( .A(n105), .B(n673), .Y(n130) );
  CLKINVX1 U568 ( .A(n276), .Y(n800) );
  OAI2BB2X1 U569 ( .B0(n102), .B1(n103), .A0N(n804), .A1N(n105), .Y(n90) );
  NAND2X1 U570 ( .A(n672), .B(n685), .Y(n103) );
  NOR3BXL U571 ( .AN(n163), .B(n189), .C(n105), .Y(n202) );
  NOR2X1 U572 ( .A(n219), .B(N95), .Y(n186) );
  NOR2X1 U573 ( .A(n218), .B(N95), .Y(n105) );
  AOI221XL U574 ( .A0(n270), .A1(n477), .B0(n646), .B1(n840), .C0(n800), .Y(
        n268) );
  OAI22X1 U575 ( .A0(n216), .A1(n103), .B0(n217), .B1(n164), .Y(n210) );
  OAI22X1 U576 ( .A0(n202), .A1(n164), .B0(n203), .B1(n103), .Y(n195) );
  NOR3X1 U577 ( .A(n810), .B(n452), .C(n807), .Y(n53) );
  NOR3X1 U578 ( .A(N95), .B(n665), .C(N94), .Y(n106) );
  NOR3X1 U579 ( .A(N95), .B(n455), .C(N93), .Y(n133) );
  OAI21XL U580 ( .A0(\nextJob[0][1] ), .A1(n856), .B0(n305), .Y(n292) );
  CLKBUFX3 U581 ( .A(n64), .Y(n669) );
  NOR3X2 U582 ( .A(perm_cs[1]), .B(perm_cs[2]), .C(n592), .Y(n63) );
  NOR2X1 U583 ( .A(n218), .B(n728), .Y(n166) );
  NOR3X2 U584 ( .A(N91), .B(n710), .C(N92), .Y(n91) );
  INVX3 U585 ( .A(n671), .Y(n799) );
  CLKINVX1 U586 ( .A(n164), .Y(n804) );
  CLKINVX1 U587 ( .A(n130), .Y(n817) );
  INVX3 U588 ( .A(n687), .Y(n684) );
  CLKINVX1 U589 ( .A(n686), .Y(n685) );
  CLKINVX1 U590 ( .A(n270), .Y(n841) );
  CLKINVX1 U591 ( .A(n233), .Y(n813) );
  CLKBUFX3 U592 ( .A(n277), .Y(n671) );
  NOR2X1 U593 ( .A(n840), .B(n800), .Y(n277) );
  NAND2X1 U594 ( .A(n673), .B(n684), .Y(n164) );
  CLKINVX1 U595 ( .A(n137), .Y(n802) );
  NAND2X1 U596 ( .A(n673), .B(n90), .Y(n87) );
  CLKINVX1 U597 ( .A(n110), .Y(n803) );
  CLKINVX1 U598 ( .A(n75), .Y(n815) );
  NAND2X1 U599 ( .A(n186), .B(n673), .Y(n156) );
  NAND2X1 U600 ( .A(n827), .B(n829), .Y(n230) );
  OA21X2 U601 ( .A0(n244), .A1(n105), .B0(n806), .Y(n227) );
  OAI22XL U602 ( .A0(n828), .A1(n684), .B0(n815), .B1(n800), .Y(cost_ns[2]) );
  CLKINVX1 U603 ( .A(n150), .Y(n805) );
  CLKINVX1 U604 ( .A(n103), .Y(n806) );
  NAND2BX1 U605 ( .AN(n244), .B(n227), .Y(n226) );
  NAND2X1 U606 ( .A(n244), .B(n227), .Y(n225) );
  NAND2X1 U607 ( .A(n214), .B(n836), .Y(n206) );
  CLKINVX1 U608 ( .A(n167), .Y(n801) );
  CLKBUFX3 U609 ( .A(n683), .Y(n686) );
  CLKBUFX3 U610 ( .A(n683), .Y(n687) );
  CLKBUFX3 U611 ( .A(n683), .Y(n688) );
  CLKBUFX3 U612 ( .A(n278), .Y(n670) );
  NAND2X1 U613 ( .A(n809), .B(n800), .Y(n278) );
  CLKBUFX3 U614 ( .A(n688), .Y(n689) );
  CLKBUFX3 U615 ( .A(n691), .Y(n690) );
  CLKBUFX3 U616 ( .A(n688), .Y(n691) );
  CLKBUFX3 U617 ( .A(n688), .Y(n692) );
  CLKBUFX3 U618 ( .A(n677), .Y(n682) );
  CLKBUFX3 U619 ( .A(n677), .Y(n681) );
  CLKBUFX3 U620 ( .A(n677), .Y(n680) );
  CLKBUFX3 U621 ( .A(n677), .Y(n679) );
  CLKBUFX3 U622 ( .A(n677), .Y(n678) );
  INVXL U623 ( .A(N408), .Y(n840) );
  NOR2X1 U624 ( .A(n646), .B(N408), .Y(n270) );
  OR4X1 U625 ( .A(n787), .B(n786), .C(n785), .D(n784), .Y(n646) );
  CLKINVX1 U626 ( .A(n262), .Y(n798) );
  OA21XL U627 ( .A0(n841), .A1(MatchCount[1]), .B0(n268), .Y(n266) );
  AOI21X2 U628 ( .A0(n232), .A1(n63), .B0(n245), .Y(n233) );
  OAI22XL U629 ( .A0(N342), .A1(n819), .B0(n257), .B1(n258), .Y(n256) );
  NOR2XL U630 ( .A(N346), .B(n814), .Y(n258) );
  AOI211XL U631 ( .A0(N346), .A1(n814), .B0(n824), .C0(N347), .Y(n257) );
  OAI22XL U632 ( .A0(n233), .A1(n831), .B0(n814), .B1(n813), .Y(n534) );
  OAI22XL U633 ( .A0(n233), .A1(n832), .B0(n824), .B1(n813), .Y(n535) );
  INVXL U634 ( .A(N346), .Y(n812) );
  INVX1 U635 ( .A(N345), .Y(n819) );
  INVXL U636 ( .A(N342), .Y(n825) );
  OAI222XL U637 ( .A0(n812), .A1(n225), .B0(n811), .B1(n226), .C0(n227), .C1(
        n591), .Y(n532) );
  INVXL U638 ( .A(N347), .Y(n818) );
  OAI222XL U639 ( .A0(n855), .A1(n87), .B0(n88), .B1(n89), .C0(n856), .C1(n90), 
        .Y(n480) );
  AOI2BB2XL U640 ( .B0(n91), .B1(N346), .A0N(n811), .A1N(n91), .Y(n88) );
  CLKINVX1 U641 ( .A(N343), .Y(n814) );
  OAI222XL U642 ( .A0(n819), .A1(n225), .B0(n839), .B1(n226), .C0(n227), .C1(
        n864), .Y(n524) );
  OAI222XL U643 ( .A0(n849), .A1(n87), .B0(n95), .B1(n89), .C0(n850), .C1(n90), 
        .Y(n482) );
  AOI2BB2XL U644 ( .B0(n91), .B1(N345), .A0N(n839), .A1N(n91), .Y(n95) );
  OAI222XL U645 ( .A0(n860), .A1(n87), .B0(n99), .B1(n89), .C0(n861), .C1(n90), 
        .Y(n484) );
  AOI2BB2XL U646 ( .B0(n91), .B1(N347), .A0N(n838), .A1N(n91), .Y(n99) );
  OAI222XL U647 ( .A0(n818), .A1(n225), .B0(n838), .B1(n226), .C0(n227), .C1(
        n863), .Y(n522) );
  CLKINVX1 U648 ( .A(N344), .Y(n824) );
  NAND2X1 U649 ( .A(N143), .B(n672), .Y(n124) );
  NAND2X1 U650 ( .A(N145), .B(n672), .Y(n129) );
  NAND2X1 U651 ( .A(N144), .B(n672), .Y(n119) );
  INVX1 U652 ( .A(N144), .Y(n811) );
  INVX1 U653 ( .A(N143), .Y(n839) );
  INVX1 U654 ( .A(N145), .Y(n838) );
  OAI211X1 U655 ( .A0(n164), .A1(n816), .B0(n223), .C0(n131), .Y(n137) );
  CLKINVX1 U656 ( .A(n133), .Y(n816) );
  OAI21XL U657 ( .A0(n143), .A1(n186), .B0(n806), .Y(n223) );
  NOR2X1 U658 ( .A(n91), .B(n106), .Y(n102) );
  OAI211X1 U659 ( .A0(n280), .A1(n75), .B0(n282), .C0(n808), .Y(cost_ns[1]) );
  NAND3X1 U660 ( .A(n669), .B(n765), .C(n285), .Y(n282) );
  NAND4BX1 U661 ( .AN(n70), .B(n846), .C(n847), .D(n291), .Y(n75) );
  AOI211X1 U662 ( .A0(n292), .A1(n864), .B0(n293), .C0(n821), .Y(n291) );
  OAI21XL U663 ( .A0(n301), .A1(n850), .B0(n82), .Y(n293) );
  CLKINVX1 U664 ( .A(n74), .Y(n821) );
  OAI21X1 U665 ( .A0(n105), .A1(n106), .B0(n804), .Y(n131) );
  INVX3 U666 ( .A(n245), .Y(n829) );
  NAND2X1 U667 ( .A(n131), .B(n132), .Y(n110) );
  OAI21XL U668 ( .A0(n118), .A1(n133), .B0(n806), .Y(n132) );
  OAI211X1 U669 ( .A0(n809), .A1(n765), .B0(n286), .C0(n287), .Y(cost_ns[0])
         );
  AOI211XL U670 ( .A0(n692), .A1(n828), .B0(N449), .C0(n288), .Y(n287) );
  AOI211X1 U671 ( .A0(n810), .A1(n75), .B0(n593), .C0(n807), .Y(n288) );
  NAND2X1 U672 ( .A(n672), .B(n90), .Y(n89) );
  NOR2X1 U673 ( .A(n81), .B(n84), .Y(n74) );
  CLKBUFX3 U674 ( .A(n101), .Y(n673) );
  NOR2X1 U675 ( .A(n829), .B(n672), .Y(n101) );
  OAI22X1 U676 ( .A0(n163), .A1(n164), .B0(n165), .B1(n103), .Y(n150) );
  NOR2X1 U677 ( .A(n155), .B(n166), .Y(n165) );
  AND2X2 U678 ( .A(n106), .B(n673), .Y(n114) );
  NAND2X1 U679 ( .A(N93), .B(N94), .Y(n219) );
  CLKINVX1 U680 ( .A(n63), .Y(n827) );
  NAND3X1 U681 ( .A(n187), .B(n131), .C(n188), .Y(n167) );
  OAI21XL U682 ( .A0(n189), .A1(n173), .B0(n806), .Y(n188) );
  OAI21XL U683 ( .A0(n166), .A1(n186), .B0(n804), .Y(n187) );
  CLKINVX1 U684 ( .A(n675), .Y(n848) );
  NOR3X1 U685 ( .A(n133), .B(n186), .C(n106), .Y(n163) );
  NAND2BX1 U686 ( .AN(n200), .B(n201), .Y(n190) );
  NOR2X1 U687 ( .A(n280), .B(n807), .Y(n276) );
  NAND2X1 U688 ( .A(n213), .B(n214), .Y(n207) );
  NAND2X1 U689 ( .A(n200), .B(n201), .Y(n192) );
  NAND2X1 U690 ( .A(n166), .B(n673), .Y(n174) );
  CLKINVX1 U691 ( .A(n155), .Y(n833) );
  CLKINVX1 U692 ( .A(n173), .Y(n834) );
  CLKINVX1 U693 ( .A(n143), .Y(n837) );
  AND2X2 U694 ( .A(n673), .B(n133), .Y(n140) );
  CLKINVX1 U695 ( .A(n68), .Y(n846) );
  NOR2X1 U696 ( .A(n292), .B(n864), .Y(n301) );
  AND2X2 U697 ( .A(n673), .B(n210), .Y(n209) );
  AND2X2 U698 ( .A(n673), .B(n195), .Y(n194) );
  CLKINVX1 U699 ( .A(n72), .Y(n847) );
  CLKINVX1 U700 ( .A(n213), .Y(n836) );
  AND2X2 U701 ( .A(n672), .B(n195), .Y(n201) );
  AND2X2 U702 ( .A(n672), .B(n210), .Y(n214) );
  AO22X1 U703 ( .A0(N93), .A1(n809), .B0(n669), .B1(n77), .Y(n443) );
  OAI21XL U704 ( .A0(n78), .A1(n72), .B0(n75), .Y(n77) );
  AOI21X1 U705 ( .A0(n846), .A1(n80), .B0(n70), .Y(n78) );
  OAI21XL U706 ( .A0(n81), .A1(n82), .B0(n820), .Y(n80) );
  CLKINVX1 U707 ( .A(n84), .Y(n820) );
  CLKBUFX3 U708 ( .A(n53), .Y(n683) );
  INVX3 U709 ( .A(n669), .Y(n809) );
  NOR3X1 U710 ( .A(N92), .B(N91), .C(N90), .Y(n244) );
  AOI21X1 U711 ( .A0(n219), .A1(N95), .B0(n186), .Y(n229) );
  OAI22XL U712 ( .A0(n686), .A1(n54), .B0(n829), .B1(n592), .Y(perm_ns[2]) );
  CLKINVX1 U713 ( .A(n118), .Y(n835) );
  NAND2X1 U714 ( .A(n219), .B(n218), .Y(n234) );
  CLKINVX1 U715 ( .A(n58), .Y(n823) );
  CLKINVX1 U716 ( .A(n54), .Y(n828) );
  AO21X1 U717 ( .A0(n57), .A1(n58), .B0(n672), .Y(perm_ns[1]) );
  CLKBUFX3 U718 ( .A(n796), .Y(n677) );
  CLKINVX1 U719 ( .A(n783), .Y(n794) );
  CLKINVX1 U720 ( .A(n769), .Y(n795) );
  OAI32X1 U721 ( .A0(MatchCount[2]), .A1(n476), .A2(n798), .B0(n475), .B1(n266), .Y(n537) );
  NOR3X1 U722 ( .A(n841), .B(n477), .C(n800), .Y(n262) );
  OAI22XL U723 ( .A0(n476), .A1(n268), .B0(n798), .B1(MatchCount[1]), .Y(n538)
         );
  OAI21XL U724 ( .A0(n260), .A1(n474), .B0(n261), .Y(n536) );
  NAND4X1 U725 ( .A(n474), .B(n262), .C(MatchCount[1]), .D(MatchCount[2]), .Y(
        n261) );
  OA21XL U726 ( .A0(n841), .A1(MatchCount[2]), .B0(n266), .Y(n260) );
  NAND3X1 U727 ( .A(n253), .B(n254), .C(n255), .Y(n232) );
  OAI21XL U728 ( .A0(n460), .A1(N342), .B0(n259), .Y(n253) );
  OAI222XL U729 ( .A0(N343), .A1(n831), .B0(n460), .B1(N342), .C0(N344), .C1(
        n832), .Y(n254) );
  OAI21XL U730 ( .A0(N345), .A1(n825), .B0(n256), .Y(n255) );
  OAI222XL U731 ( .A0(n229), .A1(n230), .B0(n826), .B1(n232), .C0(n709), .C1(
        n233), .Y(n525) );
  CLKINVX1 U732 ( .A(n57), .Y(n826) );
  OAI222XL U733 ( .A0(N93), .A1(n230), .B0(n232), .B1(n237), .C0(n710), .C1(
        n233), .Y(n527) );
  NAND2X1 U734 ( .A(n63), .B(n830), .Y(n237) );
  OAI222XL U735 ( .A0(n230), .A1(n234), .B0(n232), .B1(n235), .C0(n711), .C1(
        n233), .Y(n526) );
  NAND2X1 U736 ( .A(n63), .B(N97), .Y(n235) );
  OAI22XL U737 ( .A0(n460), .A1(n233), .B0(n825), .B1(n813), .Y(n533) );
  OAI211X1 U738 ( .A0(n477), .A1(n273), .B0(n274), .C0(n799), .Y(n539) );
  NOR2X1 U739 ( .A(n646), .B(n800), .Y(n273) );
  NAND3X1 U740 ( .A(n276), .B(n270), .C(n477), .Y(n274) );
  OAI22XL U741 ( .A0(n318), .A1(n671), .B0(n473), .B1(n799), .Y(n549) );
  OAI22XL U742 ( .A0(n788), .A1(n671), .B0(n472), .B1(n799), .Y(n548) );
  OAI22XL U743 ( .A0(n789), .A1(n671), .B0(n471), .B1(n799), .Y(n547) );
  OAI22XL U744 ( .A0(n790), .A1(n671), .B0(n470), .B1(n799), .Y(n546) );
  OAI22XL U745 ( .A0(n322), .A1(n671), .B0(n469), .B1(n799), .Y(n545) );
  OAI22XL U746 ( .A0(n323), .A1(n671), .B0(n468), .B1(n799), .Y(n544) );
  OAI22XL U747 ( .A0(n791), .A1(n671), .B0(n467), .B1(n799), .Y(n543) );
  OAI22XL U748 ( .A0(n792), .A1(n671), .B0(n466), .B1(n799), .Y(n542) );
  OAI22XL U749 ( .A0(n326), .A1(n671), .B0(n465), .B1(n799), .Y(n541) );
  OAI22XL U750 ( .A0(n793), .A1(n671), .B0(n464), .B1(n799), .Y(n540) );
  OAI221XL U751 ( .A0(n811), .A1(n206), .B0(n812), .B1(n207), .C0(n211), .Y(
        n516) );
  AOI2BB2X1 U752 ( .B0(N245), .B1(n209), .A0N(n210), .A1N(n855), .Y(n211) );
  OAI221XL U753 ( .A0(n811), .A1(n190), .B0(n812), .B1(n192), .C0(n197), .Y(
        n510) );
  AOI2BB2X1 U754 ( .B0(N248), .B1(n194), .A0N(n195), .A1N(n848), .Y(n197) );
  OAI22XL U755 ( .A0(n858), .A1(n150), .B0(n805), .B1(n158), .Y(n498) );
  AOI221XL U756 ( .A0(n114), .A1(\nextJob[5][1] ), .B0(n140), .B1(n675), .C0(
        n159), .Y(n158) );
  OAI222XL U757 ( .A0(n116), .A1(n833), .B0(n155), .B1(n119), .C0(n855), .C1(
        n156), .Y(n159) );
  OAI22XL U758 ( .A0(n822), .A1(n137), .B0(n802), .B1(n220), .Y(n520) );
  AOI221XL U759 ( .A0(n114), .A1(n675), .B0(n140), .B1(\nextJob[7][1] ), .C0(
        n221), .Y(n220) );
  OAI222XL U760 ( .A0(n116), .A1(n837), .B0(n143), .B1(n119), .C0(n857), .C1(
        n130), .Y(n221) );
  OAI2BB2XL U761 ( .B0(n329), .B1(n814), .A0N(N342), .A1N(n460), .Y(n259) );
  OAI22XL U762 ( .A0(n859), .A1(n110), .B0(n803), .B1(n112), .Y(n486) );
  AOI221XL U763 ( .A0(n817), .A1(n675), .B0(n114), .B1(\nextJob[7][1] ), .C0(
        n115), .Y(n112) );
  OAI22XL U764 ( .A0(n116), .A1(n835), .B0(n118), .B1(n119), .Y(n115) );
  OAI22XL U765 ( .A0(n857), .A1(n167), .B0(n801), .B1(n177), .Y(n504) );
  AOI211X1 U766 ( .A0(n114), .A1(\nextJob[4][1] ), .B0(n178), .C0(n179), .Y(
        n177) );
  OAI22XL U767 ( .A0(n822), .A1(n130), .B0(n848), .B1(n156), .Y(n179) );
  OAI222XL U768 ( .A0(n173), .A1(n119), .B0(n855), .B1(n174), .C0(n116), .C1(
        n834), .Y(n178) );
  CLKINVX1 U769 ( .A(N96), .Y(n745) );
  CLKINVX1 U770 ( .A(n750), .Y(n667) );
  CLKINVX1 U771 ( .A(n754), .Y(n668) );
  AND2X2 U772 ( .A(n317), .B(n316), .Y(n756) );
  OAI22XL U773 ( .A0(n588), .A1(n150), .B0(n805), .B1(n161), .Y(n500) );
  AOI221XL U774 ( .A0(n114), .A1(\nextJob[5][0] ), .B0(n140), .B1(n674), .C0(
        n162), .Y(n161) );
  OAI222XL U775 ( .A0(n128), .A1(n833), .B0(n155), .B1(n129), .C0(n860), .C1(
        n156), .Y(n162) );
  OAI22XL U776 ( .A0(n853), .A1(n167), .B0(n801), .B1(n169), .Y(n502) );
  AOI211X1 U777 ( .A0(n114), .A1(\nextJob[4][2] ), .B0(n170), .C0(n171), .Y(
        n169) );
  OAI22XL U778 ( .A0(n852), .A1(n130), .B0(n590), .B1(n156), .Y(n171) );
  OAI222XL U779 ( .A0(n173), .A1(n124), .B0(n849), .B1(n174), .C0(n123), .C1(
        n834), .Y(n170) );
  OAI22XL U780 ( .A0(n845), .A1(n167), .B0(n801), .B1(n182), .Y(n506) );
  AOI211X1 U781 ( .A0(n114), .A1(\nextJob[4][0] ), .B0(n183), .C0(n184), .Y(
        n182) );
  OAI22XL U782 ( .A0(n844), .A1(n130), .B0(n589), .B1(n156), .Y(n184) );
  OAI222XL U783 ( .A0(n173), .A1(n129), .B0(n860), .B1(n174), .C0(n128), .C1(
        n834), .Y(n183) );
  OAI221XL U784 ( .A0(n839), .A1(n206), .B0(n819), .B1(n207), .C0(n208), .Y(
        n514) );
  AOI2BB2X1 U785 ( .B0(N246), .B1(n209), .A0N(n210), .A1N(n849), .Y(n208) );
  OAI221XL U786 ( .A0(n839), .A1(n190), .B0(n819), .B1(n192), .C0(n193), .Y(
        n508) );
  AOI2BB2X1 U787 ( .B0(N249), .B1(n194), .A0N(n195), .A1N(n590), .Y(n193) );
  OAI221XL U788 ( .A0(n838), .A1(n206), .B0(n818), .B1(n207), .C0(n212), .Y(
        n518) );
  AOI2BB2X1 U789 ( .B0(N244), .B1(n209), .A0N(n210), .A1N(n860), .Y(n212) );
  OAI221XL U790 ( .A0(n838), .A1(n190), .B0(n818), .B1(n192), .C0(n199), .Y(
        n512) );
  AOI2BB2X1 U791 ( .B0(N247), .B1(n194), .A0N(n195), .A1N(n589), .Y(n199) );
  OAI22XL U792 ( .A0(n852), .A1(n137), .B0(n802), .B1(n139), .Y(n492) );
  AOI221XL U793 ( .A0(n114), .A1(n676), .B0(n140), .B1(\nextJob[7][2] ), .C0(
        n141), .Y(n139) );
  OAI222XL U794 ( .A0(n123), .A1(n837), .B0(n143), .B1(n124), .C0(n853), .C1(
        n130), .Y(n141) );
  OAI22XL U795 ( .A0(n844), .A1(n137), .B0(n802), .B1(n146), .Y(n494) );
  AOI221XL U796 ( .A0(n114), .A1(n674), .B0(n140), .B1(\nextJob[7][0] ), .C0(
        n147), .Y(n146) );
  OAI222XL U797 ( .A0(n128), .A1(n837), .B0(n143), .B1(n129), .C0(n845), .C1(
        n130), .Y(n147) );
  OAI22XL U798 ( .A0(n854), .A1(n150), .B0(n805), .B1(n152), .Y(n496) );
  AOI221XL U799 ( .A0(n114), .A1(\nextJob[5][2] ), .B0(n140), .B1(n676), .C0(
        n153), .Y(n152) );
  OAI222XL U800 ( .A0(n123), .A1(n833), .B0(n155), .B1(n124), .C0(n849), .C1(
        n156), .Y(n153) );
  OAI22XL U801 ( .A0(n851), .A1(n110), .B0(n803), .B1(n121), .Y(n488) );
  AOI221XL U802 ( .A0(n817), .A1(n676), .B0(n114), .B1(\nextJob[7][2] ), .C0(
        n122), .Y(n121) );
  OAI22XL U803 ( .A0(n835), .A1(n123), .B0(n118), .B1(n124), .Y(n122) );
  OAI22XL U804 ( .A0(n862), .A1(n110), .B0(n803), .B1(n126), .Y(n490) );
  AOI221XL U805 ( .A0(n817), .A1(n674), .B0(n114), .B1(\nextJob[7][0] ), .C0(
        n127), .Y(n126) );
  OAI22XL U806 ( .A0(n835), .A1(n128), .B0(n118), .B1(n129), .Y(n127) );
  CLKINVX1 U807 ( .A(N98), .Y(n746) );
  CLKBUFX3 U808 ( .A(\nextJob[6][1] ), .Y(n675) );
  CLKBUFX3 U809 ( .A(\nextJob[6][2] ), .Y(n676) );
  CLKBUFX3 U810 ( .A(\nextJob[6][0] ), .Y(n674) );
  AOI32X1 U811 ( .A0(n669), .A1(n847), .A2(n66), .B0(n728), .B1(n809), .Y(n397) );
  NOR3X1 U812 ( .A(n68), .B(n815), .C(n70), .Y(n66) );
  NOR2X1 U813 ( .A(n587), .B(perm_cs[2]), .Y(n245) );
  OAI2BB1X1 U814 ( .A0N(n851), .A1N(n298), .B0(n299), .Y(n81) );
  OAI21XL U815 ( .A0(n851), .A1(n298), .B0(\nextJob[3][2] ), .Y(n299) );
  OAI21XL U816 ( .A0(\nextJob[2][1] ), .A1(n822), .B0(n300), .Y(n298) );
  OAI211X1 U817 ( .A0(\nextJob[3][1] ), .A1(n859), .B0(n862), .C0(
        \nextJob[3][0] ), .Y(n300) );
  OAI2BB1X1 U818 ( .A0N(n852), .A1N(n295), .B0(n296), .Y(n84) );
  OAI21XL U819 ( .A0(n852), .A1(n295), .B0(\nextJob[4][2] ), .Y(n296) );
  OAI21XL U820 ( .A0(\nextJob[3][1] ), .A1(n858), .B0(n297), .Y(n295) );
  OAI211X1 U821 ( .A0(\nextJob[4][1] ), .A1(n822), .B0(n844), .C0(
        \nextJob[4][0] ), .Y(n297) );
  OAI21XL U822 ( .A0(n455), .A1(n669), .B0(n71), .Y(n439) );
  OAI21XL U823 ( .A0(n72), .A1(n73), .B0(n669), .Y(n71) );
  OAI31XL U824 ( .A0(n68), .A1(n74), .A2(n70), .B0(n75), .Y(n73) );
  CLKBUFX3 U825 ( .A(n59), .Y(n672) );
  NOR2X1 U826 ( .A(n829), .B(perm_cs[0]), .Y(n59) );
  OAI211X1 U827 ( .A0(\nextJob[2][2] ), .A1(n850), .B0(n302), .C0(n303), .Y(
        n82) );
  NAND3X1 U828 ( .A(n304), .B(n859), .C(\nextJob[1][1] ), .Y(n302) );
  OAI221XL U829 ( .A0(\nextJob[1][0] ), .A1(n862), .B0(\nextJob[1][1] ), .B1(
        n859), .C0(n304), .Y(n303) );
  NAND2X1 U830 ( .A(\nextJob[2][2] ), .B(n850), .Y(n304) );
  AOI31X1 U831 ( .A0(N94), .A1(N95), .A2(n665), .B0(n200), .Y(n203) );
  OA21XL U832 ( .A0(n219), .A1(n728), .B0(n836), .Y(n216) );
  NOR2BX1 U833 ( .AN(n202), .B(n166), .Y(n217) );
  OAI222XL U834 ( .A0(n459), .A1(n829), .B0(N93), .B1(n230), .C0(n827), .C1(
        n830), .Y(n530) );
  NOR3X2 U835 ( .A(N91), .B(n709), .C(N90), .Y(n155) );
  NOR3X2 U836 ( .A(n710), .B(n709), .C(N91), .Y(n173) );
  OAI221XL U837 ( .A0(n229), .A1(n230), .B0(n457), .B1(n829), .C0(n239), .Y(
        n528) );
  AOI32X1 U838 ( .A0(n58), .A1(n63), .A2(n457), .B0(n57), .B1(n823), .Y(n239)
         );
  OAI2BB1X1 U839 ( .A0N(n853), .A1N(n312), .B0(n313), .Y(n70) );
  OAI21XL U840 ( .A0(n853), .A1(n312), .B0(n676), .Y(n313) );
  OAI21XL U841 ( .A0(\nextJob[5][1] ), .A1(n848), .B0(n314), .Y(n312) );
  OAI211X1 U842 ( .A0(n675), .A1(n857), .B0(n845), .C0(n674), .Y(n314) );
  OAI211X1 U843 ( .A0(\nextJob[1][1] ), .A1(n591), .B0(n863), .C0(
        \nextJob[1][0] ), .Y(n305) );
  NAND2X1 U844 ( .A(n665), .B(n455), .Y(n218) );
  NOR3X1 U845 ( .A(n665), .B(n728), .C(N94), .Y(n189) );
  OAI2BB1X1 U846 ( .A0N(n854), .A1N(n309), .B0(n310), .Y(n68) );
  OAI21XL U847 ( .A0(n309), .A1(n854), .B0(\nextJob[5][2] ), .Y(n310) );
  OAI21XL U848 ( .A0(\nextJob[4][1] ), .A1(n857), .B0(n311), .Y(n309) );
  OAI211X1 U849 ( .A0(\nextJob[5][1] ), .A1(n858), .B0(n588), .C0(
        \nextJob[5][0] ), .Y(n311) );
  OAI2BB1X1 U850 ( .A0N(n590), .A1N(n306), .B0(n307), .Y(n72) );
  OAI21XL U851 ( .A0(n306), .A1(n590), .B0(\nextJob[7][2] ), .Y(n307) );
  OAI21XL U852 ( .A0(n675), .A1(n855), .B0(n308), .Y(n306) );
  OAI211X1 U853 ( .A0(\nextJob[7][1] ), .A1(n848), .B0(n589), .C0(
        \nextJob[7][0] ), .Y(n308) );
  NOR2X1 U854 ( .A(n827), .B(n457), .Y(n57) );
  OAI2BB2XL U855 ( .B0(n465), .B1(n670), .A0N(N393), .A1N(n669), .Y(n551) );
  CLKINVX1 U856 ( .A(n354), .Y(n807) );
  OAI21XL U857 ( .A0(n230), .A1(n234), .B0(n241), .Y(n529) );
  AOI32X1 U858 ( .A0(n63), .A1(n830), .A2(n458), .B0(n242), .B1(N97), .Y(n241)
         );
  OAI21XL U859 ( .A0(n827), .A1(n830), .B0(n829), .Y(n242) );
  OAI2BB2XL U860 ( .B0(n464), .B1(n670), .A0N(N394), .A1N(n669), .Y(n550) );
  OAI2BB2XL U861 ( .B0(n466), .B1(n670), .A0N(N392), .A1N(n669), .Y(n552) );
  OAI2BB2XL U862 ( .B0(n467), .B1(n670), .A0N(N391), .A1N(n669), .Y(n553) );
  OAI2BB2XL U863 ( .B0(n468), .B1(n670), .A0N(N390), .A1N(n669), .Y(n554) );
  NOR3X2 U864 ( .A(N92), .B(n711), .C(N90), .Y(n118) );
  OAI32X1 U865 ( .A0(W[2]), .A1(n809), .A2(n797), .B0(n478), .B1(n286), .Y(
        N442) );
  CLKINVX1 U866 ( .A(n285), .Y(n797) );
  AOI211X1 U867 ( .A0(n317), .A1(n316), .B0(n809), .C0(n285), .Y(N441) );
  NOR2X1 U868 ( .A(n317), .B(n316), .Y(n285) );
  AOI21X1 U869 ( .A0(n669), .A1(n316), .B0(N440), .Y(n286) );
  NOR2BX1 U870 ( .AN(n317), .B(n809), .Y(N440) );
  NOR2X1 U871 ( .A(n459), .B(n458), .Y(n58) );
  OAI22XL U872 ( .A0(n685), .A1(n864), .B0(n331), .B1(n692), .Y(n523) );
  OAI22XL U873 ( .A0(n684), .A1(n863), .B0(n332), .B1(n691), .Y(n521) );
  OAI22XL U874 ( .A0(n684), .A1(n844), .B0(n346), .B1(n689), .Y(n493) );
  OAI22XL U875 ( .A0(n685), .A1(n860), .B0(n334), .B1(n691), .Y(n517) );
  OAI22XL U876 ( .A0(n684), .A1(n862), .B0(n348), .B1(n689), .Y(n489) );
  OAI22XL U877 ( .A0(n684), .A1(n588), .B0(n343), .B1(n690), .Y(n499) );
  OAI22XL U878 ( .A0(n684), .A1(n861), .B0(n351), .B1(n689), .Y(n483) );
  OAI22XL U879 ( .A0(n685), .A1(n855), .B0(n335), .B1(n691), .Y(n515) );
  OAI22XL U880 ( .A0(n684), .A1(n859), .B0(n350), .B1(n689), .Y(n485) );
  OAI22XL U881 ( .A0(n684), .A1(n857), .B0(n341), .B1(n690), .Y(n503) );
  OAI22XL U882 ( .A0(n684), .A1(n858), .B0(n344), .B1(n689), .Y(n497) );
  OAI22XL U883 ( .A0(n684), .A1(n856), .B0(n353), .B1(n687), .Y(n479) );
  OAI22XL U884 ( .A0(n684), .A1(n849), .B0(n336), .B1(n692), .Y(n513) );
  OAI22XL U885 ( .A0(n684), .A1(n852), .B0(n347), .B1(n689), .Y(n491) );
  OAI22XL U886 ( .A0(n684), .A1(n853), .B0(n342), .B1(n690), .Y(n501) );
  OAI22XL U887 ( .A0(n684), .A1(n854), .B0(n345), .B1(n689), .Y(n495) );
  OAI22XL U888 ( .A0(n684), .A1(n851), .B0(n349), .B1(n689), .Y(n487) );
  OAI22XL U889 ( .A0(n684), .A1(n850), .B0(n352), .B1(n688), .Y(n481) );
  OAI22XL U890 ( .A0(n684), .A1(n589), .B0(n337), .B1(n691), .Y(n511) );
  OAI22XL U891 ( .A0(n685), .A1(n848), .B0(n338), .B1(n689), .Y(n509) );
  OAI22XL U892 ( .A0(n684), .A1(n590), .B0(n339), .B1(n689), .Y(n507) );
  OAI22XL U893 ( .A0(n684), .A1(n845), .B0(n340), .B1(n690), .Y(n505) );
  OAI22XL U894 ( .A0(n685), .A1(n822), .B0(n333), .B1(n691), .Y(n519) );
  OAI22XL U895 ( .A0(n684), .A1(n591), .B0(n330), .B1(n692), .Y(n531) );
  NAND3X1 U896 ( .A(n592), .B(n587), .C(perm_cs[2]), .Y(n54) );
  CLKINVX1 U897 ( .A(n459), .Y(n830) );
  OAI221XL U898 ( .A0(n54), .A1(n685), .B0(perm_cs[2]), .B1(perm_cs[0]), .C0(
        n61), .Y(perm_ns[0]) );
  OAI21XL U899 ( .A0(n457), .A1(n823), .B0(n63), .Y(n61) );
  OAI2BB2XL U900 ( .B0(n469), .B1(n670), .A0N(N389), .A1N(n669), .Y(n555) );
  OAI2BB2XL U901 ( .B0(n470), .B1(n670), .A0N(N388), .A1N(n669), .Y(n556) );
  OAI2BB2XL U902 ( .B0(n471), .B1(n670), .A0N(N387), .A1N(n669), .Y(n557) );
  OAI2BB2XL U903 ( .B0(n472), .B1(n670), .A0N(N386), .A1N(n669), .Y(n558) );
  OAI2BB2XL U904 ( .B0(n473), .B1(n670), .A0N(N385), .A1N(n669), .Y(n559) );
  NOR3X1 U905 ( .A(n810), .B(n354), .C(n593), .Y(n64) );
  OA22X1 U906 ( .A0(\nextJob[4][0] ), .A1(n455), .B0(\nextJob[2][0] ), .B1(N94), .Y(n652) );
  NOR2X1 U907 ( .A(n665), .B(N94), .Y(n650) );
  NOR2X1 U908 ( .A(n665), .B(n455), .Y(n649) );
  AOI222XL U909 ( .A0(n652), .A1(n665), .B0(n650), .B1(\nextJob[3][0] ), .C0(
        n649), .C1(\nextJob[5][0] ), .Y(n647) );
  OAI2BB2XL U910 ( .B0(N95), .B1(n647), .A0N(\nextJob[7][0] ), .A1N(N95), .Y(
        N247) );
  OA22X1 U911 ( .A0(\nextJob[4][1] ), .A1(n455), .B0(\nextJob[2][1] ), .B1(N94), .Y(n655) );
  AOI222XL U912 ( .A0(n655), .A1(n665), .B0(n650), .B1(\nextJob[3][1] ), .C0(
        n649), .C1(\nextJob[5][1] ), .Y(n648) );
  OAI2BB2XL U913 ( .B0(N95), .B1(n648), .A0N(\nextJob[7][1] ), .A1N(N95), .Y(
        N248) );
  OA22X1 U914 ( .A0(\nextJob[4][2] ), .A1(n455), .B0(\nextJob[2][2] ), .B1(N94), .Y(n660) );
  AOI222XL U915 ( .A0(n660), .A1(n665), .B0(n650), .B1(\nextJob[3][2] ), .C0(
        n649), .C1(\nextJob[5][2] ), .Y(n651) );
  OAI2BB2XL U916 ( .B0(N95), .B1(n651), .A0N(\nextJob[7][2] ), .A1N(N95), .Y(
        N249) );
  NOR2X1 U917 ( .A(N93), .B(N94), .Y(n659) );
  NOR2X1 U918 ( .A(n455), .B(N93), .Y(n658) );
  AOI222XL U919 ( .A0(N93), .A1(n652), .B0(\nextJob[1][0] ), .B1(n659), .C0(
        \nextJob[3][0] ), .C1(n658), .Y(n654) );
  AND2X1 U920 ( .A(N95), .B(n665), .Y(n662) );
  AND2X1 U921 ( .A(N95), .B(N93), .Y(n661) );
  AOI22X1 U922 ( .A0(\nextJob[5][0] ), .A1(n662), .B0(n674), .B1(n661), .Y(
        n653) );
  OAI21XL U923 ( .A0(N95), .A1(n654), .B0(n653), .Y(N244) );
  AOI222XL U924 ( .A0(N93), .A1(n655), .B0(\nextJob[1][1] ), .B1(n659), .C0(
        \nextJob[3][1] ), .C1(n658), .Y(n657) );
  AOI22X1 U925 ( .A0(\nextJob[5][1] ), .A1(n662), .B0(n675), .B1(n661), .Y(
        n656) );
  OAI21XL U926 ( .A0(N95), .A1(n657), .B0(n656), .Y(N245) );
  AOI222XL U927 ( .A0(N93), .A1(n660), .B0(\nextJob[1][2] ), .B1(n659), .C0(
        \nextJob[3][2] ), .C1(n658), .Y(n664) );
  AOI22X1 U928 ( .A0(\nextJob[5][2] ), .A1(n662), .B0(n676), .B1(n661), .Y(
        n663) );
  OAI21XL U929 ( .A0(N95), .A1(n664), .B0(n663), .Y(N246) );
  BUFX12 U930 ( .A(n865), .Y(J[2]) );
  NOR2X1 U931 ( .A(n710), .B(N91), .Y(n703) );
  NOR2X1 U932 ( .A(N90), .B(N91), .Y(n702) );
  AO22X1 U933 ( .A0(\nextJob[5][0] ), .A1(n703), .B0(\nextJob[4][0] ), .B1(
        n702), .Y(n693) );
  AOI221XL U934 ( .A0(n674), .A1(n706), .B0(\nextJob[7][0] ), .B1(n705), .C0(
        n693), .Y(n696) );
  AO22X1 U935 ( .A0(\nextJob[1][0] ), .A1(n703), .B0(\nextJob[0][0] ), .B1(
        n702), .Y(n694) );
  AOI221XL U936 ( .A0(\nextJob[2][0] ), .A1(n706), .B0(\nextJob[3][0] ), .B1(
        n705), .C0(n694), .Y(n695) );
  OAI22XL U937 ( .A0(n709), .A1(n696), .B0(N92), .B1(n695), .Y(N145) );
  AO22X1 U938 ( .A0(\nextJob[5][1] ), .A1(n703), .B0(\nextJob[4][1] ), .B1(
        n702), .Y(n697) );
  AOI221XL U939 ( .A0(n675), .A1(n706), .B0(\nextJob[7][1] ), .B1(n705), .C0(
        n697), .Y(n700) );
  AO22X1 U940 ( .A0(\nextJob[1][1] ), .A1(n703), .B0(\nextJob[0][1] ), .B1(
        n702), .Y(n698) );
  AOI221XL U941 ( .A0(\nextJob[2][1] ), .A1(n706), .B0(\nextJob[3][1] ), .B1(
        n705), .C0(n698), .Y(n699) );
  OAI22XL U942 ( .A0(n709), .A1(n700), .B0(N92), .B1(n699), .Y(N144) );
  AO22X1 U943 ( .A0(\nextJob[5][2] ), .A1(n703), .B0(\nextJob[4][2] ), .B1(
        n702), .Y(n701) );
  AOI221XL U944 ( .A0(n676), .A1(n706), .B0(\nextJob[7][2] ), .B1(n705), .C0(
        n701), .Y(n708) );
  AO22X1 U945 ( .A0(\nextJob[1][2] ), .A1(n703), .B0(\nextJob[0][2] ), .B1(
        n702), .Y(n704) );
  AOI221XL U946 ( .A0(\nextJob[2][2] ), .A1(n706), .B0(\nextJob[3][2] ), .B1(
        n705), .C0(n704), .Y(n707) );
  OAI22XL U947 ( .A0(n708), .A1(n709), .B0(N92), .B1(n707), .Y(N143) );
  NOR2X1 U948 ( .A(n455), .B(n665), .Y(n724) );
  NOR2X1 U949 ( .A(n665), .B(N94), .Y(n722) );
  NOR2X1 U950 ( .A(N93), .B(N94), .Y(n721) );
  AO22X1 U951 ( .A0(\nextJob[5][0] ), .A1(n722), .B0(\nextJob[4][0] ), .B1(
        n721), .Y(n712) );
  AOI221XL U952 ( .A0(n674), .A1(n725), .B0(\nextJob[7][0] ), .B1(n724), .C0(
        n712), .Y(n715) );
  AO22X1 U953 ( .A0(\nextJob[1][0] ), .A1(n722), .B0(\nextJob[0][0] ), .B1(
        n721), .Y(n713) );
  AOI221XL U954 ( .A0(\nextJob[2][0] ), .A1(n725), .B0(\nextJob[3][0] ), .B1(
        n724), .C0(n713), .Y(n714) );
  AO22X1 U955 ( .A0(\nextJob[5][1] ), .A1(n722), .B0(\nextJob[4][1] ), .B1(
        n721), .Y(n716) );
  AOI221XL U956 ( .A0(n675), .A1(n725), .B0(\nextJob[7][1] ), .B1(n724), .C0(
        n716), .Y(n719) );
  AO22X1 U957 ( .A0(\nextJob[1][1] ), .A1(n722), .B0(\nextJob[0][1] ), .B1(
        n721), .Y(n717) );
  AOI221XL U958 ( .A0(\nextJob[2][1] ), .A1(n725), .B0(\nextJob[3][1] ), .B1(
        n724), .C0(n717), .Y(n718) );
  AO22X1 U959 ( .A0(\nextJob[5][2] ), .A1(n722), .B0(\nextJob[4][2] ), .B1(
        n721), .Y(n720) );
  AOI221XL U960 ( .A0(n676), .A1(n725), .B0(\nextJob[7][2] ), .B1(n724), .C0(
        n720), .Y(n727) );
  AO22X1 U961 ( .A0(\nextJob[1][2] ), .A1(n722), .B0(\nextJob[0][2] ), .B1(
        n721), .Y(n723) );
  AOI221XL U962 ( .A0(\nextJob[2][2] ), .A1(n725), .B0(\nextJob[3][2] ), .B1(
        n724), .C0(n723), .Y(n726) );
  NOR2X1 U963 ( .A(n458), .B(N96), .Y(n742) );
  NOR2X1 U964 ( .A(n458), .B(n745), .Y(n741) );
  NOR2X1 U965 ( .A(n745), .B(N97), .Y(n739) );
  NOR2X1 U966 ( .A(N96), .B(N97), .Y(n738) );
  AO22X1 U967 ( .A0(\nextJob[5][0] ), .A1(n739), .B0(\nextJob[4][0] ), .B1(
        n738), .Y(n729) );
  AOI221XL U968 ( .A0(n674), .A1(n742), .B0(\nextJob[7][0] ), .B1(n741), .C0(
        n729), .Y(n732) );
  AO22X1 U969 ( .A0(\nextJob[1][0] ), .A1(n739), .B0(\nextJob[0][0] ), .B1(
        n738), .Y(n730) );
  AOI221XL U970 ( .A0(\nextJob[2][0] ), .A1(n742), .B0(\nextJob[3][0] ), .B1(
        n741), .C0(n730), .Y(n731) );
  OAI22XL U971 ( .A0(n746), .A1(n732), .B0(N98), .B1(n731), .Y(N344) );
  AO22X1 U972 ( .A0(\nextJob[5][1] ), .A1(n739), .B0(\nextJob[4][1] ), .B1(
        n738), .Y(n733) );
  AOI221XL U973 ( .A0(n675), .A1(n742), .B0(\nextJob[7][1] ), .B1(n741), .C0(
        n733), .Y(n736) );
  AO22X1 U974 ( .A0(\nextJob[1][1] ), .A1(n739), .B0(\nextJob[0][1] ), .B1(
        n738), .Y(n734) );
  AOI221XL U975 ( .A0(\nextJob[2][1] ), .A1(n742), .B0(\nextJob[3][1] ), .B1(
        n741), .C0(n734), .Y(n735) );
  OAI22XL U976 ( .A0(n746), .A1(n736), .B0(N98), .B1(n735), .Y(N343) );
  AO22X1 U977 ( .A0(\nextJob[5][2] ), .A1(n739), .B0(\nextJob[4][2] ), .B1(
        n738), .Y(n737) );
  AOI221XL U978 ( .A0(n676), .A1(n742), .B0(\nextJob[7][2] ), .B1(n741), .C0(
        n737), .Y(n744) );
  AO22X1 U979 ( .A0(\nextJob[1][2] ), .A1(n739), .B0(\nextJob[0][2] ), .B1(
        n738), .Y(n740) );
  AOI221XL U980 ( .A0(\nextJob[2][2] ), .A1(n742), .B0(\nextJob[3][2] ), .B1(
        n741), .C0(n740), .Y(n743) );
  NOR2X1 U981 ( .A(n316), .B(n763), .Y(n760) );
  NOR2X1 U982 ( .A(n316), .B(n317), .Y(n759) );
  NOR2X1 U983 ( .A(n317), .B(W[1]), .Y(n757) );
  AO22X1 U984 ( .A0(\Job[5][0] ), .A1(n757), .B0(\Job[4][0] ), .B1(n756), .Y(
        n747) );
  AOI221XL U985 ( .A0(\Job[6][0] ), .A1(n760), .B0(\Job[7][0] ), .B1(n759), 
        .C0(n747), .Y(n750) );
  AO22X1 U986 ( .A0(\Job[1][0] ), .A1(n757), .B0(\Job[0][0] ), .B1(n756), .Y(
        n748) );
  AOI221XL U987 ( .A0(\Job[2][0] ), .A1(n760), .B0(\Job[3][0] ), .B1(n759), 
        .C0(n748), .Y(n749) );
  AO22X1 U988 ( .A0(\Job[5][1] ), .A1(n757), .B0(\Job[4][1] ), .B1(n756), .Y(
        n751) );
  AOI221XL U989 ( .A0(\Job[6][1] ), .A1(n760), .B0(\Job[7][1] ), .B1(n759), 
        .C0(n751), .Y(n754) );
  AO22X1 U990 ( .A0(\Job[1][1] ), .A1(n757), .B0(\Job[0][1] ), .B1(n756), .Y(
        n752) );
  AOI221XL U991 ( .A0(\Job[2][1] ), .A1(n760), .B0(\Job[3][1] ), .B1(n759), 
        .C0(n752), .Y(n753) );
  AO22X1 U992 ( .A0(\Job[5][2] ), .A1(n757), .B0(\Job[4][2] ), .B1(n756), .Y(
        n755) );
  AOI221XL U993 ( .A0(\Job[6][2] ), .A1(n760), .B0(\Job[7][2] ), .B1(n759), 
        .C0(n755), .Y(n762) );
  AO22X1 U994 ( .A0(\Job[1][2] ), .A1(n757), .B0(\Job[0][2] ), .B1(n756), .Y(
        n758) );
  AOI221XL U995 ( .A0(\Job[2][2] ), .A1(n760), .B0(\Job[3][2] ), .B1(n759), 
        .C0(n758), .Y(n761) );
  OAI22XL U996 ( .A0(n762), .A1(n478), .B0(n765), .B1(n761), .Y(n865) );
  OAI22XL U997 ( .A0(CurCost[1]), .A1(n766), .B0(n766), .B1(n788), .Y(n768) );
  NAND2X1 U998 ( .A(CurCost[7]), .B(n792), .Y(n780) );
  NAND2X1 U999 ( .A(CurCost[6]), .B(n791), .Y(n775) );
  NOR3BXL U1000 ( .AN(n775), .B(n769), .C(n776), .Y(n767) );
  NAND3X1 U1001 ( .A(n768), .B(n780), .C(n767), .Y(n787) );
  NAND2X1 U1002 ( .A(CurCost[9]), .B(n793), .Y(n783) );
  NOR2X1 U1003 ( .A(n785), .B(n784), .Y(n774) );
  NAND2X1 U1004 ( .A(CurCost[2]), .B(n789), .Y(n782) );
  OAI211X1 U1005 ( .A0(n771), .A1(n472), .B0(n770), .C0(n782), .Y(n772) );
  OAI221XL U1006 ( .A0(CurCost[2]), .A1(n789), .B0(CurCost[3]), .B1(n790), 
        .C0(n772), .Y(n773) );
  AOI222XL U1007 ( .A0(n869), .A1(n468), .B0(n870), .B1(n469), .C0(n774), .C1(
        n773), .Y(n778) );
  NAND2BX1 U1008 ( .AN(n776), .B(n775), .Y(n777) );
  OAI222XL U1009 ( .A0(n778), .A1(n777), .B0(CurCost[6]), .B1(n791), .C0(
        CurCost[7]), .C1(n792), .Y(n779) );
endmodule

