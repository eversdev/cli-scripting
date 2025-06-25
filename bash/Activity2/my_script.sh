#!/bin/bash

##Creating variables

#grabbing reference to Directory with all the files
DIR="."

#grabbing reference to todays date
Today="$(date +%Y-%m-%d)"



for file in "$DIR"/*.txt; do
	if [ -f "$file" ]; then
		mv "$file" "$file.$Today"
	fi
done








