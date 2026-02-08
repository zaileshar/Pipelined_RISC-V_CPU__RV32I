// Control Unit Top
module controller (
    input  wire [6:0] op,
    input  wire [2:0] funct3,
    input  wire       funct7b5,
    input  wire       zero,
    output wire       memtoreg, memwrite,
    output wire       pcsrc, alusrc,
    output wire       regdst, regwrite,
    output wire       jump,
    output wire [3:0] alucontrol
);
    wire [1:0] aluop;
    wire branch;
    
    decoder dec(op, memtoreg, memwrite, branch, alusrc, regwrite, jump, aluop);
    aludec  ad(funct7b5, funct3, aluop, alucontrol);
    
    assign pcsrc = branch & zero | jump;
endmodule
