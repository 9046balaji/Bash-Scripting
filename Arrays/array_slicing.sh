#!/bin/bash

array=("Balaji" "Konda" "Rao" "Guntur" "DevOps" "AWS")

echo "${array[@]}"

echo "to print a specific range of elements by specifying the starting index and total length"
echo "${array[@]:1:3}"
echo "-----------------"

echo "to slice from a specific starting index all the way to the end of the array"
echo "${array[@]:3}"
echo "-----------------"

echo "to slice elements counting backwards from the end of the array use a space before the minus sign"
echo "${array[@]: -3}"
echo "-----------------"

echo "to count backwards from the end of the array but specify a limited length of elements to return"
echo "${array[@]: -4:2}"
echo "-----------------"

echo "to slice character by character from a specific individual element inside the array instead of skipping items"
echo "${array[0]:0:4}"
echo "-----------------"

echo "for suppose we want to slice dynamically we can pass variables as the index offset and length"
start=2
len=3
echo "${array[@]:$start:$len}"
echo "__________________"
