#!/bin/bash

n1=$1
n2=$2

while true
do
	echo "1 --> Addition Operation"
	echo "2 --> Subtraction Operation"
	echo "3 --> Multiplication Operation"
	echo "4 --> Division Operation"
	echo "5 --> Exit"
	read -p "Choose Your Option 1|2|3|4|5: " option

	case ${option} in
		1)
			 echo "$n1 + $n2 = $((n1+n2))"
			 ;;
		2)
 			echo "$n1 - $n2 = $((n1-n2))"
			 ;;
 		3)
			 echo "$n1 * $n2 = $((n1*n2))"
			 ;;
		 4)
 			echo "$n1 / $n2 = $((n1/n2))"
			 ;;
		5)
			exit 0
			;; 
 		*)
			 echo "Choose only 1|2|3|4|5. Execute Again"
	esac			
done
