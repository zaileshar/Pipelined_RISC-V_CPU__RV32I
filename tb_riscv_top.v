// Testbench for RISC-V CPU
`timescale 1ns/1ps

module tb_riscv_top();
    reg clk;
    reg reset;
    wire [31:0] writedata, dataadr;
    wire memwrite;

    riscv_top dut(clk, reset, writedata, dataadr, memwrite);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #20 reset = 0;
        #1000;
        $finish;
    end
endmodule
