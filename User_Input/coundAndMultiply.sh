#!/bin/bash

if [ $# -ne 2 ];then
	echo "Provide 2 number you provided $# number"
elif [[ ! "$1" =~ ^-?[0-9]+(\.[0-9]+)?$ || ! "$2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]];then 
	echo "Provided Input is not number"
else
	#result=$(($1*$2))
	result=$(echo "$1 * $2" | bc)
	echo "Result is $result"
fi
