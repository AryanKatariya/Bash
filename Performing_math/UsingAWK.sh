#!/bin/bash

read -p "Basic Salary: " basic
read -p "Bonus %: " bonus_percent
read -p "Tax %: " tax_percent

bonus=$(awk "BEGIN { print $basic * $bonus_percent / 100 }")
gross=$(awk "BEGIN { print $basic + $bonus }")
tax=$(awk "BEGIN { print $gross * $tax_percent / 100 }")
net=$(awk "BEGIN { print $gross - $tax }")

if [ "$net" -gt 50000 ]; then
    incentive=$(awk "BEGIN { print $net * 5 / 100 }")
    final_net=$(awk "BEGIN { print $net + $incentive }")
else
    incentive=0
    final_net=$net
fi

rem=$(awk "BEGIN { print $final_net % 2 }")

if [ "$rem" -eq 0 ]; then
    echo "Final Net Salary is EVEN"
else
    echo "Final Net Salary is ODD"
fi
