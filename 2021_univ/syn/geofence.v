module geofence(clk, reset, X, Y, valid, is_inside);
	input        clk;
	input        reset;
	input  [9:0] X;
	input  [9:0] Y;
	output       valid;
	output       is_inside;

	wire newData, bubbleSort, compare;
	wire [2:0] addr0, addr1;
	wire [9:0] X0, Y0, Xt, Yt;
	wire [9:0] Xaddr0, Yaddr0, Xaddr1, Yaddr1;
	wire [9:0] swapX0, swapY0, swapX1, swapY1;

	cross      cross_product(clk, reset, newData, bubbleSort, compare, X0, Y0, Xt, Yt ,Xaddr0, Yaddr0, Xaddr1, Yaddr1, swapX0, swapY0, swapX1, swapY1, is_inside);
	fsm        finite_state_machine(clk, reset, is_inside, newData, bubbleSort, compare, valid, addr0, addr1);
 	xyreg_2w2r xyregister_2w2r(clk, reset, X, Y, newData, bubbleSort, addr0, addr1, X0, Y0, Xt, Yt, Xaddr0, Xaddr1, Yaddr0, Yaddr1, swapX0, swapY0, swapX1, swapY1);


endmodule


module fsm(clk, reset, is_inside, newData, bubbleSort, compare, valid, addr0, addr1);
    input         clk, reset;
    input         is_inside;
    output [2:0]  addr0, addr1;
    output        newData, bubbleSort, compare;
    output reg    valid;
    wire          outMode;
    reg    [1:0]  global_cs, global_ns;
    reg    [2:0]  count, round, cycle;

    parameter s0 = 2'd0, s1 = 2'd1, s2 = 2'd2, s3 = 2'd3;

    // ----GLOBAL FSM
    always @(posedge clk or posedge reset) begin
        if (reset)
            global_cs <= 2'd0;
        else
            global_cs <= global_ns;
    end
    always @(*) begin
        case (global_cs)
            s0:
            if (count == 3'd6)
                global_ns = s1;
            else
                global_ns = s0;

            s1:
            if (round == 3'd4 && cycle == 3'd4)
                global_ns = s2;
            else
                global_ns = s1;

            s2:
            if (~is_inside)
                global_ns = s3;
            else if (count == 3'd5)
                global_ns = s3;
            else
                global_ns = s2;

            s3: global_ns = s0;
        endcase
    end
    assign newData = (global_cs == s0);     // NEW DATA MODE
    assign bubbleSort = (global_cs == s1);  // BUBBLE SORT MODE
    assign compare = (global_cs == s2);     // DETECT MODE
    assign outMode = (global_cs == s3);     // OUTPUT MODE
    always @(negedge clk or posedge reset) begin // valid need to be negedge
        if (reset)
            valid <= 1'd0;
        else if (outMode)
            valid <= 1'd1;
        else
            valid <= 1'd0;
    end


    // ----NEW DATA MODE & DETECT MODE
    // count
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 3'd0;
        else if (newData || compare)
            count <= count + 1'd1;
        else
            count <= 3'd0;
    end

    // ----BUBBLE SORT MODE (ROUND & CYCLE)
    // round
    always @(posedge clk or posedge reset) begin
        if (reset)
            round <= 3'd0;
        else if (bubbleSort)
            round <= (cycle == 3'd4) ? round + 1'd1 : round;
        else
            round <= 3'd0;
    end
    // cycle
    always @(posedge clk or posedge reset) begin
        if (reset)
            cycle <= 3'd1;
        else if (bubbleSort)
            cycle <= (cycle == 3'd4) ? 3'd1 : cycle + 1'd1;
        else
            cycle <= 3'd1;
    end

    // MUX in XYreg_2w2r will choose 0 when addr0 = 3'd6, addr1 = 3'd7
    assign addr0 = (bubbleSort) ? cycle : ((compare) ? count : 3'd6);
    // when addr0 = 5, then addr1 should be 0 (circular)
    assign addr1 = (addr0 == 3'd5) ? 3'd0 : addr0 + 1'd1;

endmodule

module xyreg_2w2r(clk, reset, X, Y, newData, bubbleSort, addr0, addr1, X0, Y0, Xt, Yt, Xaddr0, Xaddr1, Yaddr0, Yaddr1, swapX0, swapY0, swapX1, swapY1);
    input          clk, reset;
    input   [9:0]  X, Y;
	input   [9:0]  swapX0, swapY0, swapX1, swapY1;
    input   [2:0]  addr0, addr1;
    input          newData, bubbleSort;
    output  [9:0]  Xaddr0, Yaddr0, Xaddr1, Yaddr1;
	output  [9:0]  X0, Y0, Xt, Yt;
	reg     [9:0]  X5, X4, X3, X2, X1, X0, Xt;
	reg     [9:0]  Y5, Y4, Y3, Y2, Y1, Y0, Yt;

    // xyreg_2w2r
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X5 <= 10'd0;
            Y5 <= 10'd0;
        end
        else if (newData) begin
            X5 <= X;
            Y5 <= Y;
        end
        else if (bubbleSort && addr0 == 3'd5) begin
            X5 <= swapX0;
            Y5 <= swapY0;
        end
        else if (bubbleSort && addr1 == 3'd5) begin
            X5 <= swapX1;
            Y5 <= swapY1;
        end
        else begin
            X5 <= X5;
            Y5 <= Y5;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X4 <= 10'd0;
            Y4 <= 10'd0;
        end
        else if (newData) begin
            X4 <= X5;
            Y4 <= Y5;
        end
        else if (bubbleSort && addr0 == 3'd4) begin
            X4 <= swapX0;
            Y4 <= swapY0;
        end
        else if (bubbleSort && addr1 == 3'd4) begin
            X4 <= swapX1;
            Y4 <= swapY1;
        end
        else begin
            X4 <= X4;
            Y4 <= Y4;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X3 <= 10'd0;
            Y3 <= 10'd0;
        end
        else if (newData) begin
            X3 <= X4;
            Y3 <= Y4;
        end
        else if (bubbleSort && addr0 == 3'd3) begin
            X3 <= swapX0;
            Y3 <= swapY0;
        end
        else if (bubbleSort && addr1 == 3'd3) begin
            X3 <= swapX1;
            Y3 <= swapY1;
        end
        else begin
            X3 <= X3;
            Y3 <= Y3;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X2 <= 10'd0;
            Y2 <= 10'd0;
        end
        else if (newData) begin
            X2 <= X3;
            Y2 <= Y3;
        end
        else if (bubbleSort && addr0 == 3'd2) begin
            X2 <= swapX0;
            Y2 <= swapY0;
        end
        else if (bubbleSort && addr1 == 3'd2) begin
            X2 <= swapX1;
            Y2 <= swapY1;
        end
        else begin
            X2 <= X2;
            Y2 <= Y2;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X1 <= 10'd0;
            Y1 <= 10'd0;
        end
        else if (newData) begin
            X1 <= X2;
            Y1 <= Y2;
        end
        else if (bubbleSort && addr0 == 3'd1) begin
            X1 <= swapX0;
            Y1 <= swapY0;
        end
        else if (bubbleSort && addr1 == 3'd1) begin
            X1 <= swapX1;
            Y1 <= swapY1;
        end
        else begin
            X1 <= X1;
            Y1 <= Y1;
        end
    end
	// X0Y0 reg
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            X0 <= 10'd0;
            Y0 <= 10'd0;
        end
        else if (newData) begin
            X0 <= X1;
            Y0 <= Y1;
        end
        else begin
            X0 <= X0;
            Y0 <= Y0;
        end
    end
	// XtYt reg
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Xt <= 10'd0;
            Yt <= 10'd0;
        end
        else if (newData) begin
            Xt <= X0;
            Yt <= Y0;
        end
        else begin
            Xt <= Xt;
            Yt <= Yt;
        end
    end

    // read out
    mux8to1 mux_x0(X0, X1, X2, X3, X4, X5, addr0, Xaddr0);
    mux8to1 mux_x1(Y0, Y1, Y2, Y3, Y4, Y5, addr0, Yaddr0);
    mux8to1 mux_y0(X0, X1, X2, X3, X4, X5, addr1, Xaddr1);
    mux8to1 mux_y1(Y0, Y1, Y2, Y3, Y4, Y5, addr1, Yaddr1);

endmodule

module cross(clk, reset, newData, bubbleSort, compare, X0, Y0, Xt, Yt ,Xaddr0, Yaddr0, Xaddr1, Yaddr1, swapX0, swapY0, swapX1, swapY1, is_inside);
    input          clk, reset;
    input  [9:0]   Xaddr0, Yaddr0, Xaddr1, Yaddr1;
    input  [9:0]   X0, Y0, Xt, Yt;
    input          newData, bubbleSort, compare;
    output [9:0]   swapX0, swapY0, swapX1, swapY1;
    wire   [21:0]  cp, term0, term1;
    wire   [10:0]  vect0x_sub, vect0y_sub, vect1x_sub, vect1y_sub; // subtrahend
    wire   [10:0]  vect0x_min, vect0y_min, vect1x_min, vect1y_min; // minued
    wire   [10:0]  vect0x, vect0y, vect1x, vect1y;
    wire           swap;
    output reg     is_inside;

    // Swap
    assign swap = bubbleSort & cp[21];
    assign swapX0 = (swap) ? Xaddr1 : Xaddr0;
    assign swapX1 = (swap) ? Xaddr0 : Xaddr1;
    assign swapY0 = (swap) ? Yaddr1 : Yaddr0;
    assign swapY1 = (swap) ? Yaddr0 : Yaddr1;

    assign vect0x_sub = (bubbleSort) ? {1'd0, Xaddr0} : ((compare) ? {1'd0, Xaddr0} : 11'd0);
    assign vect0y_sub = (bubbleSort) ? {1'd0, Yaddr0} : ((compare) ? {1'd0, Yaddr0} : 11'd0);
    assign vect1x_sub = (bubbleSort) ? {1'd0, Xaddr1} : ((compare) ? {1'd0, Xaddr1} : 11'd0);
    assign vect1y_sub = (bubbleSort) ? {1'd0, Yaddr1} : ((compare) ? {1'd0, Yaddr1} : 11'd0);
    assign vect0x_min = (bubbleSort) ? {1'd0, X0    } : ((compare) ? {1'd0, Xt    } : 11'd0);
    assign vect0y_min = (bubbleSort) ? {1'd0, Y0    } : ((compare) ? {1'd0, Yt    } : 11'd0);
    assign vect1x_min = (bubbleSort) ? {1'd0, X0    } : ((compare) ? {1'd0, Xaddr0} : 11'd0);
    assign vect1y_min = (bubbleSort) ? {1'd0, Y0    } : ((compare) ? {1'd0, Yaddr0} : 11'd0);

    // vectors
    assign vect0x = vect0x_sub - vect0x_min;
    assign vect0y = vect0y_sub - vect0y_min;
    assign vect1x = vect1x_sub - vect1x_min;
    assign vect1y = vect1y_sub - vect1y_min;

    mult_signed mul0(vect0x, vect1y, term0);
    mult_signed mul1(vect1x, vect0y, term1);
    assign cp = term0 - term1;

    // detect if current cross product > 0
    always @(posedge clk or posedge reset) begin
        if (reset)
            is_inside <= 1'd1;
        else if (newData)
            is_inside <= 1'd1;
        else if (compare && cp[21])
            is_inside <= 1'd0;
        else
            is_inside <= is_inside;
    end
endmodule

module mult_signed(a, b, out);
    input  [10:0] a, b;
    output [21:0] out;
    wire   [10:0] A, B;
    wire   [10:0] a_2c, b_2c;
    wire   [10:0] prefix;
    wire   [21:0] inter0, inter1, inter2, inter3, inter4, inter5, inter6, inter7, inter8, inter9, inter10;

    // 2's complement(2 neg -> 2 pos)
    assign a_2c = (a[10] & b[10]) ? ~a + 1'd1 : a;
    assign b_2c = (a[10] & b[10]) ? ~b + 1'd1 : b;
    // only A can be +/- while B must be + -> Swap if B is -
    assign A = (b_2c[10]) ? b_2c : a_2c;
    assign B = (b_2c[10]) ? a_2c : b_2c;

    // prefix
    assign prefix  = (A[10]) ? 11'b11111111111 : 11'd0;

    // product intermediate
    assign inter0  = (B[0])  ? {prefix[10:0], A       } : 22'd0;
    assign inter1  = (B[1])  ? {prefix[9:0] , A,  1'd0} : 22'd0;
    assign inter2  = (B[2])  ? {prefix[8:0] , A,  2'd0} : 22'd0;
    assign inter3  = (B[3])  ? {prefix[7:0] , A,  3'd0} : 22'd0;
    assign inter4  = (B[4])  ? {prefix[6:0] , A,  4'd0} : 22'd0;
    assign inter5  = (B[5])  ? {prefix[5:0] , A,  5'd0} : 22'd0;
    assign inter6  = (B[6])  ? {prefix[4:0] , A,  6'd0} : 22'd0;
    assign inter7  = (B[7])  ? {prefix[3:0] , A,  7'd0} : 22'd0;
    assign inter8  = (B[8])  ? {prefix[2:0] , A,  8'd0} : 22'd0;
    assign inter9  = (B[9])  ? {prefix[1:0] , A,  9'd0} : 22'd0;
    assign inter10 = (B[10]) ? {prefix[0]   , A, 10'd0} : 22'd0;

    // sum
    assign out = inter0 + inter1 + inter2 + inter3 + inter4 + inter5 + inter6 + inter7 + inter8 + inter9 + inter10;
endmodule

module mux8to1(in0, in1, in2, in3, in4, in5, sel, out);
    input      [9:0] in0, in1, in2, in3, in4, in5;
    input      [2:0] sel;
    output reg [9:0] out;
    always @(*) begin
        case (sel)
            3'd0: out = in0;
            3'd1: out = in1;
            3'd2: out = in2;
            3'd3: out = in3;
            3'd4: out = in4;
            3'd5: out = in5;
            default: out = 10'd0;
        endcase
    end
endmodule

