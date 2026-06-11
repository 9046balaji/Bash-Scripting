#!/bin/bash

echo "without set -e the script continues even if there is error"
echo "with set -e it stops there execution"
echo " "
set -e

mkdir test
cd test123   # fails
echo "Hello"
