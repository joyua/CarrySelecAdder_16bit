# 16-bit Carry Select Adder (CSA) Verification Project

This project implements a 16-bit Carry Select Adder in Verilog and verifies its correctness using Python by testing all possible input cases (2^33 combinations of A[15:0], B[15:0], and CIN).

## 🔧 Files

- `rtl/csa_16bit.v`: Verilog HDL description of the CSA
- `py/csa_verification.py`: Python script that verifies correctness across 2^33 input combinations
- `sim/result_summary.txt`: Output showing verification result (e.g., "All matched")
- `test_vector/input_cases.txt`: (optional) sampled test inputs

## 📐 Verification Logic

For each combination of:
- A: 16-bit unsigned input
- B: 16-bit unsigned input
- CIN: 1-bit carry-in

The Python script computes the expected SUM and COUT using integer arithmetic and compares with Verilog simulation result.

## 💡 Tools Used

- Python 3.x
- Verilog simulator (e.g., ModelSim, Icarus Verilog)
- Cadence Virtuoso for post-layout design (not included here)

## 🧠 Purpose

This project validates the correctness of a CSA designed in Cadence Virtuoso by cross-verifying its behavior against a Python golden model, exhaustively checking 2^33 input cases.

## 👤 Author

- JOYUA 
