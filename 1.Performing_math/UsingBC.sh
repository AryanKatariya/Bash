#!/bin/bash

read -p "Basic Salary: " basic
read -p "Bonus %: " bonus_percent
read -p "Tax %: " tax_percent

bonus=$(echo "$basic * $bonus_percent / 100" | bc )
gross=$(echo "$basic + $bonus" | bc)
tax=$(echo "$gross * $tax_percent / 100" | bc)
net=$(echo "$gross - $tax" | bc)

if [ "$net" -gt 50000 ];then
	incentive=$(echo "$net * 5 / 100" | bc)
	final_net=$(echo "$net + $incentive" | bc)
else
	final_net=$net
fi

rem=$(echo "$final_net % 2" | bc)

if [ "$rem" -eq 0 ];then
	echo "Final Net Salary is EVEN"
else
	echo "Final Net Salary is ODD"
fi
