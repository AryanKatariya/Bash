#!/bin/bash

read -p "Enter the file/directory name:" fname

if [ -e ${fname} ]
then
	rm -r ${fname}
else
	echo "$fname dosen't exists"
fi
