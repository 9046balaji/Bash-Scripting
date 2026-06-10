#!/bin/bash

arg1=10
arg2=20

echo "arg1 = $arg1"
echo "arg2 = $arg2"
echo "-------------------"

# AND condition
if [[ $arg1 -gt 5 ]] && [[ $arg2 -lt 30 ]]; then
    echo "AND condition is TRUE"
else
    echo "AND condition is FALSE"
fi

# OR condition
if [[ $arg1 -gt 15 ]] || [[ $arg2 -lt 30 ]]; then
    echo "OR condition is TRUE"
else
    echo "OR condition is FALSE"
fi
