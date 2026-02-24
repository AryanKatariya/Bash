#!/bin/bash

read -p "Enter the number: " num

if [[ $((num % 3)) -eq 0 && $((num % 5)) -eq 0 ]];then
	echo "$num is divisible by 3 and 5 both"
elif [ $((num % 3)) -eq 0 ];then
	echo "$num is divisible by 3"
elif [ $((num % 5)) -eq 0 ];then
        echo "$num is divisible by 5"
else
	echo "$num Not divisible by 3 or 5"
fi
