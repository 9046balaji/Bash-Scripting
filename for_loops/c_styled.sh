#!/bin/bash


echo "c styled for loop same syntax used in c language "
n=10

for (( i=0 ; i<=n ; i++));
do
   echo "$i"
done


echo " "

echo "using same for testing increment "
for (( i=0 ; i<=n ; i+=2));
do
   echo "$i"
done
