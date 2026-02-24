#!/bin/bash

# This script iterates over a list of directories (e.g., tight/nvdw/Au3/),
# extracts the total energy from a file named 'au20.out',
# and extracts geometry information from 'geometry.in.next_step'.
# It prints the number of atoms (hardcoded as 4), the energy line,
# and the extracted geometry lines.

# Define the search text for grep
text="Total energy of the DFT / Hartree-Fock s.c.f. calculation"

# Loop through the numbers (currently only 3 is active)
# Uncomment other numbers to include them in the loop.
for i in 3 # 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
    # Check if the directory exists before cd-ing
    if [ -d "tight/nvdw/Au$i/" ]; then
        cd tight/nvdw/Au$i/ || exit

        # Execute commands in a subshell
        (
            echo "4" && \
            grep "$text" Au4/au20.out | sed -e 's/ | /#/; s/eV\n/eV/' && \
            awk ' {getline;getline;getline;for(i=7; i<=11; i++) {getline; print $5, $2, $3,$4}}' Au4/geometry.in.next_step
        )

        # Return to the original directory to ensure subsequent iterations work correctly.
        cd - > /dev/null
    else
        echo "Directory tight/nvdw/Au$i/ does not exist."
    fi

    # Optional/Commented-out code:
    # This block seems to copy geometry files based on data from another file.
    # awk '{print $2 " " $5 }' pools_nvdW/Au$i/data_last_step.txt | grep "0.0, " | sed  -e 's/0.0, //' | xargs -I {}  cp {}/geometry.in.next_step tight/nvdw/Au$i/geometry.in
done
