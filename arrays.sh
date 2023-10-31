#!/bin/bash

# Script Name:                           Arrays 101
# Aurthor Name :                         Edwin Pretel
# Date of lastest review:                10/26/2023
# Purpose                                learn about arrays 

# Define variables
price_per_apple=5

# Define arrays
grocery_list=(apple banana orange onion)

# Print out entire grocery list
#echo ${grocery_list[*]}

# THIS IS A FUNDAMENTAL IDEA OF COMPUTEING 
# print out the first item of the list
# To get the right item subtract by 1 

#echo ${grocery_list[0]}

# appened a new item to the list 
new_snack='monster'
grocery_list+=($new_snack)
#echo ${grocery_list[*]}

# add monster as second item to list
#grocery_list[1]+=$new_snack
#echo ${grocery_list[*]}


# print out the total number of items on the list 
# adding the pound sign to front give item count 
#echo ${#grocery_list[@]}


# print out the last item 
echo ${grocery_list[${#grocery_list[@]}-1]}