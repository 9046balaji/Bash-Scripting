#!/bin/bash

echo "break tells your bash script to end the loop straight away"
num=1
while [[ $num -lt 10 ]]
do
    if [[ $num -eq 5 ]]
    then
        break
    fi
    ((num++))
done
echo "Loop completed"
