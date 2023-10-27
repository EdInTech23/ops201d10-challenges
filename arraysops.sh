#!/bin/bash

# Script Name:                           Ops Challenge: Class 04
# Aurthor Name :                         Edwin Pretel
# Date of lastest review:                10/26/2023
# Purpose                                Arrays 


# Create directories
mkdir dir1 dir2 dir3 dir4

# Store directory names in an array
directories=("dir1" "dir2" "dir3" "dir4")

# Loop through the array and create .txt files
for dir in "${directories[@]}"; do
    touch "$dir/$dir.txt"
    echo "Created $dir/$dir.txt"
done