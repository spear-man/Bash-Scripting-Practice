#!/bin/bash

input="$1"
output="true"

for i in {a..z}
do
        echo "$input" | tr "A-Z" "a-z" | grep -qi $i || { output="false"; break; }
done

echo $output


#test : ./pangram.sh "The abc quick brown fox jumps over the pp lazy dog"
#output = true