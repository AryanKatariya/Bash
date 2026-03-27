#!/bin/bash

read -p "First Number: " first
read -p "Second Number: " second
read -p "Third Number: " third

if [[ $first -eq $second && $second -eq $third ]]; then
    echo "All three numbers are equal"
    #exit
elif [[ $first -eq $second || $second -eq $third || $first -eq $third ]]; then
    echo "Two numbers are equal"
    #exit
fi


if [[ $first -ge $second && $first -ge $third ]];then
	largest=$first
elif [[ $second -ge $first && $second -ge $third ]];then
        largest=$second
elif [[ $third -ge $second && $third -ge $first ]];then
        largest=$third
fi


if [[ $first -le $second && $first -le $third ]];then
        smallest=$first
elif [[ $second -le $first && $second -le $third ]];then
        smallest=$second
elif [[ $third -le $second && $third -le $first ]];then
        smallest=$third
fi

echo "Largest : $largest"
echo "smallest : $smallest"
