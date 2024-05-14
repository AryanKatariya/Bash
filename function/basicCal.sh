#! /bin/bash

calc()
{
	if [ $# -ne 2 ]; then
		echo "You should pass exactly 2 arguments"
	else
		a=$1
		b=$2
		echo "$a+$b = $((a+b))"
		echo "$a-$b = $((a-b))"
		echo "$a*$b = $((a*b))"
		echo "$a/$b = $((a/b))"
		echo
	fi
}
calc 10
calc 20 10
calc 200 100
calc 2000 1000

