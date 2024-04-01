#! /bin/bash

read -p "Enter First Number:" a
read -p "Enter Second Number:" b

sum=$( echo $a+$b | bc)
echo "The Sum:$sum"

echo "The Difference: $( echo $a-$b | bc)"

echo "The Product: $( echo $a*$b | bc)"
