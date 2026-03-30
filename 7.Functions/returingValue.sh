#!/bin/bash
# 2.1 default exit status 
func1(){
	echo "trying to display a non-existent file"
	ls -l badfile
}

echo "testing the function: "
func1
echo "The exit status is: $?"

# 2.2 using the return command in a function

function db1 {
	read -p "Enter a value: " value
	echo "doubling the value"
	return $((value*2))
}

db1
echo "The exit status is: $?"

# 2.3  Using the echo to return a value
function dbl {
   read -p "Enter a value: " value
   echo $(($value * 2))
}
result=$(dbl)
echo "The new value is $result"
