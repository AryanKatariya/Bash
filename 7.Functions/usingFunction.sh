#!/bin/bash

#function func1 {
#	echo "This is a function"
#}

#count=1
#while [ $count -le 5 ];do
#	func1
#	count=$((count+1))
#done

#echo "This is the end of the loop"
#func1
#echo "Now this is the end of the script"

# 1.2 testing using a duplicate function name
function func1 {
echo "This is the first definition of the function name"
}
func1
function func1 {
   echo "This is a repeat of the same function name"
}
func1
echo "This is the end of the script"
