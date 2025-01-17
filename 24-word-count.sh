#!/bin/bash

#check if file is provided as an argument
if [ $# -eq 0 ]; then
   echo "Usage: $0 <filename>"
   exit 1
fi

#File to process

FILE=$1

#Check if file exists or not
if [ ! -f "$FILE" ]; then
   echo "File not found: $FILE"
   exit 1
fi

tr '[:upper:]' '[:lower:]' < "$FILE" | \
tr -c '[:alnum:]' '[\n*]' | \ 
sort | \
uniq -c | \
sort -nr | \
head -n 10  