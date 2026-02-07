// Standard ALU for RISC-V RV32I
module alu #(parameter WIDTH = 32) (
    input  wire [WIDTH-1:0] a, b,
    input  wire [3:0]       alu_ctrl,
    output reg  [WIDTH-1:0] result,
    output wire             zero
);
    always @(*) begin
        case(alu_ctrl)
            4'b0000: result = a & b;       // AND
            4'b0001: result = a | b;       // OR
            4'b0010: result = a + b;       // ADD
            4'b0110: result = a - b;       // SUB
            4'b0111: result = (a < b) ? 1 : 0; // SLT
            4'b1100: result = ~(a | b);    // NOR
            default: result = {WIDTH{1'b0}};
        endcase
    end
    assign zero = (result == {WIDTH{1'b0}});
endmodule
