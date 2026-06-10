#!/bin/bash

# Target the argument provided, or default to /dev/null (a character device)
TARGET="${1:-/dev/null}"

echo "=================================================="
echo "Checking Special Device Status for: $TARGET"
echo "=================================================="

# 1. Check if it is a block special file
if [[ -b "$TARGET" ]]; then
    echo "✓ [-b] Success: This is a BLOCK special file."
    echo "       (Data is moved in buffered blocks, like a hard drive or USB drive)."
else
    echo "✗ [-b] Fail: This is NOT a block special file."
fi

# 2. Check if it is a character special file
if [[ -c "$TARGET" ]]; then
    echo "✓ [-c] Success: This is a CHARACTER special file."
    echo "       (Data is streamed unbuffered character-by-character, like a terminal or /dev/null)."
else
    echo "✗ [-c] Fail: This is NOT a character special file."
fi

echo "=================================================="
