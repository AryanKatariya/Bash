#! /bin/bash


read -p "Enter any string to find reverse: " str

len=$( echo -n $str | wc -c )
output=""

while [ $len -gt 0 ]
do
 ch=$( echo -n $str | cut -c $len)
 output=$output$ch
 let len--
done

echo "The Original String: $str" 
echo "The Reversed String: $output"
