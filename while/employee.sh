#!/bin/bash

while [ true ]
do
	read -p "Employee Number:" a
	read -p "Employee Name:" b
	read -p "Employee Salary:" c
	read -p "Employee age:" d

	echo "$a:$b:$c:$d" >> emp.txt
	echo "Employee Record Inserted Successfully"

	read -p  "Do you want to enter a new field[y|n]:" option
	case $option in
		[yY])
			continue
			;;
		[nN])
			break
			;;
		*)
			echo "Error"
			;;
	esac
done
echo "Open emp.txt to see all employees information"
