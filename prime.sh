#!/bin/bash

prime(){
	n=$1
	if [ $n -le 1 ];then
		echo "$n is not a prime number"
	else
		is_prime="yes"
		for ((i=2;i<n;i++))
		do
		  if [ $[n%i] -eq 0 ];then
			  echo "$n is not a prime number"
			  is_prime="no"
			  break
		  fi
		done
      		if [ ${is_prime} = "yes" ];then
			echo "$n is a prime number"
		fi
	fi		
}

read -p "Enter a number:" n
prime $n
