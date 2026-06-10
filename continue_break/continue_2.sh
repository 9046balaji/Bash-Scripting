#!/bin/bash

for ((a=1; a<=3; a++))
do
    echo "Outer: $a"

    for ((b=1; b<=5; b++))
    do
        if [[ $b -eq 3 ]]
        then
            continue 2
        fi

        echo "  Inner: $b"
    done
done
