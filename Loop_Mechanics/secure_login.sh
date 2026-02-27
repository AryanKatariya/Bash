#!/bin/bash

stored_password=1234
n=3
reset="admin"

while [ $n -ne 0 ]
do
	read -s -p "Passcode: " pass
	echo
	if [[ "$pass" == "$stored_password" ]];then
		echo "Access Granted"
		exit 0
	else
		n=$((n-1))
		echo "Attempt Left: $n"
	fi
done

echo "Access Denied."
echo "Your account has been locked"
echo "Answer this security question to reset account"
read -p "Who is the best? " ans

if [[ "$ans" == "$reset" ]];then
	echo "Account Unlocked"
	n=3
	while [ $n -ne 0 ]
	do
        	read -s -p "Passcode: " pass
        	echo
        	if [[ "$pass" == "$stored_password" ]];then
                	echo "Access Granted"
                	exit 0
        	else
                	n=$((n-1))
                	echo "Attempt Left: $n"
       		fi
	done
	echo "Account locked permanently"
else
	echo "Account locked permanently"
fi
