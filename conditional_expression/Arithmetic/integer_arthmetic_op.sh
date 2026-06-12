#!/bin/bash

echo "Bash supports integer arithmetic using arithmetic expansion."

echo "You can perform calculations, increment variables, and assign results."

echo "For floating-point calculations, use the bc command."

echo

x=10
y=5

# Arithmetic expansion
echo "x + y * 2 = $(( x + y * 2 ))"
# Output: 20

echo

# Increment x
(( x++ ))
echo "After x++ : ${x}"
# Output: 11

echo

# Assign arithmetic result
let y=x*3
echo "y = ${y}"
# Output: 33

echo

# Floating-point arithmetic with bc
echo "10 / 3 = $(bc <<< "scale=4; 10/3")"
# Output: 3.3333
