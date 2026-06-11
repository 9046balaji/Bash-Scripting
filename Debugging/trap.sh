#!/bin/bash

echo "it shows where a script failed like (Failed at Line 5) "
echo " "

trap 'echo "Failed at line $LINENO"' ERR

cp file1 file2
rm file_not_exist



