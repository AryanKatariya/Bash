#! /bin/bash

while [ true ]
do
 clear
 printf "\n\n\n\n\n\n\t\t\t\t$(date +%H:%M:%S)"
 sleep 1
 h=$(date +%H)
 m=$(date +%M)
 if [ $h -eq 3 -a $m -eq 21 ]; then
 break
 fi
done
