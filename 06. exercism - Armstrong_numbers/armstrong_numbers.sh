#!/bin/bash
clear

while read -n 1 digit
do
    let squaresum+=digit**${#1}
done <<< "$1"

if (( $1 == $squaresum ))
then
    echo "true"
else
    echo "false"
fi
