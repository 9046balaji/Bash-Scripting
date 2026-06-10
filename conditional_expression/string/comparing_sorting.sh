#!/bin/bash

# Define some words and a filename to test
word1="apple"
word2="banana"
word3="apple"
filename="report_2026.txt"

# 1. Checking if strings match exactly (== and !=)
if [[ "$word1" == "$word3" ]]; then
    echo "word1 and word3 are exactly the same."
fi

if [[ "$word1" != "$word2" ]]; then
    echo "word1 and word2 are different."
fi

# 2. Checking if a string starts with a specific word (Pattern Matching)
# (We don't use quotes around report* so the asterisk acts as a wildcard)
if [[ "$filename" == report* ]]; then
    echo "The file starts with the word 'report'."
fi

# 3. Checking alphabetical order (< and >)
if [[ "$word1" < "$word2" ]]; then
    echo "apple comes before banana in the dictionary."
fi
