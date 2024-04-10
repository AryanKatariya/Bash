#!/bin/bash

read -p "Enter a character:" c

case ${c} in
	[aeiouAEIOU])
		echo "It is a vowel"
		;;
	[^aeiouAEIOU])
		echo "It is a consonent"
		;;
	[0-9])
		echo "It is a digti"
		;;
	[^0-9a-zA-Z])
		echo "It is a symbol"
		;;
	*)
		echo "Enter only one character"
		;;
esac
