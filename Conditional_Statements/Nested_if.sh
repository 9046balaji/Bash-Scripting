#!/bin/bash

is_mounted=true
usage_percentage=90

if [ "$is_mounted" = true ]; then
  echo "Disk is mounted. Checking Storage ..."
    if [ "$usage_percentage" -ge 90 ]; then
	echo "Dick usage is high"
    elif [ "$usage_percentage" -ge 75 ]; then
	echo "Disk usage is at 75 percentage"
    else
	echo "Disk usage is Normal"
    fi
else
  echo "error Disk is not mounted"
fi
