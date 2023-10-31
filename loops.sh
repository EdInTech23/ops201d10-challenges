#!/bin/bash

# Script Name:                           Ops Challenge: Class 05
# Aurthor Name :                         Edwin Pretel
# Date of lastest review:                10/26/2023
# Purpose                                loop

# define an array
names=('bob' 'jane' 'mike' 'sarah')
count=4
# for loops
# basic syntax
#for name in ${names[@]} 
#do 
 #  echo $name
#done

# while loop
# basic syntex
while [ $count -gt 0 ]; do
    echo "value of count is: $count"
    count=$(($count -1))
done