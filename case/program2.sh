#!/bin/bash

read -p "Enter any character to check:" c

case ${c} in
	[a-zA-Z])
		echo "It is an alphabet symbol"
		;;
	[0-9])
		echo "It is a digit"
		;;
	[^a-zA-z0-9])
		echo "It is a special symbol"
		;;
	*)
		echo "Provide only one character"
		;;

esac

