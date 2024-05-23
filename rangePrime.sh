#!/bin/bash

prime(){
        n=$1
        is_prime="yes"
        for ((i=2;i<n;i++))
        do
        	if [ $[n%i] -eq 0 ];then
                	is_prime="no"
			break
                fi
        done
        if [ ${is_prime} = "yes" ];then
        	echo $n
        fi
}

read -p "Enter a number:" l

for i in {2..${l}}
do
	echo $i
done

