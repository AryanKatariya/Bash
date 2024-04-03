#!/bin/bash

read -p "Enter file name:" fname

if [ -e $fname ] 
then
	echo "file exists"
else
	echo "file doesn't exists"
fi
