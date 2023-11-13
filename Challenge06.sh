#!/bin/bash

# Array of file or directory names
files_and_directories=("full_text.txt" "my_documents")

# Loop through each file or directory in the array
for item in "${files_and_directories[@]}"; do
    # Check if the file or directory exists
    if [ -e "$item" ]; then
        echo "$item already exists."
    else
        # If it doesn't exist, create it
        if [[ "$item" == *.* ]]; then
            touch "$item"  # Create an empty file
            echo "Created file: $item"
        else
            mkdir "$item"  # Create a directory
            echo "Created directory: $item"
        fi
    fi
done
