#!/bin/bash

user=$(whoami)
if [ $user != "root" ]; then
 echo "$user not root user and hence exiting"
 exit 1
else 
	{	
		echo "The Five Current Running Processes information"
		echo "=============================================="
		ps -ef | head -5
	}
fi
