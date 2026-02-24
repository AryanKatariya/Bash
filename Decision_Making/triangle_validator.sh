#!/bin/bash

read -p "Enter side 1:" a
read -p "Enter side 2:" b
read -p "Enter side 3:" c

sum1=$((a+b))
sum2=$((b+c))
sum3=$((a+c))

if [[ $sum1 -le $c || $sum2 -le $a || $sum3 -le $b ]];then
        echo "Not a valid triangle"
else
	if [[ $a -eq $b && $b -eq $c && $c -eq $a ]];then
		echo "Equilateral Triangle"
	elif [[ $a -eq $b || $b -eq $c || $c -eq $a ]];then
        	echo "Isosceles Triangle"	
	else
		echo "Scalene Triangle"
	fi
fi
