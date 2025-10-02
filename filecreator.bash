#!/bin/bash
#This should take in a file name in the command line argument
#and then see if that file name exists in the directory
#
#$1 will be file name
echo "Entered $1"

FILE=$1

if [ -e $FILE ]; then
	#file exists, so it must be emptied
	>$FILE	
else
        #file does not exist, so it has to be created
	touch $FILE
fi
