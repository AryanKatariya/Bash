#Script to append Current Date and Time, Current Month Calander in every .txt File Present in Current Working Directory?

#!/bin/bash

for i in *.txt
	do
	  date >> $i
	  time >> $i
	done
echo "DONE"	
