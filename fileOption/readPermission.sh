#!/bin/bash

read -p "Enter the file name:" fname

if [ -e ${fname} ]
then
	if [ -f ${fname} ]
	then
		if [ -r ${fname} ]
		then
			cat ${fname}
		else
			echo "No Read Permission"
		fi
	else
		echo "It is not a regular file!"
	fi
else
	echo "file does not exists"
fi
