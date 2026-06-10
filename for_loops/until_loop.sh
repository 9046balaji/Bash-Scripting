#!/bin/bash

echo "until loop example"

count=1
until [[ $count -gt 10 ]]
do
echo "$count"
    ((count++))
done
