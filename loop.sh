#!/bin/bash

# script name;            opschallenge5
# Author:                  Edwin Pretel
# Date of lates version    10/29/2023
# purpose                  loops

# Declaration of Variabler
variables=2
# main
while variables=1
do
ps aux
echo "Please enter pid to KILL"
read input
kill $input
done
