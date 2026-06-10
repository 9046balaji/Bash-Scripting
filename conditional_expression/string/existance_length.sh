#!/bin/bash

# Define some basic variables
my_name="Balu"
empty_var=""
# Note: we are leaving 'secret_var' completely uncreated

# 1. Checking if a variable exists (-v)
if [[ -v my_name ]]; then
    echo "my_name variable exists."
fi

if [[ -v secret_var ]]; then
    echo "This won't print."
else
    echo "secret_var does not exist at all."
fi

# 2. Checking if a string is empty (-z)
if [[ -z "$empty_var" ]]; then
    echo "empty_var is completely empty."
fi

# 3. Checking if a string has text inside it (-n)
if [[ -n "$my_name" ]]; then
    echo "my_name has text inside it."
fi
