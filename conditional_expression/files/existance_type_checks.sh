#!/bin/bash

# Check if a target argument was provided; default to the script itself if not
TARGET="${1:-$0}"

echo "=================================================="
echo "Analyzing target: $TARGET"
echo "=================================================="

# 1. Check if it exists (Modern standard)
if [[ -e "$TARGET" ]]; then
    echo "✓ [-e] Success: The target exists."
else
    echo "✗ [-e] Fail: The target does not exist."
fi

# 2. Check if it exists (Legacy syntax)
if [[ -a "$TARGET" ]]; then
    echo "✓ [-a] Success: The target exists (Legacy check)."
else
    echo "✗ [-a] Fail: The target does not exist (Legacy check)."
fi

# 3. Check if it is a regular file
if [[ -f "$TARGET" ]]; then
    echo "✓ [-f] Success: This is a regular file."
else
    echo "✗ [-f] Fail: This is not a regular file."
fi

# 4. Check if it is a directory
if [[ -d "$TARGET" ]]; then
    echo "✓ [-d] Success: This is a directory."
else
    echo "✗ [-d] Fail: This is not a directory."
fi

# 5. Check if it is a symbolic link
if [[ -h "$TARGET" ]]; then
    echo "✓ [-h] Success: This is a symbolic link."
else
    echo "✗ [-h] Fail: This is not a symbolic link."
fi

# 6. Check if it is a symbolic link (Alternative operator)
if [[ -L "$TARGET" ]]; then
    echo "✓ [-L] Success: This is a symbolic link (Verified via -L)."
else
    echo "✗ [-L] Fail: This is not a symbolic link (Verified via -L)."
fi

echo "=================================================="
