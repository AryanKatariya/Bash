#!/bin/bash
read -p "Basic Salary: " basic
read -p "Bonus Percentage: " bonus_percent
read -p "Tax Percentage: " tax_percent

bonus=$(( basic * bonus_percent / 100 ))
gross=$((basic+bonus))
tax=$((gross*tax_percent/100))
net=$((gross-tax))

if [ $net -gt 50000 ];then
	incentive=$((net*5/100))
	final_net=$((net+incentive))
else
	final_net=$net
	incentive=0
fi

if [ $((final_net%2)) -eq 0 ];then
	echo "Final Net Salary is EVEN"
else
	echo "Final Net Salary is ODD"
fi
