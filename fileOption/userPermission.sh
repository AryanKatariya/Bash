#!/bin/bash

read -p "Enter file name:" fname

r=no
w=no
x=no

if [ -r ${fname} ]
then
	r=yes
fi

if [ -w ${fnamr} ]
then
	w=yes
fi

if [ -x ${fname} ]
then
	x=yes
fi

echo "User Permission"
echo "---------------"
echo "READ:$r"
echo "WRITE:$w"
echo "EXECUTE:$x"

