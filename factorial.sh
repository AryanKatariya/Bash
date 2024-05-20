#!/bin/bash

factorial(){

	orginial=$1
	fact=1
	r=$n

	while [ $r -gt 1 ]
	do
		let fact=fact*$r
		let r=$r-1
	done
	echo "The factorial of $original is:$fact"
}

read -p "Enter a number:" n
factorial $n
