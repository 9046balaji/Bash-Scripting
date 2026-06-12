#!/bin/bash

echo "The read command is used to accept input from the user."

echo "Different options control how the input is handled."

echo


# Normal input
read -p "Enter your name: " NAME

echo "Hello, ${NAME}"

echo


# Silent input (useful for passwords)
read -s -p "Enter your password: " PASSWORD

echo
echo "Password received."

echo


# Read raw input and preserve backslashes
read -r -p "Enter a file path: " PATH_NAME

echo "You entered: ${PATH_NAME}"#!/bin/bash

echo "The read command is used to accept input from the user."

echo "Different options control how the input is handled."

echo


# Normal input
read -p "Enter your name: " NAME

echo "Hello, ${NAME}"

echo


# Silent input (useful for passwords)
read -s -p "Enter your password: " PASSWORD

echo
echo "Password received."

echo


# Read raw input and preserve backslashes
read -r -p "Enter a file path: " PATH_NAME

echo "You entered: ${PATH_NAME}"
