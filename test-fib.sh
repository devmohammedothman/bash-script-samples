#!/bin/bash

a=$1
b=$2
n=$3
m=$4

echo "$a $b $n $m"

function fib(){
    if [ $1 -le 0 ]; then
        echo 0
    elif [ $1 -eq 1 ]; then
        echo 1
    else
        echo $[`fib $[$1-2]` + `fib $[$1 - 1]` ]
    fi

}

fib $n

