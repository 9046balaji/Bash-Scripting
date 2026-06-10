
#!/bin/bash

arg1=10
arg2=20

echo "arg1 = $arg1"
echo "arg2 = $arg2"
echo "-------------------"

# Equal
if [[ $arg1 -eq $arg2 ]]; then
    echo "$arg1 is equal to $arg2"
else
    echo "$arg1 is NOT equal to $arg2"
fi

# Not Equal
if [[ $arg1 -ne $arg2 ]]; then
    echo "$arg1 is not equal to $arg2"
else
    echo "$arg1 is equal to $arg2"
fi

# Less Than
if [[ $arg1 -lt $arg2 ]]; then
    echo "$arg1 is less than $arg2"
fi

# Less Than or Equal
if [[ $arg1 -le $arg2 ]]; then
    echo "$arg1 is less than or equal to $arg2"
fi

# Greater Than
if [[ $arg1 -gt $arg2 ]]; then
    echo "$arg1 is greater than $arg2"
else
    echo "$arg1 is NOT greater than $arg2"
fi

# Greater Than or Equal
if [[ $arg1 -ge $arg2 ]]; then
    echo "$arg1 is greater than or equal to $arg2"
else
    echo "$arg1 is NOT greater than or equal to $arg2"
fi



