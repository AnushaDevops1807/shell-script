#!/bin/bash
# Function to check whether word is palindrome

is_palindrome() {
    local word="$1"
    local reversed="${echo "$word" | rev}"
    if [[ "$word" == "$reversed" ]]; then
         echo "$word"

    fi
}

# check if the file is provided and exists
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <path-to-text-file>"
    exit 1
fi

if [[ ! -f "$file"]]; then
    echo "File not found: $file"
    exit 1
fi

# process the file to find palindromic words
grep -oE '\b\w+\b' "$file" | tr '[:upper:]' '[:lower:]' | while read -r word; do
    is_palindrome "$word"
done | sort -u     
     