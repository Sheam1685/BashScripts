#!/bin/bash
cpp_to_c(){
    for file in *
    do
        if [[ -d $file ]]
        then
            echo "Accessing Directory $file"
            cd $file
            echo -n "Current Directory: "
            pwd
            cpp_to_c 
        elif [[ $file == *".cpp" ]]
        then
            temp=${file: 0 : -3}c
            echo "Changing file name from $file to $temp"
            mv $file $temp
        fi
    done
    cd ..
}
cpp_to_c
cd ~-