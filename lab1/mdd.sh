#!/bin/sh
#mydir=$(pwd)
#FILE=$mydir/$filename
value=1
echo "This program shows information about file"
while [ $value -gt 0 ]
do
        echo "Enter file name:"
        read filename
        FILE=$filename
if test -f "$FILE";
then
        stat $FILE
        echo -e "Would you like to continue? y/n"
read ans
if [ $ans != "y" ]
then exit
        fi
else
        echo "Error. File not found"
        echo "Error. File not found" >>/lab1/grep-errors.txt
echo -e "Would you like to continue? y/n"
read ans
if [ $ans != "y" ]
then exit
fi
fi
done
