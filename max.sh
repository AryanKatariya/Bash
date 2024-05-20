#!/bin/bash

max(){
	if [ $1 -gt $2 ]
	then
		echo "$1 is greater then $2"
	else
		echo "$2 is greater then $1"
	fi
}

max 10 20
max 111 888
max 923 156
