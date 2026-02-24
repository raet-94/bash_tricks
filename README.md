# bash_tricks

This repository contains a collection of utility bash scripts for various tasks, including data extraction from simulation outputs, file transfer, and Python environment setup.

## Scripts

### 1. `createxyz.sh`
This script extracts total energy and geometry data from computational chemistry output files (e.g., from DFT/Hartree-Fock calculations).
- **Usage**: Run the script in the parent directory containing the `tight/nvdw/Au<N>` structure.
- **Function**: Iterates through specified directories, extracts the energy from `au20.out`, and geometry from `geometry.in.next_step`.

### 2. `scp_files.sh`
A template script for batch copying files from a remote server using `scp`.
- **Usage**: Edit the script to replace placeholders (`<key>`, `<port>`, `<user>`, `<host>`) with your specific details before running.
- **Function**: Loops through a range of numbers to copy files from a remote `folder<N>` to the local directory.

### 3. `venvspython.sh`
A script to automate the creation of a Python virtual environment.
- **Usage**: Run the script and follow the prompts to enter a name for the environment.
- **Function**: Asks for a name, creates a directory with that name, and initializes a Python virtual environment inside it. It also includes optional (commented-out) code for installing Jupyter Notebook.

## Requirements
- Bash shell (Linux/macOS)
- Standard Unix tools: `grep`, `sed`, `awk`, `scp`
- Python 3 (for `venvspython.sh`)
