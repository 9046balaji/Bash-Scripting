#!/bin/bash

# Run a command
mkdir testdir

# Check exit status
if [[ $? -eq 0 ]]; then
    echo "Command executed successfully."
else
    echo "Command failed."
fi
