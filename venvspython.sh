#!/bin/bash

# This script creates a new directory and initializes a Python virtual environment inside it.
# It prompts the user for a name, which is used for both the directory and the virtual environment.

echo "What's the name of the venv?"
read varname

echo "Creating $varname directory..."
mkdir "$varname"
cd "$varname" || exit

# Create the virtual environment
# Note: This creates a venv directory named '$varname' inside the '$varname' directory.
# Structure: ./$varname/$varname/
python3 -m venv "$varname"

# Optional: Install Jupyter Notebook
# Uncomment the following lines if you want to install Jupyter Notebook in the virtual environment.
# Make sure to activate the environment first or use the venv's pip directly.
# (e.g., ./$varname/bin/pip install jupyter notebook)

# yes="y"
# echo "Do you want jupyter notebook? y/n"
# read answerjup
#
# if [ "$answerjup" == "$yes" ]; then
#     echo "Installing jupyter notebook..."
#     # Activate the venv to install packages into it
#     source "$varname/bin/activate"
#     pip install jupyter notebook
# fi

echo "Ready for now."
