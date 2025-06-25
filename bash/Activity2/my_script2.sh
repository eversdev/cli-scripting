#!/bin/bash

DIR="."

for file in "$DIR"/*.txt.*; do
    if [ -f "$file" ]; then
        # Remove the date suffix after .txt
        newname="${file%.*}"
        mv "$file" "$newname"
    fi
done
