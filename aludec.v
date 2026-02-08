// ALU Decoder
module aludec (
    input  wire       funct7b5,
    input  wire [2:0] funct3,
    input  wire [1:0] aluop,
    output reg  [3:0] alucontrol
);
    always @(*) begin
        case(aluop)
            2'b00: alucontrol = 4'b0010; // add (for lw/sw/addi)
            2'b01: alucontrol = 4'b0110; // sub (for beq)
            2'b10: case(funct3)
                3'b000: if (funct7b5) alucontrol = 4'b0110; // sub
                        else         alucontrol = 4'b0010; // add
                3'b010: alucontrol = 4'b0111; // slt
                3'b110: alucontrol = 4'b0001; // or
                3'b111: alucontrol = 4'b0000; // and
                default: alucontrol = 4'b0000;
            endcase
            default: alucontrol = 4'b0000;
        endcase
    end
endmodule
