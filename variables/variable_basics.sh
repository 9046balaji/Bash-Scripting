#!/bin/bash

echo "Using \${VAR} is safer and clearer than using \$VAR."

echo "Braces help Bash understand exactly where the variable name ends."
echo "This prevents bugs when variable names are combined with other text."

NAME="Balaji"

readonly CONST="x"

export NAME


# Correct - Bash expands only the NAME variable
echo "${NAME}_file"
# Output: Balaji_file


# Wrong - Bash looks for a variable named NAME_file
echo "$NAME_file"
# Output: (empty, because NAME_file does not exist)


echo "Name: ${NAME}"
echo "Constant: ${CONST}"


# NAME is exported and available to child processes
bash -c 'echo "Child shell sees: ${NAME}"'
