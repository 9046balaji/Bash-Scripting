#!/bin/bash

greeting="Hello"

echo "for suppose we want to print Hellos so in print statement we had written like (greetings)"
echo "Without braces, Bash looks for a variable called greetings (not greeting)"
echo "so it dose not find variable greetings it dose not print anything"

echo "-----------"
echo "without braces"
echo "$greetings world"

# Prints: " world" (empty - no such variable)


echo " "
echo "-----------"
echo "With braces, Bash knows the variable name is just greeting "
echo "${greeting}s world"

# Prints: "Hellos world"
