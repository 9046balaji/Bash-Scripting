#!/bin/bash

a=5
b=5
echo " now a and b are defined as outside the function so they are global variables"

global() {
 sum=$(($a+$b))
 var="Balaji"
 echo " sum of $a and $b is : $sum"
 echo " my name is $var"
}

global 
echo variable var is declared inside the function without local keyword so it becomes gloabl variable"
echo "if we defined the global varibale no need to pass that variables also since they are global "
echo "the compliler takes directly the vaaiables"

echo "---------------------"

echo "local variables are defined using the name local key word"

local_var() {
 local sum=$(($1+$2))
 echo "sum of $1 and $2 is : $sum "
}

local_var 3 5

echo "------------------------"

echo "for suppose if we had not defined variables outside function and we used then in the inside function"
echo "bash treats that variables as 0 "
echo "in this senario the $c and $d they are empty so expression colapses to $((+)) so + need sum arguments"
echo "so it throws operand expected error"
echo "unlike $1 and $2 the variables dose not take variables as input"

global_not_define() {
 sum=$(($c+$d))
 echo " sum of $c and $d: $sum"
}

global_not_define 3 4

echo "--------------------"

variables() {
 sum=$(($1+$2))

echo "sum of $1 and $2 is: $sum "
}

variables 4 6

echo "when we pass numbers direct in function without using variables and in function we can use $1,$2 like this"
echo "the order we pass the way take number wise"

