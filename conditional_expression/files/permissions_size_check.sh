#!/bin/bash

# Target the file passed as an argument, or default to this script itself
TARGET="${1:-$0}"

echo "=================================================="
echo "Checking Permissions & Size for: $TARGET"
echo "=================================================="

# First, ensure the file exists so the permission checks are meaningful
if [[ ! -e "$TARGET" ]]; then
    echo "Error: $TARGET does not exist. Cannot check permissions."
    exit 1
fi

# 1. Check if the file is readable
if [[ -r "$TARGET" ]]; then
    echo "✓ [-r] Success: File is READABLE by the current user."
else
    echo "✗ [-r] Fail: File is NOT readable."
fi

# 2. Check if the file is writable
if [[ -w "$TARGET" ]]; then
    echo "✓ [-w] Success: File is WRITABLE by the current user."
else
    echo "✗ [-w] Fail: File is NOT writable."
fi

# 3. Check if the file is executable
if [[ -x "$TARGET" ]]; then
    echo "✓ [-x] Success: File is EXECUTABLE."
else
    echo "✗ [-x] Fail: File is NOT executable."
fi

# 4. Check if the file has a size greater than zero (is not empty)
if [[ -s "$TARGET" ]]; then
    echo "✓ [-s] Success: File has data (Size is greater than 0 bytes)."
else
    echo "✗ [-s] Fail: File is EMPTY (0 bytes)."
fi

echo "=================================================="
