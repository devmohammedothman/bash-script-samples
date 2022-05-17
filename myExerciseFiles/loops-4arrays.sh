#!/bin/bash

## Loops with Arrays using while loop

arr=(10 11 12 13 14 15)
i=0

while [ $i -lt ${#arr[@]} ]
do
    echo "index is $i"
    echo ${arr[$i]}
    # i=`expr $i + 1`
    ((i+=1))
done

# Using For Loop
echo 'Loop with For'
for i in ${arr[@]}
do
    echo $i
done

## To Read the array elements at run time and then Print the Array

echo -n "Enter size of Array : "
read n
echo "Enter Array values: "

i=0
while [ $i -lt $n ]
do 
    read arr2[$i]
    ((i+=1))
done

for x in ${arr2[@]}
do
    echo $x
done
