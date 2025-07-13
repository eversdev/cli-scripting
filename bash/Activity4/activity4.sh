#!/bin/bash

#base requirement check to see if input > 8 chars



read -p "Enter password: " password




if [ ${#password} -lt 8 ]; then
	echo "Password requires minium of 8 chars or more!"
	exit 1

elif [[ "$password" =~ [A-Za-z] && "$password" =~ [0-9] ]]; then
       echo "Password is valid."
       exit 0

fi
 
