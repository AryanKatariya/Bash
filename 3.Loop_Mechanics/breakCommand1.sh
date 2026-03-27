#!/bin/bash

# Breaking out of an inner loop
for (( a=1;a<=3;a++ ))
do
	#echo "Outer loop: $a"
	for (( b=1;b<=100;b++ ))
	do
		if [ $b -eq 5 ];then
			break
		fi
		#echo " Inner loop: $b"
	done
done

# Breaking out of an outer loop
echo

for (( a = 1; a < 4; a++ )) 
do 
	echo "Outer loop: $a" 
	for (( b = 1; b < 100; b++ )) 
	do 
		if [ $b -gt 4 ];then 
			break 2
			#break by default breaks out of the current loop (the inner loop in this case).
			#break 2 tells bash to break out of two levels of loops
		fi 
		echo " Inner loop: $b" 
	done 
done
