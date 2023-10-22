#!/bin/bash
clear

main () {

input="$1"
output=""
skipping=no
for (( i = 0; i < ${#input}; i++ )); do
  char="${input:$i:1}"
  if [[ $skipping = 'yes' ]] && [[ $char =~ \ |- ]]; then
    skipping=no
  elif [[ $skipping = 'no' ]] && [[ $char =~ [A-Za-z] ]]; then
    output+="${char^^}" # $char with all letters uppercased
    skipping=yes
  fi
done
echo "$output"

}

# call main with all of the positional arguments
main "$@"
