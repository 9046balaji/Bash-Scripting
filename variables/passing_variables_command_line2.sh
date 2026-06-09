#!/bin/bash

echo "passing multiple values at the same time through command line"
echo "./script name and value space value ..... continue as much as we need"

echo " "

echo "Hello there $1"
# $1 : first parameter
echo "Hello there $2"
# $2 : second parameter
echo "Hello there $@"
# $@ : all
