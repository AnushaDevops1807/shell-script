#!/bin/bash

#check if correct number of arguments is provided
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 file.txt hello hi"
    exit 1

fi

# Assign input arguments to variables

file="$1"
old="$2"
new="$3"

# # check if file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file"
    exit 1
fi

echo "Processing file: $file"

# perform the word replacement and save changes in-place
sed -i "s/\b$old\b/$new/g" "$file"

echo "Replaced all occurences of '$old' with '$new' in '$file'."


 # Processing file --> Add a debug line in the script to print the file path, This will confirm script is receiving the correct file path