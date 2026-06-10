#!/bin/bash

for ((a=1; a<=3; a++))
do
    echo "Outer: $a"

    for ((b=1; b<=10; b++))
    do
        if [[ $b -eq 5 ]]
        then
            break 2
        fi

        echo "  Inner: $b"
    done
done

echo "Finished"
