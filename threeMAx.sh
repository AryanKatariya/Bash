#!/bin/bash

function max(){
	if [ $1 -gt $2 -a $1 -gt $3 ]
	then
		echo "$1 is greastest of all"
	elif [ $2 -gt $3 ]
	then
		echo "$2 is grestest of all"
	else
		echo "$3 is grestest of all"
	fi	
}

max 10 20 30
max 777 999 888
