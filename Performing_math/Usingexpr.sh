#!/bin/bash
#sumSub=$(expr $(expr 5 + 3) - 2)
#echo "(5+3)-2 =" $sumSub
#multi=$(expr 3 \* 5)
#echo "3*5 =" $multi
#divi=$(expr 10 / 3)
#echo "10/3 =" $divi
#multiDivi=$(expr $(expr 10 \* 3) / 5)
#echo "(10X3)/5 =" $multiDivi
#mod=$(expr 10 % 4)
#echo "10%4 =" $mod


######	Write a Bash script that:
######	Takes three numbers as input from the user:
######	a	
######	b
######	c
######	Performs the following calculation using expr:

######	Result=((𝑎+𝑏)×𝑐−𝑎)/𝑏
######	and also find remainder when divided by c

######	So your script must calculate:
######	Addition → a + b
######	Multiplication → (a + b) * c
######	Subtraction → ((a + b) * c) - a
######	Division → above result / b
######	Modulus → above result % c

######	You must use expr
######	Use nested expr at least once
######	Escape *
######	Do not use $(( ))

#read -p "First number: " a
#read -p "Second number: " b
#read -p "Third number: " c

#add=$(expr $a + $b)
#multiple=$(expr ${add} \* $c)
#sub=$(expr ${multiple} - $a)
#divi=$(expr ${sub} / $b)
#mod=$(expr ${divi} % $c)

#result=$(expr $(expr $(expr $(expr $(expr $a + $b) \* $c) - $a) / $b) % $c)

#echo "Result : " $result

######	Write a Bash script that:

######	Takes input:
######	Basic Salary (basic)
######	Bonus Percentage (bonus_percent)
######	Tax Percentage (tax_percent)

######	Calculate the following:
######	Step 1 – Bonus Amount
######	𝑏𝑜𝑛𝑢𝑠=(𝑏𝑎𝑠𝑖𝑐×𝑏𝑜𝑛𝑢𝑠_p𝑒𝑟𝑐𝑒𝑛𝑡)/100

######	Step 2 – Gross Salary
######	𝑔r𝑜𝑠𝑠=𝑏𝑎𝑠𝑖𝑐+𝑏𝑜𝑛𝑢𝑠

######	Step 3 – Tax Amount
######	𝑡𝑎𝑥=(𝑔𝑟𝑜𝑠𝑠×t𝑎𝑥_𝑝𝑒𝑟𝑐𝑒𝑛𝑡)/100

######	Step 4 – Net Salary
######	𝑛𝑒𝑡=𝑔𝑟𝑜𝑠𝑠−𝑡𝑎𝑥

######	Step 5 – Extra Logic (Condition Required)
######	If net % 2 == 0 → print "Net salary is EVEN"
######	Else → print "Net salary is ODD"

#read -p "Basic Salary: " basic
#read -p "Bonus %: " bonus_percent
#read -p "Tax %: " tax_percent

#bonus=$(expr $(expr $basic \* $bonus_percent) / 100)
#gross=$(expr $basic + $bonus)
#tax=$(expr $(expr $gross \* $tax_percent) / 100)
#net=$(expr $gross - $tax)
#logic=$(expr $(expr $net % 2) = 0)

#if [ "$logic" -eq 1 ];then
#	echo "Net salary is EVEN"
#else
#	echo "Net salary is ODD"
#fi


#read -p "Basic Salary: " basic
#read -p "Bonus %: " bonus_percent
#read -p "Tax %: " tax_percent

#bonus=$(expr $(expr $basic \* $bonus_percent) / 100)
#gross=$(expr $basic + $bonus)
#tax=$(expr $(expr $gross \* $tax_percent) / 100)
#net=$(expr $gross - $tax)

#if [ "$net" -gt 50000 ];then
#	incentive=$(expr $(expr $net \* 5) / 100)
#	final_net=$(expr $net + $incentive)
#	echo bonus : $bonus
#	echo Gross Salary : $gross
#	echo tax : $tax
#	echo Net Salary : $net
#	echo Incentive : $incentive
#	echo Final Net Salary : $final_net
#else
#	final_net=$net
#	echo bonus : $bonus
#	echo Gross Salary : $gross
#	echo tax : $tax
#	echo Net Salary : $net
#	echo Final Net Salary : $final_net
#fi

#logic=$(expr $(expr $final_net % 2) = 0)
#
#if [ "$logic" -eq 1 ];then
#       echo "Net salary is EVEN"
#else
#       echo "Net salary is ODD"
#fi

len=$(expr length "Hello World")
echo $len
wordSub=$(expr substr "Hello World" 1 5)
echo $wordSub
same=$(expr "apple" = "apple")
echo $same
differ=$(expr "apple" = "orange")
echo $differ
