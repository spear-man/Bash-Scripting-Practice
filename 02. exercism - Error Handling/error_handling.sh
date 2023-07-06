#!/bin/bash

main(){

   if [[ $# -eq 1 ]]
    then
        echo "Hello, $1"
    else 
        echo "Hello, ${*} failed" #usage can be writen as its own funct
        exit 1
    fi
}
main "$@"