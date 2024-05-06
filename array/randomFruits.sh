#!/bin/bash

declare -a fruits
fruits[0]="Apple"
fruits[10]="Orange"
fruits[20]="Banana"
fruits[30]="Mango"

echo "Accessing based on Values:"
for fruit in ${fruits[@]}
do
	echo "${fruit}"
done

echo "Accessing based on indexs:"
for index in ${!fruits[@]}
do
	echo "${fruits[index]}"
done
