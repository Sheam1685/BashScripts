#!/bin/bash
if [[ $# = 0 ]]
then
    echo -n "usage"
    for file in $(ls)
    do
        if [[ -f $file ]]
        then 
            echo -n " $file"
        fi
    done
    echo ""
else 
    for file in $*
    do 
        if [[ -e $file ]]
        then
        if [[ -f $file ]]
        then 
            if [[ -x $file ]]
            then
                echo "$file is currently executable."
                ls -l $file
                echo "$file's executable permission is now changing."
                chmod a-x $file
                ls -l $file
                echo ""
            else
                echo "$file is currently not executable."
                ls -l $file
                echo ""
            fi
        else
            echo -e "$file is not a regular file."
            ls -l | grep "$file" 
            echo ""
        fi
        else
            echo -e "$file doesn't exist\n" 
        fi
    done
fi
