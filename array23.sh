#!/bin/bash

# Script Name:                           Ops Challenge: Class 04
# Aurthor Name :                         Edwin Pretel
# Date of lastest review:                10/26/2023
# Purpose  

# New directories 

directory=(./path ./path/dir1 ./path/dir2 ./path/dir3 ./path/dir4)

# print directory
echo ${directory[*]}
touch ${directory[0]}
touch ${directory[1]}
touch ${directory[2]}
touch ${directory[3]}
touch ${directory[4]}