#!/bin/bash
#trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
#Here trap command is catching ctrl+c signal.However not exiting the program.
#count=1
#while [ $count -le 10 ];do
#echo "Loop #$count"
#sleep 1
#count=$((count+1))
#done

#trap "echo Goodbye...." EXIT
#Here trap command is catching ctrl+c signal and it exits the program
#count=1
#while [ $count -le 5 ];do
#	echo "Loop #$count"
#	sleep 2
#	count=$((count+1))
#done

#trap "echo 'Sorry ... Ctrl+C is trapped'" SIGINT
#The trap command first sets this as trap for ctrl+c
#count=1
#while [ $count -le 5 ];do
#	echo "Loop #$count"
#	sleep 1
#	count=$((count+1))
#done

#trap "echo 'I modified the trap!'" SIGINT
#The trap gets modified after the first loop is ran
#count=1
#while [ $count -le 5 ];do
#        echo "Second Loop #$count"
#        sleep 1
#        count=$((count+1))
#done

trap "echo ' Sorry... Ctrl-C is trapped.'" SIGINT
count=1
while [ $count -le 5 ]
do
   echo "Loop #$count"
   sleep 1
   count=$[ $count + 1 ]
done
#
# Remove the trap
trap -- SIGINT
echo "I just removed the trap"
#
count=1
while [ $count -le 5 ]
do
   echo "Second Loop #$count"
   sleep 1
   count=$[ $count + 1 ]
done
