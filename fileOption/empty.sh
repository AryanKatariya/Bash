#!/bin/bash

read -p "Enter the file name:" fname

if [ -e ${fname} ] 
then
	if [ -f ${fname} ] 
	then
		if [ -s ${fname} ]
		then
			echo "File is not empty!"
		else
			echo "File is empty!"
		fi
	else
		echo "It is not a regular file"
	fi
else
	echo "file doesn't exists"
fi
	
