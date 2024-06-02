#!/bin/bash

awk '{print $1}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," '{print $2" "$4}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk '{print $2 "--->" $4}' FS="," emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk 'NR==2 || NR==4 {print $0}' FS="," emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," 'NR==1{print $3}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," '$4=="Hyderabad"{print $0}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," '$3>2500{print $0}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," '/ai/{print $0}' emp.csv
echo "++++++++++++++++++++++++++++++++++++++++++"
awk -F "," 'BEGIN{c=0;print "It Begins"}NR!=1{if($3>3000){c++;print$0;}}END{print "The Total Number of Employees where salary > 3000 :" c}' emp.csv
