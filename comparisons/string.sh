#!/bin/bash

str1="Balaji"
str2="Konda"
str3="Balaji"
empty=""

echo " == checks if two strings are exactly identical and prints output only if true"
if [ "$str1" == "$str3" ]; then
    echo "Strings $str1 and $str3 match perfectly"
fi
echo "-----------------"

echo " != checks if two strings are completely different and prints output if true"
if [ "$str1" != "$str2" ]; then
    echo "Strings $str1 and $str2 are not identical"
fi
echo "-----------------"

echo " -n checks if the variable has text inside and is not empty"
if [ -n "$str1" ]; then
    echo "The string variable contains data"
fi
echo "-----------------"

echo " -z checks if the variable is blank or has a length of zero"
if [ -z "$empty" ]; then
    echo "The string variable has no content"
fi
echo "__________________"

