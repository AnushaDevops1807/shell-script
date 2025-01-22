#!/bin/bash

 check if correct number of arguments is provided
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 /home/ec2-user/shell-script/file.txt hello hi"
    exit 1

fi

# Assign input arguments to variables

file="file.txt"
OLD_WORD="hello"
NEW_WORD="hi"

file="$1"

# # check if file exists
if [ ! -f "file" ]; then
    echo "Error: File '$file' not found"
    exit 1
fi

# perform the word replacement and save changes in-place
sed -i '/s\b/old\b/new/g' file.txt

echo "Replaced all occurences of 'old' with 'new' in 'File';"