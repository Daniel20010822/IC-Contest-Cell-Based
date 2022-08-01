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
    reg [2:0] perm_cs, perm_ns, cost_cs, cost_ns;
    parameter INIT = 3'd0;
    parameter COST_CAL = 3'd1;
    parameter COST_CHK = 3'd2;
    parameter FINISH = 3'd3;
    parameter PERM_FINDMIN = 3'd1;
    parameter PERM_SWAP = 3'd2;
    parameter PERM_REV = 3'd3;
    parameter WAIT = 3'd4;
    /// PERM DECLs
    reg  [2:0] Job [0:7];
    reg  [2:0] nextJob [0:7];
    reg  [2:0] anchor, priot;
    reg  [2:0] swap, pos, curmin;
    wire [6:0] smallerThanRight;
    /// COST DECLs
    reg [9:0] CurCost;


    /// FSM
    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            cost_cs <= INIT;
            perm_cs <= INIT;
        end
        else begin
            cost_cs <= cost_ns;
            perm_cs <= perm_ns;
        end
    end
    always @(*) begin
        case(cost_cs)
            INIT:         cost_ns = COST_CAL;
            COST_CAL:     cost_ns = (W == 3'd7) ? COST_CHK : COST_CAL;
            COST_CHK:     cost_ns = (~ (|smallerThanRight)) ? FINISH : WAIT;
            WAIT:         cost_ns = (perm_cs == WAIT) ? COST_CAL : WAIT;
            FINISH:       cost_ns = FINISH;
            default:      cost_ns = INIT;
        endcase
        case(perm_cs)
            INIT:         perm_ns = PERM_FINDMIN;
            PERM_FINDMIN: perm_ns = (pos == 3'd7) ? PERM_SWAP : PERM_FINDMIN;
            PERM_SWAP:    perm_ns = PERM_REV;
            PERM_REV:     perm_ns = WAIT;
            WAIT:         perm_ns = (cost_cs == WAIT) ? PERM_FINDMIN : WAIT;
            default:      perm_ns = INIT;
        endcase
    end
    always @(*) Valid = (cost_cs == FINISH);


    /// PERM
    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            Job[0] <= 3'd0; nextJob[0] <= 3'd0;
            Job[1] <= 3'd1; nextJob[1] <= 3'd1;
            Job[2] <= 3'd2; nextJob[2] <= 3'd2;
            Job[3] <= 3'd3; nextJob[3] <= 3'd3;
            Job[4] <= 3'd4; nextJob[4] <= 3'd4;
            Job[5] <= 3'd5; nextJob[5] <= 3'd5;
            Job[6] <= 3'd6; nextJob[6] <= 3'd6;
            Job[7] <= 3'd7; nextJob[7] <= 3'd7;
        end
        else if (cost_cs == WAIT) begin
            Job[0] <= nextJob[0];
            Job[1] <= nextJob[1];
            Job[2] <= nextJob[2];
            Job[3] <= nextJob[3];
            Job[4] <= nextJob[4];
            Job[5] <= nextJob[5];
            Job[6] <= nextJob[6];
            Job[7] <= nextJob[7];
        end
        else if (perm_cs == PERM_SWAP)begin
            nextJob[anchor] <= nextJob[swap];
            nextJob[swap] <= nextJob[anchor];
        end
        else if (perm_cs == PERM_REV)begin
            case(anchor)
                3'd0: begin
                    nextJob[1] <= nextJob[7];
                    nextJob[2] <= nextJob[6];
                    nextJob[3] <= nextJob[5];
                    nextJob[5] <= nextJob[3];
                    nextJob[6] <= nextJob[2];
                    nextJob[7] <= nextJob[1];
                end

                3'd1: begin
                    nextJob[2] <= nextJob[7];
                    nextJob[3] <= nextJob[6];
                    nextJob[4] <= nextJob[5];
                    nextJob[5] <= nextJob[4];
                    nextJob[6] <= nextJob[3];
                    nextJob[7] <= nextJob[2];
                end

                3'd2: begin
                    nextJob[3] <= nextJob[7];
                    nextJob[4] <= nextJob[6];
                    nextJob[6] <= nextJob[4];
                    nextJob[7] <= nextJob[3];
                end

                3'd3: begin
                    nextJob[4] <= nextJob[7];
                    nextJob[5] <= nextJob[6];
                    nextJob[6] <= nextJob[5];
                    nextJob[7] <= nextJob[4];
                end

                3'd4: begin
                    nextJob[5] <= nextJob[7];
                    nextJob[7] <= nextJob[5];
                end

                3'd5: begin
                    nextJob[6] <= nextJob[7];
                    nextJob[7] <= nextJob[6];
                end
            endcase
        end
    end
    assign smallerThanRight = {
        nextJob[0] < nextJob[1],
        nextJob[1] < nextJob[2],
        nextJob[2] < nextJob[3],
        nextJob[3] < nextJob[4],
        nextJob[4] < nextJob[5],
        nextJob[5] < nextJob[6],
        nextJob[6] < nextJob[7]
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
        else if (cost_cs == COST_CAL)
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
        else if (perm_cs == PERM_FINDMIN) begin
            pos <= pos + 1'd1;
            swap <= (nextJob[pos] < curmin && nextJob[pos] > nextJob[anchor]) ? pos : swap;
            curmin <= (nextJob[pos] < curmin && nextJob[pos] > nextJob[anchor]) ? nextJob[pos] : curmin;
        end
        else if (perm_cs == PERM_SWAP || perm_cs == PERM_REV) begin
            swap <= swap;
            curmin <= curmin;
        end
        else begin
            pos  <= anchor + 1'd1;
            swap <= anchor + 1'd1;
            curmin <= nextJob[pos];
        end
    end

    /// COST_CAL
    always @(negedge CLK or posedge RST) begin
        if (RST) begin
            MinCost <= 10'h3ff;
            CurCost <= 10'd0;
            MatchCount <= 4'd1;
        end
        else if (cost_cs == COST_CAL) begin
            CurCost <= CurCost + Cost;
        end
        else if (cost_cs == COST_CHK) begin
            MinCost <= (CurCost < MinCost) ? CurCost : MinCost;
            MatchCount <= (CurCost < MinCost) ? 4'd1 :
                         (CurCost == MinCost) ? MatchCount + 1'd1 : MatchCount;
            CurCost <= 10'd0;
        end
    end
    always @(negedge CLK or posedge RST) begin
        if (RST)
            W <= 3'd0;
        else if (cost_cs == COST_CAL)
            W <= W + 1'd1;
        else
            W <= 3'd0;
    end
    always @(*) J = Job[W];
endmodule