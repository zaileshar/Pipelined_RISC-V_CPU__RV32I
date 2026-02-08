// Instruction Memory (ROM)
module imem (
    input  wire [31:0] a,
    output wire [31:0] rd
);
    reg [31:0] rom[63:0];
    
    initial begin
        // Initialize memory 
        // $readmemh("imem.dat", rom);
        rom[0] = 32'h00000000;
    end
    
    assign rd = rom[a[31:2]]; // Word aligned address
endmodule
