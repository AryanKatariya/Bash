#!/bin/bash

evenCheck(){
	if [ $[$1%2] -eq 0 ];then
		echo "$1 is EVEN"
	else
		echo "$1 is ODD"
	fi		
}

read -p "Enter a Number:" n
evenCheck $n
