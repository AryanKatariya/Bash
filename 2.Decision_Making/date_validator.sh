#!/bin/bash

read -p "Enter day(dd): " day

if [[ $day -le 0 || $day -gt 31 ]];then
	echo "INVALID DAY"
	exit 1
fi

read -p "Enter month(mm): " month
if [[ $month -le 0 || $month -gt 12 ]];then
        echo "INVALID MONTH"
        exit 1
fi

read -p "Enter year(yyyy): " year
len=$(expr length $year)
if [ $len -ne 4 ];then
        echo "INVALID YEAR"
        exit 1
elif [ $((year%400)) -eq 0 ] || { [ $((year%4)) -eq 0 ] && [ $((year%100)) -ne 0 ]; };then
        echo "Leap Year"
        leapy=1
else
        echo "Not a Leap Year"
        leapy=0
fi

if [[ $month -eq 1 || $month -eq 3 || $month -eq 5 || $month -eq 7 || $month -eq 8 || $month -eq 10 || $month -eq 12 ]];then
	if [ $day -gt 31 ];then
		echo "INVALID DAY"
        	exit 1
	fi
elif [[ $month -eq 4 || $month -eq 6 || $month -eq 9 || $month -eq 11 ]];then
        if [ $day -gt 30 ];then
                echo "INVALID DAY"
                exit 1
	fi
elif [ $month -eq 2 ];then
	if [ $leapy -eq 1 ];then
		if [ $day -gt 29 ];then
		       echo "INVALID DAY"
                       exit 1
		fi
	else
		if [ $day -gt 28 ];then
                       echo "INVALID DAY"
                       exit 1
                fi
	fi
fi

echo "VALID"

if [ "$month" -eq 12 ] || [ "$month" -eq 1 ] || [ "$month" -eq 2 ]; then
    echo "Winter"
elif [ "$month" -eq 3 ] || [ "$month" -eq 4 ] || [ "$month" -eq 5 ]; then
    echo "Spring"
elif [ "$month" -eq 6 ] || [ "$month" -eq 7 ] || [ "$month" -eq 8 ]; then
    echo "Summer"
else
    echo "Autumn"
fi
