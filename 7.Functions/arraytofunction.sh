#!/bin/bash

function testit {
   local newarray
   newarray=("$@")  # Correct way to assign passed arguments to an array
   # $@ expands to all arguments, but when enclosed in ("$@"), it correctly stores each argument as an individual array element.
   echo "The new array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit "${myarray[@]}"  # Use @ to correctly pass the array elements
