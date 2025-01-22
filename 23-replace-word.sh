#!/bin/bash

#check if correct number of arguments is provided
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 /home/ec2-user/shell-script/file.txt hello hi"
    exit 1

fi

# Assign input arguments to variables

# file="file.txt"
# OLD_WORD="hello"
# NEW_WORD="hi"

FILE="$1"
OLD_WORD="$2"
NEW_WORD="$3"
# # check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found"
    exit 1
fi

echo "Processing file: $file"

# perform the word replacement and save changes in-place
sed -i '/s\b/old\b/new/g' $file

echo "Replaced all occurences of 'old' with 'new' in 'file';"