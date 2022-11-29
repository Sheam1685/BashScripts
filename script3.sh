#!/bin/bash
for file in *
do
    if [[ $file == *[0-9]* && -f $file ]]
    then
        echo "$file is being removed"
        rm $file
        echo -e "$file is removed\n"
    fi
done