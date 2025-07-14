#!/bin/bash

# Get command-line arguments
a="$1"
b="$2"

# Check if both arguments were provided
if [ -z "$a" ] || [ -z "$b" ]; then
    echo "Error: You must provide two integer arguments."
    echo "Usage: ./activity6v1.sh <num1> <num2>"
    exit 1
fi

# Check if both arguments are valid integers
if [[ ! "$a" =~ ^[0-9]+$ ]] || [[ ! "$b" =~ ^[0-9]+$ ]]; then
    echo "Error: Both inputs must be positive integers (no letters, symbols, or negatives)."
    exit 1
fi

# Convert arguments to integers (not necessary but good practice)
a=$((a))
b=$((b))

# Compare the two numbers
if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b"
    echo "Difference: $((a - b))"
elif [ "$a" -lt "$b" ]; then
    echo "$b is greater than $a"
    echo "Difference: $((b - a))"
else
    echo "Both numbers are equal: $a"
fi



