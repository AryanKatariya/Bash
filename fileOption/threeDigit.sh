#!/bin/bash

read -p "Enter the number:" n

if [ ${n} -ge 100 -a ${n} -le 999 ]
then
	echo "$n Digit is three digit"
else
	echo "chal be"
fi
