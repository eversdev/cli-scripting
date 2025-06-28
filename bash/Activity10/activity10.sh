#!/bin/bash


fileName=$1

numLines=$2


if [ -e "$fileName" ]; then
	echo "File already exists!"
	exit 1
else
	echo "File does not exist"
	touch "$fileName"
	echo "file '$fileName' created"
	for ((i = 1; i <= numLines; i++)); do
		echo "$RANDOM" >> "$fileName"
	done
fi


