#!/bin/bash

read -p "Enter the first string:" s1
read -p "Enter the second string:" s2

if [ $s1 = $s2 ]
then
	echo "Both strings are equal"
elif [ $s1 \< $s2 ]
then
	echo "${s2} is greater"
else
	echo "${s1} is greater"
fi	
