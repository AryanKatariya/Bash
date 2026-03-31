#!/bin/bash

# 4.2 returning an array value

function arraydblr {
local origarray
local newarray
local elements
local i

#origarray=($(echo "$@"))
#newarray=($(echo "$@"))
origarray=("$@")
newarray=("$@")

elements=$(($#-1))
for ((i=0;i<=$elements;i++))
{
	newarray[$i]=$((${newarray[$i]}*2))
}
echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
result=($(arraydblr "${myarray[@]}"))
echo "The new array is: ${result[*]}"
