#!/bin/bash

cd ./files

for file in *.txt; do
    file_name=$(basename "$file")

    first_letter=$(echo "$file_name" | cut -c 1)
    
    first_letter_lower=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')
    mv "$file" "../$first_letter_lower"
done

echo "all moved"