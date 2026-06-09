#!/bin/bash
text="ABCDE"
echo "string sclicing"
echo " "
echo "string : $text"

echo " "

echo "Extract from index 0, maximum 2 characters"
echo "${text:0:2}" 
echo " "

echo " Extract from index 3 to the end"
echo "${text:3}"    
echo " "

echo " Extract 3 characters starting from index 1"
echo "${text:1:3}"  
echo " "

echo "If length exceeds remaining characters, it stops at the end"
echo "${text:3:3}"  
echo "Output: DE (only 2 characters available)"
echo " "

text2="Hello, World!"

echo "second text : $text2"
echo "Extract 5 characters starting from index 7"
echo "${text2:7:5}" 
echo " "

echo "Attempt to extract 10 characters starting from index 7 (even though only 6 characters remain)"
echo "${text2:7:10}" 
