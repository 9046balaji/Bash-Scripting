#!/bin/bash
counter=1

echo "while loop demonstration"

while [[ $counter -le 10 ]]
do
    echo "$counter"
    ((counter++))
done
