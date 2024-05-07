#!/bin/bash

file=($(ls *.txt))
for f in ${file[@]}
do
	echo -ne "$f:\t"
 	if [ -r $f ]; then
		 echo -ne "READ(Y)\t"
 	else
 		echo -ne "READ(N)\t"
 	fi
 	if [ -w $f ]; then
 		echo -ne "WRITE(Y)\t"
 	else
 		echo -ne "WRITE(N)\t"
 	fi
 	if [ -x $f ]; then
 		echo "EXECUTE(Y)"
 	else
 		echo "EXECUTE(N)"
 	fi
done
