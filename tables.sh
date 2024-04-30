#! /bin/bash

read -p "Enter n value:" n
for ((i=1; i<=10; i++))
do
 echo "$n * $i = $[n*i]"
done
