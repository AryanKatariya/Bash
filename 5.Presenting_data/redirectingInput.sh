#!/bin/bash
# redirecting file input
if [[ ! -f "testfile" ]]; then
    echo "Error: testfile does not exist!"
    exit 1
fi

exec 0< testfile
count=1
while read line
do
   echo "Line #$count: $line"
   count=$[ $count + 1 ]
done
