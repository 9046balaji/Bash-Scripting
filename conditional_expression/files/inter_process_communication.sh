#!/bin/bash

# Target the argument provided, or warn the user
TARGET="${1}"

if [[ -z "$TARGET" ]]; then
    echo "Please provide a file path to check."
    echo "Example: $0 my_pipe"
    exit 1
fi

echo "=================================================="
echo "Checking IPC File Status for: $TARGET"
echo "=================================================="

# 1. Check if it is a named pipe (FIFO)
if [[ -p "$TARGET" ]]; then
    echo "✓ [-p] Success: This is a PIPE (FIFO)."
    echo "       (Used for local one-way communication between processes)."
else
    echo "✗ [-p] Fail: This is NOT a pipe (FIFO)."
fi

# 2. Check if it is a socket
if [[ -S "$TARGET" ]]; then
    echo "✓ [-S] Success: This is a SOCKET."
    echo "       (Used for advanced two-way data streaming, like system daemons)."
else
    echo "✗ [-S] Fail: This is NOT a socket."
fi

echo "=================================================="
