#!/bin/bash

#  check if correct number of arguments is provided
# if ["$#" -ne 3]; then
#     echo "Usage: $0 <anusha.txt> <hello> <hi>"
#     exit 1

# fi

# Assign input arguments to variables

FILENAME="file"
OLD_WORD="hello"
NEW_WORD="hi"

# check if file exists
if [ ! -f "FILENAME" ]; then
    echo "Error: File '$FILENAME' not found"
    exit 1
fi

# perform the word replacement and save changes in-place
sed -i "/s\b$OLD_WORD\b/$NEW_WORD/g" "$FILENAME"

echo "Replaced all occurences of '$OLD_WORD' with '$NEW_WORD' in 'FILENAME';"