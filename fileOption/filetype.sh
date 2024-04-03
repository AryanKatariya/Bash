#!/bin/bash

read -p "Enter a file name:" fname

if [ -e ${fname} ] 
then
	if [ -f ${fname} ]
	then
		echo "It is a regular file."
	elif [ -d ${fname} ]
	then
		echo "It is a directory file."
	else
		echo "It is a special file."
	fi
else
	echo "file does not exists"
fi
