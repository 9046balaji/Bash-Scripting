#!/bin/bash

echo "set -u stops if any variable is not defined"
echo "the next commands will not run"
echo " "
set -u
echo $username
echo "stopped"
