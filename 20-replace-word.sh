#!/bin/bash

#  check if correct number of arguments is provided
# if ["$#" -ne 3]; then
#     echo "Usage: $0 <anusha.txt> <hello> <hi>"
#     exit 1

# fi

# Assign input arguments to variables

# FILENAME="file.txt"
# OLD_WORD="hello"
# NEW_WORD="hi"

read -p "Enter the file name : " file
read -p "Enter the old word to be replaced : " old
read -p "Enter the new word to be replaced : " new

# # check if file exists
# if [ ! -f "FILENAME" ]; then
#     echo "Error: File '$FILENAME' not found"
#     exit 1
# fi

# perform the word replacement and save changes in-place
sed -i '/s\b$OLD_WORD\b/$NEW_WORD/g' file.txt

echo "Replaced all occurences of 'old' with 'new' in 'File';"