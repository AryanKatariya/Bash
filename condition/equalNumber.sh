#!/bin/bash

read -p "Enter a number:" n1
read -p "Enter another number:" n2

if [ $n1 -eq $n2 ]
then
	echo "Both number are equal"
elif [ $n1 -gt $n2 ]
then
	echo "The Greater number is:${n1}"
else
	echo "The Greater number is:${n2}"
fi	
