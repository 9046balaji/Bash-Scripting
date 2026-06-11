#!/bin/bash

echo "testing set -x debug command"
echo "insted of the entire script we can debug a piece of code"
echo "by using set -x to start and set +x to stop within that only it will debug"
echo " "
echo "Start"

set -x
name="Balaji"
echo $name
set +x

echo "End"
