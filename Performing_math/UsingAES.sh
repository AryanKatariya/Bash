#!/bin/bash

read -p "Basic Salary: " basic
read -p "Bonus %: " bonus_percent
read -p "Tax %: " tax_percent

(( bonus = basic * bonus_percent / 100 ))
(( gross = basic + bonus ))
(( tax = gross * tax_percent / 100 ))
(( net = gross - tax ))

if (( net > 50000 )); then
    (( incentive = net * 5 / 100 ))
    (( final_net = net + incentive ))
else
    incentive=0
    final_net=$net
fi

echo "Final Net Salary: $final_net"

if (( final_net % 2 == 0 )); then
    echo "Final Net Salary is EVEN"
else
    echo "Final Net Salary is ODD"
fi
