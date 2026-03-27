#!/bin/bash

read -p "Enter a number: " n

for (( i=1;i<=$n;i++ ))
do
	echo "$i"
done

if [ $((n%2)) -ne 0 ];then
	echo "$n is odd"
fi
