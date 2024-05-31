#!/bin/bash

awk 'BEGIN{print "Beginning of the File";print"------------------";c=0;}{print 
$0;c=c+1;}END{print ".........................";print "The Number Of Lines:" c}' input.txt

awk 'BEGIN{print "Beginning of the File";print" ------------------ ";c=0;}{c=c+1;print c": "$0;}END{print ".........................";print "The Number Of Lines:"c}' input.txt
