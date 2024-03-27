#Script to Read File Name from the End User and 
#Remove Blank Lines Present in that File?

#! /bin/bash
read -p "Enter any File name to remove blank lines:" fname
grep -v "^$" $fname > temp.txt
mv temp.txt $fname
echo "In $fname all blank lines deleted"
