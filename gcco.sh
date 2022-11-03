#!/bin/sh

# Usage: gcco
# Description: Compiles the last modified file in the current directory if it
# is a C program. The executable's name is the same as the file's name without
# the .c extension.
#
#
# ls separates output by newlines when piped by default
input=$( ls -t | head -n 1 ) 

if [[ $input == *.c ]]
then
    echo $input
    output=$( echo $input | cut -d . -f 1 )
    gcc -o $output $input
else
    echo $input is not a C program
fi
