# HDL_RISCV-PYNQ-Z2_PROJECT

## Overview
This repository contains our final HDL project for implementing and validating a pipelined RISC-V softcore processor on the PYNQ-Z2 FPGA board. The project moves beyond simulation-only testing by using a hardware-in-the-loop workflow in which the ARM Processing System (PS) on the PYNQ-Z2 loads the FPGA design, writes instructions and data into BRAM, releases reset, waits for execution to finish, and verifies the hardware result automatically.

The implemented demonstration program sorts exactly 32 signed integers stored in data memory. When execution is complete, the RISC-V core writes the magic value `0xCAFEBABE` to a dedicated DONE location in memory so that the Python verification notebook can detect completion and check the sorted output.

## Project Objective
The goal of this project is to deploy a pipelined RISC-V processor on real FPGA hardware and verify its functionality through PS–PL interaction on the PYNQ-Z2 platform. The project combines RTL design, Vivado block design integration, assembly programming, BRAM-based memory access, and Python-based automated verification.

## Hardware Architecture
The Vivado block design contains the following main components:

- ZYNQ7 Processing System
- Processor System Reset
- AXI SmartConnect
- AXI GPIO
- AXI BRAM Controller for Instruction BRAM
- AXI BRAM Controller for Data BRAM
- Two Block Memory Generators
- Custom `riscv_bram_wrapper_0` IP

The custom RISC-V wrapper connects to separate instruction and data BRAM interfaces and is controlled by clock, reset, and run signals from the surrounding system.

## Verification Flow
The verification flow used in this project is:

1. Check that all required runtime files are present.
2. Load the generated FPGA bitstream on the PYNQ-Z2.
3. Read the overlay metadata and initialize addressable hardware blocks.
4. Create MMIO access objects for instruction memory, reset GPIO, and data memory.
5. Load the compiled machine-code program from HEX format.
6. Write the instruction words into Instruction BRAM.
7. Verify instruction BRAM by reading the words back.
8. Write a 32-element test array into Data BRAM.
9. Clear the DONE flag before execution starts.
10. Release reset and start the RISC-V processor.
11. Poll the DONE location until the magic value `0xCAFEBABE` is detected.
12. Read back the resulting array from Data BRAM.
13. Compare the hardware result against the expected sorted output produced in Python.

This workflow allows the hardware to be tested in a repeatable and automated manner without relying only on a traditional Verilog testbench.

## Verified Results
The included verification notebook demonstrates that:

- detection of required project files before execution,
- successful loading of the FPGA bitstream,
- successful creation of MMIO objects for the mapped hardware regions,
- read/write verification for both Data BRAM and Instruction BRAM,
- machine-code program injection and readback verification,
- correct reset handling and execution start,
- successful detection of the DONE flag value `0xCAFEBABE`,
- correct sorting of a reverse-order 32-element integer array,
- correct sorting of a signed 32-element test array containing negative values, duplicates, zero, and positive values.

The notebook therefore confirms that the PS-to-PL control path, BRAM access path, program execution path, and result verification path all work correctly on hardware.
## Repository Structure
The repository is organized as follows:

- `Hardware_Design_RTL/`  
  Contains RTL source and simulation-related files for the RISC-V hardware design.  
  Observed files include:
  - `mc_h.v`
  - `program.hex`
  - `tb.v`
  - `testbench.v`

- `Software_Assembly/`  
  Contains the RISC-V assembly source for the sorting program.  
  Observed file:
  - `test_sort.s`

- `Verification_Script/`  
  Contains the PYNQ Jupyter notebook used for automated hardware verification.  
  Main file:
  - `verify.ipynb`

- `project_gp/`  
  Contains Vivado project files and generated design data.

- `pic/`  
  Contains screenshots and supporting images used for documentation and presentation.

- `axi_bram_bd.pdf`  
  Exported block design PDF of the hardware system.

- `README.md`  
  Repository introduction and project summary.

## Important Project Files
The project uses the following key files during implementation and verification:

- `design.bit` – generated FPGA bitstream
- `design.hwh` – hardware handoff file for PYNQ
- `testsort.hex` – compiled machine-code program used by the notebook
- `test_sort.s` – assembly source code
- `verify.ipynb` – automated verification notebook

## Address Map
The verification notebook uses these MMIO base addresses:

- `0x40000000` – Instruction BRAM
- `0x41200000` – Reset GPIO
- `0x42000000` – Data BRAM

These addresses are used by the PS to inject instructions, control processor execution, and read back computed results.

## Platform and Tools
- **Board:** PYNQ-Z2
- **Design Environment:** Vivado
- **Verification Environment:** PYNQ Python / Jupyter Notebook
- **Processor Type:** Pipelined RISC-V softcore
- **Task:** Sorting 32 signed integers in hardware

## Contributors
- Saumilkumar savani(go69jal@mytum.de)
- ZAnimenI(animenl.lin@tum.de)
