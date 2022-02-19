#!/bin/bash
# Ask the user for their name
echo What\'s the name of the venv?
read varname

echo Creatring $varname directory
mkdir $varname
cd $varname
python3 -m venv $varname

# yes="y" 

# echo "Do you want jupyter notebook? y/n"
# read  answerjup

# if ["$answerjup" == "$yes"];then
# 	echo Installing jupyter notebook 
# 	pip install jupyter notebook
# fi 
echo "Ready for now" 


# if [ "$VAR1" = "$VAR2" ]; then
#     echo "Strings are equal."
# else
#     echo "Strings are not equal."
# fi


