#!/bin/bash
[[ $# = 2 ]] || { echo hi; exit 1; } 
for file in $(ls *.txt)
do
    if cat $file | head -n$(($1)) | tail -n$(($1)) | grep -q $2
    then
        rm -r $file
    fi  
done
