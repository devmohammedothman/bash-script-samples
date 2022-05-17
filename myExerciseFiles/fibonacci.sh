#!/bin/bash

read -p "Please Enter Number to calculate Fibnacci " n 
echo "You Entered $n"

function fib(){
    declare x=$1
    echo x
    if [ $1 -le 0 ]; then
        echo 0
    elif [ $1 -eq 1 ]; then
        echo 1
    else
        echo $[`fib $[$1-2]` + `fib $[$1 - 1]` ]
    fi

}

fib $n