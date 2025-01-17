#!/bin/bash

#check if file is provided as an argument
if [ $# -eq 0 ]; then
   echo "Usage: $0 <filename>"
   exit 1
fi

#File to process

FILE=$1

#Check if file exists or not
if [ ! -f "$FILE"]: then
   echo "File not found: $FILE"
   exit 1
fi

# 1. Count occurences of each word
# 2. Replace non-alphanumeric characters with spaces
# 3. Split into words (one per line).
# 4. Sort words alphabetically.
# 5. Count occurences with 'uniq -c'.
# 6. Sort by frequency in descending order
# 7. Display the top 10 words.
tr '[:upper:]' '[:lower:]' < "$FILE" | \
tr -c '[:alnum:]' '[\n*]' | \
sort | \
uniq -c | \
sort -nr | \
head -n 10