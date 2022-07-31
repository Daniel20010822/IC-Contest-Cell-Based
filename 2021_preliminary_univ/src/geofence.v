module geofence ( clk,reset,X,Y,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output valid;
output is_inside;
wire [9:0] objectX, fence6X, fence5X, fence4X, fence3X, fence2X, fence1X, objectY, fence6Y, fence5Y, fence4Y, fence3Y, fence2Y, fence1Y;
wire is_inside_complete;
//reg valid;
//reg is_inside;
QR7 XCoord(X, clk, objectX, fence6X, fence5X, fence4X, fence3X, fence2X, fence1X, valid, is_inside_complete);
QR7 YCoord(Y, clk, objectY, fence6Y, fence5Y, fence4Y, fence3Y, fence2Y, fence1Y, valid, is_inside_complete);
endmodule

module QR7(Din, clk, object, fence6, fence5, fence4, fence3, fence2, fence1, valid, is_inside_complete);
input [9:0]Din;
input clk, is_inside_complete;
output [9:0]object, fence6, fence5, fence4, fence3, fence2, fence1;
output valid;
reg [2:0]count;
reg cs;
wire _clk, clkG, wen;

D_latch10 D10(Din, clk, wen, object);
D_latch10 D11(object, clk, wen, fence1);
D_latch10 D12(fence1, clk, wen, fence2);
D_latch10 D13(fence2, clk, wen, fence3);
D_latch10 D14(fence3, clk, wen, fence4);
D_latch10 D15(fence4, clk, wen, fence5);
D_latch10 D16(fence5, clk, wen, fence6);
//counter
assign clkG = (count == 3'd7) ? 1'b0 : 1'b1;
assign _clk = clk & (clkG | is_inside_complete); //is_inside_complete is negedge
always @(posedge _clk)
	count <= count + 3'd1;
//
always @(posedge clk)
	case(cs)
		1'b0: cs <= (count == 3'd6) ? 1'b1 : 1'b0;
		1'b1: cs <= (is_inside_complete) ? 1'b0 : 1'b1;
	endcase
assign valid = (cs == 1'b1) ? 1'b1 : 1'b0;
assign wen = (cs == 1'b1) ? 1'b0 : 1'b1;
endmodule

module D_latch10(D, clk, wen, Q);
input [9:0]D;
input clk, wen;
output [9:0]Q;
D_latch D0(D[0], clk, wen, Q[0]);
D_latch D1(D[1], clk, wen, Q[1]);
D_latch D2(D[2], clk, wen, Q[2]);
D_latch D3(D[3], clk, wen, Q[3]);
D_latch D4(D[4], clk, wen, Q[4]);
D_latch D5(D[5], clk, wen, Q[5]);
D_latch D6(D[6], clk, wen, Q[6]);
D_latch D7(D[7], clk, wen, Q[7]);
D_latch D8(D[8], clk, wen, Q[8]);
D_latch D9(D[9], clk, wen, Q[9]);
endmodule

module D_latch(D, clk, wen, Q);
input D, clk, wen;
output reg Q;
always @(posedge clk)
	Q <= (wen) ? D : Q;
endmodule

