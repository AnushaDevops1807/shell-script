#!/bin/bash
# Function to check whether word is palindrome

is_palindrome() {
    local word="$1"
    local reversed="$(echo "$word" | rev)"
    if [[ "$word" == "$reversed" ]]; then
         echo "$word"

    fi
}

# check if the file is provided and exists
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 /home/ec2-user/shell-scirpt/palindrome.txt"
    exit 1
fi

file="$1"

if [[ ! -f "$file" ]]; then
    echo "File not found: $file"
    exit 1
fi

echo "Processing file: $file"

# process the file to find palindromic words
grep -oE '\b\w+\b' "$file" | tr '[:upper:]' '[:lower:]' | while read -r word; do
    is_palindrome "$word"
done | sort -u     
     

 #  grep -oE '\b\w+\b'  --> Extract all the words from the given file.
 #  tr '[:upper:]' '[:lower:]'  ---> Convert upper case to lower case
 #  is_palindrome function : checks if a word is same when reversed
 #  sort -u ---> Ensures that output contains unique palindromic words in  sorted order
 #  Processing file --> Add a debug line in the script to print the file path, This will confirm script is receiving the correct file path