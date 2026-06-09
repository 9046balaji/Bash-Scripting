#!/bin/bash

arr=("value 1" "value 2" "value 3" "value 4")

echo "any element we can access directly using index number within the array size"
echo "${arr[1]}"
echo " "

echo "last element of array"
echo "${arr[-1]}"
echo " "

echo "to display all elements in array"
echo "${arr[@]}"
echo " "

echo "size of the array"
echo "${#arr[@]}"
