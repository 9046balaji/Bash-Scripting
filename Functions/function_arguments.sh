#!/bin/bash

a=111
b=111

echo "testing function with parameters"

myfunction() {
 sum=$(($a+$b))
 echo "sum of a and b : $sum " 
}

myfunction a b
