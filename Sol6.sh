#!/bin/bash
# Script:            Ops 201 class 6
# Aurthor            Edwin Pretel
# Date of latest revision: 10/31/2023
# Purpose:           Solution to ops 6 

# Requirements
# Creat a script that detects if a file or directory exists, the creates it if it doesnt exist
# Your Sript must use at least one array one loop and one conditional

# Declare an array - contains list of files
files=(file1.txt file2.txt file3.txt file4.txt)


#  for loop - that does a check for each file in my array
for file in "${files[@]}"
do


    # CONDITIONAL- CHECK IF FILE EXISTS
    # if the file exists then print out a statment telling the user that the file exists
    if [ -f "$file" ]; then
        echo "$file exist."
    
    # Else statement  - catch allother situations
    else 
        # Tell user file doesnt exist
        echo "$file does not exists." 
        # Ask the user if they want to creat it or create it
        touch $file
        echo " The file has been created."
    fi
# Close out our for loop        
done
