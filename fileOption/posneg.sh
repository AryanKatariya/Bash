#!/bin/bash

read -p "Enter the number:" n

if [ ${n} -gt 0 ]
then
	echo "Positive"
else
	echo "Negative"
fi
