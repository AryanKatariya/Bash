#!/bin/bash

read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

if [ $a -gt $b -a $a -gt $c ]
then
	echo "${a} is the greatest of all"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo "${b} is the greatest of all"
else
	echo "${c} is the greatest of all"
fi	
