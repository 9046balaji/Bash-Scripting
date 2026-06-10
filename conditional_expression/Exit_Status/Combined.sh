#!/bin/bash

ls /etc

if [[ $? -eq 0 ]]; then
    echo "ls command succeeded"
else
    echo "ls command failed"
fi

cat missing_file.txt

if [[ $? -gt 0 ]]; then
    echo "cat command failed"
else
    echo "cat command succeeded"
fi
