#!/bin/bash

echo "Enter Numbers: "
read x
read y

echo "Select operation : "
echo "1. Sum"
echo "2. Subtraction"
echo "3. Multiply"
echo "4. Divide"

read op

case $op in
    1)res=$(echo $x+$y | bc);ch='+';;
    2)res=$(echo $x-$y | bc);ch='-';;
    3)res=$(echo $x*$y | bc);ch='*';;
    4)res=$(scale=2; echo $x/$y | bc);ch='/';;
    *)echo NA;;
esac

echo "$x $ch $y = "$res