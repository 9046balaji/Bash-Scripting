#!/bin/bash

echo "function name overides the default echo command "
echo "builtin key word ensures oroginal echo command is still used"

echo() {
 builtin echo "My Name is $1"

}

echo "Konda Balaji Rao"
