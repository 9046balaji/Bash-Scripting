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

echo "to find the number of characters or length of a specific element inside the array"
echo "length of the first element is: ${#array[0]}"
echo "-----------------"

echo "to add or append new elements to the existing array use the += operator"
array+=("F")
echo "array after adding elements: ${array[@]}"
echo "-----------------"

echo "to see all the indexes or keys present in the array use the exclamation mark"
echo "all indexes in the array are: ${!array[@]}"
echo "-----------------"

echo "to remove or delete a specific element from the array use the unset command"
unset array[1]
echo "array after deleting index 1: ${array[@]}"
echo "__________________"
