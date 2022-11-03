#!/bin/sh

# Usage: ctemp filename.c
# Description: Light template for C programs. Opens file in vim


if [ "$#" = 1 ]
then
    file="$1"
    date=$(date +"%d/%m/%y")
    touch $file

    echo "/*"  >> $file
    echo Author: Luigi Di Paolo >> $file
    echo Date: $date>> $file
    echo Description: >> $file
    echo "*/" >> $file
    echo  >> $file
    echo // Includes >> $file
    echo "#include<stdio.h>" >> $file
    echo  >> $file
    echo  >> $file
    echo // Prototypes >> $file
    echo  >> $file
    echo  >> $file
    echo "/*"  >> $file
    echo Function: main >> $file
    echo Description: >> $file
    echo "*/" >> $file
    echo "int main(int argc, char *argv[]) {" >> $file
    echo "    return 0;" >> $file
    echo } >> $file
    echo  >> $file
    echo  >> $file
    echo "/*"  >> $file
    echo Function: >> $file
    echo Arguments: >> $file
    echo Return value: >> $file
    echo Description: >> $file
    echo "*/" >> $file

    vim $file
else
    echo "Wrong number of arguments given"
fi
