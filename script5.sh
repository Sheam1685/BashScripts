#!/bin/bash
count=1
echo -n "" > output.txt
echo -n "" > error.txt
while bash sample.sh >> output.txt 2> error.txt
do
    ((count++))
done
echo "It took $count attempts to fail."