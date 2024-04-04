#!/bin/bash

read -p "Enter any stirng:" str

if [ -z $str ]
then
	echo "Provided string is empty"
else
	{
		echo "Provided string is not empty"
		echo "Lenght of the string:$(echo -n  ${str} | wc -c)"
	}
fi
