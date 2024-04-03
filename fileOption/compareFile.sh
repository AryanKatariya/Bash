#!/bin/bash

read -p "Enter a FIRST file name:" f1
read -p "Enter a SECOND file name:" f2

c=$(cmp ${f1} ${f2})

if [ -z "$c" ]
then
	echo "$f1 and $f2 have same content"
else
	echo "$f1 and $f2 have different content"
fi
