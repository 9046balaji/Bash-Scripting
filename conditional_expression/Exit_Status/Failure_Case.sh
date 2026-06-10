#!/bin/bash

# Try to read a non-existent file
cat nofile.txt

# Check exit status
if [[ $? -gt 0 ]]; then
    echo "Command failed."
else
    echo "Command executed successfully."
fi
