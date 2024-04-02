#!/bin/bash

read -p "Enter Maths Score:" a
read -p "Enter Physics Score:" b
read -p "Enter Chemistry Score:" c

if [ ${a} -ge "35" -a ${b} -ge "35" -a ${c} -ge "35" ]
then
	echo "Congo! You have passed the exam"
else
	echo "Padhai kr le" 
fi
