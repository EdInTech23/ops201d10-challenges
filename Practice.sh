#!/bin/bash

# Script Name:                           Variables and function review
# Aurthor Name :                         Edwin Pretel
# Date of lastest review:                10/26/2023
# Purpose

# Declare variables

num1=25
num2=5


# Declare function
add_some_numbers() {
sum=$(($num1 + $num2))
echo $sum
}

# Main
# Call the function
add_some_numbers