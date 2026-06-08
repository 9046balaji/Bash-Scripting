#!/bin/bash

a=3
b=5
myfunction() {

 return $(($1+$2))
}

myfunction a b

echo the retun value is $?
