#!/bin/bash

a=10
b=20
c=10

echo " -eq prints output only if the numbers are equal"
if [ "$a" -eq "$c" ]; then
    echo "$a and $c are equal"
fi
echo "-----------------"

echo " -ne prints output when numbers are not equal"
if [ "$a" -ne "$b" ]; then
    echo "$a and $b are not equal"
fi
echo "-----------------"

echo " -gt checks if the first number is strictly greater than the second number"
if [ "$b" -gt "$a" ]; then
    echo "$b is greater than $a"
fi
echo "-----------------"

echo " -ge checks if a number is greater than or equal to another number"
if [ "$b" -ge 20 ]; then
    echo "$b is greater than or equal to 20"
fi
if [ "$a" -ge "$c" ]; then
    echo "$a is greater than or equal to $c"
fi
echo "-----------------"

echo " -lt checks if the first number is strictly less than the second number"
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi
echo "-----------------"

echo " -le checks if a number is less than or equal to another number"
if [ "$a" -le 10 ]; then
    echo "$a is less than or equal to 10"
fi
if [ "$a" -le "$b" ]; then
    echo "$a is less than or equal to $b"
fi
echo "__________________"
