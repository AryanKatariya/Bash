#!/bin/bash

var1=5

while [ $var1 -gt 0 ]
do
	for (( var2=0;var2<=2;var2++ ))
	do
		var3=$((var1*var2))
		echo "Inner loop: $var1 * $var2 = $var3"
	done
	var1=$(($var1-1))
done
