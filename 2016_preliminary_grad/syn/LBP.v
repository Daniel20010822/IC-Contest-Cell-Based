module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
    input   	clk;
    input   	reset;
    output  [13:0] 	gray_addr;
    output         	gray_req;
    input   	    gray_ready;
    input   [7:0] 	gray_data;
    output  [13:0] 	lbp_addr;
    output  	    lbp_valid;
    output  [7:0] 	lbp_data;
    output  	    finish;

    //====================================================================
    wire cycle4, initialize, right, down, left;
    wire [3:0]cycle;
    FSM fsm(clk, reset, gray_ready, lbp_addr, lbp_valid, gray_req, finish, cycle, cycle4, initialize);
    gray_addr_ctrl gray_addr_ctrl(clk, reset, gray_addr, lbp_addr, cycle, right, down, left, initialize);
    lbp_addr_ctrl lbp_addr_ctrl(clk, reset, lbp_addr, cycle, cycle4, right, down, left, initialize);
    gray_data_matrix gray_data_matrix(clk, reset, gray_data, lbp_data, right, down, left, initialize, cycle);
    //====================================================================
endmodule


module FSM(clk, reset, gray_ready, lbp_addr, lbp_valid, gray_req, finish, cycle, cycle4, initialize);
    input clk, reset, gray_ready;
    input [13:0]lbp_addr;
    output lbp_valid, finish, cycle4, initialize, gray_req;
    output reg [3:0]cycle;
    reg [1:0]cs, ns;

    always @(*) begin
    case(cs)
        2'd0: ns = (gray_ready) ? 2'd1 : 2'd0;
        2'd1: ns = (cycle == 4'd9) ? 2'd2 : 2'd1;
        2'd2: ns = (lbp_addr == 14'b11111100000001) ? 2'd3 : 2'd2;
        default: ns = 2'd3;
    endcase
    end
    always @(posedge clk or posedge reset) begin
    if (reset) begin
        cs <= 2'd0;
    end
    else begin
        cs <= ns;
    end
    end
    assign initialize = (cs == 2'd1);
    assign cycle4 = (cs == 2'd2);
    assign finish = (cs == 2'd3);
    assign lbp_valid = (cycle4 && cycle == 4'd0) & ~initialize;
    assign gray_req = ((initialize & ~(cycle == 4'd0)) | cycle4) & ~lbp_valid;

    always @(posedge clk or posedge reset) begin
    if (reset) begin
        cycle <= 4'd0;
    end
    else if (initialize) begin
        cycle <= (cycle == 4'd9) ? 4'd0 : cycle + 1'd1;
    end
    else if (cycle4) begin
        cycle <= (cycle == 4'd3) ? 4'd0 : cycle + 1'd1;
    end
    end

endmodule


module gray_data_matrix(clk, reset, gray_data, lbp_data, right, down, left, initialize, cycle);
    input clk, reset;
    input right, down, left, initialize;
    input [3:0]cycle;
    input [7:0]gray_data;
    output [7:0]lbp_data;
    reg [7:0]g7, g6, g5, g4, g3, g2, g1, g0, gc;


    assign lbp_data[7] = (g7 >= gc);
    assign lbp_data[6] = (g6 >= gc);
    assign lbp_data[5] = (g5 >= gc);
    assign lbp_data[4] = (g4 >= gc);
    assign lbp_data[3] = (g3 >= gc);
    assign lbp_data[2] = (g2 >= gc);
    assign lbp_data[1] = (g1 >= gc);
    assign lbp_data[0] = (g0 >= gc);

    always @(posedge clk or posedge reset) begin
    if (reset) begin
        g0 <= 8'd0; g1 <= 8'd0; g2 <= 8'd0;
        g3 <= 8'd0; gc <= 8'd0; g4 <= 8'd0;
        g5 <= 8'd0; g6 <= 8'd0; g7 <= 8'd0;
    end
    else if (initialize) begin
        g0 <= g1; g1 <= g2; g2 <= g3;
        g3 <= gc; gc <= g4; g4 <= g5;
        g5 <= g6; g6 <= g7; g7 <= gray_data;
    end
    else if (right) begin
        g0 <= (cycle == 4'd1) ? g1 : g0; g1 <= (cycle == 4'd1) ? g2 : g1; g2 <= (cycle == 4'd1) ? gray_data : g2;
        g3 <= (cycle == 4'd2) ? gc : g3; gc <= (cycle == 4'd2) ? g4 : gc; g4 <= (cycle == 4'd2) ? gray_data : g4;
        g5 <= (cycle == 4'd3) ? g6 : g5; g6 <= (cycle == 4'd3) ? g7 : g6; g7 <= (cycle == 4'd3) ? gray_data : g7;
    end
    else if (down) begin
        g0 <= (cycle == 4'd1) ? g3 : g0;        g1 <= (cycle == 4'd2) ? gc : g1;        g2 <= (cycle == 4'd3) ? g4 : g2;
        g3 <= (cycle == 4'd1) ? g5 : g3;        gc <= (cycle == 4'd2) ? g6 : gc;        g4 <= (cycle == 4'd3) ? g7 : g4;
        g5 <= (cycle == 4'd1) ? gray_data : g5; g6 <= (cycle == 4'd2) ? gray_data : g6; g7 <= (cycle == 4'd3) ? gray_data : g7;
    end
    else if (left) begin
        g0 <= (cycle == 4'd1) ? gray_data : g0; g1 <= (cycle == 4'd1) ? g0 : g1; g2 <= (cycle == 4'd1) ? g1 : g2;
        g3 <= (cycle == 4'd2) ? gray_data : g3; gc <= (cycle == 4'd2) ? g3 : gc; g4 <= (cycle == 4'd2) ? gc : g4;
        g5 <= (cycle == 4'd3) ? gray_data : g5; g6 <= (cycle == 4'd3) ? g5 : g6; g7 <= (cycle == 4'd3) ? g6 : g7;
    end
    else begin
        g0 <= g0; g1 <= g1; g2 <= g2;
        g3 <= g3; gc <= gc; g4 <= g4;
        g5 <= g5; g6 <= g6; g7 <= g7;
    end
    end

endmodule


module lbp_addr_ctrl(clk, reset, lbp_addr, cycle, cycle4, right, down, left, initialize);
    input clk, reset;
    input initialize, cycle4;
    input [3:0]cycle;
    output right, down, left;
    output [13:0] lbp_addr;
    reg [6:0] lbp_addr_row, lbp_addr_col;

    assign lbp_addr = {lbp_addr_row, lbp_addr_col};
    assign right = ((lbp_addr_col < 7'd126) && (lbp_addr_row[0] == 1'b1)) & ~initialize & cycle4;
    assign left = (lbp_addr_col > 7'd1) && (lbp_addr_row[0] == 1'b0);
    assign down = (lbp_addr_col == 7'd1 || lbp_addr_col == 7'd126) & ~right & ~left & ~initialize; //CHECK THIS ONE

    always @(posedge clk or posedge reset) begin
    if (reset) begin
        lbp_addr_row <= 7'd1;
        lbp_addr_col <= 7'd0;
    end
    else if (initialize && cycle == 4'd8) begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col + 1'd1;
    end
    else if (right && cycle == 4'd3) begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col + 1'd1;
    end
    else if (left && cycle == 4'd3) begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col - 1'd1;
    end
    else if (down && cycle == 4'd3) begin
        lbp_addr_row <= lbp_addr_row + 1'd1;
        lbp_addr_col <= lbp_addr_col;
    end
    else begin
        lbp_addr_row <= lbp_addr_row;
        lbp_addr_col <= lbp_addr_col;
    end
    end

endmodule


module gray_addr_ctrl(clk, reset, gray_addr, lbp_addr, cycle, right, down, left, initialize);
    input clk, reset;
    input right, down, left, initialize;
    input [3:0]cycle;
    input [13:0]lbp_addr;

    output [13:0]gray_addr;

    wire [6:0]lbp_addr_row, lbp_addr_col;
    reg [6:0]gray_addr_row, gray_addr_col;
    reg [6:0]ini_gray_addr_row, ini_gray_addr_col;  //gray_addr in initialize mode


    assign gray_addr = {gray_addr_row, gray_addr_col};
    assign lbp_addr_row = lbp_addr[13:7];
    assign lbp_addr_col = lbp_addr[6:0];

    always @(*) begin  //gray_addr with corresponding cycle
    case(cycle)
        4'd0: begin
        ini_gray_addr_row = 7'd0;
        ini_gray_addr_col = 7'd0;
        end
        4'd1: begin
        ini_gray_addr_row = 7'd0;
        ini_gray_addr_col = 7'd1;
        end
        4'd2: begin
        ini_gray_addr_row = 7'd0;
        ini_gray_addr_col = 7'd2;
        end
        4'd3: begin
        ini_gray_addr_row = 7'd1;
        ini_gray_addr_col = 7'd0;
        end
        4'd4: begin
        ini_gray_addr_row = 7'd1;
        ini_gray_addr_col = 7'd1;
        end
        4'd5: begin
        ini_gray_addr_row = 7'd1;
        ini_gray_addr_col = 7'd2;
        end
        4'd6: begin
        ini_gray_addr_row = 7'd2;
        ini_gray_addr_col = 7'd0;
        end
        4'd7: begin
        ini_gray_addr_row = 7'd2;
        ini_gray_addr_col = 7'd1;
        end
        4'd8: begin
        ini_gray_addr_row = 7'd2;
        ini_gray_addr_col = 7'd2;
        end
        default: begin
        ini_gray_addr_row = 7'd2;
        ini_gray_addr_col = 7'd2;
        end
    endcase
    end


    always @(posedge clk or posedge reset) begin
    if (reset) begin
        gray_addr_row <= 7'd0;
        gray_addr_col <= 7'd0;
    end
    else if (initialize && cycle <= 4'd9) begin
        gray_addr_row <= ini_gray_addr_row;
        gray_addr_col <= ini_gray_addr_col;
    end
    else if (right && cycle < 4'd3) begin
        gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col <= lbp_addr_col + 2'd2;
    end
    else if (down && cycle < 4'd3) begin
        gray_addr_row <= lbp_addr_row + 2'd2;
        gray_addr_col <= lbp_addr_col - 1'd1 + cycle;
    end
    else if (left && cycle < 4'd3) begin
        gray_addr_row <= lbp_addr_row - 1'd1 + cycle;
        gray_addr_col <= lbp_addr_col - 2'd2;
    end
    else begin
        gray_addr_row <= gray_addr_row;
        gray_addr_col <= gray_addr_col;
    end
    end

endmodule