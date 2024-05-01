#! /bin/bash

read -p "Enter Any Number to test whether it is prime or not:" n

if [ $n -le 1 ]; then
 echo "$n is not a PRIME number"
 exit 1
fi
for ((i=2;i<=n/2;i++))
do
 if [ $[n%i] -eq 0 ]; then 
 echo "$n is not PRIME number"
 exit 1
 fi
done

echo "$n is a PRIME number"
