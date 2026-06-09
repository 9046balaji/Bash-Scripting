#!/bin/bash

echo "You should always wrap variable references in double quotes ("$name")."

echo " Without quotes, Bash will perform word splitting and globbing on the variable's value"
echo "which leads to bugs and even security vulnerabilities"

filename="my file.txt"


# Wrong - Bash splits this into two words: "my" and "file.txt"
touch $filename
# Creates two files: "my" and "file.txt"


# Correct - the quotes preserve the value as a single argument
touch "$filename"  # Creates one file: "my file.txt

