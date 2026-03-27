#!/bin/bash

echo -n "Enter name: "  #  -n : This suppresses the newline character at the end of the string, allowing the script user to enter data immediately after the string, instead of on the next line.
read name
echo "Hello,$name welcome"

read -p "Please enter your age: " age
days=$((age * 365))
echo "That makes you over $days days old! "

read -p "Enter your name: " first last
echo "Checking data for $last, $first…"

read -p "Enter your name: "
echo
echo Hello $REPLY, welcome to my program.

if read -t 5 -p "Please enter your name: " name
then
	echo "Hello $name, welcome to my script"
else
	echo
	echo "Sorry, to slow!"
fi

read -n1 -p "Do you want to continue [Y/N]? " answer
case $answer in
Y | y) echo
       echo "fine, continue on…";;
N | n) echo
       echo OK, goodbye
       exit;;
esac
echo "This is the end of the script"

read -s -p "Enter your password: " pass
echo
echo "Is your password really $pass? "


