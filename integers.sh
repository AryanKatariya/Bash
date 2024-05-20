#!/bin/bash

pos_neg(){
	if [ $1 -gt 0 ];then
		echo "$1 is a positive number"
	else
		echo "$1 is a negative number"
	fi
}

read -p "Enter a number:" n
pos_neg $n
