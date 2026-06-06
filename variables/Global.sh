#!/bin/bash

a=5
b=10

cal_sum(){
  sum=$(($a+$b))
  echo "sum of a and b: $sum"
}

cal_sum $a $b
