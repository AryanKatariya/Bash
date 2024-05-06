#!/bin/bash
declare -a fruits
fruits=("Apple" "Orange" "Banana" "Mango")
size=${#fruits[@]}
i=0

echo "All elements by using while loop:"
while [ $i -lt $size ]
do
    echo "${fruits[$i]}"
    let i++
done

echo "All elements by using for loop:"
for fruit in "${fruits[@]}"
do
    echo "$fruit"
done

echo "All elements by using advanced for loop:"
for (( i=0; i < ${#fruits[@]}; i++ ))
do
 echo ${fruits[$i]}
done
