#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5 6 7 8 9 10
do
if [ $var1 -eq 5 ]
    then
       break
    fi
    echo "Iteration number: $var1"
done
echo "The for loop is completed"

# breaking out of a while loop
echo
echo "breaking out of a while loop"
var1=1
while [ $var1 -lt 10 ]
do
   if [ $var1 -eq 5 ];then
       break
    fi
    echo "Iteration: $var1"
    var1=$[ $var1 + 1 ]
done
