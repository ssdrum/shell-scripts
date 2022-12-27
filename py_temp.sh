#!/bin/sh

# Usage: pytemp filename.c
# Description: Barebones template for python3 programs. Opens file in neovim


if [ "$#" = 1 ]
then
    file="$1"
    touch $file

    echo "#!/usr/bin/env python3" >> $file
    echo >> $file
    echo >> $file
    echo "def main():" >> $file
    echo "    return 0" >> $file
    echo >> $file
    echo >> $file
    echo "if __name__ == '__main__':" >> $file
    echo "    main()" >> $file

    nvim $file
else
    echo "Wrong number of arguments given"
fi
