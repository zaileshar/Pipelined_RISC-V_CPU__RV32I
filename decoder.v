// Main Instruction Decoder
module decoder (
    input  wire [6:0] op,
    output reg        memtoreg, memwrite,
    output reg        branch, alusrc,
    output reg        regwrite, jump,
    output reg  [1:0] aluop
);
    always @(*) begin
        case(op)
            7'b0110011: begin // R-type
                regwrite = 1; alusrc = 0; memwrite = 0; memtoreg = 0; branch = 0; jump = 0; aluop = 2'b10;
            end
            7'b0010011: begin // I-type ALU
                regwrite = 1; alusrc = 1; memwrite = 0; memtoreg = 0; branch = 0; jump = 0; aluop = 2'b00; // Need exact in real ALU decoder
            end
            7'b0000011: begin // lw
                regwrite = 1; alusrc = 1; memwrite = 0; memtoreg = 1; branch = 0; jump = 0; aluop = 2'b00;
            end
            7'b0100011: begin // sw
                regwrite = 0; alusrc = 1; memwrite = 1; memtoreg = 0; branch = 0; jump = 0; aluop = 2'b00;
            end
            7'b1100011: begin // beq
                regwrite = 0; alusrc = 0; memwrite = 0; memtoreg = 0; branch = 1; jump = 0; aluop = 2'b01;
            end
            default: begin
                regwrite = 0; alusrc = 0; memwrite = 0; memtoreg = 0; branch = 0; jump = 0; aluop = 2'b00;
            end
        endcase
    end
endmodule
