#!/bin/bash
#This should take in a file name in the command line argument
#and then see if that file name exists in the directory
#
#$1 will be file name
echo "Entered $1"

FILE=$1

if [ -e $FILE ]; then
        echo "File $FILE exists."
else
        echo "File $FILE does not exist."
fi
