module JAM (
    input CLK,
    input RST,
    output reg [2:0] W,
    output reg [2:0] J,
    input [6:0] Cost,
    output reg [3:0] MatchCount,
    output reg [9:0] MinCost,
    output reg Valid
);
    /// FSM DECLs
    reg [2:0] g_cs, g_ns;
    parameter INIT = 3'd0;
    parameter COST_CAL = 3'd1;
    parameter COST_CHK = 3'd2;
    parameter PERM_FINDMIN = 3'd3;
    parameter PERM_SWAP = 3'd4;
    parameter PERM_REV = 3'd5;
    parameter FINISH = 3'd7;
    /// PERM DECLs
    reg [2:0] Job [0:7];
    reg [2:0] anchor, priot;
    reg [2:0] swap, pos, curmin;
    wire [6:0] smallerThanRight;
    /// COST DECLs
    reg [9:0] CurCost;


    /// FSM
    always @(negedge CLK or posedge RST) begin
        if (RST)
            g_cs <= INIT;
        else
            g_cs <= g_ns;
    end
    always @(*) begin
        case(g_cs)
            INIT:         g_ns = COST_CAL;
            COST_CAL:     g_ns = (W == 3'd7) ? COST_CHK : COST_CAL;
            COST_CHK:     g_ns = (~ (|smallerThanRight)) ? FINISH : PERM_FINDMIN;
            PERM_FINDMIN: g_ns = (pos == 3'd7) ? PERM_SWAP : PERM_FINDMIN;
            PERM_SWAP:    g_ns = PERM_REV;
            PERM_REV:     g_ns = COST_CAL;
            FINISH:       g_ns = FINISH;
            default:      g_ns = INIT;
        endcase
    end
    always @(*) Valid = (g_cs == FINISH);


    /// PERM
    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            Job[0] <= 3'd0;
            Job[1] <= 3'd1;
            Job[2] <= 3'd2;
            Job[3] <= 3'd3;
            Job[4] <= 3'd4;
            Job[5] <= 3'd5;
            Job[6] <= 3'd6;
            Job[7] <= 3'd7;
        end
        else if (g_cs == PERM_SWAP)begin
            Job[anchor] <= Job[swap];
            Job[swap] <= Job[anchor];
        end
        else if (g_cs == PERM_REV)begin
            case(anchor)
                3'd0: begin
                    Job[1] <= Job[7];
                    Job[2] <= Job[6];
                    Job[3] <= Job[5];
                    Job[5] <= Job[3];
                    Job[6] <= Job[2];
                    Job[7] <= Job[1];
                end

                3'd1: begin
                    Job[2] <= Job[7];
                    Job[3] <= Job[6];
                    Job[4] <= Job[5];
                    Job[5] <= Job[4];
                    Job[6] <= Job[3];
                    Job[7] <= Job[2];
                end

                3'd2: begin
                    Job[3] <= Job[7];
                    Job[4] <= Job[6];
                    Job[6] <= Job[4];
                    Job[7] <= Job[3];
                end

                3'd3: begin
                    Job[4] <= Job[7];
                    Job[5] <= Job[6];
                    Job[6] <= Job[5];
                    Job[7] <= Job[4];
                end

                3'd4: begin
                    Job[5] <= Job[7];
                    Job[7] <= Job[5];
                end

                3'd5: begin
                    Job[6] <= Job[7];
                    Job[7] <= Job[6];
                end
            endcase
        end
    end
    assign smallerThanRight = {
        Job[0] < Job[1],
        Job[1] < Job[2],
        Job[2] < Job[3],
        Job[3] < Job[4],
        Job[4] < Job[5],
        Job[5] < Job[6],
        Job[6] < Job[7]
    };
    // priority encoder
    always @(*) begin
        casez (smallerThanRight)
            7'bzzzzzz1: priot = 3'd6;
            7'bzzzzz10: priot = 3'd5;
            7'bzzzz100: priot = 3'd4;
            7'bzzz1000: priot = 3'd3;
            7'bzz10000: priot = 3'd2;
            7'bz100000: priot = 3'd1;
            7'b1000000: priot = 3'd0;
            default: priot = 3'd7;
        endcase
    end
    always @(negedge CLK or posedge RST) begin
        if (RST)
            anchor <= 3'd6;
        else if (g_cs == COST_CAL)
            anchor <= priot;
        else
            anchor <= anchor;
    end

    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            pos  <= 3'd0;
            swap <= 3'd0;
            curmin <= 3'd7;
        end
        else if (g_cs == PERM_FINDMIN) begin
            pos <= pos + 1'd1;
            swap <= (Job[pos] < curmin && Job[pos] > Job[anchor]) ? pos : swap;
            curmin <= (Job[pos] < curmin && Job[pos] > Job[anchor]) ? Job[pos] : curmin;
        end
        else if (g_cs == PERM_SWAP || g_cs == PERM_REV) begin
            swap <= swap;
            curmin <= curmin;
        end
        else begin
            pos  <= anchor + 1'd1;
            swap <= anchor + 1'd1;
            curmin <= Job[pos];//?
        end
    end

    /// COST_CAL
    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            MinCost <= 10'h3ff;
            CurCost <= 10'd0;
            MatchCount <= 4'd1;
        end
        else if (g_cs == COST_CAL) begin
            CurCost <= CurCost + Cost;
        end
        else if (g_cs == COST_CHK) begin
            // if (CurCost < MinCost) begin
            //     CurCost <= CurCost;
            //     MinCost <= CurCost;
            //     MatchCount <= 4'd1;
            // end
            // else if (CurCost == MinCost) begin
            //     CurCost <= CurCost;
            //     MinCost <= MinCost;
            //     MatchCount <= MatchCount + 1'd1;
            // end
            // else begin
            //     CurCost <= CurCost;
            //     MinCost <= MinCost;
            //     MatchCount <= MatchCount;
            // end
            MinCost <= (CurCost < MinCost) ? CurCost : MinCost;
            MatchCount <= (CurCost < MinCost) ? 4'd1 :
                         (CurCost == MinCost) ? MatchCount + 1'd1 : MatchCount;
        end
        else begin
            CurCost <= 10'd0;
            MinCost <= MinCost;
            MatchCount <= MatchCount;
        end
    end
    always @(negedge CLK or posedge RST) begin
        if (RST)
            W <= 3'd0;
        else if (g_cs == COST_CAL)
            W <= W + 1'd1;
        else
            W <= 3'd0;
    end
    always @(*) J = Job[W];
endmodule