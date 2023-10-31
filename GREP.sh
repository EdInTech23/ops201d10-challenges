#!/bin/bash

# Display Cpu information
echo  "CPU Information:"
lshw | grep -A 9 "CPU"

# Display RAM information
echo   "RAM Information:"
lshw | grep -A 4 "*-memory"

# Display Display adapter information
echo  "Display Adapter Information:"
lshw | grep -A 12 "display"

# Display Network adapter information
echo "Network Adapter Information:"
lshw | grep -A 16 "network"

# Name of the computer 
echo "Computer Name"
lshw | grep "ip="