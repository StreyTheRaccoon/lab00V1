#!/bin/sh
#
#Strey DuBose FALL 2025 CS420 lab00
#
#This shell takes in a file name in the command line argument
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

#looping through all of the $FILE's directory
for files in `ls -a ./*`
do 
	echo $files >> $FILE #for each file found, add it to the $FILE
done

cat $FILE #prints out the $FILE
