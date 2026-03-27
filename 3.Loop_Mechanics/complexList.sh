#!/bin/bash
 # another example of how not to use the for command
for test in I don't know if this'll work
do
   echo "word:$test"
done

echo
echo "The correct version is"

for test in I don\'t know if "this'll" work
do
    echo "word:$test"
done

# another example of how not to use the for command
echo
for test in Nevada New Hampshire New Mexico New York North Carolina
do
   echo "Now going to $test"
done
# New Hampshire is printed as
# New
# Hampshire
echo
echo "The correct version is"
for test in Nevada "New Hampshire" "New Mexico" "New York"
do
   echo "Now going to $test"
done\
