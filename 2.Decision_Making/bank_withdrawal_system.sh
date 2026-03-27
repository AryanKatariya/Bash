#!/bin/bash

read -p "Account balance: " balance
read -p "Withdrawal amount: " withdrawal
code=1234

if [ $withdrawal -le 0 ];then
	echo "Invalid withdrawal amount"
	exit 1
elif [ $withdrawal -gt $balance ];then
	echo "Insufficient funds"
	exit 0
elif [ $withdrawal -gt 10000 ];then
	echo "2% fee on withdrawal amount"
	#fee=$(((withdrawal*2)/100))
	#total_deduction=$((withdrawal+fee))
	if [ $withdrawal -gt 50000 ];then
		fee=$(((withdrawal*2)/100))
        	total_deduction=$((withdrawal+fee))
		echo "Manager approval required"
		read -p "Enter manager approval code:" ClientCode
		if [ $ClientCode -eq $code ];then
			echo "Approval granted"
			balance=$((balance-total_deduction))
			echo "Remaining Balance: $balance"
		else
			echo "Invalid Code! Sorry withdrawal failed"
			exit 0
		fi
	else
		fee=$(((withdrawal*2)/100))
        	total_deduction=$((withdrawal+fee))
		balance=$((balance-total_deduction))
		echo "Remaining Balance: $balance"
	fi
else
	balance=$((balance-withdrawal))
        echo "Remaining Balance: $balance"
fi

if [ $balance -lt 1000 ];then
	echo "Low balance (< 1000)"
elif [[ $balance -ge 1000 && $balance -le 100000 ]];then
        echo "Healthy"
else
	echo "Premium (> 100000)"
fi
