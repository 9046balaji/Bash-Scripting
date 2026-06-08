#!/bin/bash

echo "Array Based For Loop"

s=( "Konda" "Balaji" "Rao" )

for i in ${s[@]};
do 
   echo "$i"
done
