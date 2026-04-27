# ALU Implementation in Verilog

## Overview
An Arithmetic Logic Unit (ALU) is a fundamental component in digital systems that performs arithmetic and logical operations. This project implements a fully functional ALU in Verilog HDL, capable of executing multiple operations on input operands. The ALU serves as the computational core in processors and microcontrollers, making it an essential building block for any digital design.

## Features
✓ **Arithmetic Operations**: ADD, SUB  
✓ **Logical Operations**: AND, OR, XOR, NOT  
✓ **Modular Verilog Design**: Clean, scalable architecture  
✓ **Simulation Verified**: Comprehensive testbench with expected outputs  
✓ **Industry-Standard Tools**: Compatible with Xilinx Vivado  

## Tools & Technologies
- **Hardware Description Language**: Verilog HDL
- **Simulation & Synthesis**: Xilinx Vivado
- **Design Methodology**: Structural and behavioral modeling

## Project Structure
```
Implementation-of-ALU/
│
├── src/                          # Verilog design files
│   ├── ALU.v                     # Main ALU module
│   ├── ALU_controller.v          # Control logic
│   └── adder.v                   # Arithmetic components
│
├── tb/                           # Testbench files
│   └── ALU_tb.v                  # ALU testbench
│
├── sim/                          # Simulation outputs
│   ├── waveforms/                # VCD waveform files
│   └── logs/                     # Simulation logs
│
├── docs/                         # Documentation
│   ├── ALU_schematic.png         # Block diagram
│   └── operation_codes.md        # Operation reference
│
├── README.md                     # This file
└── .gitignore                    # Git ignore rules
```

## How to Run (Vivado Simulation)

### Step 1: Open Vivado
Launch Xilinx Vivado on your system.

### Step 2: Create New Project
- File → New Project
- Choose RTL Project
- Add sources from `src/` directory

### Step 3: Add Testbench
- Right-click on design sources → Add Sources
- Select `tb/ALU_tb.v`

### Step 4: Run Simulation
- Simulation → Run Simulation
- View waveforms in the Wave window
- Verify outputs match expected results

### Step 5: Analyze Results
- Check signal transitions in the waveform viewer
- Verify all operation codes produce correct outputs
- Review timing and delays

## ALU Operation Codes

| Operation | Code | Description |
|-----------|------|-------------|
| ADD       | 0000 | Addition |
| SUB       | 0001 | Subtraction |
| AND       | 0010 | Bitwise AND |
| OR        | 0011 | Bitwise OR |
| XOR       | 0100 | Bitwise XOR |
| NOT       | 0101 | Bitwise NOT |
| NAND      | 0110 | Bitwise NAND |
| NOR       | 0111 | Bitwise NOR |

## Results
The ALU has been verified through comprehensive simulation:
- ✓ All arithmetic operations produce correct sums and differences
- ✓ All logical operations execute as specified
- ✓ Output flags (Zero, Carry, Overflow) function correctly
- ✓ Timing constraints satisfied for target FPGA

## Future Improvements
- 🔹 **Parameterized Bit-Width**: Make ALU configurable for 8, 16, 32, or 64-bit operations
- 🔹 **FPGA Implementation**: Deploy on real hardware (Artix-7, Zynq)
- 🔹 **Enhanced Operations**: Add multiplication and division support
- 🔹 **Pipelining**: Implement multi-stage pipeline for increased throughput
- 🔹 **Power Optimization**: Reduce dynamic and static power consumption

## Getting Started
1. Clone this repository: `git clone https://github.com/ArjunYadav-sys/Implementation-of-ALU.git`
2. Navigate to project directory: `cd Implementation-of-ALU`
3. Open Vivado and follow "How to Run" section above
4. Explore the testbench to understand expected behavior

## Author
Arjun Yadav

## License
This project is open source and available under the MIT License.

---
*Professional portfolio project demonstrating digital design fundamentals using Verilog and Vivado.*