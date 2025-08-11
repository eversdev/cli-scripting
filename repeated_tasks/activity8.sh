#!/bin/bash


#create an array to store a minimum of 5 command-line arguments


my_array=("$1" "$2" "$3" "$4" "$5")


if [ $# -lt 5 ]; then
	echo "Less than 5 arguments were given"
	exit 1
elif [ $# -eq 5 ]; then
	while [ ${#my_array[@]} -lt 10 ]; do
		read -p "Enter more arguments or type 'exit': " user_input
		if [ "$user_input" == "exit" ]; then
			break
		else
			my_array+=("$user_input")
		fi
	done
fi

sum=0

for i in "${my_array[@]}"; do
	sum=$((sum + i))
done


product=1

for i in "${my_array[@]}"; do
	product=$((product * i))
done


min="${my_array[0]}"
max="${my_array[0]}"

for num in "${my_array[@]}"; do
    if (( num < min )); then
        min=$num
    fi


    if (( num > max )); then
        max=$num
    fi
done








echo "Sum: $sum"
echo "Product: $product"
echo "Min: $min"
echo "Max: $max"


