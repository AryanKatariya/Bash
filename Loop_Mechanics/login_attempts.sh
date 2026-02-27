#!/bin/bash

stored_password=1234
n=3

while [ $n -ne 0 ]
do
	read -s -p "Passcode: " pass
	if [[ "$pass" == "$stored_password" ]];then
		echo "Access Granted"
		exit 0
	else
		n=$((n-1))
		echo "Attempt Left: $n"
	fi
done

echo "Access Denied. Account Locked."
