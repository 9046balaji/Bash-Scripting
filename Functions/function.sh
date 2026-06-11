#!/bin/bash

echo "Functions are a great way to reuse code."
echo " The structure of a function in bash is quite similar to most languages"

echo " "
echo "example 1"

function hello() {
    echo "Hello $1!"
}
hello DevDojo

echo "--------------"
echo " "
echo "example 2"

function hello() {
    echo "Hello World Function!"
}
hello
