#!/bin/bash

declare -a nums
read -p "Enter the number of values:" n

for ((i=0,j=1;i<n;i++))
do
	read -p "Enter the number-$[j++]:" nums[${i}]
done

esum=0
osum=0
for val in ${nums[@]}
do
 if [ $[val%2] -eq 0 ]; then
 let esum=esum+val
 else
 let osum=osum+val
 fi
done
echo "The Sum of Even Numbers: $esum" 
echo "The Sum of Odd Numbers: $osum"
