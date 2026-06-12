#!/bin/bash

echo "Bash provides built-in string operations for working with text."

echo "You can get the length of a string, extract substrings,"
echo "replace text, and change the case of characters."

echo

STR="Hello World"

# Get string length
echo "Length: ${#STR}"
# Output: 11

echo

# Extract a substring
echo "Substring (first 5 characters): ${STR:0:5}"
# Output: Hello

echo

# Replace text
echo "Replace 'World' with 'Bash': ${STR/World/Bash}"
# Output: Hello Bash

echo

# Convert to lowercase
echo "Lowercase: ${STR,,}"
# Output: hello world


echo " "

echo "Bash can easily convert strings between uppercase and lowercase."

echo "You can change only the first character or the entire string."

echo " "
str="HELLO WORLD!"

# Lowercase the first character only
echo "${str,}"
# Output: hELLO WORLD!

# Lowercase all characters
echo "${str,,}"
# Output: hello world!

echo

str="hello world!"

# Uppercase the first character only
echo "${str^}"
# Output: Hello world!

# Uppercase all characters
echo "${str^^}"
# Output: HELLO WORLD!
