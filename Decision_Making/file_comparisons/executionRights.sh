#!/bin/bash
# testing file execution
#
if [ -x writeRights.sh ]
then
   echo "You can run the script: "
   ./writeRights.sh
else
   echo "Sorry, you are unable to execute the script"
fi
