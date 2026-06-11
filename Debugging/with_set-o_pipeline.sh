#!/bin/bash
echo "with set -o pipeline"


set -o pipefail
echo "Searching..."

grep "hello" missing_file.txt | sort

echo $?
