#!/bin/sh

# NAME
#      gcco - compiles last modified c program 
#
# SYNOPSIS
#      gcco [-e]
#
# DESCRIPTION
#      gcco compiles the last modified file in the current directory if it
#      is a C program. The executable's name is the same as the file's name without
#      the .c extension.
#
# The options are as follows:
#
# -e      Executes compiled program


# ls separates output by newlines when piped by default
input=$( ls -t | head -n 1 ) 

if [ $input == *.c ]
then
    echo $input
    output=$( echo $input | cut -d . -f 1 )
    gcc -o $output $input

    if [ $1 == "-e" ]
    then
        ./$output
    fi
else
    echo $input is not a C program
fi
