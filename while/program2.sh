#!/bin/bash

read -p "Enter Limit:" n
i=1

while [ ${i} -le ${n} ] 
do
	echo "${i}"
	sleep ${i}
	let i++
done
