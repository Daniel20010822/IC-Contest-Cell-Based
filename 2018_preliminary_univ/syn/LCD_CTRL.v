module LCD_CTRL(clk, reset, cmd, cmd_valid, IROM_Q, IROM_rd, IROM_A, IRAM_valid, IRAM_D, IRAM_A, busy, done);
    input        clk;
    input        reset;
    input  [3:0] cmd;
    input        cmd_valid;
    input  [7:0] IROM_Q;
    output       IROM_rd;
    output [5:0] IROM_A;
    output       IRAM_valid;
    output [7:0] IRAM_D;
    output [5:0] IRAM_A;
    output       busy;
    output       done;

    // For loop param
    integer i = 0;
    // CMD param
    reg [3:0] cur_cmd;
    parameter CMD_W = 4'h0,
              CMD_SU = 4'h1, CMD_SD = 4'h2, CMD_SL = 4'h3, CMD_SR = 4'h4,
              CMD_MAX = 4'h5, CMD_MIN = 4'h6,
              CMD_AVG = 4'h7,
              CMD_CCW = 4'h8, CMD_CW = 4'h9,
              CMD_MX = 4'ha, CMD_MY = 4'hb;
    // LCD param
    parameter LEN = 63, EndPt = 6'd63;
    reg [7:0] LCD [0:63];
    reg [5:0] addr_cnt;
    reg [2:0] opr_X, opr_Y;
    wire [7:0] LCD_UR, LCD_UL, LCD_DR, LCD_DL;
    wire [5:0] UR, UL, DR, DL;
    wire [9:0] LCD_avg;
    wire [7:0] LCD_max, LCD_min;
    wire [7:0] max_cand1, max_cand2, min_cand1, min_cand2;
    // states
    parameter RDIM = 4'hc, RDCMD = 4'hd, DONE = 4'hf;
    reg [3:0] cs, ns;


    // FSM
    always @(posedge clk or posedge reset) begin
        if (reset)
            cs <= RDIM;
        else
            cs <= ns;
    end
    always @(*) begin
        case(cs)
            RDIM: begin
                if (addr_cnt == EndPt)
                    ns = RDCMD;
                else
                    ns = RDIM;
            end
            RDCMD: ns = cmd;
            CMD_W: begin
                if (addr_cnt == EndPt)
                    ns = DONE;
                else
                    ns = CMD_W;
            end
            CMD_SU:  ns = RDCMD;
            CMD_SD:  ns = RDCMD;
            CMD_SL:  ns = RDCMD;
            CMD_SR:  ns = RDCMD;
            CMD_MAX: ns = RDCMD;
            CMD_MIN: ns = RDCMD;
            CMD_AVG: ns = RDCMD;
            CMD_CCW: ns = RDCMD;
            CMD_CW:  ns = RDCMD;
            CMD_MX:  ns = RDCMD;
            CMD_MY:  ns = RDCMD;
            DONE:    ns = DONE;
        endcase
    end
    assign IROM_rd = (cs == RDIM);
    assign IRAM_valid = (cs == CMD_W);
    assign busy = ~(cs == RDCMD);
    assign done =  (cs == DONE);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            addr_cnt <= 4'd0;
        end
        else if (cs == RDIM || cs == CMD_W) begin
            addr_cnt <= addr_cnt + 1'd1;
        end
        else begin
            addr_cnt <= 4'd0;
        end
    end

    // LCD
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            {opr_X, opr_Y} <= {3'd4, 3'd4};
            for (i = 0; i < LEN; i = i + 1) begin
                LCD[i] <= 8'd0;
            end
        end
        else begin
            case(cs)
                RDIM: begin
                    for (i = 1; i <= LEN; i = i + 1) begin
                        LCD[i-1] <= LCD[i];
                    end
                    LCD[LEN] <= IROM_Q;
                end
                CMD_SU: opr_Y <= (opr_Y == 3'd1) ? opr_Y : opr_Y - 1'd1;
                CMD_SD: opr_Y <= (opr_Y == 3'd7) ? opr_Y : opr_Y + 1'd1;
                CMD_SL: opr_X <= (opr_X == 3'd1) ? opr_X : opr_X - 1'd1;
                CMD_SR: opr_X <= (opr_X == 3'd7) ? opr_X : opr_X + 1'd1;
                CMD_MAX: begin
                    LCD[UR] <= LCD_max;
                    LCD[UL] <= LCD_max;
                    LCD[DL] <= LCD_max;
                    LCD[DR] <= LCD_max;
                end
                CMD_MIN: begin
                    LCD[UR] <= LCD_min;
                    LCD[UL] <= LCD_min;
                    LCD[DL] <= LCD_min;
                    LCD[DR] <= LCD_min;
                end
                CMD_AVG: begin
                    LCD[UR] <= LCD_avg;
                    LCD[UL] <= LCD_avg;
                    LCD[DL] <= LCD_avg;
                    LCD[DR] <= LCD_avg;
                end
                CMD_CCW: begin
                    LCD[UR] <= LCD_DR;
                    LCD[UL] <= LCD_UR;
                    LCD[DL] <= LCD_UL;
                    LCD[DR] <= LCD_DL;
                end
                CMD_CW:  begin
                    LCD[UR] <= LCD_UL;
                    LCD[UL] <= LCD_DL;
                    LCD[DL] <= LCD_DR;
                    LCD[DR] <= LCD_UR;
                end
                CMD_MX:  begin
                    LCD[UR] <= LCD_DR;
                    LCD[UL] <= LCD_DL;
                    LCD[DL] <= LCD_UL;
                    LCD[DR] <= LCD_UR;
                end
                CMD_MY:  begin
                    LCD[UR] <= LCD_UL;
                    LCD[UL] <= LCD_UR;
                    LCD[DL] <= LCD_DR;
                    LCD[DR] <= LCD_DL;
                end
            endcase
        end
    end
    assign IRAM_A = addr_cnt;
    assign IROM_A = addr_cnt;
    assign IRAM_D = LCD[addr_cnt];
    // positions
    assign UR = {opr_Y - 1'd1, opr_X       };
    assign UL = {opr_Y - 1'd1, opr_X - 1'd1};
    assign DR = {opr_Y       , opr_X       };
    assign DL = {opr_Y       , opr_X - 1'd1};
    // values at operation points
    assign LCD_UR = LCD[UR];
    assign LCD_UL = LCD[UL];
    assign LCD_DR = LCD[DR];
    assign LCD_DL = LCD[DL];

    // avg
    assign LCD_avg = (LCD[UR] + LCD[UL] + LCD[DR] + LCD[DL]) >> 2;
    // max
    assign max_cand1 = (LCD_UL > LCD_UR) ? LCD_UL : LCD_UR;
    assign max_cand2 = (LCD_DL > LCD_DR) ? LCD_DL : LCD_DR;
    assign LCD_max = (max_cand1 > max_cand2) ? max_cand1 : max_cand2;
    // min
    assign min_cand1 = (LCD_UL < LCD_UR) ? LCD_UL : LCD_UR;
    assign min_cand2 = (LCD_DL < LCD_DR) ? LCD_DL : LCD_DR;
    assign LCD_min = (min_cand1 < min_cand2) ? min_cand1 : min_cand2;

endmodule



