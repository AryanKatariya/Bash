#!/bin/bash

printPara(){
	if [ $# -eq 0 ]
	then
		echo "No parameter provided"
	else
		echo "Parameter are:"
		echo "++++++++++++++++++++++++++++++++++++++++"
		for p in $@
		do
			echo "${p}"
		done
	fi
}

printPara
printPara A B C D
