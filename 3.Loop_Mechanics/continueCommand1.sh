#!/bin/bash

#var1=0
#while [ $var1 -lt 15 ]   # Condition to check if var1 is less than 15
#do
#    echo "while iteration: $var1"   # Now print inside the loop, not as the condition

#    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
#    then
#       continue  # Skip the current iteration if var1 is between 6 and 9
#    fi

#    echo "   Inside iteration number: $var1"   # Print inside iteration
#    var1=$(( var1 + 1 ))  # Increment var1
#done

for (( a = 1; a <= 5; a++ ))
do
   echo "Iteration $a:"
   for (( b = 1; b < 3; b++ ))
   do
      if [ $a -gt 2 ] && [ $a -lt 4 ]
      then
         continue 2
      fi
      var3=$[ $a * $b ]
      echo "   The result of $a * $b is $var3"
   done
done
