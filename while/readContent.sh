#!/bin/bash

while [ true ]
do
	read -p "Enter the file name:" fname
	
	if [ -f ${fname} ] 
	then
		echo "The file content is:"
		echo "----------------------------------------------"
		cat ${fname}
	else
		echo "${fname} is not a file"
	
	fi

	read -p "Do you want to display content of different file [Y|N]:" option
	
	case $option in
		[yY])
			continue
			;;
		[nN])
			break
			;;
	esac
done

echo "Thanks for coming"
