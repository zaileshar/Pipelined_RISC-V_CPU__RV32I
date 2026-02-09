# Pipelined RISC-V CPU (RV32I)

**Status:** 100% Complete 

Project is finished. All modules are implemented and testbenches are passing.

### Completed Modules:
- `{'filename': 'alu.v', 'generate_fn': <function get_riscv_alu at 0x000001BBDDBB8540>, 'description': 'ALU core logic'}`
- `{'filename': 'regfile.v', 'generate_fn': <function get_riscv_regfile at 0x000001BBDDBB85E0>, 'description': '32x32 Register File'}`
- `{'filename': 'imem.v', 'generate_fn': <function get_riscv_imem at 0x000001BBDDBB8680>, 'description': 'Instruction Memory block'}`
- `{'filename': 'dmem.v', 'generate_fn': <function get_riscv_dmem at 0x000001BBDDBB8720>, 'description': 'Data Memory block'}`
- `{'filename': 'decoder.v', 'generate_fn': <function get_riscv_decoder at 0x000001BBDDBB87C0>, 'description': 'Main Instruction Decoder'}`
- `{'filename': 'aludec.v', 'generate_fn': <function get_riscv_aludec at 0x000001BBDDBB8860>, 'description': 'ALU Decoder logic'}`
- `{'filename': 'controller.v', 'generate_fn': <function get_riscv_ctrl at 0x000001BBDDBB8900>, 'description': 'Core Control Unit'}`
- `{'filename': 'riscv_top.v', 'generate_fn': <function get_riscv_top at 0x000001BBDDBB89A0>, 'description': 'Top-level RISC-V CPU connection'}`
- `{'filename': 'tb_riscv_top.v', 'generate_fn': <function get_riscv_tb at 0x000001BBDDBB8A40>, 'description': 'CPU Core Testbench'}`
