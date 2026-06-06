#!/bin/bash

total=100

echo "using export so that child script can use"
export total


./Global_Child.sh
