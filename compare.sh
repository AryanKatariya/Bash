#!/bin/bash

compare(){
	if [ $1 -eq $2 ];then
		echo "$1 is equal to $2"
	elif [ $1 -gt $2 ];then
		echo "$1 is greater then $2"
	else
		echo "$2 is greater then $1"
	fi
}

compare 10 10
compare 100 200
compare 5 1
