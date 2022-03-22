#!/bin/bash

if [[ ${#1} -ge 8 && "$1" == *[A-Z]* && "$1" == *[a-z]* && "$1" == *[0-9]* && "$1" == *[@#%"&"'$''='*+-]* ]];then
    echo "Acceptable"
else
    echo "Not"
fi
