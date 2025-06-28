#!/bin/bash





fileName=$1

if [ -e "$fileName" ]; then
	echo "File already exists"
	exit 1
else
	touch "$fileName"
	echo "File Created"
fi


