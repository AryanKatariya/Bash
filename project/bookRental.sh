#!/bin/bash

echo "Welcome to THE BOOK RENTAL APPLICATION" 
echo "############################################"

cost_per_day=30 

read -p "Was Book returned before 9 PM [Y|N]:" ontime
read -p "How many days was book rented:" days_rented
read -p "What day the book was rented
Mon|Tue|Wed|Thu|Fri|Sat|Sun:" day_rented

if ([ $ontime = "N" ] || [ $ontime = "n" ]); then 
	let days_rented=days_rented+1 
fi 

if [ ${day_rented} = "Sun" ];then
	cost=$(echo "${days_rented}*${cost_per_day}*0.5" | bc)
elif [ ${day_rented} = "Sat" ];then
	cost=$(echo "${days_rented}*${cost_per_day}*0.7" | bc)
else
	cost=$(echo "${days_rented}*${cost_per_day}" | bc)
fi

echo "Your final bill is $cost"

original_cost=$[days_rented * cost_per_day] 
discountF=$(echo "$original_cost - $cost" | bc) 
discountI=$(echo "$discountF" | cut -d "." -f1) 
if [ $discountI -gt 0 ]; then 
	echo "Hello, You got Rs $discountF Discount, Enjoy.." 
fi 
echo "Visit Again..."
