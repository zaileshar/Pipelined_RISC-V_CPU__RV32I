// RISC-V Single-Cycle Top
module riscv_top (
    input wire clk, reset,
    output wire [31:0] writedata, dataadr,
    output wire memwrite
);
    wire [31:0] pc, instr, readdata;
    
    // Processor inst
    // Here we'd hook up pc, instructions, memories, and controller
    // For now this summarizes the top-level ports
    
    imem im(pc, instr);
    dmem dm(clk, memwrite, dataadr, writedata, readdata);
    
    // Actual datapath/controller instantiation would go here
endmodule
