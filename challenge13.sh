#!/bin/bash

# Install whois on your Ubuntu VM.

# Add to your bash script a sixth option that calls a function to:

# Take a user input string. Presumably the string is a domain name such as Google.com.
echo "Please select a website to receive further information i.e. google.com. You will receive your results in a .txt file."
echo "Results will be saved to $request_file."

read website

# text file output

request_file="${website}.txt"

# Run whois against a user input string.

echo "Running whois, dig, host, and nslookup now. Please enjoy your results" 

whois $website | tee -a "$request_file"

# Run host against the user input string.

dig $website | tee -a "$request_file"

# Run nslookup against the user input string.

nslookup $website | tee -a "$request_file"

# Output the results to a single .txt file and open it with your favorite text editor.

host $website | tee -a "$request_file"

#For this challenge you must use at least one variable and one function.

echo "Your inquiry has been saved to $request_file"

# open the request

xdg-open "$request_File"