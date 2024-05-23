#!/bin/bash

factorial(){

        original=$1
        fact=1
        r=$1

        while [ $r -gt 1 ]
        do
                let fact=fact*$r
                let r=$r-1
        done
        echo "The factorial of $original is:$fact"
}

for i in {1..10}
do
	factorial $i
done
