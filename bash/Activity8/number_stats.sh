#!/bin/bash



#Command line argument user enters a minimum of 5

num1=$1
num2=$2
num3=$3
num4=$4
num5=$5



#Check to ensure a minimum of 5 command line arguments have been entered
if [ $# -lt 5 ]; then
	echo "Minimum requirement is to enter 5 arguments"
	exit 1
elif [ $# -eq 5 ]; then
	while true; do
		read -p "Enter another number or type 'exit': " user_input

		if [ "$user_input" == "exit" ]; then
			exit 0
		else
			echo "A command-line argument was entered"
		fi
	done
fi




#Check to see if the user wants to enter more arguments




#check if all arguments entered are ints








