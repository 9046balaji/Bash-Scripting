#!/bin/bash

echo "without set -o pipeline command"
echo "the grep fails because there i no file.txt"
echo "even though we will see success status"
echo " "

grep hello file.txt | sort
echo $?
