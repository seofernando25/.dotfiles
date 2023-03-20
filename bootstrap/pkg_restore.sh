#!/bin/bash

# Read and trim each line of yayapps.txt
while IFS= read -r line; do
    # Trim whitespace
    line=$(echo "$line" | xargs)
    # Skip empty lines
    if [ -z "$line" ]; then
        continue
    fi
    # Install app 
    exec yay -S $line
done < yayapps.txt