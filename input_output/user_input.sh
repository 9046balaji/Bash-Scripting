#!/bin/bash

echo "Enter File Name"
read filename

if [ -e "$filename" ]; then
  echo "$filename exists in the directory"
  cat "$filename"

else
  echo "$filename not found in the direcory"
  touch "$filename"
  echo "file created"
fi
