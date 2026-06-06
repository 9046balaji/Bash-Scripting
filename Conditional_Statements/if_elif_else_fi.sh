#!/bin/bash

age=11

if [ "$age" -ge 18 ]; then
  echo "You are eligible for vote"
elif [ "$age" -ge 13 ]; then
  echo "you are a teenager not eligible for vote"
else
  echo "you are child"
fi
