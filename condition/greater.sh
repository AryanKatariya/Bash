#!/bin/bash

read -p "Enter number 1:" n1
read -p "Enter number 2:" n2

if [ $n1 -gt $n2 ]
   then
	echo "Greater Number is:$n1"
else
	echo "Greater Number is:$n2"
fi
